package com.example.appstudents

import android.app.AlertDialog
import android.os.Bundle

import android.view.Menu
import android.view.MenuInflater
import android.view.MenuItem
import androidx.activity.OnBackPressedCallback
import androidx.appcompat.app.AppCompatActivity
import com.example.appstudents.MyConstants.STUDENT_INFO_FRAGMENT_TAG
import com.example.appstudents.MyConstants.STUDENT_LIST_FRAGMENT_TAG
import com.example.appstudents.repository.StudentsRepository


class MainActivity : AppCompatActivity() {

    private var miAdd : MenuItem? = null
    private var miDelete : MenuItem? = null
    private var miChange : MenuItem? = null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        showStudentsList()
        val callback =  object : OnBackPressedCallback(true)
            {
                override fun handleOnBackPressed() {
                    checkLogout()
                }
            }
        onBackPressedDispatcher.addCallback(this,callback)
    }

 /*   override fun onSaveInstanceState(outState: Bundle, outPersistentState: PersistableBundle) {
        saveData()
        super.onSaveInstanceState(outState, outPersistentState)
    }
*/
    /*override fun onRestoreInstanceState(
        savedInstanceState: Bundle?,
        persistentState: PersistableBundle?
    ) {
        loadData()
        super.onRestoreInstanceState(savedInstanceState, persistentState)
    }

    private fun loadData(){
       StudentsRepository.getInstance().loadStudents()
     }

    private fun saveData(){
        StudentsRepository.getInstance().saveStudents()
    }

    override fun onStop() {
        saveData()
        super.onStop()
    }*/

    private fun checkLogout(){
        AlertDialog.Builder(this)
            .setTitle("Выход!") // заголовок
            .setMessage("Вы действительно хотите выйти из приложения ?") // сообщение
            .setPositiveButton("ДА") { _ , _ ->
                finish()
            }
            .setNegativeButton("НЕТ", null)
            .setCancelable(true)
            .create()
            .show()
    }

    override fun onCreateOptionsMenu(menu: Menu): Boolean {
        val inflater: MenuInflater = menuInflater
        inflater.inflate(R.menu.main_menu, menu)
        miAdd=menu.findItem(R.id.miAdd)
        miDelete=menu.findItem(R.id.miDelete)
        miChange=menu.findItem(R.id.miChange)
        return true
    }

    fun checkDelete(){
        val s=StudentsRepository.getInstance().student.value?.lastName+" "+
                StudentsRepository.getInstance().student.value?.firstName+" "+
                StudentsRepository.getInstance().student.value?.middleName
        AlertDialog.Builder(this)
            .setTitle("УДАЛЕНИЕ!") // заголовок
            .setMessage("Вы действительно хотите удалить студента $s ?") // сообщение
            .setPositiveButton("ДА") { _ , _ ->
                StudentsRepository.getInstance().deleteStudent()
            }
            .setNegativeButton("НЕТ", null)
            .setCancelable(true)
            .create()
            .show()
    }

    override fun onOptionsItemSelected(item: MenuItem): Boolean {
        return when (item.itemId) {
            R.id.miAdd -> {
                showNewStudent()
                true
            }
            R.id.miDelete -> {
                checkDelete()
                true
            }
            R.id.miChange -> {
                showStudentInfo()
                true
            }
            else -> super.onOptionsItemSelected(item)
        }
    }

    fun showNewStudent(){
        StudentsRepository.getInstance().newStudent()
        showStudentInfo()
    }

    fun showStudentsList(){
        miAdd?.isVisible=true
        miDelete?.isVisible=true
        miChange?.isVisible=true
        supportFragmentManager
                .beginTransaction()
                .replace(R.id.frame, StudentListFragment.getInstance(),STUDENT_LIST_FRAGMENT_TAG)
                //.addToBackStack(null)
                .commit()
    }

    fun showStudentInfo(){
        miAdd?.isVisible=false
        miDelete?.isVisible=false
        miChange?.isVisible=false
        supportFragmentManager
            .beginTransaction()
            .replace(R.id.frame, StudentInfoFragment.getInstance(), STUDENT_INFO_FRAGMENT_TAG)
           // .addToBackStack(null)
            .commit()
    }
}