package com.tencent.cos.xml.model.ci.ai;

import com.tencent.cos.xml.model.ci.ai.PostSegmentVideoBody;
import com.tencent.cos.xml.model.ci.ai.PostSegmentVideoBodyResponse;
import com.tencent.cos.xml.model.ci.common.MediaInfo;
import com.tencent.cos.xml.model.ci.common.MediaResult;
import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* renamed from: com.tencent.cos.xml.model.ci.ai.PostSegmentVideoBodyResponse$PostSegmentVideoBodyResponseOperation$$XmlAdapter */
/* loaded from: classes10.dex */
public class C15252x1427df1b extends IXmlAdapter<PostSegmentVideoBodyResponse.PostSegmentVideoBodyResponseOperation> {
    private HashMap<String, ChildElementBinder<PostSegmentVideoBodyResponse.PostSegmentVideoBodyResponseOperation>> childElementBinders;

    public C15252x1427df1b() {
        HashMap<String, ChildElementBinder<PostSegmentVideoBodyResponse.PostSegmentVideoBodyResponseOperation>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put("SegmentVideoBody", new ChildElementBinder<PostSegmentVideoBodyResponse.PostSegmentVideoBodyResponseOperation>() { // from class: com.tencent.cos.xml.model.ci.ai.PostSegmentVideoBodyResponse$PostSegmentVideoBodyResponseOperation$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, PostSegmentVideoBodyResponse.PostSegmentVideoBodyResponseOperation postSegmentVideoBodyResponseOperation, String str) throws IOException, XmlPullParserException {
                postSegmentVideoBodyResponseOperation.segmentVideoBody = (PostSegmentVideoBody.PostSegmentVideoBodySegmentVideoBody) QCloudXml.fromXml(xmlPullParser, PostSegmentVideoBody.PostSegmentVideoBodySegmentVideoBody.class, "SegmentVideoBody");
            }
        });
        this.childElementBinders.put("Output", new ChildElementBinder<PostSegmentVideoBodyResponse.PostSegmentVideoBodyResponseOperation>() { // from class: com.tencent.cos.xml.model.ci.ai.PostSegmentVideoBodyResponse$PostSegmentVideoBodyResponseOperation$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, PostSegmentVideoBodyResponse.PostSegmentVideoBodyResponseOperation postSegmentVideoBodyResponseOperation, String str) throws IOException, XmlPullParserException {
                postSegmentVideoBodyResponseOperation.output = (PostSegmentVideoBody.PostSegmentVideoBodyOutput) QCloudXml.fromXml(xmlPullParser, PostSegmentVideoBody.PostSegmentVideoBodyOutput.class, "Output");
            }
        });
        this.childElementBinders.put("UserData", new ChildElementBinder<PostSegmentVideoBodyResponse.PostSegmentVideoBodyResponseOperation>() { // from class: com.tencent.cos.xml.model.ci.ai.PostSegmentVideoBodyResponse$PostSegmentVideoBodyResponseOperation$$XmlAdapter.3
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, PostSegmentVideoBodyResponse.PostSegmentVideoBodyResponseOperation postSegmentVideoBodyResponseOperation, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                postSegmentVideoBodyResponseOperation.userData = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("JobLevel", new ChildElementBinder<PostSegmentVideoBodyResponse.PostSegmentVideoBodyResponseOperation>() { // from class: com.tencent.cos.xml.model.ci.ai.PostSegmentVideoBodyResponse$PostSegmentVideoBodyResponseOperation$$XmlAdapter.4
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, PostSegmentVideoBodyResponse.PostSegmentVideoBodyResponseOperation postSegmentVideoBodyResponseOperation, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                postSegmentVideoBodyResponseOperation.jobLevel = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("MediaInfo", new ChildElementBinder<PostSegmentVideoBodyResponse.PostSegmentVideoBodyResponseOperation>() { // from class: com.tencent.cos.xml.model.ci.ai.PostSegmentVideoBodyResponse$PostSegmentVideoBodyResponseOperation$$XmlAdapter.5
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, PostSegmentVideoBodyResponse.PostSegmentVideoBodyResponseOperation postSegmentVideoBodyResponseOperation, String str) throws IOException, XmlPullParserException {
                postSegmentVideoBodyResponseOperation.mediaInfo = (MediaInfo) QCloudXml.fromXml(xmlPullParser, MediaInfo.class, "MediaInfo");
            }
        });
        this.childElementBinders.put("MediaResult", new ChildElementBinder<PostSegmentVideoBodyResponse.PostSegmentVideoBodyResponseOperation>() { // from class: com.tencent.cos.xml.model.ci.ai.PostSegmentVideoBodyResponse$PostSegmentVideoBodyResponseOperation$$XmlAdapter.6
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, PostSegmentVideoBodyResponse.PostSegmentVideoBodyResponseOperation postSegmentVideoBodyResponseOperation, String str) throws IOException, XmlPullParserException {
                postSegmentVideoBodyResponseOperation.mediaResult = (MediaResult) QCloudXml.fromXml(xmlPullParser, MediaResult.class, "MediaResult");
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public PostSegmentVideoBodyResponse.PostSegmentVideoBodyResponseOperation fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        PostSegmentVideoBodyResponse.PostSegmentVideoBodyResponseOperation postSegmentVideoBodyResponseOperation = new PostSegmentVideoBodyResponse.PostSegmentVideoBodyResponseOperation();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<PostSegmentVideoBodyResponse.PostSegmentVideoBodyResponseOperation> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, postSegmentVideoBodyResponseOperation, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "Operation" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return postSegmentVideoBodyResponseOperation;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return postSegmentVideoBodyResponseOperation;
    }
}
