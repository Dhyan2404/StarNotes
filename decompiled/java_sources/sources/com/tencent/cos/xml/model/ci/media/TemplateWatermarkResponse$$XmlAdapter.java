package com.tencent.cos.xml.model.ci.media;

import com.tencent.cos.xml.model.ci.media.TemplateWatermarkResponse;
import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes10.dex */
public class TemplateWatermarkResponse$$XmlAdapter extends IXmlAdapter<TemplateWatermarkResponse> {
    private HashMap<String, ChildElementBinder<TemplateWatermarkResponse>> childElementBinders;

    public TemplateWatermarkResponse$$XmlAdapter() {
        HashMap<String, ChildElementBinder<TemplateWatermarkResponse>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put("Template", new ChildElementBinder<TemplateWatermarkResponse>() { // from class: com.tencent.cos.xml.model.ci.media.TemplateWatermarkResponse$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, TemplateWatermarkResponse templateWatermarkResponse, String str) throws IOException, XmlPullParserException {
                templateWatermarkResponse.template = (TemplateWatermarkResponse.TemplateWatermarkResponseTemplate) QCloudXml.fromXml(xmlPullParser, TemplateWatermarkResponse.TemplateWatermarkResponseTemplate.class, "Template");
            }
        });
        this.childElementBinders.put("RequestId", new ChildElementBinder<TemplateWatermarkResponse>() { // from class: com.tencent.cos.xml.model.ci.media.TemplateWatermarkResponse$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, TemplateWatermarkResponse templateWatermarkResponse, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                templateWatermarkResponse.requestId = xmlPullParser.getText();
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public TemplateWatermarkResponse fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        TemplateWatermarkResponse templateWatermarkResponse = new TemplateWatermarkResponse();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<TemplateWatermarkResponse> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, templateWatermarkResponse, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "Response" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return templateWatermarkResponse;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return templateWatermarkResponse;
    }
}
