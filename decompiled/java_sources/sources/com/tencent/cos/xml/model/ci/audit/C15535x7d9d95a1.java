package com.tencent.cos.xml.model.ci.audit;

import com.tencent.cos.xml.model.ci.audit.GetLiveVideoAuditResponse;
import com.tencent.cos.xml.model.tag.audit.bean.AuditListInfo;
import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import org.apache.commons.compress.harmony.unpack200.AttributeLayout;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* renamed from: com.tencent.cos.xml.model.ci.audit.GetLiveVideoAuditResponse$GetLiveVideoAuditResponseJobsDetail$$XmlAdapter */
/* loaded from: classes10.dex */
public class C15535x7d9d95a1 extends IXmlAdapter<GetLiveVideoAuditResponse.GetLiveVideoAuditResponseJobsDetail> {
    private HashMap<String, ChildElementBinder<GetLiveVideoAuditResponse.GetLiveVideoAuditResponseJobsDetail>> childElementBinders;

    public C15535x7d9d95a1() {
        HashMap<String, ChildElementBinder<GetLiveVideoAuditResponse.GetLiveVideoAuditResponseJobsDetail>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put(AttributeLayout.ATTRIBUTE_CODE, new ChildElementBinder<GetLiveVideoAuditResponse.GetLiveVideoAuditResponseJobsDetail>() { // from class: com.tencent.cos.xml.model.ci.audit.GetLiveVideoAuditResponse$GetLiveVideoAuditResponseJobsDetail$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetLiveVideoAuditResponse.GetLiveVideoAuditResponseJobsDetail getLiveVideoAuditResponseJobsDetail, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                getLiveVideoAuditResponseJobsDetail.code = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Message", new ChildElementBinder<GetLiveVideoAuditResponse.GetLiveVideoAuditResponseJobsDetail>() { // from class: com.tencent.cos.xml.model.ci.audit.GetLiveVideoAuditResponse$GetLiveVideoAuditResponseJobsDetail$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetLiveVideoAuditResponse.GetLiveVideoAuditResponseJobsDetail getLiveVideoAuditResponseJobsDetail, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                getLiveVideoAuditResponseJobsDetail.message = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("DataId", new ChildElementBinder<GetLiveVideoAuditResponse.GetLiveVideoAuditResponseJobsDetail>() { // from class: com.tencent.cos.xml.model.ci.audit.GetLiveVideoAuditResponse$GetLiveVideoAuditResponseJobsDetail$$XmlAdapter.3
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetLiveVideoAuditResponse.GetLiveVideoAuditResponseJobsDetail getLiveVideoAuditResponseJobsDetail, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                getLiveVideoAuditResponseJobsDetail.dataId = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("JobId", new ChildElementBinder<GetLiveVideoAuditResponse.GetLiveVideoAuditResponseJobsDetail>() { // from class: com.tencent.cos.xml.model.ci.audit.GetLiveVideoAuditResponse$GetLiveVideoAuditResponseJobsDetail$$XmlAdapter.4
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetLiveVideoAuditResponse.GetLiveVideoAuditResponseJobsDetail getLiveVideoAuditResponseJobsDetail, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                getLiveVideoAuditResponseJobsDetail.jobId = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("State", new ChildElementBinder<GetLiveVideoAuditResponse.GetLiveVideoAuditResponseJobsDetail>() { // from class: com.tencent.cos.xml.model.ci.audit.GetLiveVideoAuditResponse$GetLiveVideoAuditResponseJobsDetail$$XmlAdapter.5
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetLiveVideoAuditResponse.GetLiveVideoAuditResponseJobsDetail getLiveVideoAuditResponseJobsDetail, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                getLiveVideoAuditResponseJobsDetail.state = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("CreationTime", new ChildElementBinder<GetLiveVideoAuditResponse.GetLiveVideoAuditResponseJobsDetail>() { // from class: com.tencent.cos.xml.model.ci.audit.GetLiveVideoAuditResponse$GetLiveVideoAuditResponseJobsDetail$$XmlAdapter.6
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetLiveVideoAuditResponse.GetLiveVideoAuditResponseJobsDetail getLiveVideoAuditResponseJobsDetail, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                getLiveVideoAuditResponseJobsDetail.creationTime = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("SnapshotCount", new ChildElementBinder<GetLiveVideoAuditResponse.GetLiveVideoAuditResponseJobsDetail>() { // from class: com.tencent.cos.xml.model.ci.audit.GetLiveVideoAuditResponse$GetLiveVideoAuditResponseJobsDetail$$XmlAdapter.7
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetLiveVideoAuditResponse.GetLiveVideoAuditResponseJobsDetail getLiveVideoAuditResponseJobsDetail, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                getLiveVideoAuditResponseJobsDetail.snapshotCount = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Label", new ChildElementBinder<GetLiveVideoAuditResponse.GetLiveVideoAuditResponseJobsDetail>() { // from class: com.tencent.cos.xml.model.ci.audit.GetLiveVideoAuditResponse$GetLiveVideoAuditResponseJobsDetail$$XmlAdapter.8
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetLiveVideoAuditResponse.GetLiveVideoAuditResponseJobsDetail getLiveVideoAuditResponseJobsDetail, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                getLiveVideoAuditResponseJobsDetail.label = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Result", new ChildElementBinder<GetLiveVideoAuditResponse.GetLiveVideoAuditResponseJobsDetail>() { // from class: com.tencent.cos.xml.model.ci.audit.GetLiveVideoAuditResponse$GetLiveVideoAuditResponseJobsDetail$$XmlAdapter.9
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetLiveVideoAuditResponse.GetLiveVideoAuditResponseJobsDetail getLiveVideoAuditResponseJobsDetail, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                getLiveVideoAuditResponseJobsDetail.result = Integer.parseInt(xmlPullParser.getText());
            }
        });
        this.childElementBinders.put("PornInfo", new ChildElementBinder<GetLiveVideoAuditResponse.GetLiveVideoAuditResponseJobsDetail>() { // from class: com.tencent.cos.xml.model.ci.audit.GetLiveVideoAuditResponse$GetLiveVideoAuditResponseJobsDetail$$XmlAdapter.10
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetLiveVideoAuditResponse.GetLiveVideoAuditResponseJobsDetail getLiveVideoAuditResponseJobsDetail, String str) throws IOException, XmlPullParserException {
                getLiveVideoAuditResponseJobsDetail.pornInfo = (GetLiveVideoAuditResponse.GetLiveVideoAuditResponseInfo) QCloudXml.fromXml(xmlPullParser, GetLiveVideoAuditResponse.GetLiveVideoAuditResponseInfo.class, "PornInfo");
            }
        });
        this.childElementBinders.put("AdsInfo", new ChildElementBinder<GetLiveVideoAuditResponse.GetLiveVideoAuditResponseJobsDetail>() { // from class: com.tencent.cos.xml.model.ci.audit.GetLiveVideoAuditResponse$GetLiveVideoAuditResponseJobsDetail$$XmlAdapter.11
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetLiveVideoAuditResponse.GetLiveVideoAuditResponseJobsDetail getLiveVideoAuditResponseJobsDetail, String str) throws IOException, XmlPullParserException {
                getLiveVideoAuditResponseJobsDetail.adsInfo = (GetLiveVideoAuditResponse.GetLiveVideoAuditResponseInfo) QCloudXml.fromXml(xmlPullParser, GetLiveVideoAuditResponse.GetLiveVideoAuditResponseInfo.class, "AdsInfo");
            }
        });
        this.childElementBinders.put("MeaninglessInfo", new ChildElementBinder<GetLiveVideoAuditResponse.GetLiveVideoAuditResponseJobsDetail>() { // from class: com.tencent.cos.xml.model.ci.audit.GetLiveVideoAuditResponse$GetLiveVideoAuditResponseJobsDetail$$XmlAdapter.12
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetLiveVideoAuditResponse.GetLiveVideoAuditResponseJobsDetail getLiveVideoAuditResponseJobsDetail, String str) throws IOException, XmlPullParserException {
                getLiveVideoAuditResponseJobsDetail.meaninglessInfo = (GetLiveVideoAuditResponse.GetLiveVideoAuditResponseInfo) QCloudXml.fromXml(xmlPullParser, GetLiveVideoAuditResponse.GetLiveVideoAuditResponseInfo.class, "MeaninglessInfo");
            }
        });
        this.childElementBinders.put("Snapshot", new ChildElementBinder<GetLiveVideoAuditResponse.GetLiveVideoAuditResponseJobsDetail>() { // from class: com.tencent.cos.xml.model.ci.audit.GetLiveVideoAuditResponse$GetLiveVideoAuditResponseJobsDetail$$XmlAdapter.13
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetLiveVideoAuditResponse.GetLiveVideoAuditResponseJobsDetail getLiveVideoAuditResponseJobsDetail, String str) throws IOException, XmlPullParserException {
                if (getLiveVideoAuditResponseJobsDetail.snapshot == null) {
                    getLiveVideoAuditResponseJobsDetail.snapshot = new ArrayList();
                }
                getLiveVideoAuditResponseJobsDetail.snapshot.add((GetLiveVideoAuditResponse.GetLiveVideoAuditResponseSnapshot) QCloudXml.fromXml(xmlPullParser, GetLiveVideoAuditResponse.GetLiveVideoAuditResponseSnapshot.class, "Snapshot"));
            }
        });
        this.childElementBinders.put("AudioSection", new ChildElementBinder<GetLiveVideoAuditResponse.GetLiveVideoAuditResponseJobsDetail>() { // from class: com.tencent.cos.xml.model.ci.audit.GetLiveVideoAuditResponse$GetLiveVideoAuditResponseJobsDetail$$XmlAdapter.14
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetLiveVideoAuditResponse.GetLiveVideoAuditResponseJobsDetail getLiveVideoAuditResponseJobsDetail, String str) throws IOException, XmlPullParserException {
                if (getLiveVideoAuditResponseJobsDetail.audioSection == null) {
                    getLiveVideoAuditResponseJobsDetail.audioSection = new ArrayList();
                }
                getLiveVideoAuditResponseJobsDetail.audioSection.add((GetLiveVideoAuditResponse.GetLiveVideoAuditResponseAudioSection) QCloudXml.fromXml(xmlPullParser, GetLiveVideoAuditResponse.GetLiveVideoAuditResponseAudioSection.class, "AudioSection"));
            }
        });
        this.childElementBinders.put("UserInfo", new ChildElementBinder<GetLiveVideoAuditResponse.GetLiveVideoAuditResponseJobsDetail>() { // from class: com.tencent.cos.xml.model.ci.audit.GetLiveVideoAuditResponse$GetLiveVideoAuditResponseJobsDetail$$XmlAdapter.15
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetLiveVideoAuditResponse.GetLiveVideoAuditResponseJobsDetail getLiveVideoAuditResponseJobsDetail, String str) throws IOException, XmlPullParserException {
                getLiveVideoAuditResponseJobsDetail.userInfo = (GetLiveVideoAuditResponse.GetLiveVideoAuditResponseUserInfo) QCloudXml.fromXml(xmlPullParser, GetLiveVideoAuditResponse.GetLiveVideoAuditResponseUserInfo.class, "UserInfo");
            }
        });
        this.childElementBinders.put("ListInfo", new ChildElementBinder<GetLiveVideoAuditResponse.GetLiveVideoAuditResponseJobsDetail>() { // from class: com.tencent.cos.xml.model.ci.audit.GetLiveVideoAuditResponse$GetLiveVideoAuditResponseJobsDetail$$XmlAdapter.16
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetLiveVideoAuditResponse.GetLiveVideoAuditResponseJobsDetail getLiveVideoAuditResponseJobsDetail, String str) throws IOException, XmlPullParserException {
                getLiveVideoAuditResponseJobsDetail.listInfo = (AuditListInfo) QCloudXml.fromXml(xmlPullParser, AuditListInfo.class, "ListInfo");
            }
        });
        this.childElementBinders.put("Type", new ChildElementBinder<GetLiveVideoAuditResponse.GetLiveVideoAuditResponseJobsDetail>() { // from class: com.tencent.cos.xml.model.ci.audit.GetLiveVideoAuditResponse$GetLiveVideoAuditResponseJobsDetail$$XmlAdapter.17
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetLiveVideoAuditResponse.GetLiveVideoAuditResponseJobsDetail getLiveVideoAuditResponseJobsDetail, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                getLiveVideoAuditResponseJobsDetail.type = xmlPullParser.getText();
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public GetLiveVideoAuditResponse.GetLiveVideoAuditResponseJobsDetail fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        GetLiveVideoAuditResponse.GetLiveVideoAuditResponseJobsDetail getLiveVideoAuditResponseJobsDetail = new GetLiveVideoAuditResponse.GetLiveVideoAuditResponseJobsDetail();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<GetLiveVideoAuditResponse.GetLiveVideoAuditResponseJobsDetail> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, getLiveVideoAuditResponseJobsDetail, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "JobsDetail" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return getLiveVideoAuditResponseJobsDetail;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return getLiveVideoAuditResponseJobsDetail;
    }
}
