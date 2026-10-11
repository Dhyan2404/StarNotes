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
public class MediaInfoStreamSubtitle$$XmlAdapter extends IXmlAdapter<MediaInfoStreamSubtitle> {
    private HashMap<String, ChildElementBinder<MediaInfoStreamSubtitle>> childElementBinders;

    public MediaInfoStreamSubtitle$$XmlAdapter() {
        HashMap<String, ChildElementBinder<MediaInfoStreamSubtitle>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put(SsManifestParser.C4932c.f26641g, new ChildElementBinder<MediaInfoStreamSubtitle>() { // from class: com.tencent.cos.xml.model.ci.common.MediaInfoStreamSubtitle$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, MediaInfoStreamSubtitle mediaInfoStreamSubtitle, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                mediaInfoStreamSubtitle.index = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Language", new ChildElementBinder<MediaInfoStreamSubtitle>() { // from class: com.tencent.cos.xml.model.ci.common.MediaInfoStreamSubtitle$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, MediaInfoStreamSubtitle mediaInfoStreamSubtitle, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                mediaInfoStreamSubtitle.language = xmlPullParser.getText();
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public MediaInfoStreamSubtitle fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        MediaInfoStreamSubtitle mediaInfoStreamSubtitle = new MediaInfoStreamSubtitle();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<MediaInfoStreamSubtitle> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, mediaInfoStreamSubtitle, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "MediaInfoStreamSubtitle" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return mediaInfoStreamSubtitle;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return mediaInfoStreamSubtitle;
    }

    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, MediaInfoStreamSubtitle mediaInfoStreamSubtitle, String str) throws IOException, XmlPullParserException {
        if (mediaInfoStreamSubtitle == null) {
            return;
        }
        if (str == null) {
            str = "MediaInfoStreamSubtitle";
        }
        xmlSerializer.startTag("", str);
        if (mediaInfoStreamSubtitle.index != null) {
            xmlSerializer.startTag("", SsManifestParser.C4932c.f26641g);
            xmlSerializer.text(String.valueOf(mediaInfoStreamSubtitle.index));
            xmlSerializer.endTag("", SsManifestParser.C4932c.f26641g);
        }
        if (mediaInfoStreamSubtitle.language != null) {
            xmlSerializer.startTag("", "Language");
            xmlSerializer.text(String.valueOf(mediaInfoStreamSubtitle.language));
            xmlSerializer.endTag("", "Language");
        }
        xmlSerializer.endTag("", str);
    }
}
