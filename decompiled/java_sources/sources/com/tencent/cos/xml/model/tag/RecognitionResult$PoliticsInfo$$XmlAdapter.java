package com.tencent.cos.xml.model.tag;

import com.tencent.cos.xml.model.tag.RecognitionResult;
import com.tencent.cos.xml.model.tag.audit.bean.AuditLibResults;
import com.tencent.cos.xml.model.tag.audit.bean.AuditOcrResults;
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
public class RecognitionResult$PoliticsInfo$$XmlAdapter extends IXmlAdapter<RecognitionResult.PoliticsInfo> {
    private HashMap<String, ChildElementBinder<RecognitionResult.PoliticsInfo>> childElementBinders;

    public RecognitionResult$PoliticsInfo$$XmlAdapter() {
        HashMap<String, ChildElementBinder<RecognitionResult.PoliticsInfo>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put(AttributeLayout.ATTRIBUTE_CODE, new ChildElementBinder<RecognitionResult.PoliticsInfo>() { // from class: com.tencent.cos.xml.model.tag.RecognitionResult$PoliticsInfo$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, RecognitionResult.PoliticsInfo politicsInfo, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                politicsInfo.code = Integer.parseInt(xmlPullParser.getText());
            }
        });
        this.childElementBinders.put("Msg", new ChildElementBinder<RecognitionResult.PoliticsInfo>() { // from class: com.tencent.cos.xml.model.tag.RecognitionResult$PoliticsInfo$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, RecognitionResult.PoliticsInfo politicsInfo, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                politicsInfo.msg = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("HitFlag", new ChildElementBinder<RecognitionResult.PoliticsInfo>() { // from class: com.tencent.cos.xml.model.tag.RecognitionResult$PoliticsInfo$$XmlAdapter.3
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, RecognitionResult.PoliticsInfo politicsInfo, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                politicsInfo.hitFlag = Integer.parseInt(xmlPullParser.getText());
            }
        });
        this.childElementBinders.put("Score", new ChildElementBinder<RecognitionResult.PoliticsInfo>() { // from class: com.tencent.cos.xml.model.tag.RecognitionResult$PoliticsInfo$$XmlAdapter.4
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, RecognitionResult.PoliticsInfo politicsInfo, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                politicsInfo.score = Integer.parseInt(xmlPullParser.getText());
            }
        });
        this.childElementBinders.put("Label", new ChildElementBinder<RecognitionResult.PoliticsInfo>() { // from class: com.tencent.cos.xml.model.tag.RecognitionResult$PoliticsInfo$$XmlAdapter.5
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, RecognitionResult.PoliticsInfo politicsInfo, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                politicsInfo.label = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Category", new ChildElementBinder<RecognitionResult.PoliticsInfo>() { // from class: com.tencent.cos.xml.model.tag.RecognitionResult$PoliticsInfo$$XmlAdapter.6
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, RecognitionResult.PoliticsInfo politicsInfo, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                politicsInfo.category = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("SubLabel", new ChildElementBinder<RecognitionResult.PoliticsInfo>() { // from class: com.tencent.cos.xml.model.tag.RecognitionResult$PoliticsInfo$$XmlAdapter.7
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, RecognitionResult.PoliticsInfo politicsInfo, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                politicsInfo.subLabel = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("OcrResults", new ChildElementBinder<RecognitionResult.PoliticsInfo>() { // from class: com.tencent.cos.xml.model.tag.RecognitionResult$PoliticsInfo$$XmlAdapter.8
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, RecognitionResult.PoliticsInfo politicsInfo, String str) throws IOException, XmlPullParserException {
                if (politicsInfo.ocrResults == null) {
                    politicsInfo.ocrResults = new ArrayList();
                }
                politicsInfo.ocrResults.add((AuditOcrResults) QCloudXml.fromXml(xmlPullParser, AuditOcrResults.class, "OcrResults"));
            }
        });
        this.childElementBinders.put("LibResults", new ChildElementBinder<RecognitionResult.PoliticsInfo>() { // from class: com.tencent.cos.xml.model.tag.RecognitionResult$PoliticsInfo$$XmlAdapter.9
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, RecognitionResult.PoliticsInfo politicsInfo, String str) throws IOException, XmlPullParserException {
                if (politicsInfo.libResults == null) {
                    politicsInfo.libResults = new ArrayList();
                }
                politicsInfo.libResults.add((AuditLibResults) QCloudXml.fromXml(xmlPullParser, AuditLibResults.class, "LibResults"));
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public RecognitionResult.PoliticsInfo fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        RecognitionResult.PoliticsInfo politicsInfo = new RecognitionResult.PoliticsInfo();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<RecognitionResult.PoliticsInfo> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, politicsInfo, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "PoliticsInfo" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return politicsInfo;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return politicsInfo;
    }
}
