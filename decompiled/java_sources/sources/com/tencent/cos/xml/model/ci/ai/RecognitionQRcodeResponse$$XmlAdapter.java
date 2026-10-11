package com.tencent.cos.xml.model.ci.ai;

import com.tencent.cos.xml.model.ci.ai.RecognitionQRcodeResponse;
import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes10.dex */
public class RecognitionQRcodeResponse$$XmlAdapter extends IXmlAdapter<RecognitionQRcodeResponse> {
    private HashMap<String, ChildElementBinder<RecognitionQRcodeResponse>> childElementBinders;

    public RecognitionQRcodeResponse$$XmlAdapter() {
        HashMap<String, ChildElementBinder<RecognitionQRcodeResponse>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put("CodeStatus", new ChildElementBinder<RecognitionQRcodeResponse>() { // from class: com.tencent.cos.xml.model.ci.ai.RecognitionQRcodeResponse$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, RecognitionQRcodeResponse recognitionQRcodeResponse, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                recognitionQRcodeResponse.codeStatus = Integer.parseInt(xmlPullParser.getText());
            }
        });
        this.childElementBinders.put("QRcodeInfo", new ChildElementBinder<RecognitionQRcodeResponse>() { // from class: com.tencent.cos.xml.model.ci.ai.RecognitionQRcodeResponse$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, RecognitionQRcodeResponse recognitionQRcodeResponse, String str) throws IOException, XmlPullParserException {
                recognitionQRcodeResponse.qRcodeInfo = (RecognitionQRcodeResponse.RecognitionQRcodeResponseQRcodeInfo) QCloudXml.fromXml(xmlPullParser, RecognitionQRcodeResponse.RecognitionQRcodeResponseQRcodeInfo.class, "QRcodeInfo");
            }
        });
        this.childElementBinders.put("ResultImage", new ChildElementBinder<RecognitionQRcodeResponse>() { // from class: com.tencent.cos.xml.model.ci.ai.RecognitionQRcodeResponse$$XmlAdapter.3
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, RecognitionQRcodeResponse recognitionQRcodeResponse, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                recognitionQRcodeResponse.resultImage = xmlPullParser.getText();
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public RecognitionQRcodeResponse fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        RecognitionQRcodeResponse recognitionQRcodeResponse = new RecognitionQRcodeResponse();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<RecognitionQRcodeResponse> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, recognitionQRcodeResponse, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "Response" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return recognitionQRcodeResponse;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return recognitionQRcodeResponse;
    }
}
