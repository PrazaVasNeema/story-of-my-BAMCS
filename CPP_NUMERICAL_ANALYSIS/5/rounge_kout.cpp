from copy import deepcopy
import matplotlib.pyplot as plt
import numpy as np
from math import *


def rounge_kout_formula(func, x, y, h, prev):
    k1 = func(x, y)
    k2 = func(x + h / 3, y + h * k1 / 3)
    k3 = func(x + 2 * h / 3, y + 2 * h * k2 / 3)
    return h / 4 * (k1 + 3 * k3) + prev


def rounge_kout(func, a, b, h, x, y):
    coords = []
    n = (b - a) / h
    i = 0
    coords.append((x, y))
    x += h
    while i < round(n):
        y = rounge_kout_formula(func, x, y, h, y)
        coords.append((x, y))
        x += h
        i += 1
    return coords


def main():
    functions = [
        lambda x, y: (3 * y + 2 * x * y) / (x ** 2),
        lambda x, y: (3 * x ** 2 - y) / ((x ** 2 + 1) ** 0.5),
        lambda x, y: (-1 * y - 2 * x * (y ** 2) * log(x)) / x
    ]
    anal_functons = [
        lambda x: x ** 2 * 5 * exp(3 - 3 / x),
        lambda x: (2 * x + 3.01362) * (x ** 2 + 1) ** 0.5 - x ** 2 - 3.01362 * x - 2,
        lambda x: 1 / (x * (log(x) ** 2 + 1 - log(0.5) ** 2))
    ]
    koshi_data = [
        (1, 5, 2),
        (-1.5, 0.29498, 1.5),
        (0.3, 1.692822897, 3.1)
    ]
    for i in range(len(koshi_data)):
        eps = 0.01
        graph_coords = rounge_kout(functions[i], koshi_data[i][0], koshi_data[i][2], eps, koshi_data[i][0],
                                   koshi_data[i][1])
        graph_coords_any = rounge_kout(functions[i], koshi_data[i][0], koshi_data[i][2], eps / 2, koshi_data[i][0],
                                       koshi_data[i][1])
        mn = 0
        for x in graph_coords:
            if abs(anal_functons[i](x[0]) - x[1]) > mn:
                mn = abs(anal_functons[i](x[0]) - x[1])
        n1 = mn
        mn = 0
        for x in graph_coords_any:
            if abs(anal_functons[i](x[0]) - x[1]) > mn:
                mn = abs(anal_functons[i](x[0]) - x[1])
        print(f'Максимальная невязка на 1 решении = {n1}, Максимальная невязка на 2 решении = {mn}, Разница невязок = {n1 / mn}')

        plt.plot(np.array([deepcopy(a[0]) for a in graph_coords]), np.array([deepcopy(a[1]) for a in graph_coords]),
                 label='h = 0.01')
        plt.plot(np.array([deepcopy(a[0]) for a in graph_coords_any]),
                 np.array([deepcopy(a[1]) for a in graph_coords_any]), label='h = 0.005')
        plt.plot(np.array([deepcopy(a[0]) for a in graph_coords_any]),
                 np.array([anal_functons[i](deepcopy(a[0])) for a in graph_coords_any]), label='Analit')
        plt.legend()
        plt.show()


if __name__ == '__main__':
    main()