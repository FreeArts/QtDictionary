#include <QGuiApplication>
#include "dictionary.h"
#include <QQmlEngine>
#include <QQmlProperty>
#include <QQmlContext>
#include <QQmlEngine>

#include <QQmlApplicationEngine>
#include <QDebug>
#include <QQmlComponent>
#include <QQmlProperty>

int main(int argc, char *argv[])
{
    
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);
    
    Dictionary *QtDictionary = new Dictionary;

    QQmlApplicationEngine engine;
    engine.load(QUrl(QLatin1String("qrc:/main.qml")));

    engine.rootContext()->setContextProperty("QtDictionary",QtDictionary);

    return app.exec();
}
