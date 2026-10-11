package com.tencent.cos.xml.model.ci.audit;

import com.tencent.cos.xml.model.ci.audit.CancelLiveVideoAuditResponse;
import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import java.io.IOException;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* renamed from: com.tencent.cos.xml.model.ci.audit.CancelLiveVideoAuditResponse$CancelLiveVideoAuditResponseJobsDetail$$XmlAdapter */
/* loaded from: classes10.dex */
public class C15485x9d26643 extends IXmlAdapter<CancelLiveVideoAuditResponse.CancelLiveVideoAuditResponseJobsDetail> {
    private HashMap<String, ChildElementBinder<CancelLiveVideoAuditResponse.CancelLiveVideoAuditResponseJobsDetail>> childElementBinders;

    public C15485x9d26643() {
        HashMap<String, ChildElementBinder<CancelLiveVideoAuditResponse.CancelLiveVideoAuditResponseJobsDetail>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put("DataId", new ChildElementBinder<CancelLiveVideoAuditResponse.CancelLiveVideoAuditResponseJobsDetail>() { // from class: com.tencent.cos.xml.model.ci.audit.CancelLiveVideoAuditResponse$CancelLiveVideoAuditResponseJobsDetail$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, CancelLiveVideoAuditResponse.CancelLiveVideoAuditResponseJobsDetail cancelLiveVideoAuditResponseJobsDetail, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                cancelLiveVideoAuditResponseJobsDetail.dataId = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("JobId", new ChildElementBinder<CancelLiveVideoAuditResponse.CancelLiveVideoAuditResponseJobsDetail>() { // from class: com.tencent.cos.xml.model.ci.audit.CancelLiveVideoAuditResponse$CancelLiveVideoAuditResponseJobsDetail$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, CancelLiveVideoAuditResponse.CancelLiveVideoAuditResponseJobsDetail cancelLiveVideoAuditResponseJobsDetail, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                cancelLiveVideoAuditResponseJobsDetail.jobId = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("CreationTime", new ChildElementBinder<CancelLiveVideoAuditResponse.CancelLiveVideoAuditResponseJobsDetail>() { // from class: com.tencent.cos.xml.model.ci.audit.CancelLiveVideoAuditResponse$CancelLiveVideoAuditResponseJobsDetail$$XmlAdapter.3
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, CancelLiveVideoAuditResponse.CancelLiveVideoAuditResponseJobsDetail cancelLiveVideoAuditResponseJobsDetail, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                cancelLiveVideoAuditResponseJobsDetail.creationTime = xmlPullParser.getText();
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public CancelLiveVideoAuditResponse.CancelLiveVideoAuditResponseJobsDetail fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        CancelLiveVideoAuditResponse.CancelLiveVideoAuditResponseJobsDetail cancelLiveVideoAuditResponseJobsDetail = new CancelLiveVideoAuditResponse.CancelLiveVideoAuditResponseJobsDetail();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<CancelLiveVideoAuditResponse.CancelLiveVideoAuditResponseJobsDetail> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, cancelLiveVideoAuditResponseJobsDetail, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "JobsDetail" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return cancelLiveVideoAuditResponseJobsDetail;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return cancelLiveVideoAuditResponseJobsDetail;
    }
}
