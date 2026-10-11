package com.tencent.cos.xml.model.ci.media;

import com.tencent.cos.xml.model.ci.media.SubmitExtractDigitalWatermarkJobResponse;
import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import java.io.IOException;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* renamed from: com.tencent.cos.xml.model.ci.media.SubmitExtractDigitalWatermarkJobResponse$SubmitExtractDigitalWatermarkJobResponseExtractDigitalWatermark$$XmlAdapter */
/* loaded from: classes10.dex */
public class C15817xb1fc6741 extends IXmlAdapter<SubmitExtractDigitalWatermarkJobResponse.SubmitExtractDigitalWatermarkJobResponseExtractDigitalWatermark> {
    private HashMap<String, ChildElementBinder<SubmitExtractDigitalWatermarkJobResponse.SubmitExtractDigitalWatermarkJobResponseExtractDigitalWatermark>> childElementBinders;

    public C15817xb1fc6741() {
        HashMap<String, ChildElementBinder<SubmitExtractDigitalWatermarkJobResponse.SubmitExtractDigitalWatermarkJobResponseExtractDigitalWatermark>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put("Message", new ChildElementBinder<SubmitExtractDigitalWatermarkJobResponse.SubmitExtractDigitalWatermarkJobResponseExtractDigitalWatermark>() { // from class: com.tencent.cos.xml.model.ci.media.SubmitExtractDigitalWatermarkJobResponse$SubmitExtractDigitalWatermarkJobResponseExtractDigitalWatermark$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SubmitExtractDigitalWatermarkJobResponse.SubmitExtractDigitalWatermarkJobResponseExtractDigitalWatermark submitExtractDigitalWatermarkJobResponseExtractDigitalWatermark, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                submitExtractDigitalWatermarkJobResponseExtractDigitalWatermark.message = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Type", new ChildElementBinder<SubmitExtractDigitalWatermarkJobResponse.SubmitExtractDigitalWatermarkJobResponseExtractDigitalWatermark>() { // from class: com.tencent.cos.xml.model.ci.media.SubmitExtractDigitalWatermarkJobResponse$SubmitExtractDigitalWatermarkJobResponseExtractDigitalWatermark$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SubmitExtractDigitalWatermarkJobResponse.SubmitExtractDigitalWatermarkJobResponseExtractDigitalWatermark submitExtractDigitalWatermarkJobResponseExtractDigitalWatermark, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                submitExtractDigitalWatermarkJobResponseExtractDigitalWatermark.type = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Version", new ChildElementBinder<SubmitExtractDigitalWatermarkJobResponse.SubmitExtractDigitalWatermarkJobResponseExtractDigitalWatermark>() { // from class: com.tencent.cos.xml.model.ci.media.SubmitExtractDigitalWatermarkJobResponse$SubmitExtractDigitalWatermarkJobResponseExtractDigitalWatermark$$XmlAdapter.3
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SubmitExtractDigitalWatermarkJobResponse.SubmitExtractDigitalWatermarkJobResponseExtractDigitalWatermark submitExtractDigitalWatermarkJobResponseExtractDigitalWatermark, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                submitExtractDigitalWatermarkJobResponseExtractDigitalWatermark.version = xmlPullParser.getText();
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public SubmitExtractDigitalWatermarkJobResponse.SubmitExtractDigitalWatermarkJobResponseExtractDigitalWatermark fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        SubmitExtractDigitalWatermarkJobResponse.SubmitExtractDigitalWatermarkJobResponseExtractDigitalWatermark submitExtractDigitalWatermarkJobResponseExtractDigitalWatermark = new SubmitExtractDigitalWatermarkJobResponse.SubmitExtractDigitalWatermarkJobResponseExtractDigitalWatermark();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<SubmitExtractDigitalWatermarkJobResponse.SubmitExtractDigitalWatermarkJobResponseExtractDigitalWatermark> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, submitExtractDigitalWatermarkJobResponseExtractDigitalWatermark, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "ExtractDigitalWatermark" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return submitExtractDigitalWatermarkJobResponseExtractDigitalWatermark;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return submitExtractDigitalWatermarkJobResponseExtractDigitalWatermark;
    }
}
