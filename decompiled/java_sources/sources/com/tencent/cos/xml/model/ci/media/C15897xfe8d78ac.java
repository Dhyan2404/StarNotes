package com.tencent.cos.xml.model.ci.media;

import com.tencent.cos.xml.model.ci.media.SubmitVideoTagJobResponse;
import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* renamed from: com.tencent.cos.xml.model.ci.media.SubmitVideoTagJobResponse$SubmitVideoTagJobResponseStreamData$$XmlAdapter */
/* loaded from: classes10.dex */
public class C15897xfe8d78ac extends IXmlAdapter<SubmitVideoTagJobResponse.SubmitVideoTagJobResponseStreamData> {
    private HashMap<String, ChildElementBinder<SubmitVideoTagJobResponse.SubmitVideoTagJobResponseStreamData>> childElementBinders;

    public C15897xfe8d78ac() {
        HashMap<String, ChildElementBinder<SubmitVideoTagJobResponse.SubmitVideoTagJobResponseStreamData>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put("Data", new ChildElementBinder<SubmitVideoTagJobResponse.SubmitVideoTagJobResponseStreamData>() { // from class: com.tencent.cos.xml.model.ci.media.SubmitVideoTagJobResponse$SubmitVideoTagJobResponseStreamData$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SubmitVideoTagJobResponse.SubmitVideoTagJobResponseStreamData submitVideoTagJobResponseStreamData, String str) throws IOException, XmlPullParserException {
                submitVideoTagJobResponseStreamData.data = (SubmitVideoTagJobResponse.SubmitVideoTagJobResponseData) QCloudXml.fromXml(xmlPullParser, SubmitVideoTagJobResponse.SubmitVideoTagJobResponseData.class, "Data");
            }
        });
        this.childElementBinders.put("SubErrCode", new ChildElementBinder<SubmitVideoTagJobResponse.SubmitVideoTagJobResponseStreamData>() { // from class: com.tencent.cos.xml.model.ci.media.SubmitVideoTagJobResponse$SubmitVideoTagJobResponseStreamData$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SubmitVideoTagJobResponse.SubmitVideoTagJobResponseStreamData submitVideoTagJobResponseStreamData, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                submitVideoTagJobResponseStreamData.subErrCode = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("SubErrMsg", new ChildElementBinder<SubmitVideoTagJobResponse.SubmitVideoTagJobResponseStreamData>() { // from class: com.tencent.cos.xml.model.ci.media.SubmitVideoTagJobResponse$SubmitVideoTagJobResponseStreamData$$XmlAdapter.3
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SubmitVideoTagJobResponse.SubmitVideoTagJobResponseStreamData submitVideoTagJobResponseStreamData, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                submitVideoTagJobResponseStreamData.subErrMsg = xmlPullParser.getText();
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public SubmitVideoTagJobResponse.SubmitVideoTagJobResponseStreamData fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        SubmitVideoTagJobResponse.SubmitVideoTagJobResponseStreamData submitVideoTagJobResponseStreamData = new SubmitVideoTagJobResponse.SubmitVideoTagJobResponseStreamData();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<SubmitVideoTagJobResponse.SubmitVideoTagJobResponseStreamData> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, submitVideoTagJobResponseStreamData, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "StreamData" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return submitVideoTagJobResponseStreamData;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return submitVideoTagJobResponseStreamData;
    }
}
