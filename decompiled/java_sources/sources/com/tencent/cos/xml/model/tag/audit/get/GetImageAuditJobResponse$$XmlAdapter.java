package com.tencent.cos.xml.model.tag.audit.get;

import com.tencent.cos.xml.model.tag.audit.bean.ImageAuditJobsDetail;
import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes10.dex */
public class GetImageAuditJobResponse$$XmlAdapter extends IXmlAdapter<GetImageAuditJobResponse> {
    private HashMap<String, ChildElementBinder<GetImageAuditJobResponse>> childElementBinders;

    public GetImageAuditJobResponse$$XmlAdapter() {
        HashMap<String, ChildElementBinder<GetImageAuditJobResponse>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put("JobsDetail", new ChildElementBinder<GetImageAuditJobResponse>() { // from class: com.tencent.cos.xml.model.tag.audit.get.GetImageAuditJobResponse$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetImageAuditJobResponse getImageAuditJobResponse, String str) throws IOException, XmlPullParserException {
                getImageAuditJobResponse.jobsDetail = (ImageAuditJobsDetail) QCloudXml.fromXml(xmlPullParser, ImageAuditJobsDetail.class, "JobsDetail");
            }
        });
        this.childElementBinders.put("RequestId", new ChildElementBinder<GetImageAuditJobResponse>() { // from class: com.tencent.cos.xml.model.tag.audit.get.GetImageAuditJobResponse$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetImageAuditJobResponse getImageAuditJobResponse, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                getImageAuditJobResponse.requestId = xmlPullParser.getText();
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public GetImageAuditJobResponse fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        GetImageAuditJobResponse getImageAuditJobResponse = new GetImageAuditJobResponse();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<GetImageAuditJobResponse> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, getImageAuditJobResponse, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "Response" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return getImageAuditJobResponse;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return getImageAuditJobResponse;
    }
}
