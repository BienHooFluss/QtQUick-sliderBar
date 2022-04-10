import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.impl 2.12
import QtQuick.Templates 2.12 as T

T.Slider {
    id: control

    implicitWidth: 218//Math.max(implicitBackgroundWidth + leftInset + rightInset,
                            //implicitHandleWidth + leftPadding + rightPadding)
    implicitHeight: 20//Math.max(implicitBackgroundHeight + topInset + bottomInset,
                             //implicitHandleHeight + topPadding + bottomPadding)
    padding: -2
    value: 30
    stepSize: 1
    width: 218
    from: 1
    to: 180
    property var unit: '°'
    property var maxValue: 218
    property var numbers: [0,30,60,90,120,150,180]
    property var lastpos: (value - from) / (to - from)
    property var backColor: "#ECEBF0"
    property var chosedareaColor: "#5F74F0"

    onMoved: {
        if (lastpos > visualPosition)
        {
            if (visualPosition.toFixed(1) == 0)
            {
                value = numbers[0]
            }
            else if (visualPosition.toFixed(1) == 0.1)
            {
                value = numbers[1]
            }
            else if (visualPosition.toFixed(1) == 0.2)
            {
                decrease()
                value = numbers[2]
            }
            else if (visualPosition.toFixed(1) == 0.3)
            {
                value = numbers[2]
            }
            else if (visualPosition.toFixed(1) == 0.4)
            {
                decrease()
                value = numbers[3]
            }
            else if (visualPosition.toFixed(1) == 0.5)
            {
                value = numbers[3]
            }
            else if (visualPosition.toFixed(1) == 0.6)
            {
                value = numbers[4]
            }
            else if (visualPosition.toFixed(1) == 0.7)
            {
                decrease()
                value = numbers[5]
            }
            else if (visualPosition.toFixed(1) == 0.8)
            {
                value = numbers[5]
            }
            else if (visualPosition.toFixed(1) == 0.9)
            {
                decrease()
                value = numbers[6]
            }
            else if (visualPosition.toFixed(1) == 1.0)
            {
                value = numbers[6]
            }
        }
        else if (lastpos < visualPosition)
        {
            if (visualPosition.toFixed(1) == 0)
            {
                value = numbers[0]
            }
            else if (visualPosition.toFixed(1) == 0.1)
            {
                value = numbers[1]
            }
            else if (visualPosition.toFixed(1) == 0.2)
            {
                increase()
                value = numbers[1]
            }
            else if (visualPosition.toFixed(1) == 0.3)
            {
                value = numbers[2]
            }
            else if (visualPosition.toFixed(1) == 0.4)
            {
                increase()
                value = value = numbers[2]
            }
            else if (visualPosition.toFixed(1) == 0.5)
            {
                value = numbers[3]
            }
            else if (visualPosition.toFixed(1) == 0.6)
            {
                value = numbers[4]
            }
            else if (visualPosition.toFixed(1) == 0.7)
            {
                increase()
                value = numbers[4]
            }
            else if (visualPosition.toFixed(1) == 0.8)
            {
                value = numbers[5]
            }
            else if (visualPosition.toFixed(1) == 0.9)
            {
                increase()
                value = numbers[5]
            }
            else if (visualPosition.toFixed(1) == 1.0)
            {
                value = numbers[6]
            }
        }
        lastpos = value / 180
        //value = parseInt(visualPosition.toFixed(1) * 180)
        console.log("lastpos::",lastpos)
    }

    handle: Image {
        x: control.leftPadding + (control.horizontal ? control.visualPosition * (control.availableWidth - width) : (control.availableWidth - width) / 2)
        y: control.topPadding + (control.horizontal ? (control.availableHeight - height) / 2 : control.visualPosition * (control.availableHeight - height))
        source: "qrc:/handle_set.png"
//        radius: width / 2
//        color: control.pressed ? control.palette.light : control.palette.window
//        border.width: control.visualFocus ? 2 : 1
//        border.color: control.visualFocus ? control.palette.highlight : control.enabled ? control.palette.mid : control.palette.midlight
    }

    background: Rectangle {
        x: control.leftPadding + (control.horizontal ? 0 : (control.availableWidth - width) / 2) + 6
        y: control.topPadding + (control.horizontal ? (control.availableHeight - height) / 2 : 0)
        implicitWidth: 218/*control.horizontal ? 200 : 6*/
        implicitHeight: 10//control.horizontal ? 6 : 200
        width: control.horizontal ? control.availableWidth : implicitWidth
        height: control.horizontal ? implicitHeight : control.availableHeight
        radius: height * 0.5
        color: backColor//control.palette.midlight
        scale: control.horizontal && control.mirrored ? -1 : 1

        Image {
            source: "qrc:/sevenParagraphs.png"
            anchors.fill: parent
        }

        Text {
            id: text1
            font.pixelSize: 10
            font.weight: Font.Normal
            color: "#333333"
            text: numbers[0] +  unit
            x: (numbers[0] - from) / (to - from) * control.width
            anchors {
                top: parent.bottom
                topMargin: 6
            }
        }

        Text {
            id: text2
            font.pixelSize: 10
            font.weight: Font.Normal
            color: "#333333"
            text: numbers[1]  +  unit
            x: (numbers[1] - from) / (to - from) * control.width
            anchors {
                top: parent.bottom
                topMargin: 6
            }
        }

        Text {
            id: text3
            font.pixelSize: 10
            font.weight: Font.Normal
            color: "#333333"
            text: numbers[2]  +  unit
            x: (numbers[2] - from) / (to - from) * control.width
            anchors {
                top: parent.bottom
                topMargin: 6
            }
        }

        Text {
            id: text4
            font.pixelSize: 10
            font.weight: Font.Normal
            color: "#333333"
            text: numbers[3]  +  unit
            x: (numbers[3] - from) / (to - from) * control.width
            anchors {
                top: parent.bottom
                topMargin: 6
            }
        }

        Text {
            id: text5
            font.pixelSize: 10
            font.weight: Font.Normal
            color: "#333333"
            text: numbers[4]  +  unit
            x: (numbers[4] - from) / (to - from) * control.width
            anchors {
                top: parent.bottom
                topMargin: 6
            }
        }

        Text {
            id: text6
            font.pixelSize: 10
            font.weight: Font.Normal
            color: "#333333"
            text: numbers[5]  +  unit
            x: (numbers[5] - from) / (to - from) * control.width
            anchors {
                top: parent.bottom
                topMargin: 6
            }
        }

        Text {
            id: text7
            font.pixelSize: 10
            font.weight: Font.Normal
            color: "#333333"
            text: numbers[6]  +  unit
            x: (numbers[6] - from) / (to - from) * control.width
            anchors {
                top: parent.bottom
                topMargin: 6
            }
        }

        Rectangle {
            y: control.horizontal ? 0 : control.visualPosition * parent.height
            width: control.horizontal ? control.position * parent.width : 10
            height: control.horizontal ? 10 : control.position * parent.height
            radius: height * 0.5
            color: chosedareaColor
        }
    }
}
