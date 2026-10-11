package com.tencent.cos.xml.model.tag.audit.get;

import com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser;
import com.tencent.cos.xml.model.tag.audit.bean.AuditListInfo;
import com.tencent.cos.xml.model.tag.audit.bean.AuditScenarioInfo;
import com.tencent.cos.xml.model.tag.audit.bean.AuditUserInfo;
import com.tencent.cos.xml.model.tag.audit.get.GetAudioAuditJobResponse;
import com.tencent.cos.xml.model.tag.audit.get.GetVideoAuditJobResponse;
import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import org.apache.commons.compress.harmony.unpack200.AttributeLayout;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes10.dex */
public class GetVideoAuditJobResponse$VideoAuditJobsDetail$$XmlAdapter extends IXmlAdapter<GetVideoAuditJobResponse.VideoAuditJobsDetail> {
    private HashMap<String, ChildElementBinder<GetVideoAuditJobResponse.VideoAuditJobsDetail>> childElementBinders;

    public GetVideoAuditJobResponse$VideoAuditJobsDetail$$XmlAdapter() {
        HashMap<String, ChildElementBinder<GetVideoAuditJobResponse.VideoAuditJobsDetail>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put("Object", new ChildElementBinder<GetVideoAuditJobResponse.VideoAuditJobsDetail>() { // from class: com.tencent.cos.xml.model.tag.audit.get.GetVideoAuditJobResponse$VideoAuditJobsDetail$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetVideoAuditJobResponse.VideoAuditJobsDetail videoAuditJobsDetail, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                videoAuditJobsDetail.object = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put(SsManifestParser.C4934e.f26671A, new ChildElementBinder<GetVideoAuditJobResponse.VideoAuditJobsDetail>() { // from class: com.tencent.cos.xml.model.tag.audit.get.GetVideoAuditJobResponse$VideoAuditJobsDetail$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetVideoAuditJobResponse.VideoAuditJobsDetail videoAuditJobsDetail, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                videoAuditJobsDetail.url = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("SnapshotCount", new ChildElementBinder<GetVideoAuditJobResponse.VideoAuditJobsDetail>() { // from class: com.tencent.cos.xml.model.tag.audit.get.GetVideoAuditJobResponse$VideoAuditJobsDetail$$XmlAdapter.3
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetVideoAuditJobResponse.VideoAuditJobsDetail videoAuditJobsDetail, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                videoAuditJobsDetail.snapshotCount = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("PornInfo", new ChildElementBinder<GetVideoAuditJobResponse.VideoAuditJobsDetail>() { // from class: com.tencent.cos.xml.model.tag.audit.get.GetVideoAuditJobResponse$VideoAuditJobsDetail$$XmlAdapter.4
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetVideoAuditJobResponse.VideoAuditJobsDetail videoAuditJobsDetail, String str) throws IOException, XmlPullParserException {
                videoAuditJobsDetail.pornInfo = (AuditScenarioInfo) QCloudXml.fromXml(xmlPullParser, AuditScenarioInfo.class, "PornInfo");
            }
        });
        this.childElementBinders.put("TerrorismInfo", new ChildElementBinder<GetVideoAuditJobResponse.VideoAuditJobsDetail>() { // from class: com.tencent.cos.xml.model.tag.audit.get.GetVideoAuditJobResponse$VideoAuditJobsDetail$$XmlAdapter.5
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetVideoAuditJobResponse.VideoAuditJobsDetail videoAuditJobsDetail, String str) throws IOException, XmlPullParserException {
                videoAuditJobsDetail.terrorismInfo = (AuditScenarioInfo) QCloudXml.fromXml(xmlPullParser, AuditScenarioInfo.class, "TerrorismInfo");
            }
        });
        this.childElementBinders.put("PoliticsInfo", new ChildElementBinder<GetVideoAuditJobResponse.VideoAuditJobsDetail>() { // from class: com.tencent.cos.xml.model.tag.audit.get.GetVideoAuditJobResponse$VideoAuditJobsDetail$$XmlAdapter.6
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetVideoAuditJobResponse.VideoAuditJobsDetail videoAuditJobsDetail, String str) throws IOException, XmlPullParserException {
                videoAuditJobsDetail.politicsInfo = (AuditScenarioInfo) QCloudXml.fromXml(xmlPullParser, AuditScenarioInfo.class, "PoliticsInfo");
            }
        });
        this.childElementBinders.put("AdsInfo", new ChildElementBinder<GetVideoAuditJobResponse.VideoAuditJobsDetail>() { // from class: com.tencent.cos.xml.model.tag.audit.get.GetVideoAuditJobResponse$VideoAuditJobsDetail$$XmlAdapter.7
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetVideoAuditJobResponse.VideoAuditJobsDetail videoAuditJobsDetail, String str) throws IOException, XmlPullParserException {
                videoAuditJobsDetail.adsInfo = (AuditScenarioInfo) QCloudXml.fromXml(xmlPullParser, AuditScenarioInfo.class, "AdsInfo");
            }
        });
        this.childElementBinders.put("Snapshot", new ChildElementBinder<GetVideoAuditJobResponse.VideoAuditJobsDetail>() { // from class: com.tencent.cos.xml.model.tag.audit.get.GetVideoAuditJobResponse$VideoAuditJobsDetail$$XmlAdapter.8
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetVideoAuditJobResponse.VideoAuditJobsDetail videoAuditJobsDetail, String str) throws IOException, XmlPullParserException {
                if (videoAuditJobsDetail.snapshot == null) {
                    videoAuditJobsDetail.snapshot = new ArrayList();
                }
                videoAuditJobsDetail.snapshot.add((GetVideoAuditJobResponse.Snapshot) QCloudXml.fromXml(xmlPullParser, GetVideoAuditJobResponse.Snapshot.class, "Snapshot"));
            }
        });
        this.childElementBinders.put("AudioSection", new ChildElementBinder<GetVideoAuditJobResponse.VideoAuditJobsDetail>() { // from class: com.tencent.cos.xml.model.tag.audit.get.GetVideoAuditJobResponse$VideoAuditJobsDetail$$XmlAdapter.9
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetVideoAuditJobResponse.VideoAuditJobsDetail videoAuditJobsDetail, String str) throws IOException, XmlPullParserException {
                if (videoAuditJobsDetail.audioSection == null) {
                    videoAuditJobsDetail.audioSection = new ArrayList();
                }
                videoAuditJobsDetail.audioSection.add((GetAudioAuditJobResponse.AudioSection) QCloudXml.fromXml(xmlPullParser, GetAudioAuditJobResponse.AudioSection.class, "AudioSection"));
            }
        });
        this.childElementBinders.put(AttributeLayout.ATTRIBUTE_CODE, new ChildElementBinder<GetVideoAuditJobResponse.VideoAuditJobsDetail>() { // from class: com.tencent.cos.xml.model.tag.audit.get.GetVideoAuditJobResponse$VideoAuditJobsDetail$$XmlAdapter.10
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetVideoAuditJobResponse.VideoAuditJobsDetail videoAuditJobsDetail, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                videoAuditJobsDetail.code = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Message", new ChildElementBinder<GetVideoAuditJobResponse.VideoAuditJobsDetail>() { // from class: com.tencent.cos.xml.model.tag.audit.get.GetVideoAuditJobResponse$VideoAuditJobsDetail$$XmlAdapter.11
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetVideoAuditJobResponse.VideoAuditJobsDetail videoAuditJobsDetail, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                videoAuditJobsDetail.message = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Result", new ChildElementBinder<GetVideoAuditJobResponse.VideoAuditJobsDetail>() { // from class: com.tencent.cos.xml.model.tag.audit.get.GetVideoAuditJobResponse$VideoAuditJobsDetail$$XmlAdapter.12
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetVideoAuditJobResponse.VideoAuditJobsDetail videoAuditJobsDetail, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                videoAuditJobsDetail.result = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Label", new ChildElementBinder<GetVideoAuditJobResponse.VideoAuditJobsDetail>() { // from class: com.tencent.cos.xml.model.tag.audit.get.GetVideoAuditJobResponse$VideoAuditJobsDetail$$XmlAdapter.13
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetVideoAuditJobResponse.VideoAuditJobsDetail videoAuditJobsDetail, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                videoAuditJobsDetail.label = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("SubLabel", new ChildElementBinder<GetVideoAuditJobResponse.VideoAuditJobsDetail>() { // from class: com.tencent.cos.xml.model.tag.audit.get.GetVideoAuditJobResponse$VideoAuditJobsDetail$$XmlAdapter.14
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetVideoAuditJobResponse.VideoAuditJobsDetail videoAuditJobsDetail, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                videoAuditJobsDetail.subLabel = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Category", new ChildElementBinder<GetVideoAuditJobResponse.VideoAuditJobsDetail>() { // from class: com.tencent.cos.xml.model.tag.audit.get.GetVideoAuditJobResponse$VideoAuditJobsDetail$$XmlAdapter.15
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetVideoAuditJobResponse.VideoAuditJobsDetail videoAuditJobsDetail, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                videoAuditJobsDetail.category = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("UserInfo", new ChildElementBinder<GetVideoAuditJobResponse.VideoAuditJobsDetail>() { // from class: com.tencent.cos.xml.model.tag.audit.get.GetVideoAuditJobResponse$VideoAuditJobsDetail$$XmlAdapter.16
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetVideoAuditJobResponse.VideoAuditJobsDetail videoAuditJobsDetail, String str) throws IOException, XmlPullParserException {
                videoAuditJobsDetail.userInfo = (AuditUserInfo) QCloudXml.fromXml(xmlPullParser, AuditUserInfo.class, "UserInfo");
            }
        });
        this.childElementBinders.put("ListInfo", new ChildElementBinder<GetVideoAuditJobResponse.VideoAuditJobsDetail>() { // from class: com.tencent.cos.xml.model.tag.audit.get.GetVideoAuditJobResponse$VideoAuditJobsDetail$$XmlAdapter.17
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetVideoAuditJobResponse.VideoAuditJobsDetail videoAuditJobsDetail, String str) throws IOException, XmlPullParserException {
                videoAuditJobsDetail.listInfo = (AuditListInfo) QCloudXml.fromXml(xmlPullParser, AuditListInfo.class, "ListInfo");
            }
        });
        this.childElementBinders.put("ForbidState", new ChildElementBinder<GetVideoAuditJobResponse.VideoAuditJobsDetail>() { // from class: com.tencent.cos.xml.model.tag.audit.get.GetVideoAuditJobResponse$VideoAuditJobsDetail$$XmlAdapter.18
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetVideoAuditJobResponse.VideoAuditJobsDetail videoAuditJobsDetail, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                videoAuditJobsDetail.forbidState = Integer.parseInt(xmlPullParser.getText());
            }
        });
        this.childElementBinders.put("JobId", new ChildElementBinder<GetVideoAuditJobResponse.VideoAuditJobsDetail>() { // from class: com.tencent.cos.xml.model.tag.audit.get.GetVideoAuditJobResponse$VideoAuditJobsDetail$$XmlAdapter.19
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetVideoAuditJobResponse.VideoAuditJobsDetail videoAuditJobsDetail, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                videoAuditJobsDetail.jobId = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("State", new ChildElementBinder<GetVideoAuditJobResponse.VideoAuditJobsDetail>() { // from class: com.tencent.cos.xml.model.tag.audit.get.GetVideoAuditJobResponse$VideoAuditJobsDetail$$XmlAdapter.20
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetVideoAuditJobResponse.VideoAuditJobsDetail videoAuditJobsDetail, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                videoAuditJobsDetail.state = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("CreationTime", new ChildElementBinder<GetVideoAuditJobResponse.VideoAuditJobsDetail>() { // from class: com.tencent.cos.xml.model.tag.audit.get.GetVideoAuditJobResponse$VideoAuditJobsDetail$$XmlAdapter.21
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetVideoAuditJobResponse.VideoAuditJobsDetail videoAuditJobsDetail, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                videoAuditJobsDetail.creationTime = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("DataId", new ChildElementBinder<GetVideoAuditJobResponse.VideoAuditJobsDetail>() { // from class: com.tencent.cos.xml.model.tag.audit.get.GetVideoAuditJobResponse$VideoAuditJobsDetail$$XmlAdapter.22
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetVideoAuditJobResponse.VideoAuditJobsDetail videoAuditJobsDetail, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                videoAuditJobsDetail.dataId = xmlPullParser.getText();
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public GetVideoAuditJobResponse.VideoAuditJobsDetail fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        GetVideoAuditJobResponse.VideoAuditJobsDetail videoAuditJobsDetail = new GetVideoAuditJobResponse.VideoAuditJobsDetail();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<GetVideoAuditJobResponse.VideoAuditJobsDetail> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, videoAuditJobsDetail, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "VideoAuditJobsDetail" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return videoAuditJobsDetail;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return videoAuditJobsDetail;
    }
}
