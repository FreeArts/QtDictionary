#include "dictionary.h"

Dictionary::Dictionary(QObject *parent) : QObject(parent)
{

}

void Dictionary::readWordsfromCSV(QString l_filepath)
{
    l_filepath.remove(0,6); //The Qtquick FileDialog take to the path plus 6 char "file://"

    QByteArray l_line;
    QStringList l_wordListLang1;
    QStringList l_wordListLang2;
    QFile file(l_filepath);

        if (!file.open(QIODevice::ReadOnly))
        {
            qDebug() << file.errorString();
        }

        while (!file.atEnd())
        {
            l_line = file.readLine();

            l_wordListLang1.append(l_line.split(',').first());
            l_wordListLang2.append(l_line.split(',').last());

            wpair_s.firstLang = l_wordListLang1.back();
            wpair_s.firstLang.toLower();

            wpair_s.secondLang = l_wordListLang2.back();
            wpair_s.secondLang.toLower();

            dictionary_v.push_back(wpair_s);
        }

        qDebug() << "ready load";
        readFromDictionaryToBuffer(dictionary_v);
}

void Dictionary::readFromDictionaryToBuffer(const QVector<words::wordPair> &l_dictionary_vr)
{

    for(int loopCounter = 0; loopCounter <= l_dictionary_vr.size()-1;loopCounter++)
    {
        firstLangListBuffer_v << l_dictionary_vr.at(loopCounter).firstLang;
        secondLangListBuffer_v << l_dictionary_vr.at(loopCounter).secondLang;
    }

    qDebug() << "ready copy";

}
