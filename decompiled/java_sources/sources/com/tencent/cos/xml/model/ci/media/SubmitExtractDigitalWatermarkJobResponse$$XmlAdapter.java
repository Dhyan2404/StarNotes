package com.tencent.cos.xml.model.ci.media;

import com.tencent.cos.xml.model.ci.media.SubmitExtractDigitalWatermarkJobResponse;
import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes10.dex */
public class SubmitExtractDigitalWatermarkJobResponse$$XmlAdapter extends IXmlAdapter<SubmitExtractDigitalWatermarkJobResponse> {
    private HashMap<String, ChildElementBinder<SubmitExtractDigitalWatermarkJobResponse>> childElementBinders;

    public SubmitExtractDigitalWatermarkJobResponse$$XmlAdapter() {
        HashMap<String, ChildElementBinder<SubmitExtractDigitalWatermarkJobResponse>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put("JobsDetail", new ChildElementBinder<SubmitExtractDigitalWatermarkJobResponse>() { // from class: com.tencent.cos.xml.model.ci.media.SubmitExtractDigitalWatermarkJobResponse$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SubmitExtractDigitalWatermarkJobResponse submitExtractDigitalWatermarkJobResponse, String str) throws IOException, XmlPullParserException {
                submitExtractDigitalWatermarkJobResponse.jobsDetail = (SubmitExtractDigitalWatermarkJobResponse.SubmitExtractDigitalWatermarkJobResponseJobsDetail) QCloudXml.fromXml(xmlPullParser, SubmitExtractDigitalWatermarkJobResponse.SubmitExtractDigitalWatermarkJobResponseJobsDetail.class, "JobsDetail");
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public SubmitExtractDigitalWatermarkJobResponse fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        SubmitExtractDigitalWatermarkJobResponse submitExtractDigitalWatermarkJobResponse = new SubmitExtractDigitalWatermarkJobResponse();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<SubmitExtractDigitalWatermarkJobResponse> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, submitExtractDigitalWatermarkJobResponse, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "Response" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return submitExtractDigitalWatermarkJobResponse;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return submitExtractDigitalWatermarkJobResponse;
    }
}
