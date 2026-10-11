package com.tencent.cos.xml.model.ci.ai;

import com.tencent.cos.xml.model.ci.ai.PostVideoTargetRecResponse;
import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import java.util.HashMap;
import org.apache.commons.compress.harmony.unpack200.AttributeLayout;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* renamed from: com.tencent.cos.xml.model.ci.ai.PostVideoTargetRecResponse$PostVideoTargetRecResponseJobsDetail$$XmlAdapter */
/* loaded from: classes10.dex */
public class C15279x472a32c3 extends IXmlAdapter<PostVideoTargetRecResponse.PostVideoTargetRecResponseJobsDetail> {
    private HashMap<String, ChildElementBinder<PostVideoTargetRecResponse.PostVideoTargetRecResponseJobsDetail>> childElementBinders;

    public C15279x472a32c3() {
        HashMap<String, ChildElementBinder<PostVideoTargetRecResponse.PostVideoTargetRecResponseJobsDetail>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put(AttributeLayout.ATTRIBUTE_CODE, new ChildElementBinder<PostVideoTargetRecResponse.PostVideoTargetRecResponseJobsDetail>() { // from class: com.tencent.cos.xml.model.ci.ai.PostVideoTargetRecResponse$PostVideoTargetRecResponseJobsDetail$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, PostVideoTargetRecResponse.PostVideoTargetRecResponseJobsDetail postVideoTargetRecResponseJobsDetail, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                postVideoTargetRecResponseJobsDetail.code = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Message", new ChildElementBinder<PostVideoTargetRecResponse.PostVideoTargetRecResponseJobsDetail>() { // from class: com.tencent.cos.xml.model.ci.ai.PostVideoTargetRecResponse$PostVideoTargetRecResponseJobsDetail$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, PostVideoTargetRecResponse.PostVideoTargetRecResponseJobsDetail postVideoTargetRecResponseJobsDetail, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                postVideoTargetRecResponseJobsDetail.message = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("JobId", new ChildElementBinder<PostVideoTargetRecResponse.PostVideoTargetRecResponseJobsDetail>() { // from class: com.tencent.cos.xml.model.ci.ai.PostVideoTargetRecResponse$PostVideoTargetRecResponseJobsDetail$$XmlAdapter.3
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, PostVideoTargetRecResponse.PostVideoTargetRecResponseJobsDetail postVideoTargetRecResponseJobsDetail, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                postVideoTargetRecResponseJobsDetail.jobId = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Tag", new ChildElementBinder<PostVideoTargetRecResponse.PostVideoTargetRecResponseJobsDetail>() { // from class: com.tencent.cos.xml.model.ci.ai.PostVideoTargetRecResponse$PostVideoTargetRecResponseJobsDetail$$XmlAdapter.4
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, PostVideoTargetRecResponse.PostVideoTargetRecResponseJobsDetail postVideoTargetRecResponseJobsDetail, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                postVideoTargetRecResponseJobsDetail.tag = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("State", new ChildElementBinder<PostVideoTargetRecResponse.PostVideoTargetRecResponseJobsDetail>() { // from class: com.tencent.cos.xml.model.ci.ai.PostVideoTargetRecResponse$PostVideoTargetRecResponseJobsDetail$$XmlAdapter.5
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, PostVideoTargetRecResponse.PostVideoTargetRecResponseJobsDetail postVideoTargetRecResponseJobsDetail, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                postVideoTargetRecResponseJobsDetail.state = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("CreationTime", new ChildElementBinder<PostVideoTargetRecResponse.PostVideoTargetRecResponseJobsDetail>() { // from class: com.tencent.cos.xml.model.ci.ai.PostVideoTargetRecResponse$PostVideoTargetRecResponseJobsDetail$$XmlAdapter.6
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, PostVideoTargetRecResponse.PostVideoTargetRecResponseJobsDetail postVideoTargetRecResponseJobsDetail, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                postVideoTargetRecResponseJobsDetail.creationTime = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("StartTime", new ChildElementBinder<PostVideoTargetRecResponse.PostVideoTargetRecResponseJobsDetail>() { // from class: com.tencent.cos.xml.model.ci.ai.PostVideoTargetRecResponse$PostVideoTargetRecResponseJobsDetail$$XmlAdapter.7
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, PostVideoTargetRecResponse.PostVideoTargetRecResponseJobsDetail postVideoTargetRecResponseJobsDetail, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                postVideoTargetRecResponseJobsDetail.startTime = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("EndTime", new ChildElementBinder<PostVideoTargetRecResponse.PostVideoTargetRecResponseJobsDetail>() { // from class: com.tencent.cos.xml.model.ci.ai.PostVideoTargetRecResponse$PostVideoTargetRecResponseJobsDetail$$XmlAdapter.8
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, PostVideoTargetRecResponse.PostVideoTargetRecResponseJobsDetail postVideoTargetRecResponseJobsDetail, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                postVideoTargetRecResponseJobsDetail.endTime = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("QueueId", new ChildElementBinder<PostVideoTargetRecResponse.PostVideoTargetRecResponseJobsDetail>() { // from class: com.tencent.cos.xml.model.ci.ai.PostVideoTargetRecResponse$PostVideoTargetRecResponseJobsDetail$$XmlAdapter.9
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, PostVideoTargetRecResponse.PostVideoTargetRecResponseJobsDetail postVideoTargetRecResponseJobsDetail, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                postVideoTargetRecResponseJobsDetail.queueId = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Operation", new ChildElementBinder<PostVideoTargetRecResponse.PostVideoTargetRecResponseJobsDetail>() { // from class: com.tencent.cos.xml.model.ci.ai.PostVideoTargetRecResponse$PostVideoTargetRecResponseJobsDetail$$XmlAdapter.10
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, PostVideoTargetRecResponse.PostVideoTargetRecResponseJobsDetail postVideoTargetRecResponseJobsDetail, String str) throws IOException, XmlPullParserException {
                postVideoTargetRecResponseJobsDetail.operation = (PostVideoTargetRecResponse.PostVideoTargetRecResponseOperation) QCloudXml.fromXml(xmlPullParser, PostVideoTargetRecResponse.PostVideoTargetRecResponseOperation.class, "Operation");
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public PostVideoTargetRecResponse.PostVideoTargetRecResponseJobsDetail fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        PostVideoTargetRecResponse.PostVideoTargetRecResponseJobsDetail postVideoTargetRecResponseJobsDetail = new PostVideoTargetRecResponse.PostVideoTargetRecResponseJobsDetail();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<PostVideoTargetRecResponse.PostVideoTargetRecResponseJobsDetail> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, postVideoTargetRecResponseJobsDetail, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "JobsDetail" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return postVideoTargetRecResponseJobsDetail;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return postVideoTargetRecResponseJobsDetail;
    }
}
