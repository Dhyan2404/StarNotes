package com.tencent.cos.xml.model.ci.media;

import com.tencent.cos.xml.model.ci.media.SubmitVideoTagJobResponse;
import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import java.io.IOException;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* renamed from: com.tencent.cos.xml.model.ci.media.SubmitVideoTagJobResponse$SubmitVideoTagJobResponseBBox$$XmlAdapter */
/* loaded from: classes10.dex */
public class C15887x6617a06b extends IXmlAdapter<SubmitVideoTagJobResponse.SubmitVideoTagJobResponseBBox> {
    private HashMap<String, ChildElementBinder<SubmitVideoTagJobResponse.SubmitVideoTagJobResponseBBox>> childElementBinders;

    public C15887x6617a06b() {
        HashMap<String, ChildElementBinder<SubmitVideoTagJobResponse.SubmitVideoTagJobResponseBBox>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put("X1", new ChildElementBinder<SubmitVideoTagJobResponse.SubmitVideoTagJobResponseBBox>() { // from class: com.tencent.cos.xml.model.ci.media.SubmitVideoTagJobResponse$SubmitVideoTagJobResponseBBox$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SubmitVideoTagJobResponse.SubmitVideoTagJobResponseBBox submitVideoTagJobResponseBBox, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                submitVideoTagJobResponseBBox.f93302x1 = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Y1", new ChildElementBinder<SubmitVideoTagJobResponse.SubmitVideoTagJobResponseBBox>() { // from class: com.tencent.cos.xml.model.ci.media.SubmitVideoTagJobResponse$SubmitVideoTagJobResponseBBox$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SubmitVideoTagJobResponse.SubmitVideoTagJobResponseBBox submitVideoTagJobResponseBBox, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                submitVideoTagJobResponseBBox.f93304y1 = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("X2", new ChildElementBinder<SubmitVideoTagJobResponse.SubmitVideoTagJobResponseBBox>() { // from class: com.tencent.cos.xml.model.ci.media.SubmitVideoTagJobResponse$SubmitVideoTagJobResponseBBox$$XmlAdapter.3
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SubmitVideoTagJobResponse.SubmitVideoTagJobResponseBBox submitVideoTagJobResponseBBox, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                submitVideoTagJobResponseBBox.f93303x2 = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Y2", new ChildElementBinder<SubmitVideoTagJobResponse.SubmitVideoTagJobResponseBBox>() { // from class: com.tencent.cos.xml.model.ci.media.SubmitVideoTagJobResponse$SubmitVideoTagJobResponseBBox$$XmlAdapter.4
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SubmitVideoTagJobResponse.SubmitVideoTagJobResponseBBox submitVideoTagJobResponseBBox, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                submitVideoTagJobResponseBBox.f93305y2 = xmlPullParser.getText();
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public SubmitVideoTagJobResponse.SubmitVideoTagJobResponseBBox fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        SubmitVideoTagJobResponse.SubmitVideoTagJobResponseBBox submitVideoTagJobResponseBBox = new SubmitVideoTagJobResponse.SubmitVideoTagJobResponseBBox();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<SubmitVideoTagJobResponse.SubmitVideoTagJobResponseBBox> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, submitVideoTagJobResponseBBox, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "BBox" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return submitVideoTagJobResponseBBox;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return submitVideoTagJobResponseBBox;
    }
}
