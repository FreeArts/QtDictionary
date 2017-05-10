#include "dictionary.h"

Dictionary::Dictionary(QObject *parent) : QObject(parent)
{
}

void Dictionary::readWordsfromCSV(QString l_filepath)
{
    //l_filepath.remove(0,6); //The Qtquick FileDialog take to the path plus 6 char "file://"

    //l_filepath = "/storage/emulated/0/Download/english_words_testv_.csv";
    QByteArray l_line;
    QStringList l_wordListLang1;
    QStringList l_wordListLang2;

    QFile file(l_filepath);

    if(!file.exists())
    {
        //error message
    }

    else
    {
        if (!file.open(QIODevice::ReadOnly))
        {
                //qDebug() << file.errorString();
        }

        else
        {
            while (!file.atEnd())
            {
                l_line = file.readLine();

                l_wordListLang1.append(l_line.split(',').first());
                l_wordListLang2.append(l_line.split(',').last());

                m_wpair_s.firstLang = l_wordListLang1.back();
                m_wpair_s.firstLang.toLower();

                m_wpair_s.secondLang = l_wordListLang2.back();
                m_wpair_s.secondLang.toLower();

                m_dictionary_v.push_back(m_wpair_s);
            }

            m_IsDictionaryEven_b = IsDictionaryLenghtEvenNumber(m_dictionary_v);
            m_DictionaryItemNumber_ui = m_dictionary_v.length()-1;
            qDebug() << "ready load";
            readFromDictionaryToBuffer(m_dictionary_v);
        }
    }
}
void Dictionary::androidFileManager()
{
    m_dictionary_v.clear();
    m_firstLangListBuffer_v.clear();
    m_secondLangListBuffer_v.clear();

    AndroidFileDialog *fileDialog = new AndroidFileDialog();
    connect(fileDialog, SIGNAL(existingFileNameReady(QString)), this, SLOT(openFileNameReady(QString)));
    bool success = fileDialog->provideExistingFileName();
    if (success)
    {
        //return true;
    }

    else
    {
        qDebug() << "Problem with JNI or sth like that...";
        disconnect(fileDialog, SIGNAL(existingFileNameReady(QString)), this, SLOT(openFileNameReady(QString)));
        //or just delete fileDialog instead of disconnect
        //return false;
    }
}

void Dictionary::testRead()
{
    QString path = "/storage/emulated/0/RSR/log/log.txt";
    QByteArray l_line;
    QStringList l_word;

    QFile inputfile(path);

    if(!inputfile.exists())
    {
        tmp = "Nem létezik";
    }

    else
    {
        if(inputfile.open(QFile::ReadOnly | QFile::Text))
        {
            QTextStream in(&inputfile);
            //tmp = "meg nyilt";
            while(!in.atEnd())
            {
                tmp = in.readLine();
            }
        }

        else
        {
            tmp = "nem nyilt meg";
        }
    }
    inputfile.close();
}

bool Dictionary::IsDictionaryLenghtEvenNumber(const QVector<words::wordPair> &l_dictionary_vr) const
{
    if(l_dictionary_vr.length() % 2 == 0)
    {
        return true;
    }

    else
    {
        return false;
    }
}

void Dictionary::openFileNameReady(QString fileName)
{
    if (!fileName.isNull()) {
           m_DictionaryFileName_s = fileName;
           readWordsfromCSV(fileName);
       } else {
           qDebug() << "User did not choose file";
       }
}

void Dictionary::readFromDictionaryToBuffer(const QVector<words::wordPair> &l_dictionary_vr)
{
    for(int loopCounter = 0; loopCounter <= l_dictionary_vr.size()-1;loopCounter++)
    {
        m_firstLangListBuffer_v << l_dictionary_vr.at(loopCounter).firstLang;
        m_secondLangListBuffer_v << l_dictionary_vr.at(loopCounter).secondLang;
    }

    qDebug() << "ready copy";
}
