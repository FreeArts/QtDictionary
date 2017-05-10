import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

ApplicationWindow {
    visible: true
    width: 450
    height: 570
    title: qsTr("QtDictionary")

    property int g_counterMAX_i: 0

    SwipeView {
        id: view
        anchors.fill: parent
        enabled: true

            WelcomePage {
                id:firstPage
            }

            MainPage {
                id: secondPage
            }
            /*Item {
                id: thirdPage
            }*/
    }

    PageIndicator {
        id: indicator

        count: view.count
        currentIndex: view.currentIndex

        anchors.bottom: view.bottom
        anchors.horizontalCenter: parent.horizontalCenter 
    }
}
