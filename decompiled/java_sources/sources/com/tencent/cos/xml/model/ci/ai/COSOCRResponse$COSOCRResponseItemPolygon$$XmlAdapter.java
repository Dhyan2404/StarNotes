package com.tencent.cos.xml.model.ci.ai;

import com.google.common.net.HttpHeaders;
import com.tencent.cos.xml.model.ci.ai.COSOCRResponse;
import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import java.io.IOException;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes10.dex */
public class COSOCRResponse$COSOCRResponseItemPolygon$$XmlAdapter extends IXmlAdapter<COSOCRResponse.COSOCRResponseItemPolygon> {
    private HashMap<String, ChildElementBinder<COSOCRResponse.COSOCRResponseItemPolygon>> childElementBinders;

    public COSOCRResponse$COSOCRResponseItemPolygon$$XmlAdapter() {
        HashMap<String, ChildElementBinder<COSOCRResponse.COSOCRResponseItemPolygon>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put("X", new ChildElementBinder<COSOCRResponse.COSOCRResponseItemPolygon>() { // from class: com.tencent.cos.xml.model.ci.ai.COSOCRResponse$COSOCRResponseItemPolygon$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, COSOCRResponse.COSOCRResponseItemPolygon cOSOCRResponseItemPolygon, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                cOSOCRResponseItemPolygon.f93288x = Integer.parseInt(xmlPullParser.getText());
            }
        });
        this.childElementBinders.put("Y", new ChildElementBinder<COSOCRResponse.COSOCRResponseItemPolygon>() { // from class: com.tencent.cos.xml.model.ci.ai.COSOCRResponse$COSOCRResponseItemPolygon$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, COSOCRResponse.COSOCRResponseItemPolygon cOSOCRResponseItemPolygon, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                cOSOCRResponseItemPolygon.f93289y = Integer.parseInt(xmlPullParser.getText());
            }
        });
        this.childElementBinders.put(HttpHeaders.WIDTH, new ChildElementBinder<COSOCRResponse.COSOCRResponseItemPolygon>() { // from class: com.tencent.cos.xml.model.ci.ai.COSOCRResponse$COSOCRResponseItemPolygon$$XmlAdapter.3
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, COSOCRResponse.COSOCRResponseItemPolygon cOSOCRResponseItemPolygon, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                cOSOCRResponseItemPolygon.width = Integer.parseInt(xmlPullParser.getText());
            }
        });
        this.childElementBinders.put("Height", new ChildElementBinder<COSOCRResponse.COSOCRResponseItemPolygon>() { // from class: com.tencent.cos.xml.model.ci.ai.COSOCRResponse$COSOCRResponseItemPolygon$$XmlAdapter.4
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, COSOCRResponse.COSOCRResponseItemPolygon cOSOCRResponseItemPolygon, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                cOSOCRResponseItemPolygon.height = Integer.parseInt(xmlPullParser.getText());
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public COSOCRResponse.COSOCRResponseItemPolygon fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        COSOCRResponse.COSOCRResponseItemPolygon cOSOCRResponseItemPolygon = new COSOCRResponse.COSOCRResponseItemPolygon();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<COSOCRResponse.COSOCRResponseItemPolygon> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, cOSOCRResponseItemPolygon, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "ItemPolygon" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return cOSOCRResponseItemPolygon;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return cOSOCRResponseItemPolygon;
    }
}
