package com.tencent.cos.xml.model.ci.media;

import com.tencent.cos.xml.model.ci.media.TemplateTranscodeResponse;
import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes10.dex */
public class TemplateTranscodeResponse$$XmlAdapter extends IXmlAdapter<TemplateTranscodeResponse> {
    private HashMap<String, ChildElementBinder<TemplateTranscodeResponse>> childElementBinders;

    public TemplateTranscodeResponse$$XmlAdapter() {
        HashMap<String, ChildElementBinder<TemplateTranscodeResponse>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put("Template", new ChildElementBinder<TemplateTranscodeResponse>() { // from class: com.tencent.cos.xml.model.ci.media.TemplateTranscodeResponse$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, TemplateTranscodeResponse templateTranscodeResponse, String str) throws IOException, XmlPullParserException {
                templateTranscodeResponse.template = (TemplateTranscodeResponse.TemplateTranscodeResponseTemplate) QCloudXml.fromXml(xmlPullParser, TemplateTranscodeResponse.TemplateTranscodeResponseTemplate.class, "Template");
            }
        });
        this.childElementBinders.put("RequestId", new ChildElementBinder<TemplateTranscodeResponse>() { // from class: com.tencent.cos.xml.model.ci.media.TemplateTranscodeResponse$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, TemplateTranscodeResponse templateTranscodeResponse, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                templateTranscodeResponse.requestId = xmlPullParser.getText();
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public TemplateTranscodeResponse fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        TemplateTranscodeResponse templateTranscodeResponse = new TemplateTranscodeResponse();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<TemplateTranscodeResponse> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, templateTranscodeResponse, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "Response" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return templateTranscodeResponse;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return templateTranscodeResponse;
    }
}
