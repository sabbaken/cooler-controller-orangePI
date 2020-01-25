
## Cooler controller for OrangePI
Этот скрипт сделан для измерения температуры процессора и включения кулера при перегреве.
Должно работать с любыми версиями Orange PI (проверьте GPIO)

[WiringOP](https://github.com/zhaolei/WiringOP.git) используется для измерения температуры.


### Установка
Введите пароль, если тербуется

```bash
git clone https://github.com/Sabbaken/cooler-controller-orangePI.git
cd cooler-controller-orangePI
sudo sh install.sh
```

### Компонены
* [Кулер](http://ali.pub/4f1j47)
* Транзистрор npn
* Провода
* [Плата для прототипирования](http://ali.pub/4f1npv)

### Подключение
|               |                           |
| ------------- |:-------------------------:|
| 5V кулера         | OrangePI 5V               |
| GND кулера        | Transistor Collector (C)  |
| GPIO 7        | Transistor Base (B)       | 
| GND           | Transistor Emitter (E)    |

![schematic](https://github.com/Sabbaken/cooler-controller-orangePI/blob/master/img/schematica.png?raw=true)


![pinout](https://github.com/Sabbaken/cooler-controller-orangePI/blob/master/img/1033818249.jpg?raw=true)


![pinout_table](https://github.com/Sabbaken/cooler-controller-orangePI/blob/master/img/gpio.jpg?raw=true)

### Read this in other languages 🌎

- [![ru](https://raw.githubusercontent.com/gosquared/flags/master/flags/flags/shiny/24/Russia.png) **Русский**](https://github.com/Sabbaken/cooler-controller-orangePI/blob/master/readme/README_RU.md)
- [![us](https://raw.githubusercontent.com/gosquared/flags/master/flags/flags/shiny/24/United-States.png) **English**](https://github.com/Sabbaken/cooler-controller-orangePI/blob/master/README.md)

