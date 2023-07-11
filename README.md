# Задание
Сделать кастомный таб бар с плавным переходом между табами используя **SwiftUI**.
Сделать плавный преход между маленьким и большим изображением c перемешением текста с правого края изображения вниз.

	![ScreenShot](https://paste.pics/41b6ec0e194c50967217eda305b79aa5)

# Решение
Создать **@namespace** для использования **.matchedGeometryEffect()**
Создать два вида View small and big.
Добавить модификатор **.matchedGeometryEffect()** к каждому элементу который необходимо плавно изменять(изображение, текст, таб), присвоив каждой паре свой **id**.

	![screen](https://paste.pics/c7ca068b1378f51a728bbfddddeb32e1)

