package com.tencent.cos.xml.model.ci.ai;

import com.tencent.cos.xml.model.ci.ai.RecognitionQRcodeResponse;
import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import java.io.IOException;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* renamed from: com.tencent.cos.xml.model.ci.ai.RecognitionQRcodeResponse$RecognitionQRcodeResponseCodeLocation$$XmlAdapter */
/* loaded from: classes10.dex */
public class C15306x839d4122 extends IXmlAdapter<RecognitionQRcodeResponse.RecognitionQRcodeResponseCodeLocation> {
    private HashMap<String, ChildElementBinder<RecognitionQRcodeResponse.RecognitionQRcodeResponseCodeLocation>> childElementBinders;

    public C15306x839d4122() {
        HashMap<String, ChildElementBinder<RecognitionQRcodeResponse.RecognitionQRcodeResponseCodeLocation>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put("Point", new ChildElementBinder<RecognitionQRcodeResponse.RecognitionQRcodeResponseCodeLocation>() { // from class: com.tencent.cos.xml.model.ci.ai.RecognitionQRcodeResponse$RecognitionQRcodeResponseCodeLocation$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, RecognitionQRcodeResponse.RecognitionQRcodeResponseCodeLocation recognitionQRcodeResponseCodeLocation, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                recognitionQRcodeResponseCodeLocation.point = xmlPullParser.getText();
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public RecognitionQRcodeResponse.RecognitionQRcodeResponseCodeLocation fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        RecognitionQRcodeResponse.RecognitionQRcodeResponseCodeLocation recognitionQRcodeResponseCodeLocation = new RecognitionQRcodeResponse.RecognitionQRcodeResponseCodeLocation();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<RecognitionQRcodeResponse.RecognitionQRcodeResponseCodeLocation> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, recognitionQRcodeResponseCodeLocation, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "CodeLocation" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return recognitionQRcodeResponseCodeLocation;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return recognitionQRcodeResponseCodeLocation;
    }
}
