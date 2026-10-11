package com.tencent.cos.xml.model.ci.ai;

import com.tencent.cos.xml.model.ci.ai.PostNoiseReductionResponse;
import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import java.util.HashMap;
import org.apache.commons.compress.harmony.unpack200.AttributeLayout;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* renamed from: com.tencent.cos.xml.model.ci.ai.PostNoiseReductionResponse$PostNoiseReductionResponseJobsDetail$$XmlAdapter */
/* loaded from: classes10.dex */
public class C15241xbf43a9a3 extends IXmlAdapter<PostNoiseReductionResponse.PostNoiseReductionResponseJobsDetail> {
    private HashMap<String, ChildElementBinder<PostNoiseReductionResponse.PostNoiseReductionResponseJobsDetail>> childElementBinders;

    public C15241xbf43a9a3() {
        HashMap<String, ChildElementBinder<PostNoiseReductionResponse.PostNoiseReductionResponseJobsDetail>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put(AttributeLayout.ATTRIBUTE_CODE, new ChildElementBinder<PostNoiseReductionResponse.PostNoiseReductionResponseJobsDetail>() { // from class: com.tencent.cos.xml.model.ci.ai.PostNoiseReductionResponse$PostNoiseReductionResponseJobsDetail$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, PostNoiseReductionResponse.PostNoiseReductionResponseJobsDetail postNoiseReductionResponseJobsDetail, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                postNoiseReductionResponseJobsDetail.code = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Message", new ChildElementBinder<PostNoiseReductionResponse.PostNoiseReductionResponseJobsDetail>() { // from class: com.tencent.cos.xml.model.ci.ai.PostNoiseReductionResponse$PostNoiseReductionResponseJobsDetail$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, PostNoiseReductionResponse.PostNoiseReductionResponseJobsDetail postNoiseReductionResponseJobsDetail, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                postNoiseReductionResponseJobsDetail.message = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("JobId", new ChildElementBinder<PostNoiseReductionResponse.PostNoiseReductionResponseJobsDetail>() { // from class: com.tencent.cos.xml.model.ci.ai.PostNoiseReductionResponse$PostNoiseReductionResponseJobsDetail$$XmlAdapter.3
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, PostNoiseReductionResponse.PostNoiseReductionResponseJobsDetail postNoiseReductionResponseJobsDetail, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                postNoiseReductionResponseJobsDetail.jobId = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Tag", new ChildElementBinder<PostNoiseReductionResponse.PostNoiseReductionResponseJobsDetail>() { // from class: com.tencent.cos.xml.model.ci.ai.PostNoiseReductionResponse$PostNoiseReductionResponseJobsDetail$$XmlAdapter.4
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, PostNoiseReductionResponse.PostNoiseReductionResponseJobsDetail postNoiseReductionResponseJobsDetail, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                postNoiseReductionResponseJobsDetail.tag = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("State", new ChildElementBinder<PostNoiseReductionResponse.PostNoiseReductionResponseJobsDetail>() { // from class: com.tencent.cos.xml.model.ci.ai.PostNoiseReductionResponse$PostNoiseReductionResponseJobsDetail$$XmlAdapter.5
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, PostNoiseReductionResponse.PostNoiseReductionResponseJobsDetail postNoiseReductionResponseJobsDetail, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                postNoiseReductionResponseJobsDetail.state = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("CreationTime", new ChildElementBinder<PostNoiseReductionResponse.PostNoiseReductionResponseJobsDetail>() { // from class: com.tencent.cos.xml.model.ci.ai.PostNoiseReductionResponse$PostNoiseReductionResponseJobsDetail$$XmlAdapter.6
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, PostNoiseReductionResponse.PostNoiseReductionResponseJobsDetail postNoiseReductionResponseJobsDetail, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                postNoiseReductionResponseJobsDetail.creationTime = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("EndTime", new ChildElementBinder<PostNoiseReductionResponse.PostNoiseReductionResponseJobsDetail>() { // from class: com.tencent.cos.xml.model.ci.ai.PostNoiseReductionResponse$PostNoiseReductionResponseJobsDetail$$XmlAdapter.7
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, PostNoiseReductionResponse.PostNoiseReductionResponseJobsDetail postNoiseReductionResponseJobsDetail, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                postNoiseReductionResponseJobsDetail.endTime = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("QueueId", new ChildElementBinder<PostNoiseReductionResponse.PostNoiseReductionResponseJobsDetail>() { // from class: com.tencent.cos.xml.model.ci.ai.PostNoiseReductionResponse$PostNoiseReductionResponseJobsDetail$$XmlAdapter.8
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, PostNoiseReductionResponse.PostNoiseReductionResponseJobsDetail postNoiseReductionResponseJobsDetail, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                postNoiseReductionResponseJobsDetail.queueId = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Input", new ChildElementBinder<PostNoiseReductionResponse.PostNoiseReductionResponseJobsDetail>() { // from class: com.tencent.cos.xml.model.ci.ai.PostNoiseReductionResponse$PostNoiseReductionResponseJobsDetail$$XmlAdapter.9
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, PostNoiseReductionResponse.PostNoiseReductionResponseJobsDetail postNoiseReductionResponseJobsDetail, String str) throws IOException, XmlPullParserException {
                postNoiseReductionResponseJobsDetail.input = (PostNoiseReductionResponse.PostNoiseReductionResponseInput) QCloudXml.fromXml(xmlPullParser, PostNoiseReductionResponse.PostNoiseReductionResponseInput.class, "Input");
            }
        });
        this.childElementBinders.put("Operation", new ChildElementBinder<PostNoiseReductionResponse.PostNoiseReductionResponseJobsDetail>() { // from class: com.tencent.cos.xml.model.ci.ai.PostNoiseReductionResponse$PostNoiseReductionResponseJobsDetail$$XmlAdapter.10
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, PostNoiseReductionResponse.PostNoiseReductionResponseJobsDetail postNoiseReductionResponseJobsDetail, String str) throws IOException, XmlPullParserException {
                postNoiseReductionResponseJobsDetail.operation = (PostNoiseReductionResponse.PostNoiseReductionResponseOperation) QCloudXml.fromXml(xmlPullParser, PostNoiseReductionResponse.PostNoiseReductionResponseOperation.class, "Operation");
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public PostNoiseReductionResponse.PostNoiseReductionResponseJobsDetail fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        PostNoiseReductionResponse.PostNoiseReductionResponseJobsDetail postNoiseReductionResponseJobsDetail = new PostNoiseReductionResponse.PostNoiseReductionResponseJobsDetail();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<PostNoiseReductionResponse.PostNoiseReductionResponseJobsDetail> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, postNoiseReductionResponseJobsDetail, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "JobsDetail" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return postNoiseReductionResponseJobsDetail;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return postNoiseReductionResponseJobsDetail;
    }
}
