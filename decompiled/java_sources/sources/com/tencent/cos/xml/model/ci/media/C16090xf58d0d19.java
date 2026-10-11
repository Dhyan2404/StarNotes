package com.tencent.cos.xml.model.ci.media;

import com.tencent.cos.xml.model.ci.media.TemplateVoiceSeparate;
import com.tencent.cos.xml.model.ci.media.TemplateVoiceSeparateResponse;
import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* renamed from: com.tencent.cos.xml.model.ci.media.TemplateVoiceSeparateResponse$TemplateVoiceSeparateResponseVoiceSeparate$$XmlAdapter */
/* loaded from: classes10.dex */
public class C16090xf58d0d19 extends IXmlAdapter<TemplateVoiceSeparateResponse.TemplateVoiceSeparateResponseVoiceSeparate> {
    private HashMap<String, ChildElementBinder<TemplateVoiceSeparateResponse.TemplateVoiceSeparateResponseVoiceSeparate>> childElementBinders;

    public C16090xf58d0d19() {
        HashMap<String, ChildElementBinder<TemplateVoiceSeparateResponse.TemplateVoiceSeparateResponseVoiceSeparate>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put("AudioMode", new ChildElementBinder<TemplateVoiceSeparateResponse.TemplateVoiceSeparateResponseVoiceSeparate>() { // from class: com.tencent.cos.xml.model.ci.media.TemplateVoiceSeparateResponse$TemplateVoiceSeparateResponseVoiceSeparate$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, TemplateVoiceSeparateResponse.TemplateVoiceSeparateResponseVoiceSeparate templateVoiceSeparateResponseVoiceSeparate, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                templateVoiceSeparateResponseVoiceSeparate.audioMode = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("AudioConfig", new ChildElementBinder<TemplateVoiceSeparateResponse.TemplateVoiceSeparateResponseVoiceSeparate>() { // from class: com.tencent.cos.xml.model.ci.media.TemplateVoiceSeparateResponse$TemplateVoiceSeparateResponseVoiceSeparate$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, TemplateVoiceSeparateResponse.TemplateVoiceSeparateResponseVoiceSeparate templateVoiceSeparateResponseVoiceSeparate, String str) throws IOException, XmlPullParserException {
                templateVoiceSeparateResponseVoiceSeparate.audioConfig = (TemplateVoiceSeparate.AudioConfig) QCloudXml.fromXml(xmlPullParser, TemplateVoiceSeparate.AudioConfig.class, "AudioConfig");
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public TemplateVoiceSeparateResponse.TemplateVoiceSeparateResponseVoiceSeparate fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        TemplateVoiceSeparateResponse.TemplateVoiceSeparateResponseVoiceSeparate templateVoiceSeparateResponseVoiceSeparate = new TemplateVoiceSeparateResponse.TemplateVoiceSeparateResponseVoiceSeparate();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<TemplateVoiceSeparateResponse.TemplateVoiceSeparateResponseVoiceSeparate> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, templateVoiceSeparateResponseVoiceSeparate, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "VoiceSeparate" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return templateVoiceSeparateResponseVoiceSeparate;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return templateVoiceSeparateResponseVoiceSeparate;
    }
}
