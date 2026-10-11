package com.tencent.cos.xml.model.ci.ai;

import com.tencent.cos.xml.model.ci.ai.PostNoiseReductionResponse;
import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes10.dex */
public class PostNoiseReductionResponse$$XmlAdapter extends IXmlAdapter<PostNoiseReductionResponse> {
    private HashMap<String, ChildElementBinder<PostNoiseReductionResponse>> childElementBinders;

    public PostNoiseReductionResponse$$XmlAdapter() {
        HashMap<String, ChildElementBinder<PostNoiseReductionResponse>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put("JobsDetail", new ChildElementBinder<PostNoiseReductionResponse>() { // from class: com.tencent.cos.xml.model.ci.ai.PostNoiseReductionResponse$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, PostNoiseReductionResponse postNoiseReductionResponse, String str) throws IOException, XmlPullParserException {
                if (postNoiseReductionResponse.jobsDetail == null) {
                    postNoiseReductionResponse.jobsDetail = new ArrayList();
                }
                postNoiseReductionResponse.jobsDetail.add((PostNoiseReductionResponse.PostNoiseReductionResponseJobsDetail) QCloudXml.fromXml(xmlPullParser, PostNoiseReductionResponse.PostNoiseReductionResponseJobsDetail.class, "JobsDetail"));
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public PostNoiseReductionResponse fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        PostNoiseReductionResponse postNoiseReductionResponse = new PostNoiseReductionResponse();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<PostNoiseReductionResponse> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, postNoiseReductionResponse, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "Response" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return postNoiseReductionResponse;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return postNoiseReductionResponse;
    }
}
