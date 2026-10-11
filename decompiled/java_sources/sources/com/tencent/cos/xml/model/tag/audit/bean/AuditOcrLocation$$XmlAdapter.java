package com.tencent.cos.xml.model.tag.audit.bean;

import com.google.common.net.HttpHeaders;
import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import java.io.IOException;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes10.dex */
public class AuditOcrLocation$$XmlAdapter extends IXmlAdapter<AuditOcrLocation> {
    private HashMap<String, ChildElementBinder<AuditOcrLocation>> childElementBinders;

    public AuditOcrLocation$$XmlAdapter() {
        HashMap<String, ChildElementBinder<AuditOcrLocation>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put("X", new ChildElementBinder<AuditOcrLocation>() { // from class: com.tencent.cos.xml.model.tag.audit.bean.AuditOcrLocation$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, AuditOcrLocation auditOcrLocation, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                auditOcrLocation.f93322x = Integer.parseInt(xmlPullParser.getText());
            }
        });
        this.childElementBinders.put("Y", new ChildElementBinder<AuditOcrLocation>() { // from class: com.tencent.cos.xml.model.tag.audit.bean.AuditOcrLocation$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, AuditOcrLocation auditOcrLocation, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                auditOcrLocation.f93323y = Integer.parseInt(xmlPullParser.getText());
            }
        });
        this.childElementBinders.put("Height", new ChildElementBinder<AuditOcrLocation>() { // from class: com.tencent.cos.xml.model.tag.audit.bean.AuditOcrLocation$$XmlAdapter.3
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, AuditOcrLocation auditOcrLocation, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                auditOcrLocation.height = Integer.parseInt(xmlPullParser.getText());
            }
        });
        this.childElementBinders.put(HttpHeaders.WIDTH, new ChildElementBinder<AuditOcrLocation>() { // from class: com.tencent.cos.xml.model.tag.audit.bean.AuditOcrLocation$$XmlAdapter.4
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, AuditOcrLocation auditOcrLocation, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                auditOcrLocation.width = Integer.parseInt(xmlPullParser.getText());
            }
        });
        this.childElementBinders.put("Rotate", new ChildElementBinder<AuditOcrLocation>() { // from class: com.tencent.cos.xml.model.tag.audit.bean.AuditOcrLocation$$XmlAdapter.5
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, AuditOcrLocation auditOcrLocation, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                auditOcrLocation.rotate = Integer.parseInt(xmlPullParser.getText());
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public AuditOcrLocation fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        AuditOcrLocation auditOcrLocation = new AuditOcrLocation();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<AuditOcrLocation> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, auditOcrLocation, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "Location" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return auditOcrLocation;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return auditOcrLocation;
    }
}
