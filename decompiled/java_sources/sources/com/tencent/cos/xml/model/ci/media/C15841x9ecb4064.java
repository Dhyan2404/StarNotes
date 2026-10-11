package com.tencent.cos.xml.model.ci.media;

import com.tencent.cos.xml.model.ci.media.SubmitPicProcessJobResponse;
import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import java.io.IOException;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* renamed from: com.tencent.cos.xml.model.ci.media.SubmitPicProcessJobResponse$SubmitPicProcessJobResponseInput$$XmlAdapter */
/* loaded from: classes10.dex */
public class C15841x9ecb4064 extends IXmlAdapter<SubmitPicProcessJobResponse.SubmitPicProcessJobResponseInput> {
    private HashMap<String, ChildElementBinder<SubmitPicProcessJobResponse.SubmitPicProcessJobResponseInput>> childElementBinders;

    public C15841x9ecb4064() {
        HashMap<String, ChildElementBinder<SubmitPicProcessJobResponse.SubmitPicProcessJobResponseInput>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put("Region", new ChildElementBinder<SubmitPicProcessJobResponse.SubmitPicProcessJobResponseInput>() { // from class: com.tencent.cos.xml.model.ci.media.SubmitPicProcessJobResponse$SubmitPicProcessJobResponseInput$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SubmitPicProcessJobResponse.SubmitPicProcessJobResponseInput submitPicProcessJobResponseInput, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                submitPicProcessJobResponseInput.region = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("BucketId", new ChildElementBinder<SubmitPicProcessJobResponse.SubmitPicProcessJobResponseInput>() { // from class: com.tencent.cos.xml.model.ci.media.SubmitPicProcessJobResponse$SubmitPicProcessJobResponseInput$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SubmitPicProcessJobResponse.SubmitPicProcessJobResponseInput submitPicProcessJobResponseInput, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                submitPicProcessJobResponseInput.bucketId = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Object", new ChildElementBinder<SubmitPicProcessJobResponse.SubmitPicProcessJobResponseInput>() { // from class: com.tencent.cos.xml.model.ci.media.SubmitPicProcessJobResponse$SubmitPicProcessJobResponseInput$$XmlAdapter.3
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SubmitPicProcessJobResponse.SubmitPicProcessJobResponseInput submitPicProcessJobResponseInput, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                submitPicProcessJobResponseInput.object = xmlPullParser.getText();
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public SubmitPicProcessJobResponse.SubmitPicProcessJobResponseInput fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        SubmitPicProcessJobResponse.SubmitPicProcessJobResponseInput submitPicProcessJobResponseInput = new SubmitPicProcessJobResponse.SubmitPicProcessJobResponseInput();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<SubmitPicProcessJobResponse.SubmitPicProcessJobResponseInput> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, submitPicProcessJobResponseInput, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "Input" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return submitPicProcessJobResponseInput;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return submitPicProcessJobResponseInput;
    }
}
