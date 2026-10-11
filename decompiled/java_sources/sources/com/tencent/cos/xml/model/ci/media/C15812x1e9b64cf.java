package com.tencent.cos.xml.model.ci.media;

import com.tencent.cos.xml.model.ci.common.DigitalWatermark;
import com.tencent.cos.xml.model.ci.common.MediaResult;
import com.tencent.cos.xml.model.ci.media.SubmitDigitalWatermarkJob;
import com.tencent.cos.xml.model.ci.media.SubmitDigitalWatermarkJobResponse;
import com.tencent.cos.xml.model.tag.MediaInfo;
import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* renamed from: com.tencent.cos.xml.model.ci.media.SubmitDigitalWatermarkJobResponse$SubmitDigitalWatermarkJobResponseOperation$$XmlAdapter */
/* loaded from: classes10.dex */
public class C15812x1e9b64cf extends IXmlAdapter<SubmitDigitalWatermarkJobResponse.SubmitDigitalWatermarkJobResponseOperation> {
    private HashMap<String, ChildElementBinder<SubmitDigitalWatermarkJobResponse.SubmitDigitalWatermarkJobResponseOperation>> childElementBinders;

    public C15812x1e9b64cf() {
        HashMap<String, ChildElementBinder<SubmitDigitalWatermarkJobResponse.SubmitDigitalWatermarkJobResponseOperation>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put("Output", new ChildElementBinder<SubmitDigitalWatermarkJobResponse.SubmitDigitalWatermarkJobResponseOperation>() { // from class: com.tencent.cos.xml.model.ci.media.SubmitDigitalWatermarkJobResponse$SubmitDigitalWatermarkJobResponseOperation$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SubmitDigitalWatermarkJobResponse.SubmitDigitalWatermarkJobResponseOperation submitDigitalWatermarkJobResponseOperation, String str) throws IOException, XmlPullParserException {
                submitDigitalWatermarkJobResponseOperation.output = (SubmitDigitalWatermarkJob.SubmitDigitalWatermarkJobOutput) QCloudXml.fromXml(xmlPullParser, SubmitDigitalWatermarkJob.SubmitDigitalWatermarkJobOutput.class, "Output");
            }
        });
        this.childElementBinders.put("DigitalWatermark", new ChildElementBinder<SubmitDigitalWatermarkJobResponse.SubmitDigitalWatermarkJobResponseOperation>() { // from class: com.tencent.cos.xml.model.ci.media.SubmitDigitalWatermarkJobResponse$SubmitDigitalWatermarkJobResponseOperation$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SubmitDigitalWatermarkJobResponse.SubmitDigitalWatermarkJobResponseOperation submitDigitalWatermarkJobResponseOperation, String str) throws IOException, XmlPullParserException {
                submitDigitalWatermarkJobResponseOperation.digitalWatermark = (DigitalWatermark) QCloudXml.fromXml(xmlPullParser, DigitalWatermark.class, "DigitalWatermark");
            }
        });
        this.childElementBinders.put("MediaInfo", new ChildElementBinder<SubmitDigitalWatermarkJobResponse.SubmitDigitalWatermarkJobResponseOperation>() { // from class: com.tencent.cos.xml.model.ci.media.SubmitDigitalWatermarkJobResponse$SubmitDigitalWatermarkJobResponseOperation$$XmlAdapter.3
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SubmitDigitalWatermarkJobResponse.SubmitDigitalWatermarkJobResponseOperation submitDigitalWatermarkJobResponseOperation, String str) throws IOException, XmlPullParserException {
                submitDigitalWatermarkJobResponseOperation.mediaInfo = (MediaInfo) QCloudXml.fromXml(xmlPullParser, MediaInfo.class, "MediaInfo");
            }
        });
        this.childElementBinders.put("MediaResult", new ChildElementBinder<SubmitDigitalWatermarkJobResponse.SubmitDigitalWatermarkJobResponseOperation>() { // from class: com.tencent.cos.xml.model.ci.media.SubmitDigitalWatermarkJobResponse$SubmitDigitalWatermarkJobResponseOperation$$XmlAdapter.4
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SubmitDigitalWatermarkJobResponse.SubmitDigitalWatermarkJobResponseOperation submitDigitalWatermarkJobResponseOperation, String str) throws IOException, XmlPullParserException {
                submitDigitalWatermarkJobResponseOperation.mediaResult = (MediaResult) QCloudXml.fromXml(xmlPullParser, MediaResult.class, "MediaResult");
            }
        });
        this.childElementBinders.put("UserData", new ChildElementBinder<SubmitDigitalWatermarkJobResponse.SubmitDigitalWatermarkJobResponseOperation>() { // from class: com.tencent.cos.xml.model.ci.media.SubmitDigitalWatermarkJobResponse$SubmitDigitalWatermarkJobResponseOperation$$XmlAdapter.5
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SubmitDigitalWatermarkJobResponse.SubmitDigitalWatermarkJobResponseOperation submitDigitalWatermarkJobResponseOperation, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                submitDigitalWatermarkJobResponseOperation.userData = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("JobLevel", new ChildElementBinder<SubmitDigitalWatermarkJobResponse.SubmitDigitalWatermarkJobResponseOperation>() { // from class: com.tencent.cos.xml.model.ci.media.SubmitDigitalWatermarkJobResponse$SubmitDigitalWatermarkJobResponseOperation$$XmlAdapter.6
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SubmitDigitalWatermarkJobResponse.SubmitDigitalWatermarkJobResponseOperation submitDigitalWatermarkJobResponseOperation, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                submitDigitalWatermarkJobResponseOperation.jobLevel = xmlPullParser.getText();
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public SubmitDigitalWatermarkJobResponse.SubmitDigitalWatermarkJobResponseOperation fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        SubmitDigitalWatermarkJobResponse.SubmitDigitalWatermarkJobResponseOperation submitDigitalWatermarkJobResponseOperation = new SubmitDigitalWatermarkJobResponse.SubmitDigitalWatermarkJobResponseOperation();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<SubmitDigitalWatermarkJobResponse.SubmitDigitalWatermarkJobResponseOperation> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, submitDigitalWatermarkJobResponseOperation, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "Operation" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return submitDigitalWatermarkJobResponseOperation;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return submitDigitalWatermarkJobResponseOperation;
    }
}
