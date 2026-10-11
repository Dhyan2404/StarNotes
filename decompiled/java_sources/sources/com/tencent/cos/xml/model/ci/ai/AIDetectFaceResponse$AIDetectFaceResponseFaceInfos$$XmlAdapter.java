package com.tencent.cos.xml.model.ci.ai;

import com.google.common.net.HttpHeaders;
import com.tencent.cos.xml.model.ci.ai.AIDetectFaceResponse;
import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import java.io.IOException;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes10.dex */
public class AIDetectFaceResponse$AIDetectFaceResponseFaceInfos$$XmlAdapter extends IXmlAdapter<AIDetectFaceResponse.AIDetectFaceResponseFaceInfos> {
    private HashMap<String, ChildElementBinder<AIDetectFaceResponse.AIDetectFaceResponseFaceInfos>> childElementBinders;

    public AIDetectFaceResponse$AIDetectFaceResponseFaceInfos$$XmlAdapter() {
        HashMap<String, ChildElementBinder<AIDetectFaceResponse.AIDetectFaceResponseFaceInfos>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put("X", new ChildElementBinder<AIDetectFaceResponse.AIDetectFaceResponseFaceInfos>() { // from class: com.tencent.cos.xml.model.ci.ai.AIDetectFaceResponse$AIDetectFaceResponseFaceInfos$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, AIDetectFaceResponse.AIDetectFaceResponseFaceInfos aIDetectFaceResponseFaceInfos, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                aIDetectFaceResponseFaceInfos.f93284x = Integer.parseInt(xmlPullParser.getText());
            }
        });
        this.childElementBinders.put("Y", new ChildElementBinder<AIDetectFaceResponse.AIDetectFaceResponseFaceInfos>() { // from class: com.tencent.cos.xml.model.ci.ai.AIDetectFaceResponse$AIDetectFaceResponseFaceInfos$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, AIDetectFaceResponse.AIDetectFaceResponseFaceInfos aIDetectFaceResponseFaceInfos, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                aIDetectFaceResponseFaceInfos.f93285y = Integer.parseInt(xmlPullParser.getText());
            }
        });
        this.childElementBinders.put(HttpHeaders.WIDTH, new ChildElementBinder<AIDetectFaceResponse.AIDetectFaceResponseFaceInfos>() { // from class: com.tencent.cos.xml.model.ci.ai.AIDetectFaceResponse$AIDetectFaceResponseFaceInfos$$XmlAdapter.3
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, AIDetectFaceResponse.AIDetectFaceResponseFaceInfos aIDetectFaceResponseFaceInfos, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                aIDetectFaceResponseFaceInfos.width = Integer.parseInt(xmlPullParser.getText());
            }
        });
        this.childElementBinders.put("Height", new ChildElementBinder<AIDetectFaceResponse.AIDetectFaceResponseFaceInfos>() { // from class: com.tencent.cos.xml.model.ci.ai.AIDetectFaceResponse$AIDetectFaceResponseFaceInfos$$XmlAdapter.4
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, AIDetectFaceResponse.AIDetectFaceResponseFaceInfos aIDetectFaceResponseFaceInfos, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                aIDetectFaceResponseFaceInfos.height = Integer.parseInt(xmlPullParser.getText());
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public AIDetectFaceResponse.AIDetectFaceResponseFaceInfos fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        AIDetectFaceResponse.AIDetectFaceResponseFaceInfos aIDetectFaceResponseFaceInfos = new AIDetectFaceResponse.AIDetectFaceResponseFaceInfos();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<AIDetectFaceResponse.AIDetectFaceResponseFaceInfos> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, aIDetectFaceResponseFaceInfos, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "FaceInfos" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return aIDetectFaceResponseFaceInfos;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return aIDetectFaceResponseFaceInfos;
    }
}
