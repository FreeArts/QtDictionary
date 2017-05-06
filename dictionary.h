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
    Q_PROPERTY(QVariantList secondLangListBuffer MEMBER m_secondLangListBuffer_v NOTIFY secondLangListBufferChange)

    Q_PROPERTY(bool IsDictionaryEven MEMBER m_IsDictionaryEven_b NOTIFY IsDictionaryEvenChange)
    Q_PROPERTY(unsigned int DictionaryItemNumber MEMBER m_DictionaryItemNumber_ui NOTIFY DictionaryItemNumberChange)

public:

    explicit Dictionary(QObject *parent = 0);
    Q_INVOKABLE void readWordsfromCSV(QString filepath);

    void readFromDictionaryToBuffer(const QVector<words::wordPair> &l_dictionary_vr);
    bool IsDictionaryLenghtEvenNumber(const QVector<words::wordPair> &l_dictionary_vr) const;

    unsigned int m_DictionaryItemNumber_ui;

signals:

    void firstLangListBufferChange();
    void IsDictionaryEvenChange();
    void secondLangListBufferChange();
    void DictionaryItemNumberChange();

public slots:

private:

    words::wordPair m_wpair_s;
    QVector<words::wordPair> m_dictionary_v;

    QVariantList m_firstLangListBuffer_v;
    QVariantList m_secondLangListBuffer_v;

    bool m_IsDictionaryEven_b;

};

#endif // DICTIONARY_H
