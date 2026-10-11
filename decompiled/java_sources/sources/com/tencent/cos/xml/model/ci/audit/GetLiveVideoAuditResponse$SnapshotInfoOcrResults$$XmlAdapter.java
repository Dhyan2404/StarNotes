package com.tencent.cos.xml.model.ci.audit;

import com.tencent.cos.xml.model.ci.audit.GetLiveVideoAuditResponse;
import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes10.dex */
public class GetLiveVideoAuditResponse$SnapshotInfoOcrResults$$XmlAdapter extends IXmlAdapter<GetLiveVideoAuditResponse.SnapshotInfoOcrResults> {
    private HashMap<String, ChildElementBinder<GetLiveVideoAuditResponse.SnapshotInfoOcrResults>> childElementBinders;

    public GetLiveVideoAuditResponse$SnapshotInfoOcrResults$$XmlAdapter() {
        HashMap<String, ChildElementBinder<GetLiveVideoAuditResponse.SnapshotInfoOcrResults>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put("Text", new ChildElementBinder<GetLiveVideoAuditResponse.SnapshotInfoOcrResults>() { // from class: com.tencent.cos.xml.model.ci.audit.GetLiveVideoAuditResponse$SnapshotInfoOcrResults$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetLiveVideoAuditResponse.SnapshotInfoOcrResults snapshotInfoOcrResults, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                snapshotInfoOcrResults.text = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Keywords", new ChildElementBinder<GetLiveVideoAuditResponse.SnapshotInfoOcrResults>() { // from class: com.tencent.cos.xml.model.ci.audit.GetLiveVideoAuditResponse$SnapshotInfoOcrResults$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetLiveVideoAuditResponse.SnapshotInfoOcrResults snapshotInfoOcrResults, String str) throws IOException, XmlPullParserException {
                if (snapshotInfoOcrResults.keywords == null) {
                    snapshotInfoOcrResults.keywords = new ArrayList();
                }
                int eventType = xmlPullParser.getEventType();
                while (eventType != 1) {
                    if (eventType != 2) {
                        if (eventType == 3 && "Keywords".equalsIgnoreCase(xmlPullParser.getName())) {
                            return;
                        }
                    } else {
                        xmlPullParser.next();
                        snapshotInfoOcrResults.keywords.add(xmlPullParser.getText());
                    }
                    eventType = xmlPullParser.next();
                }
            }
        });
        this.childElementBinders.put("Location", new ChildElementBinder<GetLiveVideoAuditResponse.SnapshotInfoOcrResults>() { // from class: com.tencent.cos.xml.model.ci.audit.GetLiveVideoAuditResponse$SnapshotInfoOcrResults$$XmlAdapter.3
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetLiveVideoAuditResponse.SnapshotInfoOcrResults snapshotInfoOcrResults, String str) throws IOException, XmlPullParserException {
                snapshotInfoOcrResults.location = (GetLiveVideoAuditResponse.SnapshotInfoOcrResultsLocation) QCloudXml.fromXml(xmlPullParser, GetLiveVideoAuditResponse.SnapshotInfoOcrResultsLocation.class, "Location");
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public GetLiveVideoAuditResponse.SnapshotInfoOcrResults fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        GetLiveVideoAuditResponse.SnapshotInfoOcrResults snapshotInfoOcrResults = new GetLiveVideoAuditResponse.SnapshotInfoOcrResults();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<GetLiveVideoAuditResponse.SnapshotInfoOcrResults> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, snapshotInfoOcrResults, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "OcrResults" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return snapshotInfoOcrResults;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return snapshotInfoOcrResults;
    }
}
