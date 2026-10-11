package com.tencent.cos.xml.model.ci.common;

import com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser;
import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import java.io.IOException;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class MediaInfoFormat$$XmlAdapter extends IXmlAdapter<MediaInfoFormat> {
    private HashMap<String, ChildElementBinder<MediaInfoFormat>> childElementBinders;

    public MediaInfoFormat$$XmlAdapter() {
        HashMap<String, ChildElementBinder<MediaInfoFormat>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put("NumStream", new ChildElementBinder<MediaInfoFormat>() { // from class: com.tencent.cos.xml.model.ci.common.MediaInfoFormat$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, MediaInfoFormat mediaInfoFormat, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                mediaInfoFormat.numStream = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("NumProgram", new ChildElementBinder<MediaInfoFormat>() { // from class: com.tencent.cos.xml.model.ci.common.MediaInfoFormat$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, MediaInfoFormat mediaInfoFormat, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                mediaInfoFormat.numProgram = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("FormatName", new ChildElementBinder<MediaInfoFormat>() { // from class: com.tencent.cos.xml.model.ci.common.MediaInfoFormat$$XmlAdapter.3
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, MediaInfoFormat mediaInfoFormat, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                mediaInfoFormat.formatName = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("FormatLongName", new ChildElementBinder<MediaInfoFormat>() { // from class: com.tencent.cos.xml.model.ci.common.MediaInfoFormat$$XmlAdapter.4
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, MediaInfoFormat mediaInfoFormat, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                mediaInfoFormat.formatLongName = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("StartTime", new ChildElementBinder<MediaInfoFormat>() { // from class: com.tencent.cos.xml.model.ci.common.MediaInfoFormat$$XmlAdapter.5
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, MediaInfoFormat mediaInfoFormat, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                mediaInfoFormat.startTime = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put(SsManifestParser.C4933d.f26659s, new ChildElementBinder<MediaInfoFormat>() { // from class: com.tencent.cos.xml.model.ci.common.MediaInfoFormat$$XmlAdapter.6
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, MediaInfoFormat mediaInfoFormat, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                mediaInfoFormat.duration = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put(SsManifestParser.C4932c.f26642h, new ChildElementBinder<MediaInfoFormat>() { // from class: com.tencent.cos.xml.model.ci.common.MediaInfoFormat$$XmlAdapter.7
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, MediaInfoFormat mediaInfoFormat, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                mediaInfoFormat.bitrate = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Size", new ChildElementBinder<MediaInfoFormat>() { // from class: com.tencent.cos.xml.model.ci.common.MediaInfoFormat$$XmlAdapter.8
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, MediaInfoFormat mediaInfoFormat, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                mediaInfoFormat.size = xmlPullParser.getText();
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public MediaInfoFormat fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        MediaInfoFormat mediaInfoFormat = new MediaInfoFormat();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<MediaInfoFormat> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, mediaInfoFormat, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "MediaInfoFormat" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return mediaInfoFormat;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return mediaInfoFormat;
    }

    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, MediaInfoFormat mediaInfoFormat, String str) throws IOException, XmlPullParserException {
        if (mediaInfoFormat == null) {
            return;
        }
        if (str == null) {
            str = "MediaInfoFormat";
        }
        xmlSerializer.startTag("", str);
        if (mediaInfoFormat.numStream != null) {
            xmlSerializer.startTag("", "NumStream");
            xmlSerializer.text(String.valueOf(mediaInfoFormat.numStream));
            xmlSerializer.endTag("", "NumStream");
        }
        if (mediaInfoFormat.numProgram != null) {
            xmlSerializer.startTag("", "NumProgram");
            xmlSerializer.text(String.valueOf(mediaInfoFormat.numProgram));
            xmlSerializer.endTag("", "NumProgram");
        }
        if (mediaInfoFormat.formatName != null) {
            xmlSerializer.startTag("", "FormatName");
            xmlSerializer.text(String.valueOf(mediaInfoFormat.formatName));
            xmlSerializer.endTag("", "FormatName");
        }
        if (mediaInfoFormat.formatLongName != null) {
            xmlSerializer.startTag("", "FormatLongName");
            xmlSerializer.text(String.valueOf(mediaInfoFormat.formatLongName));
            xmlSerializer.endTag("", "FormatLongName");
        }
        if (mediaInfoFormat.startTime != null) {
            xmlSerializer.startTag("", "StartTime");
            xmlSerializer.text(String.valueOf(mediaInfoFormat.startTime));
            xmlSerializer.endTag("", "StartTime");
        }
        if (mediaInfoFormat.duration != null) {
            xmlSerializer.startTag("", SsManifestParser.C4933d.f26659s);
            xmlSerializer.text(String.valueOf(mediaInfoFormat.duration));
            xmlSerializer.endTag("", SsManifestParser.C4933d.f26659s);
        }
        if (mediaInfoFormat.bitrate != null) {
            xmlSerializer.startTag("", SsManifestParser.C4932c.f26642h);
            xmlSerializer.text(String.valueOf(mediaInfoFormat.bitrate));
            xmlSerializer.endTag("", SsManifestParser.C4932c.f26642h);
        }
        if (mediaInfoFormat.size != null) {
            xmlSerializer.startTag("", "Size");
            xmlSerializer.text(String.valueOf(mediaInfoFormat.size));
            xmlSerializer.endTag("", "Size");
        }
        xmlSerializer.endTag("", str);
    }
}
