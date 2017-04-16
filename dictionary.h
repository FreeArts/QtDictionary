#ifndef DICTIONARY_H
#define DICTIONARY_H

#include <QObject>
#include <QFile>
#include <QTextStream>
#include <QDebug>
#include <QString>
#include <QVector>

namespace words
{
    struct wordPair
    {
        QString first_lang;
        QString second_lang;
    };
}


class Dictionary : public QObject
{
    Q_OBJECT
public:
    explicit Dictionary(QObject *parent = 0);

signals:

public slots:

private:

    void readWordsfromCSV(QString filepath);
    words::wordPair wpair_s;
    QVector<words::wordPair> dictionary_v;
};

#endif // DICTIONARY_H
