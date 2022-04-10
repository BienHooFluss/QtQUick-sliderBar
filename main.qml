import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.5
//import QtQuick.Controls 2.15
import QtQuick.Controls.Styles 1.4

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    CustomSlider {
        width: 218
        height: 20
        anchors.centerIn: parent
   }
}
