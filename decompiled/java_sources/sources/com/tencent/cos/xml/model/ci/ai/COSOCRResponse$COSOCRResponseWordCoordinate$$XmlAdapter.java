package com.tencent.cos.xml.model.ci.ai;

import com.tencent.cos.xml.model.ci.ai.COSOCRResponse;
import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import java.io.IOException;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes10.dex */
public class COSOCRResponse$COSOCRResponseWordCoordinate$$XmlAdapter extends IXmlAdapter<COSOCRResponse.COSOCRResponseWordCoordinate> {
    private HashMap<String, ChildElementBinder<COSOCRResponse.COSOCRResponseWordCoordinate>> childElementBinders;

    public COSOCRResponse$COSOCRResponseWordCoordinate$$XmlAdapter() {
        HashMap<String, ChildElementBinder<COSOCRResponse.COSOCRResponseWordCoordinate>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put("X", new ChildElementBinder<COSOCRResponse.COSOCRResponseWordCoordinate>() { // from class: com.tencent.cos.xml.model.ci.ai.COSOCRResponse$COSOCRResponseWordCoordinate$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, COSOCRResponse.COSOCRResponseWordCoordinate cOSOCRResponseWordCoordinate, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                cOSOCRResponseWordCoordinate.f93292x = Integer.parseInt(xmlPullParser.getText());
            }
        });
        this.childElementBinders.put("Y", new ChildElementBinder<COSOCRResponse.COSOCRResponseWordCoordinate>() { // from class: com.tencent.cos.xml.model.ci.ai.COSOCRResponse$COSOCRResponseWordCoordinate$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, COSOCRResponse.COSOCRResponseWordCoordinate cOSOCRResponseWordCoordinate, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                cOSOCRResponseWordCoordinate.f93293y = Integer.parseInt(xmlPullParser.getText());
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public COSOCRResponse.COSOCRResponseWordCoordinate fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        COSOCRResponse.COSOCRResponseWordCoordinate cOSOCRResponseWordCoordinate = new COSOCRResponse.COSOCRResponseWordCoordinate();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<COSOCRResponse.COSOCRResponseWordCoordinate> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, cOSOCRResponseWordCoordinate, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "WordCoordinate" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return cOSOCRResponseWordCoordinate;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return cOSOCRResponseWordCoordinate;
    }
}
