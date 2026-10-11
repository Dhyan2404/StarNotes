package com.tencent.cos.xml.model.ci.common;

import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class MediaResultOutputFile$$XmlAdapter extends IXmlAdapter<MediaResultOutputFile> {
    private HashMap<String, ChildElementBinder<MediaResultOutputFile>> childElementBinders;

    public MediaResultOutputFile$$XmlAdapter() {
        HashMap<String, ChildElementBinder<MediaResultOutputFile>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put("Bucket", new ChildElementBinder<MediaResultOutputFile>() { // from class: com.tencent.cos.xml.model.ci.common.MediaResultOutputFile$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, MediaResultOutputFile mediaResultOutputFile, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                mediaResultOutputFile.bucket = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Region", new ChildElementBinder<MediaResultOutputFile>() { // from class: com.tencent.cos.xml.model.ci.common.MediaResultOutputFile$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, MediaResultOutputFile mediaResultOutputFile, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                mediaResultOutputFile.region = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("ObjectName", new ChildElementBinder<MediaResultOutputFile>() { // from class: com.tencent.cos.xml.model.ci.common.MediaResultOutputFile$$XmlAdapter.3
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, MediaResultOutputFile mediaResultOutputFile, String str) throws IOException, XmlPullParserException {
                if (mediaResultOutputFile.objectName == null) {
                    mediaResultOutputFile.objectName = new ArrayList();
                }
                int eventType = xmlPullParser.getEventType();
                while (eventType != 1) {
                    if (eventType != 2) {
                        if (eventType == 3 && "ObjectName".equalsIgnoreCase(xmlPullParser.getName())) {
                            return;
                        }
                    } else {
                        xmlPullParser.next();
                        mediaResultOutputFile.objectName.add(xmlPullParser.getText());
                    }
                    eventType = xmlPullParser.next();
                }
            }
        });
        this.childElementBinders.put("Md5Info", new ChildElementBinder<MediaResultOutputFile>() { // from class: com.tencent.cos.xml.model.ci.common.MediaResultOutputFile$$XmlAdapter.4
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, MediaResultOutputFile mediaResultOutputFile, String str) throws IOException, XmlPullParserException {
                if (mediaResultOutputFile.md5Info == null) {
                    mediaResultOutputFile.md5Info = new ArrayList();
                }
                mediaResultOutputFile.md5Info.add((MediaResultMd5Info) QCloudXml.fromXml(xmlPullParser, MediaResultMd5Info.class, "Md5Info"));
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public MediaResultOutputFile fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        MediaResultOutputFile mediaResultOutputFile = new MediaResultOutputFile();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<MediaResultOutputFile> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, mediaResultOutputFile, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "MediaResultOutputFile" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return mediaResultOutputFile;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return mediaResultOutputFile;
    }

    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, MediaResultOutputFile mediaResultOutputFile, String str) throws IOException, XmlPullParserException {
        if (mediaResultOutputFile == null) {
            return;
        }
        if (str == null) {
            str = "MediaResultOutputFile";
        }
        xmlSerializer.startTag("", str);
        if (mediaResultOutputFile.bucket != null) {
            xmlSerializer.startTag("", "Bucket");
            xmlSerializer.text(String.valueOf(mediaResultOutputFile.bucket));
            xmlSerializer.endTag("", "Bucket");
        }
        if (mediaResultOutputFile.region != null) {
            xmlSerializer.startTag("", "Region");
            xmlSerializer.text(String.valueOf(mediaResultOutputFile.region));
            xmlSerializer.endTag("", "Region");
        }
        if (mediaResultOutputFile.objectName != null) {
            for (int i = 0; i < mediaResultOutputFile.objectName.size(); i++) {
                xmlSerializer.startTag("", "ObjectName");
                xmlSerializer.text(String.valueOf(mediaResultOutputFile.objectName.get(i)));
                xmlSerializer.endTag("", "ObjectName");
            }
        }
        if (mediaResultOutputFile.md5Info != null) {
            for (int i2 = 0; i2 < mediaResultOutputFile.md5Info.size(); i2++) {
                QCloudXml.toXml(xmlSerializer, mediaResultOutputFile.md5Info.get(i2), "MediaResultMd5Info");
            }
        }
        xmlSerializer.endTag("", str);
    }
}
