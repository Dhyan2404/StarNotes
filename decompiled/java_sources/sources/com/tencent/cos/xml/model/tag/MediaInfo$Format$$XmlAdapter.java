package com.tencent.cos.xml.model.tag;

import com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser;
import com.tencent.cos.xml.model.tag.MediaInfo;
import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import java.io.IOException;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes10.dex */
public class MediaInfo$Format$$XmlAdapter extends IXmlAdapter<MediaInfo.Format> {
    private HashMap<String, ChildElementBinder<MediaInfo.Format>> childElementBinders;

    public MediaInfo$Format$$XmlAdapter() {
        HashMap<String, ChildElementBinder<MediaInfo.Format>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put("NumStream", new ChildElementBinder<MediaInfo.Format>() { // from class: com.tencent.cos.xml.model.tag.MediaInfo$Format$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, MediaInfo.Format format, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                format.numStream = Integer.parseInt(xmlPullParser.getText());
            }
        });
        this.childElementBinders.put("NumProgram", new ChildElementBinder<MediaInfo.Format>() { // from class: com.tencent.cos.xml.model.tag.MediaInfo$Format$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, MediaInfo.Format format, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                format.numProgram = Integer.parseInt(xmlPullParser.getText());
            }
        });
        this.childElementBinders.put("FormatName", new ChildElementBinder<MediaInfo.Format>() { // from class: com.tencent.cos.xml.model.tag.MediaInfo$Format$$XmlAdapter.3
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, MediaInfo.Format format, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                format.formatName = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("FormatLongName", new ChildElementBinder<MediaInfo.Format>() { // from class: com.tencent.cos.xml.model.tag.MediaInfo$Format$$XmlAdapter.4
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, MediaInfo.Format format, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                format.formatLongName = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("StartTime", new ChildElementBinder<MediaInfo.Format>() { // from class: com.tencent.cos.xml.model.tag.MediaInfo$Format$$XmlAdapter.5
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, MediaInfo.Format format, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                format.startTime = Float.parseFloat(xmlPullParser.getText());
            }
        });
        this.childElementBinders.put(SsManifestParser.C4933d.f26659s, new ChildElementBinder<MediaInfo.Format>() { // from class: com.tencent.cos.xml.model.tag.MediaInfo$Format$$XmlAdapter.6
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, MediaInfo.Format format, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                format.duration = Float.parseFloat(xmlPullParser.getText());
            }
        });
        this.childElementBinders.put(SsManifestParser.C4932c.f26642h, new ChildElementBinder<MediaInfo.Format>() { // from class: com.tencent.cos.xml.model.tag.MediaInfo$Format$$XmlAdapter.7
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, MediaInfo.Format format, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                format.bitrate = Float.parseFloat(xmlPullParser.getText());
            }
        });
        this.childElementBinders.put("Size", new ChildElementBinder<MediaInfo.Format>() { // from class: com.tencent.cos.xml.model.tag.MediaInfo$Format$$XmlAdapter.8
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, MediaInfo.Format format, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                format.size = Float.parseFloat(xmlPullParser.getText());
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public MediaInfo.Format fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        MediaInfo.Format format = new MediaInfo.Format();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<MediaInfo.Format> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, format, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "Format" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return format;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return format;
    }
}
