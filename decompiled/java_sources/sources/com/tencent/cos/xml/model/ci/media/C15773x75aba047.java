package com.tencent.cos.xml.model.ci.media;

import com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser;
import com.tencent.cos.xml.model.ci.media.SearchMediaQueueResponse;
import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import java.io.IOException;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* renamed from: com.tencent.cos.xml.model.ci.media.SearchMediaQueueResponse$SearchMediaQueueResponseNotifyConfig$$XmlAdapter */
/* loaded from: classes10.dex */
public class C15773x75aba047 extends IXmlAdapter<SearchMediaQueueResponse.SearchMediaQueueResponseNotifyConfig> {
    private HashMap<String, ChildElementBinder<SearchMediaQueueResponse.SearchMediaQueueResponseNotifyConfig>> childElementBinders;

    public C15773x75aba047() {
        HashMap<String, ChildElementBinder<SearchMediaQueueResponse.SearchMediaQueueResponseNotifyConfig>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put(SsManifestParser.C4934e.f26671A, new ChildElementBinder<SearchMediaQueueResponse.SearchMediaQueueResponseNotifyConfig>() { // from class: com.tencent.cos.xml.model.ci.media.SearchMediaQueueResponse$SearchMediaQueueResponseNotifyConfig$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SearchMediaQueueResponse.SearchMediaQueueResponseNotifyConfig searchMediaQueueResponseNotifyConfig, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                searchMediaQueueResponseNotifyConfig.url = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("State", new ChildElementBinder<SearchMediaQueueResponse.SearchMediaQueueResponseNotifyConfig>() { // from class: com.tencent.cos.xml.model.ci.media.SearchMediaQueueResponse$SearchMediaQueueResponseNotifyConfig$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SearchMediaQueueResponse.SearchMediaQueueResponseNotifyConfig searchMediaQueueResponseNotifyConfig, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                searchMediaQueueResponseNotifyConfig.state = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Type", new ChildElementBinder<SearchMediaQueueResponse.SearchMediaQueueResponseNotifyConfig>() { // from class: com.tencent.cos.xml.model.ci.media.SearchMediaQueueResponse$SearchMediaQueueResponseNotifyConfig$$XmlAdapter.3
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SearchMediaQueueResponse.SearchMediaQueueResponseNotifyConfig searchMediaQueueResponseNotifyConfig, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                searchMediaQueueResponseNotifyConfig.type = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Event", new ChildElementBinder<SearchMediaQueueResponse.SearchMediaQueueResponseNotifyConfig>() { // from class: com.tencent.cos.xml.model.ci.media.SearchMediaQueueResponse$SearchMediaQueueResponseNotifyConfig$$XmlAdapter.4
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SearchMediaQueueResponse.SearchMediaQueueResponseNotifyConfig searchMediaQueueResponseNotifyConfig, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                searchMediaQueueResponseNotifyConfig.event = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("ResultFormat", new ChildElementBinder<SearchMediaQueueResponse.SearchMediaQueueResponseNotifyConfig>() { // from class: com.tencent.cos.xml.model.ci.media.SearchMediaQueueResponse$SearchMediaQueueResponseNotifyConfig$$XmlAdapter.5
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SearchMediaQueueResponse.SearchMediaQueueResponseNotifyConfig searchMediaQueueResponseNotifyConfig, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                searchMediaQueueResponseNotifyConfig.resultFormat = xmlPullParser.getText();
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public SearchMediaQueueResponse.SearchMediaQueueResponseNotifyConfig fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        SearchMediaQueueResponse.SearchMediaQueueResponseNotifyConfig searchMediaQueueResponseNotifyConfig = new SearchMediaQueueResponse.SearchMediaQueueResponseNotifyConfig();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<SearchMediaQueueResponse.SearchMediaQueueResponseNotifyConfig> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, searchMediaQueueResponseNotifyConfig, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "NotifyConfig" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return searchMediaQueueResponseNotifyConfig;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return searchMediaQueueResponseNotifyConfig;
    }
}
