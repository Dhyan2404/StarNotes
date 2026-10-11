package com.tencent.cos.xml.model.ci.audit;

import com.google.common.net.HttpHeaders;
import com.tencent.cos.xml.model.ci.audit.GetLiveVideoAuditResponse;
import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import java.io.IOException;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* renamed from: com.tencent.cos.xml.model.ci.audit.GetLiveVideoAuditResponse$SnapshotInfoOcrResultsLocation$$XmlAdapter */
/* loaded from: classes10.dex */
public class C15546x2728d458 extends IXmlAdapter<GetLiveVideoAuditResponse.SnapshotInfoOcrResultsLocation> {
    private HashMap<String, ChildElementBinder<GetLiveVideoAuditResponse.SnapshotInfoOcrResultsLocation>> childElementBinders;

    public C15546x2728d458() {
        HashMap<String, ChildElementBinder<GetLiveVideoAuditResponse.SnapshotInfoOcrResultsLocation>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put("X", new ChildElementBinder<GetLiveVideoAuditResponse.SnapshotInfoOcrResultsLocation>() { // from class: com.tencent.cos.xml.model.ci.audit.GetLiveVideoAuditResponse$SnapshotInfoOcrResultsLocation$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetLiveVideoAuditResponse.SnapshotInfoOcrResultsLocation snapshotInfoOcrResultsLocation, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                snapshotInfoOcrResultsLocation.f93297x = Float.parseFloat(xmlPullParser.getText());
            }
        });
        this.childElementBinders.put("Y", new ChildElementBinder<GetLiveVideoAuditResponse.SnapshotInfoOcrResultsLocation>() { // from class: com.tencent.cos.xml.model.ci.audit.GetLiveVideoAuditResponse$SnapshotInfoOcrResultsLocation$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetLiveVideoAuditResponse.SnapshotInfoOcrResultsLocation snapshotInfoOcrResultsLocation, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                snapshotInfoOcrResultsLocation.f93298y = Float.parseFloat(xmlPullParser.getText());
            }
        });
        this.childElementBinders.put("Height", new ChildElementBinder<GetLiveVideoAuditResponse.SnapshotInfoOcrResultsLocation>() { // from class: com.tencent.cos.xml.model.ci.audit.GetLiveVideoAuditResponse$SnapshotInfoOcrResultsLocation$$XmlAdapter.3
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetLiveVideoAuditResponse.SnapshotInfoOcrResultsLocation snapshotInfoOcrResultsLocation, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                snapshotInfoOcrResultsLocation.height = Float.parseFloat(xmlPullParser.getText());
            }
        });
        this.childElementBinders.put(HttpHeaders.WIDTH, new ChildElementBinder<GetLiveVideoAuditResponse.SnapshotInfoOcrResultsLocation>() { // from class: com.tencent.cos.xml.model.ci.audit.GetLiveVideoAuditResponse$SnapshotInfoOcrResultsLocation$$XmlAdapter.4
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetLiveVideoAuditResponse.SnapshotInfoOcrResultsLocation snapshotInfoOcrResultsLocation, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                snapshotInfoOcrResultsLocation.width = Float.parseFloat(xmlPullParser.getText());
            }
        });
        this.childElementBinders.put("Rotate", new ChildElementBinder<GetLiveVideoAuditResponse.SnapshotInfoOcrResultsLocation>() { // from class: com.tencent.cos.xml.model.ci.audit.GetLiveVideoAuditResponse$SnapshotInfoOcrResultsLocation$$XmlAdapter.5
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetLiveVideoAuditResponse.SnapshotInfoOcrResultsLocation snapshotInfoOcrResultsLocation, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                snapshotInfoOcrResultsLocation.rotate = Float.parseFloat(xmlPullParser.getText());
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public GetLiveVideoAuditResponse.SnapshotInfoOcrResultsLocation fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        GetLiveVideoAuditResponse.SnapshotInfoOcrResultsLocation snapshotInfoOcrResultsLocation = new GetLiveVideoAuditResponse.SnapshotInfoOcrResultsLocation();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<GetLiveVideoAuditResponse.SnapshotInfoOcrResultsLocation> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, snapshotInfoOcrResultsLocation, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "ObjectResults" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return snapshotInfoOcrResultsLocation;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return snapshotInfoOcrResultsLocation;
    }
}
