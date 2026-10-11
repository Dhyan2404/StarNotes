package com.tencent.cos.xml.model.tag.audit.bean;

import com.tencent.cos.xml.model.tag.audit.bean.TextAuditScenarioInfo;
import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes10.dex */
public class TextAuditScenarioInfo$LibResults$$XmlAdapter extends IXmlAdapter<TextAuditScenarioInfo.LibResults> {
    private HashMap<String, ChildElementBinder<TextAuditScenarioInfo.LibResults>> childElementBinders;

    public TextAuditScenarioInfo$LibResults$$XmlAdapter() {
        HashMap<String, ChildElementBinder<TextAuditScenarioInfo.LibResults>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put("LibType", new ChildElementBinder<TextAuditScenarioInfo.LibResults>() { // from class: com.tencent.cos.xml.model.tag.audit.bean.TextAuditScenarioInfo$LibResults$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, TextAuditScenarioInfo.LibResults libResults, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                libResults.libType = Integer.parseInt(xmlPullParser.getText());
            }
        });
        this.childElementBinders.put("LibName", new ChildElementBinder<TextAuditScenarioInfo.LibResults>() { // from class: com.tencent.cos.xml.model.tag.audit.bean.TextAuditScenarioInfo$LibResults$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, TextAuditScenarioInfo.LibResults libResults, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                libResults.libName = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Keywords", new ChildElementBinder<TextAuditScenarioInfo.LibResults>() { // from class: com.tencent.cos.xml.model.tag.audit.bean.TextAuditScenarioInfo$LibResults$$XmlAdapter.3
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, TextAuditScenarioInfo.LibResults libResults, String str) throws IOException, XmlPullParserException {
                if (libResults.keywords == null) {
                    libResults.keywords = new ArrayList();
                }
                int eventType = xmlPullParser.getEventType();
                while (eventType != 1) {
                    if (eventType != 2) {
                        if (eventType == 3 && "Keywords".equalsIgnoreCase(xmlPullParser.getName())) {
                            return;
                        }
                    } else {
                        xmlPullParser.next();
                        libResults.keywords.add(xmlPullParser.getText());
                    }
                    eventType = xmlPullParser.next();
                }
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public TextAuditScenarioInfo.LibResults fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        TextAuditScenarioInfo.LibResults libResults = new TextAuditScenarioInfo.LibResults();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<TextAuditScenarioInfo.LibResults> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, libResults, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "LibResults" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return libResults;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return libResults;
    }
}
