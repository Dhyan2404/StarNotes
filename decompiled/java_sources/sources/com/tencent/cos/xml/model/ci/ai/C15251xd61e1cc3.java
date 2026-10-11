package com.tencent.cos.xml.model.ci.ai;

import com.tencent.cos.xml.model.ci.ai.PostSegmentVideoBody;
import com.tencent.cos.xml.model.ci.ai.PostSegmentVideoBodyResponse;
import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import java.util.HashMap;
import org.apache.commons.compress.harmony.unpack200.AttributeLayout;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* renamed from: com.tencent.cos.xml.model.ci.ai.PostSegmentVideoBodyResponse$PostSegmentVideoBodyResponseJobsDetail$$XmlAdapter */
/* loaded from: classes10.dex */
public class C15251xd61e1cc3 extends IXmlAdapter<PostSegmentVideoBodyResponse.PostSegmentVideoBodyResponseJobsDetail> {
    private HashMap<String, ChildElementBinder<PostSegmentVideoBodyResponse.PostSegmentVideoBodyResponseJobsDetail>> childElementBinders;

    public C15251xd61e1cc3() {
        HashMap<String, ChildElementBinder<PostSegmentVideoBodyResponse.PostSegmentVideoBodyResponseJobsDetail>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put(AttributeLayout.ATTRIBUTE_CODE, new ChildElementBinder<PostSegmentVideoBodyResponse.PostSegmentVideoBodyResponseJobsDetail>() { // from class: com.tencent.cos.xml.model.ci.ai.PostSegmentVideoBodyResponse$PostSegmentVideoBodyResponseJobsDetail$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, PostSegmentVideoBodyResponse.PostSegmentVideoBodyResponseJobsDetail postSegmentVideoBodyResponseJobsDetail, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                postSegmentVideoBodyResponseJobsDetail.code = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Message", new ChildElementBinder<PostSegmentVideoBodyResponse.PostSegmentVideoBodyResponseJobsDetail>() { // from class: com.tencent.cos.xml.model.ci.ai.PostSegmentVideoBodyResponse$PostSegmentVideoBodyResponseJobsDetail$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, PostSegmentVideoBodyResponse.PostSegmentVideoBodyResponseJobsDetail postSegmentVideoBodyResponseJobsDetail, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                postSegmentVideoBodyResponseJobsDetail.message = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("JobId", new ChildElementBinder<PostSegmentVideoBodyResponse.PostSegmentVideoBodyResponseJobsDetail>() { // from class: com.tencent.cos.xml.model.ci.ai.PostSegmentVideoBodyResponse$PostSegmentVideoBodyResponseJobsDetail$$XmlAdapter.3
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, PostSegmentVideoBodyResponse.PostSegmentVideoBodyResponseJobsDetail postSegmentVideoBodyResponseJobsDetail, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                postSegmentVideoBodyResponseJobsDetail.jobId = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Tag", new ChildElementBinder<PostSegmentVideoBodyResponse.PostSegmentVideoBodyResponseJobsDetail>() { // from class: com.tencent.cos.xml.model.ci.ai.PostSegmentVideoBodyResponse$PostSegmentVideoBodyResponseJobsDetail$$XmlAdapter.4
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, PostSegmentVideoBodyResponse.PostSegmentVideoBodyResponseJobsDetail postSegmentVideoBodyResponseJobsDetail, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                postSegmentVideoBodyResponseJobsDetail.tag = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("State", new ChildElementBinder<PostSegmentVideoBodyResponse.PostSegmentVideoBodyResponseJobsDetail>() { // from class: com.tencent.cos.xml.model.ci.ai.PostSegmentVideoBodyResponse$PostSegmentVideoBodyResponseJobsDetail$$XmlAdapter.5
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, PostSegmentVideoBodyResponse.PostSegmentVideoBodyResponseJobsDetail postSegmentVideoBodyResponseJobsDetail, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                postSegmentVideoBodyResponseJobsDetail.state = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("CreationTime", new ChildElementBinder<PostSegmentVideoBodyResponse.PostSegmentVideoBodyResponseJobsDetail>() { // from class: com.tencent.cos.xml.model.ci.ai.PostSegmentVideoBodyResponse$PostSegmentVideoBodyResponseJobsDetail$$XmlAdapter.6
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, PostSegmentVideoBodyResponse.PostSegmentVideoBodyResponseJobsDetail postSegmentVideoBodyResponseJobsDetail, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                postSegmentVideoBodyResponseJobsDetail.creationTime = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("StartTime", new ChildElementBinder<PostSegmentVideoBodyResponse.PostSegmentVideoBodyResponseJobsDetail>() { // from class: com.tencent.cos.xml.model.ci.ai.PostSegmentVideoBodyResponse$PostSegmentVideoBodyResponseJobsDetail$$XmlAdapter.7
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, PostSegmentVideoBodyResponse.PostSegmentVideoBodyResponseJobsDetail postSegmentVideoBodyResponseJobsDetail, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                postSegmentVideoBodyResponseJobsDetail.startTime = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("EndTime", new ChildElementBinder<PostSegmentVideoBodyResponse.PostSegmentVideoBodyResponseJobsDetail>() { // from class: com.tencent.cos.xml.model.ci.ai.PostSegmentVideoBodyResponse$PostSegmentVideoBodyResponseJobsDetail$$XmlAdapter.8
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, PostSegmentVideoBodyResponse.PostSegmentVideoBodyResponseJobsDetail postSegmentVideoBodyResponseJobsDetail, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                postSegmentVideoBodyResponseJobsDetail.endTime = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("QueueId", new ChildElementBinder<PostSegmentVideoBodyResponse.PostSegmentVideoBodyResponseJobsDetail>() { // from class: com.tencent.cos.xml.model.ci.ai.PostSegmentVideoBodyResponse$PostSegmentVideoBodyResponseJobsDetail$$XmlAdapter.9
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, PostSegmentVideoBodyResponse.PostSegmentVideoBodyResponseJobsDetail postSegmentVideoBodyResponseJobsDetail, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                postSegmentVideoBodyResponseJobsDetail.queueId = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Input", new ChildElementBinder<PostSegmentVideoBodyResponse.PostSegmentVideoBodyResponseJobsDetail>() { // from class: com.tencent.cos.xml.model.ci.ai.PostSegmentVideoBodyResponse$PostSegmentVideoBodyResponseJobsDetail$$XmlAdapter.10
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, PostSegmentVideoBodyResponse.PostSegmentVideoBodyResponseJobsDetail postSegmentVideoBodyResponseJobsDetail, String str) throws IOException, XmlPullParserException {
                postSegmentVideoBodyResponseJobsDetail.input = (PostSegmentVideoBody.PostSegmentVideoBodyInput) QCloudXml.fromXml(xmlPullParser, PostSegmentVideoBody.PostSegmentVideoBodyInput.class, "Input");
            }
        });
        this.childElementBinders.put("Operation", new ChildElementBinder<PostSegmentVideoBodyResponse.PostSegmentVideoBodyResponseJobsDetail>() { // from class: com.tencent.cos.xml.model.ci.ai.PostSegmentVideoBodyResponse$PostSegmentVideoBodyResponseJobsDetail$$XmlAdapter.11
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, PostSegmentVideoBodyResponse.PostSegmentVideoBodyResponseJobsDetail postSegmentVideoBodyResponseJobsDetail, String str) throws IOException, XmlPullParserException {
                postSegmentVideoBodyResponseJobsDetail.operation = (PostSegmentVideoBodyResponse.PostSegmentVideoBodyResponseOperation) QCloudXml.fromXml(xmlPullParser, PostSegmentVideoBodyResponse.PostSegmentVideoBodyResponseOperation.class, "Operation");
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public PostSegmentVideoBodyResponse.PostSegmentVideoBodyResponseJobsDetail fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        PostSegmentVideoBodyResponse.PostSegmentVideoBodyResponseJobsDetail postSegmentVideoBodyResponseJobsDetail = new PostSegmentVideoBodyResponse.PostSegmentVideoBodyResponseJobsDetail();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<PostSegmentVideoBodyResponse.PostSegmentVideoBodyResponseJobsDetail> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, postSegmentVideoBodyResponseJobsDetail, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "JobsDetail" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return postSegmentVideoBodyResponseJobsDetail;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return postSegmentVideoBodyResponseJobsDetail;
    }
}
