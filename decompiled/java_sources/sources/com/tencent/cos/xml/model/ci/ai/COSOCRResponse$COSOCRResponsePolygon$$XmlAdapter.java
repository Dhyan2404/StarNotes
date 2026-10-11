package com.tencent.cos.xml.model.ci.ai;

import com.tencent.cos.xml.model.ci.ai.COSOCRResponse;
import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import java.io.IOException;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes10.dex */
public class COSOCRResponse$COSOCRResponsePolygon$$XmlAdapter extends IXmlAdapter<COSOCRResponse.COSOCRResponsePolygon> {
    private HashMap<String, ChildElementBinder<COSOCRResponse.COSOCRResponsePolygon>> childElementBinders;

    public COSOCRResponse$COSOCRResponsePolygon$$XmlAdapter() {
        HashMap<String, ChildElementBinder<COSOCRResponse.COSOCRResponsePolygon>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put("X", new ChildElementBinder<COSOCRResponse.COSOCRResponsePolygon>() { // from class: com.tencent.cos.xml.model.ci.ai.COSOCRResponse$COSOCRResponsePolygon$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, COSOCRResponse.COSOCRResponsePolygon cOSOCRResponsePolygon, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                cOSOCRResponsePolygon.f93290x = Integer.parseInt(xmlPullParser.getText());
            }
        });
        this.childElementBinders.put("Y", new ChildElementBinder<COSOCRResponse.COSOCRResponsePolygon>() { // from class: com.tencent.cos.xml.model.ci.ai.COSOCRResponse$COSOCRResponsePolygon$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, COSOCRResponse.COSOCRResponsePolygon cOSOCRResponsePolygon, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                cOSOCRResponsePolygon.f93291y = Integer.parseInt(xmlPullParser.getText());
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public COSOCRResponse.COSOCRResponsePolygon fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        COSOCRResponse.COSOCRResponsePolygon cOSOCRResponsePolygon = new COSOCRResponse.COSOCRResponsePolygon();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<COSOCRResponse.COSOCRResponsePolygon> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, cOSOCRResponsePolygon, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "Polygon" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return cOSOCRResponsePolygon;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return cOSOCRResponsePolygon;
    }
}
