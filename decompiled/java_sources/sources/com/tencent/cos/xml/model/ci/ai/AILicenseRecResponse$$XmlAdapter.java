package com.tencent.cos.xml.model.ci.ai;

import com.google.firebase.installations.local.PersistedInstallation;
import com.tencent.cos.xml.model.ci.ai.AILicenseRecResponse;
import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes10.dex */
public class AILicenseRecResponse$$XmlAdapter extends IXmlAdapter<AILicenseRecResponse> {
    private HashMap<String, ChildElementBinder<AILicenseRecResponse>> childElementBinders;

    public AILicenseRecResponse$$XmlAdapter() {
        HashMap<String, ChildElementBinder<AILicenseRecResponse>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put(PersistedInstallation.f35952i, new ChildElementBinder<AILicenseRecResponse>() { // from class: com.tencent.cos.xml.model.ci.ai.AILicenseRecResponse$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, AILicenseRecResponse aILicenseRecResponse, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                aILicenseRecResponse.status = Integer.parseInt(xmlPullParser.getText());
            }
        });
        this.childElementBinders.put("IdInfo", new ChildElementBinder<AILicenseRecResponse>() { // from class: com.tencent.cos.xml.model.ci.ai.AILicenseRecResponse$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, AILicenseRecResponse aILicenseRecResponse, String str) throws IOException, XmlPullParserException {
                if (aILicenseRecResponse.idInfo == null) {
                    aILicenseRecResponse.idInfo = new ArrayList();
                }
                aILicenseRecResponse.idInfo.add((AILicenseRecResponse.AILicenseRecResponseIdInfo) QCloudXml.fromXml(xmlPullParser, AILicenseRecResponse.AILicenseRecResponseIdInfo.class, "IdInfo"));
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public AILicenseRecResponse fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        AILicenseRecResponse aILicenseRecResponse = new AILicenseRecResponse();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<AILicenseRecResponse> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, aILicenseRecResponse, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "Response" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return aILicenseRecResponse;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return aILicenseRecResponse;
    }
}
