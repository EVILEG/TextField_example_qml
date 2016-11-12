#include <QGuiApplication>
#include <QQmlApplicationEngine>

int main(int argc, char *argv[])
{
    // Обращаю ваше внимание на этот атрибут.
    // Он включает масштабирование для устройств с высоким разрешением,
    // то есть в Qt5.7 уже не нужно пересчитывать пиксели в dpi
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QLatin1String("qrc:/main.qml")));

    return app.exec();
}
