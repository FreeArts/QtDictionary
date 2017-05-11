import QtQuick 2.4
import QtQuick.Controls 2.1

MainPageForm {

    enabled: false
    property int  g_counter_i: 0

    prevWord.onClicked: {

        if(g_counter_i !== 0)
        {
            g_counter_i--;
            refreshAskedLabel()
        }
}

    nextWord.onClicked: {
        g_counter_i++
        refreshAskedLabel()
}

    mouseArea.onClicked: {
        hintLabel.text = QtDictionary.firstLangListBuffer[g_counter_i]
}

    allWordsButton.onClicked: {
        g_counter_i = 0
        g_counterMAX_i = QtDictionary.DictionaryItemNumber
        refreshAskedLabel()
}
    secondHalfButton.onClicked:
    {
        g_counterMAX_i = QtDictionary.DictionaryItemNumber

        if(QtDictionary.IsDictionaryEven == true)
        {
            g_counter_i = QtDictionary.DictionaryItemNumber/2
            refreshAskedLabel()
        }

        else
        {
            g_counter_i = (QtDictionary.DictionaryItemNumber/2) + 1
            refreshAskedLabel()
        }
    }

    firstHalfButton.onClicked:
    {
        g_counter_i = 0

        if(QtDictionary.IsDictionaryEven === true)
        {
            g_counterMAX_i = QtDictionary.DictionaryItemNumber/2
            refreshAskedLabel()
        }

        else
        {
            g_counterMAX_i = (QtDictionary.DictionaryItemNumber/2) + 1
            refreshAskedLabel()
        }
    }

    okButton.onClicked: {
        checkedTheAnswer()
}
    answerInput.onAccepted: {
        checkedTheAnswer()
    }

    function checkedTheAnswer()
    {
        if(answerInput.text === QtDictionary.firstLangListBuffer[g_counter_i])
        {
            if(g_counter_i <= g_counterMAX_i)
            {
                g_counter_i++
                refreshAskedLabel()
            }

            else
            {
                g_counter_i = 0;
                askedWordLabel.text = "END/FINITO :)"
                answerInput.clear()
                hintLabel.text = "hint"
            }
        }

        else
        {
            answerInput.selectAll()
        }
    }

    function refreshAskedLabel()
    {
        askedWordLabel.text = QtDictionary.secondLangListBuffer[g_counter_i]
        answerInput.clear()
        hintLabel.text = "hint"
        currentWordNumberLabel.text = g_counter_i + 1
    }
}
