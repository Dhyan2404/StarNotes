package com.tencent.cos.xml.model.tag.audit.bean;

import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import java.io.IOException;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes10.dex */
public class AuditScenarioInfo$$XmlAdapter extends IXmlAdapter<AuditScenarioInfo> {
    private HashMap<String, ChildElementBinder<AuditScenarioInfo>> childElementBinders;

    public AuditScenarioInfo$$XmlAdapter() {
        HashMap<String, ChildElementBinder<AuditScenarioInfo>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put("HitFlag", new ChildElementBinder<AuditScenarioInfo>() { // from class: com.tencent.cos.xml.model.tag.audit.bean.AuditScenarioInfo$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, AuditScenarioInfo auditScenarioInfo, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                auditScenarioInfo.hitFlag = Integer.parseInt(xmlPullParser.getText());
            }
        });
        this.childElementBinders.put("Count", new ChildElementBinder<AuditScenarioInfo>() { // from class: com.tencent.cos.xml.model.tag.audit.bean.AuditScenarioInfo$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, AuditScenarioInfo auditScenarioInfo, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                auditScenarioInfo.count = Integer.parseInt(xmlPullParser.getText());
            }
        });
        this.childElementBinders.put("Score", new ChildElementBinder<AuditScenarioInfo>() { // from class: com.tencent.cos.xml.model.tag.audit.bean.AuditScenarioInfo$$XmlAdapter.3
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, AuditScenarioInfo auditScenarioInfo, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                auditScenarioInfo.score = Integer.parseInt(xmlPullParser.getText());
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public AuditScenarioInfo fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        AuditScenarioInfo auditScenarioInfo = new AuditScenarioInfo();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<AuditScenarioInfo> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, auditScenarioInfo, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "AuditScenarioInfo" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return auditScenarioInfo;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return auditScenarioInfo;
    }
}
