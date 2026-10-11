package com.tencent.cos.xml.model.ci.media;

import com.tencent.cos.xml.model.ci.media.SubmitVideoTagJobResponse;
import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* renamed from: com.tencent.cos.xml.model.ci.media.SubmitVideoTagJobResponse$SubmitVideoTagJobResponseObjects$$XmlAdapter */
/* loaded from: classes10.dex */
public class C15893xe03ce6a2 extends IXmlAdapter<SubmitVideoTagJobResponse.SubmitVideoTagJobResponseObjects> {
    private HashMap<String, ChildElementBinder<SubmitVideoTagJobResponse.SubmitVideoTagJobResponseObjects>> childElementBinders;

    public C15893xe03ce6a2() {
        HashMap<String, ChildElementBinder<SubmitVideoTagJobResponse.SubmitVideoTagJobResponseObjects>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put("Name", new ChildElementBinder<SubmitVideoTagJobResponse.SubmitVideoTagJobResponseObjects>() { // from class: com.tencent.cos.xml.model.ci.media.SubmitVideoTagJobResponse$SubmitVideoTagJobResponseObjects$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SubmitVideoTagJobResponse.SubmitVideoTagJobResponseObjects submitVideoTagJobResponseObjects, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                submitVideoTagJobResponseObjects.name = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Confidence", new ChildElementBinder<SubmitVideoTagJobResponse.SubmitVideoTagJobResponseObjects>() { // from class: com.tencent.cos.xml.model.ci.media.SubmitVideoTagJobResponse$SubmitVideoTagJobResponseObjects$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SubmitVideoTagJobResponse.SubmitVideoTagJobResponseObjects submitVideoTagJobResponseObjects, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                submitVideoTagJobResponseObjects.confidence = Float.parseFloat(xmlPullParser.getText());
            }
        });
        this.childElementBinders.put("BBox", new ChildElementBinder<SubmitVideoTagJobResponse.SubmitVideoTagJobResponseObjects>() { // from class: com.tencent.cos.xml.model.ci.media.SubmitVideoTagJobResponse$SubmitVideoTagJobResponseObjects$$XmlAdapter.3
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SubmitVideoTagJobResponse.SubmitVideoTagJobResponseObjects submitVideoTagJobResponseObjects, String str) throws IOException, XmlPullParserException {
                if (submitVideoTagJobResponseObjects.bBox == null) {
                    submitVideoTagJobResponseObjects.bBox = new ArrayList();
                }
                submitVideoTagJobResponseObjects.bBox.add((SubmitVideoTagJobResponse.SubmitVideoTagJobResponseBBox) QCloudXml.fromXml(xmlPullParser, SubmitVideoTagJobResponse.SubmitVideoTagJobResponseBBox.class, "BBox"));
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public SubmitVideoTagJobResponse.SubmitVideoTagJobResponseObjects fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        SubmitVideoTagJobResponse.SubmitVideoTagJobResponseObjects submitVideoTagJobResponseObjects = new SubmitVideoTagJobResponse.SubmitVideoTagJobResponseObjects();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<SubmitVideoTagJobResponse.SubmitVideoTagJobResponseObjects> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, submitVideoTagJobResponseObjects, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "Objects" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return submitVideoTagJobResponseObjects;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return submitVideoTagJobResponseObjects;
    }
}
