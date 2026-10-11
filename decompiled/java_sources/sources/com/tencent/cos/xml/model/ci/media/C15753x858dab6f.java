package com.tencent.cos.xml.model.ci.media;

import com.tencent.cos.xml.model.ci.media.GetWorkflowDetailResponse;
import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import java.io.IOException;
import java.util.HashMap;
import org.apache.commons.compress.harmony.unpack200.AttributeLayout;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* renamed from: com.tencent.cos.xml.model.ci.media.GetWorkflowDetailResponse$GetWorkflowDetailResponseObjectInfo$$XmlAdapter */
/* loaded from: classes10.dex */
public class C15753x858dab6f extends IXmlAdapter<GetWorkflowDetailResponse.GetWorkflowDetailResponseObjectInfo> {
    private HashMap<String, ChildElementBinder<GetWorkflowDetailResponse.GetWorkflowDetailResponseObjectInfo>> childElementBinders;

    public C15753x858dab6f() {
        HashMap<String, ChildElementBinder<GetWorkflowDetailResponse.GetWorkflowDetailResponseObjectInfo>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put("ObjectName", new ChildElementBinder<GetWorkflowDetailResponse.GetWorkflowDetailResponseObjectInfo>() { // from class: com.tencent.cos.xml.model.ci.media.GetWorkflowDetailResponse$GetWorkflowDetailResponseObjectInfo$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetWorkflowDetailResponse.GetWorkflowDetailResponseObjectInfo getWorkflowDetailResponseObjectInfo, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                getWorkflowDetailResponseObjectInfo.objectName = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("ObjectUrl", new ChildElementBinder<GetWorkflowDetailResponse.GetWorkflowDetailResponseObjectInfo>() { // from class: com.tencent.cos.xml.model.ci.media.GetWorkflowDetailResponse$GetWorkflowDetailResponseObjectInfo$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetWorkflowDetailResponse.GetWorkflowDetailResponseObjectInfo getWorkflowDetailResponseObjectInfo, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                getWorkflowDetailResponseObjectInfo.objectUrl = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("InputObjectName", new ChildElementBinder<GetWorkflowDetailResponse.GetWorkflowDetailResponseObjectInfo>() { // from class: com.tencent.cos.xml.model.ci.media.GetWorkflowDetailResponse$GetWorkflowDetailResponseObjectInfo$$XmlAdapter.3
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetWorkflowDetailResponse.GetWorkflowDetailResponseObjectInfo getWorkflowDetailResponseObjectInfo, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                getWorkflowDetailResponseObjectInfo.inputObjectName = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put(AttributeLayout.ATTRIBUTE_CODE, new ChildElementBinder<GetWorkflowDetailResponse.GetWorkflowDetailResponseObjectInfo>() { // from class: com.tencent.cos.xml.model.ci.media.GetWorkflowDetailResponse$GetWorkflowDetailResponseObjectInfo$$XmlAdapter.4
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetWorkflowDetailResponse.GetWorkflowDetailResponseObjectInfo getWorkflowDetailResponseObjectInfo, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                getWorkflowDetailResponseObjectInfo.code = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Message", new ChildElementBinder<GetWorkflowDetailResponse.GetWorkflowDetailResponseObjectInfo>() { // from class: com.tencent.cos.xml.model.ci.media.GetWorkflowDetailResponse$GetWorkflowDetailResponseObjectInfo$$XmlAdapter.5
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetWorkflowDetailResponse.GetWorkflowDetailResponseObjectInfo getWorkflowDetailResponseObjectInfo, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                getWorkflowDetailResponseObjectInfo.message = xmlPullParser.getText();
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public GetWorkflowDetailResponse.GetWorkflowDetailResponseObjectInfo fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        GetWorkflowDetailResponse.GetWorkflowDetailResponseObjectInfo getWorkflowDetailResponseObjectInfo = new GetWorkflowDetailResponse.GetWorkflowDetailResponseObjectInfo();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<GetWorkflowDetailResponse.GetWorkflowDetailResponseObjectInfo> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, getWorkflowDetailResponseObjectInfo, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "ObjectInfo" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return getWorkflowDetailResponseObjectInfo;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return getWorkflowDetailResponseObjectInfo;
    }
}
