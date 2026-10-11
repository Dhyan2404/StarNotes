package com.tencent.cos.xml.model.ci.ai;

import com.tencent.cos.xml.model.ci.ai.AIDetectCarResponse;
import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import java.io.IOException;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes10.dex */
public class AIDetectCarResponse$AIDetectCarResponseCarLocation$$XmlAdapter extends IXmlAdapter<AIDetectCarResponse.AIDetectCarResponseCarLocation> {
    private HashMap<String, ChildElementBinder<AIDetectCarResponse.AIDetectCarResponseCarLocation>> childElementBinders;

    public AIDetectCarResponse$AIDetectCarResponseCarLocation$$XmlAdapter() {
        HashMap<String, ChildElementBinder<AIDetectCarResponse.AIDetectCarResponseCarLocation>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put("X", new ChildElementBinder<AIDetectCarResponse.AIDetectCarResponseCarLocation>() { // from class: com.tencent.cos.xml.model.ci.ai.AIDetectCarResponse$AIDetectCarResponseCarLocation$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, AIDetectCarResponse.AIDetectCarResponseCarLocation aIDetectCarResponseCarLocation, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                aIDetectCarResponseCarLocation.f93280x = Integer.parseInt(xmlPullParser.getText());
            }
        });
        this.childElementBinders.put("Y", new ChildElementBinder<AIDetectCarResponse.AIDetectCarResponseCarLocation>() { // from class: com.tencent.cos.xml.model.ci.ai.AIDetectCarResponse$AIDetectCarResponseCarLocation$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, AIDetectCarResponse.AIDetectCarResponseCarLocation aIDetectCarResponseCarLocation, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                aIDetectCarResponseCarLocation.f93281y = Integer.parseInt(xmlPullParser.getText());
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public AIDetectCarResponse.AIDetectCarResponseCarLocation fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        AIDetectCarResponse.AIDetectCarResponseCarLocation aIDetectCarResponseCarLocation = new AIDetectCarResponse.AIDetectCarResponseCarLocation();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<AIDetectCarResponse.AIDetectCarResponseCarLocation> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, aIDetectCarResponseCarLocation, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "CarLocation" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return aIDetectCarResponseCarLocation;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return aIDetectCarResponseCarLocation;
    }
}
