import QtQuick 2.4
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls 2.2
import Ubuntu.Components 1.3
import RSSCore 1.0
import QtQuick.XmlListModel 2.0
import QtGraphicalEffects 1.0
import Ubuntu.Components.ListItems 1.3 as ListItem
    
Page {
    id: settingsRSS
	clip:true
    header: PageHeader {
        id: headerSettings
        title: i18n.tr("RSS settings");
        
            leadingActionBar.actions: [
                Action {
                    iconName: "back"
                    text: "Back"
                    onTriggered: {
                        removePages(settingsRSS);
                    }
                }
            ]
   }       
    
	property int dbid: -1

    Flickable {
        id: flickableSettings
        anchors.fill: parent
        anchors.topMargin: settingsRSS.header.height
        contentHeight: settingsColumn.height
        flickableDirection: Flickable.VerticalFlick
        clip: true


        Column {
            id: settingsColumn
            spacing: units.gu(2)
            anchors {
                top: parent.top
                left: parent.left
                right: parent.right
                topMargin: units.gu(1)

            }


            property var model: [
            { title: ":", style:"default" },
            { title: ":rss", style:"rounded" },
            { title: "rss:channel", style:"rounded" },
            { title: "channel:item", style:"rounded" },
            { title: "item:title", style:"rounded" },
            { title: "item:link", style:"rounded" },
            { title: "item:comments", style:"rounded" },
            { title: "item:pubdate", style:"rounded" },
            { title: "item:creator", style:"rounded" },
            { title: "item:category", style:"rounded" },
            { title: "item:guid", style:"rounded" },
            { title: "item:description", style:"rounded" },
            { title: "item:encoded", style:"rounded" },
            { title: "item:commentrss", style:"rounded" },
            { title: "item:post-id", style:"rounded" },
            { title: "none", style:"rounded" },

            ]
                

                    
                Text {
                    text: "Item"
                    width: unit.gu(10)
                    height: units.gu(5)
                    anchors.left: parent.left
                    anchors.leftMargin: units.gu(2)
                    verticalAlignment: Text.AlignVCenter
                        
                    ComboBox {
                        //currentIndex: 
                        textRole: "title"
                        model: settingsColumn.model
                        width: units.gu(20)
                        anchors.left: parent.right
                        anchors.leftMargin: units.gu(2)
                        //onCurrentIndexChanged: console.log(RSSCore.updateDBFeed(settingsRSS.dbid, "item", currentText)) 
                    }     
                }

                Text {
                    text: "Link"
                    width: unit.gu(10)
                    height: units.gu(5)
                    anchors.left: parent.left
                    anchors.leftMargin: units.gu(2)
                    verticalAlignment: Text.AlignVCenter
                        
                    ComboBox {
                        //currentIndex: 
                        textRole: "title"
                        model: settingsColumn.model
                        width: units.gu(20)
                        anchors.left: parent.right
                        anchors.leftMargin: units.gu(2)
                        //onCurrentIndexChanged: console.log(RSSCore.updateDBFeed(settingsRSS.dbid, "item", currentText)) 
                    }     
                }

                Text {
                    text: "Author"
                    width: unit.gu(10)
                    height: units.gu(5)
                    anchors.left: parent.left
                    anchors.leftMargin: units.gu(2)
                    verticalAlignment: Text.AlignVCenter
                        
                    ComboBox {
                        //currentIndex: 
                        textRole: "title"
                        model: settingsColumn.model
                        width: units.gu(20)
                        anchors.left: parent.right
                        anchors.leftMargin: units.gu(2)
                        //onCurrentIndexChanged: console.log(RSSCore.updateDBFeed(settingsRSS.dbid, "item", currentText)) 
                    }     
                }

                Text {
                    text: "Category"
                    width: unit.gu(10)
                    height: units.gu(5)
                    anchors.left: parent.left
                    anchors.leftMargin: units.gu(2)
                    verticalAlignment: Text.AlignVCenter
                        
                    ComboBox {
                        //currentIndex: 
                        textRole: "title"
                        model: settingsColumn.model
                        width: units.gu(20)
                        anchors.left: parent.right
                        anchors.leftMargin: units.gu(2)
                        //onCurrentIndexChanged: console.log(RSSCore.updateDBFeed(settingsRSS.dbid, "item", currentText)) 
                    }     
                }

                Text {
                    text: "Title"
                    width: unit.gu(10)
                    height: units.gu(5)
                    anchors.left: parent.left
                    anchors.leftMargin: units.gu(2)
                    verticalAlignment: Text.AlignVCenter
                        
                    ComboBox {
                        //currentIndex: 
                        textRole: "title"
                        model: settingsColumn.model
                        width: units.gu(20)
                        anchors.left: parent.right
                        anchors.leftMargin: units.gu(2)
                        //onCurrentIndexChanged: console.log(RSSCore.updateDBFeed(settingsRSS.dbid, "item", currentText)) 
                    }     
                }

                Text {
                    text: "Description"
                    width: unit.gu(10)
                    height: units.gu(5)
                    anchors.left: parent.left
                    anchors.leftMargin: units.gu(2)
                    verticalAlignment: Text.AlignVCenter
                        
                    ComboBox {
                        //currentIndex: 
                        textRole: "title"
                        model: settingsColumn.model
                        width: units.gu(20)
                        anchors.left: parent.right
                        anchors.leftMargin: units.gu(2)
                        //onCurrentIndexChanged: console.log(RSSCore.updateDBFeed(settingsRSS.dbid, "item", currentText)) 
                    }     
                }

                Text {
                    text: "Date"
                    width: unit.gu(10)
                    height: units.gu(5)
                    anchors.left: parent.left
                    anchors.leftMargin: units.gu(2)
                    verticalAlignment: Text.AlignVCenter
                        
                    ComboBox {
                        //currentIndex: 
                        textRole: "title"
                        model: settingsColumn.model
                        width: units.gu(20)
                        anchors.left: parent.right
                        anchors.leftMargin: units.gu(2)
                        //onCurrentIndexChanged: console.log(RSSCore.updateDBFeed(settingsRSS.dbid, "item", currentText)) 
                    }     
                }
            
            
                Text {
                    text: "Media"
                    width: unit.gu(10)
                    height: units.gu(5)
                    anchors.left: parent.left
                    anchors.leftMargin: units.gu(2)
                    verticalAlignment: Text.AlignVCenter
                        
                    ComboBox {
                        //currentIndex: 
                        textRole: "title"
                        model: settingsColumn.model
                        width: units.gu(20)
                        anchors.left: parent.right
                        anchors.leftMargin: units.gu(2)
                        //onCurrentIndexChanged: console.log(RSSCore.updateDBFeed(settingsRSS.dbid, "item", currentText)) 
                    }     
                }





            



        } // column
    } //flickable

}//page