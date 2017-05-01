#ifndef DICTIONARY_H
#define DICTIONARY_H

#include <QObject>
#include <QFile>
#include <QTextStream>
#include <QDebug>
#include <QString>
#include <QVector>
#include <QVariantList>

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
    Q_PROPERTY(QVariantList firstLangListBuffer MEMBER m_firstLangListBuffer_v NOTIFY firstLangListBufferChange)

public:

    explicit Dictionary(QObject *parent = 0);
    Q_INVOKABLE void readWordsfromCSV(QString filepath);
    void readFromDictionaryToBuffer(const QVector<words::wordPair> &l_dictionary_vr);

signals:

    void firstLangListBufferChange();

public slots:

private:
    words::wordPair m_wpair_s;
    QVector<words::wordPair> m_dictionary_v;

    QVariantList m_firstLangListBuffer_v;
    QVariantList m_secondLangListBuffer_v;
};

#endif // DICTIONARY_H
