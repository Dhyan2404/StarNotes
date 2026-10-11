package com.tencent.cos.xml.model.ci.ai;

import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes10.dex */
public class LivenessRecognitionResponse$$XmlAdapter extends IXmlAdapter<LivenessRecognitionResponse> {
    private HashMap<String, ChildElementBinder<LivenessRecognitionResponse>> childElementBinders;

    public LivenessRecognitionResponse$$XmlAdapter() {
        HashMap<String, ChildElementBinder<LivenessRecognitionResponse>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put("BestFrameBase64", new ChildElementBinder<LivenessRecognitionResponse>() { // from class: com.tencent.cos.xml.model.ci.ai.LivenessRecognitionResponse$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, LivenessRecognitionResponse livenessRecognitionResponse, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                livenessRecognitionResponse.bestFrameBase64 = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Sim", new ChildElementBinder<LivenessRecognitionResponse>() { // from class: com.tencent.cos.xml.model.ci.ai.LivenessRecognitionResponse$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, LivenessRecognitionResponse livenessRecognitionResponse, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                livenessRecognitionResponse.sim = Float.parseFloat(xmlPullParser.getText());
            }
        });
        this.childElementBinders.put("BestFrameList", new ChildElementBinder<LivenessRecognitionResponse>() { // from class: com.tencent.cos.xml.model.ci.ai.LivenessRecognitionResponse$$XmlAdapter.3
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, LivenessRecognitionResponse livenessRecognitionResponse, String str) throws IOException, XmlPullParserException {
                if (livenessRecognitionResponse.bestFrameList == null) {
                    livenessRecognitionResponse.bestFrameList = new ArrayList();
                }
                int eventType = xmlPullParser.getEventType();
                while (eventType != 1) {
                    if (eventType != 2) {
                        if (eventType == 3 && "BestFrameList".equalsIgnoreCase(xmlPullParser.getName())) {
                            return;
                        }
                    } else {
                        xmlPullParser.next();
                        livenessRecognitionResponse.bestFrameList.add(xmlPullParser.getText());
                    }
                    eventType = xmlPullParser.next();
                }
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public LivenessRecognitionResponse fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        LivenessRecognitionResponse livenessRecognitionResponse = new LivenessRecognitionResponse();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<LivenessRecognitionResponse> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, livenessRecognitionResponse, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "Response" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return livenessRecognitionResponse;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return livenessRecognitionResponse;
    }
}
