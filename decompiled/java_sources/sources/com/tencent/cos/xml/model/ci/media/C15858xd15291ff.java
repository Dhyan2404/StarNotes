package com.tencent.cos.xml.model.ci.media;

import com.tencent.cos.xml.model.ci.common.MediaResult;
import com.tencent.cos.xml.model.ci.media.SubmitSnapshotJob;
import com.tencent.cos.xml.model.ci.media.SubmitSnapshotJobResponse;
import com.tencent.cos.xml.model.ci.media.TemplateSnapshot;
import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* renamed from: com.tencent.cos.xml.model.ci.media.SubmitSnapshotJobResponse$SubmitSnapshotJobResponseOperation$$XmlAdapter */
/* loaded from: classes10.dex */
public class C15858xd15291ff extends IXmlAdapter<SubmitSnapshotJobResponse.SubmitSnapshotJobResponseOperation> {
    private HashMap<String, ChildElementBinder<SubmitSnapshotJobResponse.SubmitSnapshotJobResponseOperation>> childElementBinders;

    public C15858xd15291ff() {
        HashMap<String, ChildElementBinder<SubmitSnapshotJobResponse.SubmitSnapshotJobResponseOperation>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put("TemplateId", new ChildElementBinder<SubmitSnapshotJobResponse.SubmitSnapshotJobResponseOperation>() { // from class: com.tencent.cos.xml.model.ci.media.SubmitSnapshotJobResponse$SubmitSnapshotJobResponseOperation$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SubmitSnapshotJobResponse.SubmitSnapshotJobResponseOperation submitSnapshotJobResponseOperation, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                submitSnapshotJobResponseOperation.templateId = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("TemplateName", new ChildElementBinder<SubmitSnapshotJobResponse.SubmitSnapshotJobResponseOperation>() { // from class: com.tencent.cos.xml.model.ci.media.SubmitSnapshotJobResponse$SubmitSnapshotJobResponseOperation$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SubmitSnapshotJobResponse.SubmitSnapshotJobResponseOperation submitSnapshotJobResponseOperation, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                submitSnapshotJobResponseOperation.templateName = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Snapshot", new ChildElementBinder<SubmitSnapshotJobResponse.SubmitSnapshotJobResponseOperation>() { // from class: com.tencent.cos.xml.model.ci.media.SubmitSnapshotJobResponse$SubmitSnapshotJobResponseOperation$$XmlAdapter.3
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SubmitSnapshotJobResponse.SubmitSnapshotJobResponseOperation submitSnapshotJobResponseOperation, String str) throws IOException, XmlPullParserException {
                submitSnapshotJobResponseOperation.snapshot = (TemplateSnapshot.TemplateSnapshotSnapshot) QCloudXml.fromXml(xmlPullParser, TemplateSnapshot.TemplateSnapshotSnapshot.class, "Snapshot");
            }
        });
        this.childElementBinders.put("Output", new ChildElementBinder<SubmitSnapshotJobResponse.SubmitSnapshotJobResponseOperation>() { // from class: com.tencent.cos.xml.model.ci.media.SubmitSnapshotJobResponse$SubmitSnapshotJobResponseOperation$$XmlAdapter.4
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SubmitSnapshotJobResponse.SubmitSnapshotJobResponseOperation submitSnapshotJobResponseOperation, String str) throws IOException, XmlPullParserException {
                submitSnapshotJobResponseOperation.output = (SubmitSnapshotJob.SubmitSnapshotJobOutput) QCloudXml.fromXml(xmlPullParser, SubmitSnapshotJob.SubmitSnapshotJobOutput.class, "Output");
            }
        });
        this.childElementBinders.put("MediaResult", new ChildElementBinder<SubmitSnapshotJobResponse.SubmitSnapshotJobResponseOperation>() { // from class: com.tencent.cos.xml.model.ci.media.SubmitSnapshotJobResponse$SubmitSnapshotJobResponseOperation$$XmlAdapter.5
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SubmitSnapshotJobResponse.SubmitSnapshotJobResponseOperation submitSnapshotJobResponseOperation, String str) throws IOException, XmlPullParserException {
                submitSnapshotJobResponseOperation.mediaResult = (MediaResult) QCloudXml.fromXml(xmlPullParser, MediaResult.class, "MediaResult");
            }
        });
        this.childElementBinders.put("UserData", new ChildElementBinder<SubmitSnapshotJobResponse.SubmitSnapshotJobResponseOperation>() { // from class: com.tencent.cos.xml.model.ci.media.SubmitSnapshotJobResponse$SubmitSnapshotJobResponseOperation$$XmlAdapter.6
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SubmitSnapshotJobResponse.SubmitSnapshotJobResponseOperation submitSnapshotJobResponseOperation, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                submitSnapshotJobResponseOperation.userData = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("JobLevel", new ChildElementBinder<SubmitSnapshotJobResponse.SubmitSnapshotJobResponseOperation>() { // from class: com.tencent.cos.xml.model.ci.media.SubmitSnapshotJobResponse$SubmitSnapshotJobResponseOperation$$XmlAdapter.7
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SubmitSnapshotJobResponse.SubmitSnapshotJobResponseOperation submitSnapshotJobResponseOperation, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                submitSnapshotJobResponseOperation.jobLevel = xmlPullParser.getText();
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public SubmitSnapshotJobResponse.SubmitSnapshotJobResponseOperation fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        SubmitSnapshotJobResponse.SubmitSnapshotJobResponseOperation submitSnapshotJobResponseOperation = new SubmitSnapshotJobResponse.SubmitSnapshotJobResponseOperation();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<SubmitSnapshotJobResponse.SubmitSnapshotJobResponseOperation> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, submitSnapshotJobResponseOperation, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "Operation" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return submitSnapshotJobResponseOperation;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return submitSnapshotJobResponseOperation;
    }
}
