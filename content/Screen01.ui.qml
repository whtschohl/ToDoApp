

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 6.5
import QtQuick.Controls 6.5
import ToDoList
import QtQuick.Layouts 1.0

Rectangle {
    id: rectangle
    width: Constants.width
    height: Constants.height
    color: "#ffffff"


    Button {
        id: addToDoButton
        y: 319
        text: qsTr("Add To-Do")
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.rightMargin: 10
        anchors.leftMargin: 10
        anchors.bottomMargin: 10
    }

    Rectangle {
        id: addToDoDialog
        x: 10
        y: 579
        width: 380
        height: 153
        color: "#d6d7d7"
        radius: 30

        TextField {
            id: toDoTextInput
            height: 60
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.topMargin: 25
            anchors.rightMargin: 25
            anchors.leftMargin: 25
            placeholderText: qsTr("Text Field")
        }

        RowLayout {
            y: 93
            height: 52
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.rightMargin: 10
            anchors.leftMargin: 10
            anchors.bottomMargin: 11
            spacing: 50
            Button {
                id: cancelButton
                width: 159
                text: qsTr("Cancel")
                Layout.fillWidth: true
            }

            Button {
                id: addButton
                width: 151
                text: qsTr("Add")
                Layout.fillWidth: true
            }
        }
    }
    states: [
        State {
            name: "clicked"
        }
    ]
}
