import QtQuick 2.4
import QtQuick.Dialogs 1.2

WelcomePageForm
{
    searchCSVbutton.onClicked:
    {
        secondPage.g_counter_i = 0
        secondPage.enabled = false
        secondPage.askedWordLabel.text = "?"

        QtDictionary.androidFileManager()
    }

    loadCSVbutton.onClicked:
    {
        initState()
    }

    function initState()
    {
        secondPage.enabled = true
        secondPage.askedWordLabel.text = QtDictionary.secondLangListBuffer[0]
        g_counterMAX_i = QtDictionary.DictionaryItemNumber
    }
}
