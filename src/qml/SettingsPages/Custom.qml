import QtQuick 2.12
import QtQuick.Layouts 1.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import FishUI 1.0 as FishUI
ItemPage {
    headerTitle: qsTr("Custom")
    ScrollView {
        anchors.fill: parent
        anchors.margins: FishUI.Units.largeSpacing
    ColumnLayout {
        id: _mainLayout
        anchors.fill: parent
        anchors.bottomMargin: FishUI.Units.largeSpacing
        RoundedItem {
            Label {
                text: qsTr("Terminal")
                color: FishUI.Theme.disabledTextColor
            }
            GridLayout{
                columns: 2
                columnSpacing: FishUI.Units.smallSpacing
                rowSpacing: FishUI.Units.smallSpacing
                Label {
                    text: qsTr("Word Characters")
                }

                TextField{
                    Layout.fillWidth: true
                    text: settings.wordCharacters
                    onTextChanged: {
                        settings.wordCharacters = text
                    }
                }
                }
            }

        RoundedItem {
            Label {
                text: qsTr("Search Engines")
                color: FishUI.Theme.disabledTextColor
            }
            ColumnLayout{
                spacing: FishUI.Units.smallSpacing
                Repeater {
                    model: settings.searchUrl
                    delegate: RowLayout{
                        Label {
                            text: settings.searchUrl[index][0]
                        }

                        Item{
                            Layout.fillWidth: true
                        }
                        TextField{
                            Layout.fillWidth: true
                            text: settings.searchUrl[index][1]
                            onTextChanged: {
                                settings.searchUrl[index][1] = text
                            }
                        }
                        Item{
                            Layout.fillWidth: true
                        }
                        Button{
                            flat: true
                            width: height
                            implicitWidth: height
                            icon.source: FishUI.Theme.darkMode ? "qrc:/images/light/close.svg" : "qrc:/images/dark/close.svg"
                            onClicked: {
                                var mbm = settings.searchUrl;
                                mbm.splice(index, 1)
                                settings.searchUrl = mbm
                            }
                        }
                    }
                }
                RowLayout{
                    TextField{
                        id:_urlname
                        Layout.fillWidth: true
                        placeholderText: qsTr("Search engine name")
                    }
                    Item{
                        Layout.fillWidth: true
                    }
                    TextField{
                        id:_url
                        Layout.fillWidth: true
                        placeholderText: qsTr("Search engine url,Replace the keyword with {keyword}")
                    }
                    Item{
                        Layout.fillWidth: true
                    }
                    Button{
                        flat: true
                        width: height
                        implicitWidth: height
                        icon.source: FishUI.Theme.darkMode ? "qrc:/images/light/add.svg" : "qrc:/images/dark/add.svg"
                        onClicked: {
                            var mbm = settings.searchUrl;
                            mbm.push([_urlname.text,_url.text])
                            settings.searchUrl = mbm
                        }
                    }

                }
            }
        }


        }

    }
}

