package com.tencent.cos.xml.model.ci.media;

import com.tencent.cos.xml.model.ci.media.TemplateSnapshot;
import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes10.dex */
public class TemplateSnapshotResponse$$XmlAdapter extends IXmlAdapter<TemplateSnapshotResponse> {
    private HashMap<String, ChildElementBinder<TemplateSnapshotResponse>> childElementBinders;

    public TemplateSnapshotResponse$$XmlAdapter() {
        HashMap<String, ChildElementBinder<TemplateSnapshotResponse>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put("Tag", new ChildElementBinder<TemplateSnapshotResponse>() { // from class: com.tencent.cos.xml.model.ci.media.TemplateSnapshotResponse$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, TemplateSnapshotResponse templateSnapshotResponse, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                templateSnapshotResponse.tag = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Name", new ChildElementBinder<TemplateSnapshotResponse>() { // from class: com.tencent.cos.xml.model.ci.media.TemplateSnapshotResponse$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, TemplateSnapshotResponse templateSnapshotResponse, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                templateSnapshotResponse.name = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("TemplateId", new ChildElementBinder<TemplateSnapshotResponse>() { // from class: com.tencent.cos.xml.model.ci.media.TemplateSnapshotResponse$$XmlAdapter.3
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, TemplateSnapshotResponse templateSnapshotResponse, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                templateSnapshotResponse.templateId = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("UpdateTime", new ChildElementBinder<TemplateSnapshotResponse>() { // from class: com.tencent.cos.xml.model.ci.media.TemplateSnapshotResponse$$XmlAdapter.4
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, TemplateSnapshotResponse templateSnapshotResponse, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                templateSnapshotResponse.updateTime = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("CreateTime", new ChildElementBinder<TemplateSnapshotResponse>() { // from class: com.tencent.cos.xml.model.ci.media.TemplateSnapshotResponse$$XmlAdapter.5
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, TemplateSnapshotResponse templateSnapshotResponse, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                templateSnapshotResponse.createTime = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Snapshot", new ChildElementBinder<TemplateSnapshotResponse>() { // from class: com.tencent.cos.xml.model.ci.media.TemplateSnapshotResponse$$XmlAdapter.6
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, TemplateSnapshotResponse templateSnapshotResponse, String str) throws IOException, XmlPullParserException {
                templateSnapshotResponse.snapshot = (TemplateSnapshot.TemplateSnapshotSnapshot) QCloudXml.fromXml(xmlPullParser, TemplateSnapshot.TemplateSnapshotSnapshot.class, "Snapshot");
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public TemplateSnapshotResponse fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        TemplateSnapshotResponse templateSnapshotResponse = new TemplateSnapshotResponse();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<TemplateSnapshotResponse> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, templateSnapshotResponse, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "Response" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return templateSnapshotResponse;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return templateSnapshotResponse;
    }
}
