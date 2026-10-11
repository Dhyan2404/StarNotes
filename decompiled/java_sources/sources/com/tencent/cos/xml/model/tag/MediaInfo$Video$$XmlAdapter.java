package com.tencent.cos.xml.model.tag;

import com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser;
import com.google.common.net.HttpHeaders;
import com.tencent.cos.xml.model.tag.MediaInfo;
import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import java.io.IOException;
import java.util.HashMap;
import org.apache.logging.log4j.Level;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes10.dex */
public class MediaInfo$Video$$XmlAdapter extends IXmlAdapter<MediaInfo.Video> {
    private HashMap<String, ChildElementBinder<MediaInfo.Video>> childElementBinders;

    public MediaInfo$Video$$XmlAdapter() {
        HashMap<String, ChildElementBinder<MediaInfo.Video>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put(SsManifestParser.C4932c.f26641g, new ChildElementBinder<MediaInfo.Video>() { // from class: com.tencent.cos.xml.model.tag.MediaInfo$Video$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, MediaInfo.Video video, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                video.index = Integer.parseInt(xmlPullParser.getText());
            }
        });
        this.childElementBinders.put("CodecName", new ChildElementBinder<MediaInfo.Video>() { // from class: com.tencent.cos.xml.model.tag.MediaInfo$Video$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, MediaInfo.Video video, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                video.codecName = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("CodecLongName", new ChildElementBinder<MediaInfo.Video>() { // from class: com.tencent.cos.xml.model.tag.MediaInfo$Video$$XmlAdapter.3
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, MediaInfo.Video video, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                video.codecLongName = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("CodecTimeBase", new ChildElementBinder<MediaInfo.Video>() { // from class: com.tencent.cos.xml.model.tag.MediaInfo$Video$$XmlAdapter.4
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, MediaInfo.Video video, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                video.codecTimeBase = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("CodecTagString", new ChildElementBinder<MediaInfo.Video>() { // from class: com.tencent.cos.xml.model.tag.MediaInfo$Video$$XmlAdapter.5
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, MediaInfo.Video video, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                video.codecTagString = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("CodecTag", new ChildElementBinder<MediaInfo.Video>() { // from class: com.tencent.cos.xml.model.tag.MediaInfo$Video$$XmlAdapter.6
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, MediaInfo.Video video, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                video.codecTag = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Profile", new ChildElementBinder<MediaInfo.Video>() { // from class: com.tencent.cos.xml.model.tag.MediaInfo$Video$$XmlAdapter.7
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, MediaInfo.Video video, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                video.profile = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Height", new ChildElementBinder<MediaInfo.Video>() { // from class: com.tencent.cos.xml.model.tag.MediaInfo$Video$$XmlAdapter.8
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, MediaInfo.Video video, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                video.height = Integer.parseInt(xmlPullParser.getText());
            }
        });
        this.childElementBinders.put(HttpHeaders.WIDTH, new ChildElementBinder<MediaInfo.Video>() { // from class: com.tencent.cos.xml.model.tag.MediaInfo$Video$$XmlAdapter.9
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, MediaInfo.Video video, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                video.width = Integer.parseInt(xmlPullParser.getText());
            }
        });
        this.childElementBinders.put("HasBFrame", new ChildElementBinder<MediaInfo.Video>() { // from class: com.tencent.cos.xml.model.tag.MediaInfo$Video$$XmlAdapter.10
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, MediaInfo.Video video, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                video.hasBFrame = Integer.parseInt(xmlPullParser.getText());
            }
        });
        this.childElementBinders.put("RefFrames", new ChildElementBinder<MediaInfo.Video>() { // from class: com.tencent.cos.xml.model.tag.MediaInfo$Video$$XmlAdapter.11
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, MediaInfo.Video video, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                video.refFrames = Integer.parseInt(xmlPullParser.getText());
            }
        });
        this.childElementBinders.put("Sar", new ChildElementBinder<MediaInfo.Video>() { // from class: com.tencent.cos.xml.model.tag.MediaInfo$Video$$XmlAdapter.12
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, MediaInfo.Video video, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                video.sar = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Dar", new ChildElementBinder<MediaInfo.Video>() { // from class: com.tencent.cos.xml.model.tag.MediaInfo$Video$$XmlAdapter.13
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, MediaInfo.Video video, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                video.dar = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("PixFormat", new ChildElementBinder<MediaInfo.Video>() { // from class: com.tencent.cos.xml.model.tag.MediaInfo$Video$$XmlAdapter.14
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, MediaInfo.Video video, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                video.pixFormat = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("FieldOrder", new ChildElementBinder<MediaInfo.Video>() { // from class: com.tencent.cos.xml.model.tag.MediaInfo$Video$$XmlAdapter.15
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, MediaInfo.Video video, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                video.fieldOrder = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put(Level.CATEGORY, new ChildElementBinder<MediaInfo.Video>() { // from class: com.tencent.cos.xml.model.tag.MediaInfo$Video$$XmlAdapter.16
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, MediaInfo.Video video, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                video.level = Integer.parseInt(xmlPullParser.getText());
            }
        });
        this.childElementBinders.put("Fps", new ChildElementBinder<MediaInfo.Video>() { // from class: com.tencent.cos.xml.model.tag.MediaInfo$Video$$XmlAdapter.17
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, MediaInfo.Video video, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                video.fps = Float.parseFloat(xmlPullParser.getText());
            }
        });
        this.childElementBinders.put("AvgFps", new ChildElementBinder<MediaInfo.Video>() { // from class: com.tencent.cos.xml.model.tag.MediaInfo$Video$$XmlAdapter.18
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, MediaInfo.Video video, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                video.avgFps = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Timebase", new ChildElementBinder<MediaInfo.Video>() { // from class: com.tencent.cos.xml.model.tag.MediaInfo$Video$$XmlAdapter.19
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, MediaInfo.Video video, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                video.timebase = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("StartTime", new ChildElementBinder<MediaInfo.Video>() { // from class: com.tencent.cos.xml.model.tag.MediaInfo$Video$$XmlAdapter.20
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, MediaInfo.Video video, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                video.startTime = Float.parseFloat(xmlPullParser.getText());
            }
        });
        this.childElementBinders.put(SsManifestParser.C4933d.f26659s, new ChildElementBinder<MediaInfo.Video>() { // from class: com.tencent.cos.xml.model.tag.MediaInfo$Video$$XmlAdapter.21
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, MediaInfo.Video video, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                video.duration = Float.parseFloat(xmlPullParser.getText());
            }
        });
        this.childElementBinders.put(SsManifestParser.C4932c.f26642h, new ChildElementBinder<MediaInfo.Video>() { // from class: com.tencent.cos.xml.model.tag.MediaInfo$Video$$XmlAdapter.22
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, MediaInfo.Video video, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                video.bitrate = Float.parseFloat(xmlPullParser.getText());
            }
        });
        this.childElementBinders.put("NumFrames", new ChildElementBinder<MediaInfo.Video>() { // from class: com.tencent.cos.xml.model.tag.MediaInfo$Video$$XmlAdapter.23
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, MediaInfo.Video video, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                video.numFrames = Integer.parseInt(xmlPullParser.getText());
            }
        });
        this.childElementBinders.put("Language", new ChildElementBinder<MediaInfo.Video>() { // from class: com.tencent.cos.xml.model.tag.MediaInfo$Video$$XmlAdapter.24
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, MediaInfo.Video video, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                video.language = xmlPullParser.getText();
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public MediaInfo.Video fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        MediaInfo.Video video = new MediaInfo.Video();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<MediaInfo.Video> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, video, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "Video" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return video;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return video;
    }
}
