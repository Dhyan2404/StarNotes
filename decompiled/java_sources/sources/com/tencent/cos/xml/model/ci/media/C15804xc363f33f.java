package com.tencent.cos.xml.model.ci.media;

import com.tencent.cos.xml.model.ci.media.SubmitConcatJobResponse;
import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import java.util.HashMap;
import org.apache.commons.compress.harmony.unpack200.AttributeLayout;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* renamed from: com.tencent.cos.xml.model.ci.media.SubmitConcatJobResponse$SubmitConcatJobResponseJobsDetail$$XmlAdapter */
/* loaded from: classes10.dex */
public class C15804xc363f33f extends IXmlAdapter<SubmitConcatJobResponse.SubmitConcatJobResponseJobsDetail> {
    private HashMap<String, ChildElementBinder<SubmitConcatJobResponse.SubmitConcatJobResponseJobsDetail>> childElementBinders;

    public C15804xc363f33f() {
        HashMap<String, ChildElementBinder<SubmitConcatJobResponse.SubmitConcatJobResponseJobsDetail>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put(AttributeLayout.ATTRIBUTE_CODE, new ChildElementBinder<SubmitConcatJobResponse.SubmitConcatJobResponseJobsDetail>() { // from class: com.tencent.cos.xml.model.ci.media.SubmitConcatJobResponse$SubmitConcatJobResponseJobsDetail$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SubmitConcatJobResponse.SubmitConcatJobResponseJobsDetail submitConcatJobResponseJobsDetail, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                submitConcatJobResponseJobsDetail.code = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Message", new ChildElementBinder<SubmitConcatJobResponse.SubmitConcatJobResponseJobsDetail>() { // from class: com.tencent.cos.xml.model.ci.media.SubmitConcatJobResponse$SubmitConcatJobResponseJobsDetail$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SubmitConcatJobResponse.SubmitConcatJobResponseJobsDetail submitConcatJobResponseJobsDetail, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                submitConcatJobResponseJobsDetail.message = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("JobId", new ChildElementBinder<SubmitConcatJobResponse.SubmitConcatJobResponseJobsDetail>() { // from class: com.tencent.cos.xml.model.ci.media.SubmitConcatJobResponse$SubmitConcatJobResponseJobsDetail$$XmlAdapter.3
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SubmitConcatJobResponse.SubmitConcatJobResponseJobsDetail submitConcatJobResponseJobsDetail, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                submitConcatJobResponseJobsDetail.jobId = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Tag", new ChildElementBinder<SubmitConcatJobResponse.SubmitConcatJobResponseJobsDetail>() { // from class: com.tencent.cos.xml.model.ci.media.SubmitConcatJobResponse$SubmitConcatJobResponseJobsDetail$$XmlAdapter.4
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SubmitConcatJobResponse.SubmitConcatJobResponseJobsDetail submitConcatJobResponseJobsDetail, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                submitConcatJobResponseJobsDetail.tag = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("State", new ChildElementBinder<SubmitConcatJobResponse.SubmitConcatJobResponseJobsDetail>() { // from class: com.tencent.cos.xml.model.ci.media.SubmitConcatJobResponse$SubmitConcatJobResponseJobsDetail$$XmlAdapter.5
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SubmitConcatJobResponse.SubmitConcatJobResponseJobsDetail submitConcatJobResponseJobsDetail, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                submitConcatJobResponseJobsDetail.state = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("CreationTime", new ChildElementBinder<SubmitConcatJobResponse.SubmitConcatJobResponseJobsDetail>() { // from class: com.tencent.cos.xml.model.ci.media.SubmitConcatJobResponse$SubmitConcatJobResponseJobsDetail$$XmlAdapter.6
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SubmitConcatJobResponse.SubmitConcatJobResponseJobsDetail submitConcatJobResponseJobsDetail, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                submitConcatJobResponseJobsDetail.creationTime = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("StartTime", new ChildElementBinder<SubmitConcatJobResponse.SubmitConcatJobResponseJobsDetail>() { // from class: com.tencent.cos.xml.model.ci.media.SubmitConcatJobResponse$SubmitConcatJobResponseJobsDetail$$XmlAdapter.7
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SubmitConcatJobResponse.SubmitConcatJobResponseJobsDetail submitConcatJobResponseJobsDetail, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                submitConcatJobResponseJobsDetail.startTime = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("EndTime", new ChildElementBinder<SubmitConcatJobResponse.SubmitConcatJobResponseJobsDetail>() { // from class: com.tencent.cos.xml.model.ci.media.SubmitConcatJobResponse$SubmitConcatJobResponseJobsDetail$$XmlAdapter.8
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SubmitConcatJobResponse.SubmitConcatJobResponseJobsDetail submitConcatJobResponseJobsDetail, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                submitConcatJobResponseJobsDetail.endTime = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("QueueId", new ChildElementBinder<SubmitConcatJobResponse.SubmitConcatJobResponseJobsDetail>() { // from class: com.tencent.cos.xml.model.ci.media.SubmitConcatJobResponse$SubmitConcatJobResponseJobsDetail$$XmlAdapter.9
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SubmitConcatJobResponse.SubmitConcatJobResponseJobsDetail submitConcatJobResponseJobsDetail, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                submitConcatJobResponseJobsDetail.queueId = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Input", new ChildElementBinder<SubmitConcatJobResponse.SubmitConcatJobResponseJobsDetail>() { // from class: com.tencent.cos.xml.model.ci.media.SubmitConcatJobResponse$SubmitConcatJobResponseJobsDetail$$XmlAdapter.10
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SubmitConcatJobResponse.SubmitConcatJobResponseJobsDetail submitConcatJobResponseJobsDetail, String str) throws IOException, XmlPullParserException {
                submitConcatJobResponseJobsDetail.input = (SubmitConcatJobResponse.SubmitConcatJobResponseInput) QCloudXml.fromXml(xmlPullParser, SubmitConcatJobResponse.SubmitConcatJobResponseInput.class, "Input");
            }
        });
        this.childElementBinders.put("Operation", new ChildElementBinder<SubmitConcatJobResponse.SubmitConcatJobResponseJobsDetail>() { // from class: com.tencent.cos.xml.model.ci.media.SubmitConcatJobResponse$SubmitConcatJobResponseJobsDetail$$XmlAdapter.11
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SubmitConcatJobResponse.SubmitConcatJobResponseJobsDetail submitConcatJobResponseJobsDetail, String str) throws IOException, XmlPullParserException {
                submitConcatJobResponseJobsDetail.operation = (SubmitConcatJobResponse.SubmitConcatJobResponseOperation) QCloudXml.fromXml(xmlPullParser, SubmitConcatJobResponse.SubmitConcatJobResponseOperation.class, "Operation");
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public SubmitConcatJobResponse.SubmitConcatJobResponseJobsDetail fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        SubmitConcatJobResponse.SubmitConcatJobResponseJobsDetail submitConcatJobResponseJobsDetail = new SubmitConcatJobResponse.SubmitConcatJobResponseJobsDetail();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<SubmitConcatJobResponse.SubmitConcatJobResponseJobsDetail> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, submitConcatJobResponseJobsDetail, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "JobsDetail" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return submitConcatJobResponseJobsDetail;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return submitConcatJobResponseJobsDetail;
    }
}
