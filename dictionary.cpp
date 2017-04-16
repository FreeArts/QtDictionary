#include "dictionary.h"

Dictionary::Dictionary(QObject *parent) : QObject(parent)
{

}

void Dictionary::readWordsfromCSV(QString l_filepath)
{
    QByteArray l_line;
    QStringList l_wordList_lang1;
    QStringList l_wordList_lang2;
    QFile file(l_filepath);

        if (!file.open(QIODevice::ReadOnly))
        {
            qDebug() << file.errorString();
        }

        while (!file.atEnd())
        {
            l_line = file.readLine();

            l_wordList_lang1.append(l_line.split(',').first());
            l_wordList_lang2.append(l_line.split(',').last());

            wpair_s.first_lang = l_wordList_lang1.back();
            wpair_s.second_lang = l_wordList_lang2.back();
            dictionary_v.push_back(wpair_s);
        }
}
