package com.tencent.cos.xml.model.tag.audit.get;

import androidx.exifinterface.media.ExifInterface;
import com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser;
import com.tencent.cos.xml.model.tag.audit.bean.TextAuditScenarioInfo;
import com.tencent.cos.xml.model.tag.audit.get.GetAudioAuditJobResponse;
import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes10.dex */
public class GetAudioAuditJobResponse$AudioSection$$XmlAdapter extends IXmlAdapter<GetAudioAuditJobResponse.AudioSection> {
    private HashMap<String, ChildElementBinder<GetAudioAuditJobResponse.AudioSection>> childElementBinders;

    public GetAudioAuditJobResponse$AudioSection$$XmlAdapter() {
        HashMap<String, ChildElementBinder<GetAudioAuditJobResponse.AudioSection>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put(SsManifestParser.C4934e.f26671A, new ChildElementBinder<GetAudioAuditJobResponse.AudioSection>() { // from class: com.tencent.cos.xml.model.tag.audit.get.GetAudioAuditJobResponse$AudioSection$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetAudioAuditJobResponse.AudioSection audioSection, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                audioSection.url = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Text", new ChildElementBinder<GetAudioAuditJobResponse.AudioSection>() { // from class: com.tencent.cos.xml.model.tag.audit.get.GetAudioAuditJobResponse$AudioSection$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetAudioAuditJobResponse.AudioSection audioSection, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                audioSection.text = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put(ExifInterface.TAG_OFFSET_TIME, new ChildElementBinder<GetAudioAuditJobResponse.AudioSection>() { // from class: com.tencent.cos.xml.model.tag.audit.get.GetAudioAuditJobResponse$AudioSection$$XmlAdapter.3
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetAudioAuditJobResponse.AudioSection audioSection, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                audioSection.offsetTime = Integer.parseInt(xmlPullParser.getText());
            }
        });
        this.childElementBinders.put(SsManifestParser.C4933d.f26659s, new ChildElementBinder<GetAudioAuditJobResponse.AudioSection>() { // from class: com.tencent.cos.xml.model.tag.audit.get.GetAudioAuditJobResponse$AudioSection$$XmlAdapter.4
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetAudioAuditJobResponse.AudioSection audioSection, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                audioSection.duration = Integer.parseInt(xmlPullParser.getText());
            }
        });
        this.childElementBinders.put("Label", new ChildElementBinder<GetAudioAuditJobResponse.AudioSection>() { // from class: com.tencent.cos.xml.model.tag.audit.get.GetAudioAuditJobResponse$AudioSection$$XmlAdapter.5
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetAudioAuditJobResponse.AudioSection audioSection, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                audioSection.label = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("SubLabel", new ChildElementBinder<GetAudioAuditJobResponse.AudioSection>() { // from class: com.tencent.cos.xml.model.tag.audit.get.GetAudioAuditJobResponse$AudioSection$$XmlAdapter.6
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetAudioAuditJobResponse.AudioSection audioSection, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                audioSection.subLabel = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Result", new ChildElementBinder<GetAudioAuditJobResponse.AudioSection>() { // from class: com.tencent.cos.xml.model.tag.audit.get.GetAudioAuditJobResponse$AudioSection$$XmlAdapter.7
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetAudioAuditJobResponse.AudioSection audioSection, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                audioSection.result = Integer.parseInt(xmlPullParser.getText());
            }
        });
        this.childElementBinders.put("LanguageResults", new ChildElementBinder<GetAudioAuditJobResponse.AudioSection>() { // from class: com.tencent.cos.xml.model.tag.audit.get.GetAudioAuditJobResponse$AudioSection$$XmlAdapter.8
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetAudioAuditJobResponse.AudioSection audioSection, String str) throws IOException, XmlPullParserException {
                if (audioSection.languageResults == null) {
                    audioSection.languageResults = new ArrayList();
                }
                audioSection.languageResults.add((TextAuditScenarioInfo.Results) QCloudXml.fromXml(xmlPullParser, TextAuditScenarioInfo.Results.class, "LanguageResults"));
            }
        });
        this.childElementBinders.put("PornInfo", new ChildElementBinder<GetAudioAuditJobResponse.AudioSection>() { // from class: com.tencent.cos.xml.model.tag.audit.get.GetAudioAuditJobResponse$AudioSection$$XmlAdapter.9
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetAudioAuditJobResponse.AudioSection audioSection, String str) throws IOException, XmlPullParserException {
                audioSection.pornInfo = (TextAuditScenarioInfo) QCloudXml.fromXml(xmlPullParser, TextAuditScenarioInfo.class, "PornInfo");
            }
        });
        this.childElementBinders.put("TerrorismInfo", new ChildElementBinder<GetAudioAuditJobResponse.AudioSection>() { // from class: com.tencent.cos.xml.model.tag.audit.get.GetAudioAuditJobResponse$AudioSection$$XmlAdapter.10
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetAudioAuditJobResponse.AudioSection audioSection, String str) throws IOException, XmlPullParserException {
                audioSection.terrorismInfo = (TextAuditScenarioInfo) QCloudXml.fromXml(xmlPullParser, TextAuditScenarioInfo.class, "TerrorismInfo");
            }
        });
        this.childElementBinders.put("PoliticsInfo", new ChildElementBinder<GetAudioAuditJobResponse.AudioSection>() { // from class: com.tencent.cos.xml.model.tag.audit.get.GetAudioAuditJobResponse$AudioSection$$XmlAdapter.11
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetAudioAuditJobResponse.AudioSection audioSection, String str) throws IOException, XmlPullParserException {
                audioSection.politicsInfo = (TextAuditScenarioInfo) QCloudXml.fromXml(xmlPullParser, TextAuditScenarioInfo.class, "PoliticsInfo");
            }
        });
        this.childElementBinders.put("AdsInfo", new ChildElementBinder<GetAudioAuditJobResponse.AudioSection>() { // from class: com.tencent.cos.xml.model.tag.audit.get.GetAudioAuditJobResponse$AudioSection$$XmlAdapter.12
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetAudioAuditJobResponse.AudioSection audioSection, String str) throws IOException, XmlPullParserException {
                audioSection.adsInfo = (TextAuditScenarioInfo) QCloudXml.fromXml(xmlPullParser, TextAuditScenarioInfo.class, "AdsInfo");
            }
        });
        this.childElementBinders.put("TeenagerInfo", new ChildElementBinder<GetAudioAuditJobResponse.AudioSection>() { // from class: com.tencent.cos.xml.model.tag.audit.get.GetAudioAuditJobResponse$AudioSection$$XmlAdapter.13
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetAudioAuditJobResponse.AudioSection audioSection, String str) throws IOException, XmlPullParserException {
                audioSection.teenagerInfo = (TextAuditScenarioInfo) QCloudXml.fromXml(xmlPullParser, TextAuditScenarioInfo.class, "TeenagerInfo");
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public GetAudioAuditJobResponse.AudioSection fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        GetAudioAuditJobResponse.AudioSection audioSection = new GetAudioAuditJobResponse.AudioSection();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<GetAudioAuditJobResponse.AudioSection> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, audioSection, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "AudioSection" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return audioSection;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return audioSection;
    }
}
