package com.tencent.cos.xml.model.ci.media;

import com.tencent.cos.xml.model.ci.common.MediaResult;
import com.tencent.cos.xml.model.ci.media.SubmitVideoMontageJob;
import com.tencent.cos.xml.model.ci.media.SubmitVideoMontageJobResponse;
import com.tencent.cos.xml.model.tag.MediaInfo;
import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* renamed from: com.tencent.cos.xml.model.ci.media.SubmitVideoMontageJobResponse$SubmitVideoMontageJobResponseOperation$$XmlAdapter */
/* loaded from: classes10.dex */
public class C15884xd71423af extends IXmlAdapter<SubmitVideoMontageJobResponse.SubmitVideoMontageJobResponseOperation> {
    private HashMap<String, ChildElementBinder<SubmitVideoMontageJobResponse.SubmitVideoMontageJobResponseOperation>> childElementBinders;

    public C15884xd71423af() {
        HashMap<String, ChildElementBinder<SubmitVideoMontageJobResponse.SubmitVideoMontageJobResponseOperation>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put("VideoMontage", new ChildElementBinder<SubmitVideoMontageJobResponse.SubmitVideoMontageJobResponseOperation>() { // from class: com.tencent.cos.xml.model.ci.media.SubmitVideoMontageJobResponse$SubmitVideoMontageJobResponseOperation$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SubmitVideoMontageJobResponse.SubmitVideoMontageJobResponseOperation submitVideoMontageJobResponseOperation, String str) throws IOException, XmlPullParserException {
                submitVideoMontageJobResponseOperation.videoMontage = (SubmitVideoMontageJob.SubmitVideoMontageJobVideoMontage) QCloudXml.fromXml(xmlPullParser, SubmitVideoMontageJob.SubmitVideoMontageJobVideoMontage.class, "VideoMontage");
            }
        });
        this.childElementBinders.put("TemplateId", new ChildElementBinder<SubmitVideoMontageJobResponse.SubmitVideoMontageJobResponseOperation>() { // from class: com.tencent.cos.xml.model.ci.media.SubmitVideoMontageJobResponse$SubmitVideoMontageJobResponseOperation$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SubmitVideoMontageJobResponse.SubmitVideoMontageJobResponseOperation submitVideoMontageJobResponseOperation, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                submitVideoMontageJobResponseOperation.templateId = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("TemplateName", new ChildElementBinder<SubmitVideoMontageJobResponse.SubmitVideoMontageJobResponseOperation>() { // from class: com.tencent.cos.xml.model.ci.media.SubmitVideoMontageJobResponse$SubmitVideoMontageJobResponseOperation$$XmlAdapter.3
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SubmitVideoMontageJobResponse.SubmitVideoMontageJobResponseOperation submitVideoMontageJobResponseOperation, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                submitVideoMontageJobResponseOperation.templateName = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Output", new ChildElementBinder<SubmitVideoMontageJobResponse.SubmitVideoMontageJobResponseOperation>() { // from class: com.tencent.cos.xml.model.ci.media.SubmitVideoMontageJobResponse$SubmitVideoMontageJobResponseOperation$$XmlAdapter.4
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SubmitVideoMontageJobResponse.SubmitVideoMontageJobResponseOperation submitVideoMontageJobResponseOperation, String str) throws IOException, XmlPullParserException {
                submitVideoMontageJobResponseOperation.output = (SubmitVideoMontageJob.SubmitVideoMontageJobOutput) QCloudXml.fromXml(xmlPullParser, SubmitVideoMontageJob.SubmitVideoMontageJobOutput.class, "Output");
            }
        });
        this.childElementBinders.put("MediaInfo", new ChildElementBinder<SubmitVideoMontageJobResponse.SubmitVideoMontageJobResponseOperation>() { // from class: com.tencent.cos.xml.model.ci.media.SubmitVideoMontageJobResponse$SubmitVideoMontageJobResponseOperation$$XmlAdapter.5
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SubmitVideoMontageJobResponse.SubmitVideoMontageJobResponseOperation submitVideoMontageJobResponseOperation, String str) throws IOException, XmlPullParserException {
                submitVideoMontageJobResponseOperation.mediaInfo = (MediaInfo) QCloudXml.fromXml(xmlPullParser, MediaInfo.class, "MediaInfo");
            }
        });
        this.childElementBinders.put("MediaResult", new ChildElementBinder<SubmitVideoMontageJobResponse.SubmitVideoMontageJobResponseOperation>() { // from class: com.tencent.cos.xml.model.ci.media.SubmitVideoMontageJobResponse$SubmitVideoMontageJobResponseOperation$$XmlAdapter.6
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SubmitVideoMontageJobResponse.SubmitVideoMontageJobResponseOperation submitVideoMontageJobResponseOperation, String str) throws IOException, XmlPullParserException {
                submitVideoMontageJobResponseOperation.mediaResult = (MediaResult) QCloudXml.fromXml(xmlPullParser, MediaResult.class, "MediaResult");
            }
        });
        this.childElementBinders.put("UserData", new ChildElementBinder<SubmitVideoMontageJobResponse.SubmitVideoMontageJobResponseOperation>() { // from class: com.tencent.cos.xml.model.ci.media.SubmitVideoMontageJobResponse$SubmitVideoMontageJobResponseOperation$$XmlAdapter.7
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SubmitVideoMontageJobResponse.SubmitVideoMontageJobResponseOperation submitVideoMontageJobResponseOperation, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                submitVideoMontageJobResponseOperation.userData = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("JobLevel", new ChildElementBinder<SubmitVideoMontageJobResponse.SubmitVideoMontageJobResponseOperation>() { // from class: com.tencent.cos.xml.model.ci.media.SubmitVideoMontageJobResponse$SubmitVideoMontageJobResponseOperation$$XmlAdapter.8
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SubmitVideoMontageJobResponse.SubmitVideoMontageJobResponseOperation submitVideoMontageJobResponseOperation, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                submitVideoMontageJobResponseOperation.jobLevel = xmlPullParser.getText();
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public SubmitVideoMontageJobResponse.SubmitVideoMontageJobResponseOperation fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        SubmitVideoMontageJobResponse.SubmitVideoMontageJobResponseOperation submitVideoMontageJobResponseOperation = new SubmitVideoMontageJobResponse.SubmitVideoMontageJobResponseOperation();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<SubmitVideoMontageJobResponse.SubmitVideoMontageJobResponseOperation> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, submitVideoMontageJobResponseOperation, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "Operation" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return submitVideoMontageJobResponseOperation;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return submitVideoMontageJobResponseOperation;
    }
}
