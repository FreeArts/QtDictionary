#ifndef DICTIONARY_H
#define DICTIONARY_H

#include <QObject>
#include <QFile>
#include <QTextStream>
#include <QDebug>
#include <QString>
#include <QVector>
#include <QVariantList>

//Q_INVOKABLE QVariantList getFirstLangBuffer();
//Q_INVOKABLE QVariantList getSecondLangBuffer();

namespace words
{
    struct wordPair
    {
        QString firstLang;
        QString secondLang;
    };
}


class Dictionary : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QVariantList firstLangListBuffer MEMBER firstLangListBuffer_v NOTIFY firstLangListBufferChange)
    Q_PROPERTY(QVariantList secondLangListBuffer READ secondLangListBufferRead WRITE setSecondLangListBuffer NOTIFY secondLangListBufferChanged)

public:

    explicit Dictionary(QObject *parent = 0);
    Q_INVOKABLE void readWordsfromCSV(QString filepath);
    void readFromDictionaryToBuffer(const QVector<words::wordPair> &l_dictionary_vr);

    QVariantList secondLangListBufferRead() const
    {return secondLangListBuffer_v;}

    void setSecondLangListBuffer(QVariantList secondLangListBuffer)
    {
        secondLangListBuffer_v = secondLangListBuffer;
        emit secondLangListBufferChanged(secondLangListBuffer);
    }

signals:

    void firstLangListBufferChange();
    void secondLangListBufferChanged(QVariantList);

public slots:

private:
    words::wordPair wpair_s;
    QVector<words::wordPair> dictionary_v;

    QVariantList firstLangListBuffer_v;
    QVariantList secondLangListBuffer_v;
};

#endif // DICTIONARY_H
