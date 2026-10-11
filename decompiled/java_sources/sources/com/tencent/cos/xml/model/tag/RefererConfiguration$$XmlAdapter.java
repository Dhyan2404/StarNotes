package com.tencent.cos.xml.model.tag;

import com.google.firebase.installations.local.PersistedInstallation;
import com.tencent.cos.xml.model.tag.RefererConfiguration;
import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class RefererConfiguration$$XmlAdapter extends IXmlAdapter<RefererConfiguration> {
    private HashMap<String, ChildElementBinder<RefererConfiguration>> childElementBinders;

    public RefererConfiguration$$XmlAdapter() {
        HashMap<String, ChildElementBinder<RefererConfiguration>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put(PersistedInstallation.f35952i, new ChildElementBinder<RefererConfiguration>() { // from class: com.tencent.cos.xml.model.tag.RefererConfiguration$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, RefererConfiguration refererConfiguration, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                refererConfiguration.status = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("RefererType", new ChildElementBinder<RefererConfiguration>() { // from class: com.tencent.cos.xml.model.tag.RefererConfiguration$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, RefererConfiguration refererConfiguration, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                refererConfiguration.refererType = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("DomainList", new ChildElementBinder<RefererConfiguration>() { // from class: com.tencent.cos.xml.model.tag.RefererConfiguration$$XmlAdapter.3
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, RefererConfiguration refererConfiguration, String str) throws IOException, XmlPullParserException {
                if (refererConfiguration.domainList == null) {
                    refererConfiguration.domainList = new ArrayList();
                }
                int eventType = xmlPullParser.getEventType();
                while (eventType != 1) {
                    if (eventType != 2) {
                        if (eventType == 3 && "DomainList".equalsIgnoreCase(xmlPullParser.getName())) {
                            return;
                        }
                    } else {
                        refererConfiguration.domainList.add((RefererConfiguration.Domain) QCloudXml.fromXml(xmlPullParser, RefererConfiguration.Domain.class, "Domain"));
                    }
                    eventType = xmlPullParser.next();
                }
            }
        });
        this.childElementBinders.put("EmptyReferConfiguration", new ChildElementBinder<RefererConfiguration>() { // from class: com.tencent.cos.xml.model.tag.RefererConfiguration$$XmlAdapter.4
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, RefererConfiguration refererConfiguration, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                refererConfiguration.emptyReferConfiguration = xmlPullParser.getText();
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public RefererConfiguration fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        RefererConfiguration refererConfiguration = new RefererConfiguration();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<RefererConfiguration> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, refererConfiguration, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "RefererConfiguration" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return refererConfiguration;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return refererConfiguration;
    }

    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, RefererConfiguration refererConfiguration, String str) throws IOException, XmlPullParserException {
        if (refererConfiguration == null) {
            return;
        }
        if (str == null) {
            str = "RefererConfiguration";
        }
        xmlSerializer.startTag("", str);
        if (refererConfiguration.status != null) {
            xmlSerializer.startTag("", PersistedInstallation.f35952i);
            xmlSerializer.text(String.valueOf(refererConfiguration.status));
            xmlSerializer.endTag("", PersistedInstallation.f35952i);
        }
        if (refererConfiguration.refererType != null) {
            xmlSerializer.startTag("", "RefererType");
            xmlSerializer.text(String.valueOf(refererConfiguration.refererType));
            xmlSerializer.endTag("", "RefererType");
        }
        xmlSerializer.startTag("", "DomainList");
        if (refererConfiguration.domainList != null) {
            for (int i = 0; i < refererConfiguration.domainList.size(); i++) {
                QCloudXml.toXml(xmlSerializer, refererConfiguration.domainList.get(i), "Domain");
            }
        }
        xmlSerializer.endTag("", "DomainList");
        if (refererConfiguration.emptyReferConfiguration != null) {
            xmlSerializer.startTag("", "EmptyReferConfiguration");
            xmlSerializer.text(String.valueOf(refererConfiguration.emptyReferConfiguration));
            xmlSerializer.endTag("", "EmptyReferConfiguration");
        }
        xmlSerializer.endTag("", str);
    }
}
