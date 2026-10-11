package com.tencent.cos.xml.model.ci.ai;

import com.google.common.net.HttpHeaders;
import com.tencent.cos.xml.model.ci.ai.AIDetectPetResponse;
import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import java.io.IOException;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes10.dex */
public class AIDetectPetResponse$AIDetectPetResponseLocation$$XmlAdapter extends IXmlAdapter<AIDetectPetResponse.AIDetectPetResponseLocation> {
    private HashMap<String, ChildElementBinder<AIDetectPetResponse.AIDetectPetResponseLocation>> childElementBinders;

    public AIDetectPetResponse$AIDetectPetResponseLocation$$XmlAdapter() {
        HashMap<String, ChildElementBinder<AIDetectPetResponse.AIDetectPetResponseLocation>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put("X", new ChildElementBinder<AIDetectPetResponse.AIDetectPetResponseLocation>() { // from class: com.tencent.cos.xml.model.ci.ai.AIDetectPetResponse$AIDetectPetResponseLocation$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, AIDetectPetResponse.AIDetectPetResponseLocation aIDetectPetResponseLocation, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                aIDetectPetResponseLocation.f93286x = Integer.parseInt(xmlPullParser.getText());
            }
        });
        this.childElementBinders.put("Y", new ChildElementBinder<AIDetectPetResponse.AIDetectPetResponseLocation>() { // from class: com.tencent.cos.xml.model.ci.ai.AIDetectPetResponse$AIDetectPetResponseLocation$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, AIDetectPetResponse.AIDetectPetResponseLocation aIDetectPetResponseLocation, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                aIDetectPetResponseLocation.f93287y = Integer.parseInt(xmlPullParser.getText());
            }
        });
        this.childElementBinders.put("Height", new ChildElementBinder<AIDetectPetResponse.AIDetectPetResponseLocation>() { // from class: com.tencent.cos.xml.model.ci.ai.AIDetectPetResponse$AIDetectPetResponseLocation$$XmlAdapter.3
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, AIDetectPetResponse.AIDetectPetResponseLocation aIDetectPetResponseLocation, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                aIDetectPetResponseLocation.height = Integer.parseInt(xmlPullParser.getText());
            }
        });
        this.childElementBinders.put(HttpHeaders.WIDTH, new ChildElementBinder<AIDetectPetResponse.AIDetectPetResponseLocation>() { // from class: com.tencent.cos.xml.model.ci.ai.AIDetectPetResponse$AIDetectPetResponseLocation$$XmlAdapter.4
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, AIDetectPetResponse.AIDetectPetResponseLocation aIDetectPetResponseLocation, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                aIDetectPetResponseLocation.width = Integer.parseInt(xmlPullParser.getText());
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public AIDetectPetResponse.AIDetectPetResponseLocation fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        AIDetectPetResponse.AIDetectPetResponseLocation aIDetectPetResponseLocation = new AIDetectPetResponse.AIDetectPetResponseLocation();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<AIDetectPetResponse.AIDetectPetResponseLocation> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, aIDetectPetResponseLocation, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "Location" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return aIDetectPetResponseLocation;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return aIDetectPetResponseLocation;
    }
}
