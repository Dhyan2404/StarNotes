package com.tencent.cos.xml.model.ci.media;

import com.tencent.cos.xml.model.ci.media.UpdateMediaQueue;
import com.tencent.cos.xml.model.ci.media.UpdateMediaQueueResponse;
import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* renamed from: com.tencent.cos.xml.model.ci.media.UpdateMediaQueueResponse$UpdateMediaQueueResponseQueue$$XmlAdapter */
/* loaded from: classes10.dex */
public class C16130x2339e3c5 extends IXmlAdapter<UpdateMediaQueueResponse.UpdateMediaQueueResponseQueue> {
    private HashMap<String, ChildElementBinder<UpdateMediaQueueResponse.UpdateMediaQueueResponseQueue>> childElementBinders;

    public C16130x2339e3c5() {
        HashMap<String, ChildElementBinder<UpdateMediaQueueResponse.UpdateMediaQueueResponseQueue>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put("QueueId", new ChildElementBinder<UpdateMediaQueueResponse.UpdateMediaQueueResponseQueue>() { // from class: com.tencent.cos.xml.model.ci.media.UpdateMediaQueueResponse$UpdateMediaQueueResponseQueue$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, UpdateMediaQueueResponse.UpdateMediaQueueResponseQueue updateMediaQueueResponseQueue, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                updateMediaQueueResponseQueue.queueId = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Name", new ChildElementBinder<UpdateMediaQueueResponse.UpdateMediaQueueResponseQueue>() { // from class: com.tencent.cos.xml.model.ci.media.UpdateMediaQueueResponse$UpdateMediaQueueResponseQueue$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, UpdateMediaQueueResponse.UpdateMediaQueueResponseQueue updateMediaQueueResponseQueue, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                updateMediaQueueResponseQueue.name = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("State", new ChildElementBinder<UpdateMediaQueueResponse.UpdateMediaQueueResponseQueue>() { // from class: com.tencent.cos.xml.model.ci.media.UpdateMediaQueueResponse$UpdateMediaQueueResponseQueue$$XmlAdapter.3
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, UpdateMediaQueueResponse.UpdateMediaQueueResponseQueue updateMediaQueueResponseQueue, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                updateMediaQueueResponseQueue.state = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("NotifyConfig", new ChildElementBinder<UpdateMediaQueueResponse.UpdateMediaQueueResponseQueue>() { // from class: com.tencent.cos.xml.model.ci.media.UpdateMediaQueueResponse$UpdateMediaQueueResponseQueue$$XmlAdapter.4
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, UpdateMediaQueueResponse.UpdateMediaQueueResponseQueue updateMediaQueueResponseQueue, String str) throws IOException, XmlPullParserException {
                updateMediaQueueResponseQueue.notifyConfig = (UpdateMediaQueue.UpdateMediaQueueNotifyConfig) QCloudXml.fromXml(xmlPullParser, UpdateMediaQueue.UpdateMediaQueueNotifyConfig.class, "NotifyConfig");
            }
        });
        this.childElementBinders.put("MaxSize", new ChildElementBinder<UpdateMediaQueueResponse.UpdateMediaQueueResponseQueue>() { // from class: com.tencent.cos.xml.model.ci.media.UpdateMediaQueueResponse$UpdateMediaQueueResponseQueue$$XmlAdapter.5
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, UpdateMediaQueueResponse.UpdateMediaQueueResponseQueue updateMediaQueueResponseQueue, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                updateMediaQueueResponseQueue.maxSize = Integer.parseInt(xmlPullParser.getText());
            }
        });
        this.childElementBinders.put("MaxConcurrent", new ChildElementBinder<UpdateMediaQueueResponse.UpdateMediaQueueResponseQueue>() { // from class: com.tencent.cos.xml.model.ci.media.UpdateMediaQueueResponse$UpdateMediaQueueResponseQueue$$XmlAdapter.6
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, UpdateMediaQueueResponse.UpdateMediaQueueResponseQueue updateMediaQueueResponseQueue, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                updateMediaQueueResponseQueue.maxConcurrent = Integer.parseInt(xmlPullParser.getText());
            }
        });
        this.childElementBinders.put("Category", new ChildElementBinder<UpdateMediaQueueResponse.UpdateMediaQueueResponseQueue>() { // from class: com.tencent.cos.xml.model.ci.media.UpdateMediaQueueResponse$UpdateMediaQueueResponseQueue$$XmlAdapter.7
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, UpdateMediaQueueResponse.UpdateMediaQueueResponseQueue updateMediaQueueResponseQueue, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                updateMediaQueueResponseQueue.category = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("UpdateTime", new ChildElementBinder<UpdateMediaQueueResponse.UpdateMediaQueueResponseQueue>() { // from class: com.tencent.cos.xml.model.ci.media.UpdateMediaQueueResponse$UpdateMediaQueueResponseQueue$$XmlAdapter.8
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, UpdateMediaQueueResponse.UpdateMediaQueueResponseQueue updateMediaQueueResponseQueue, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                updateMediaQueueResponseQueue.updateTime = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("CreateTime", new ChildElementBinder<UpdateMediaQueueResponse.UpdateMediaQueueResponseQueue>() { // from class: com.tencent.cos.xml.model.ci.media.UpdateMediaQueueResponse$UpdateMediaQueueResponseQueue$$XmlAdapter.9
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, UpdateMediaQueueResponse.UpdateMediaQueueResponseQueue updateMediaQueueResponseQueue, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                updateMediaQueueResponseQueue.createTime = xmlPullParser.getText();
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public UpdateMediaQueueResponse.UpdateMediaQueueResponseQueue fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        UpdateMediaQueueResponse.UpdateMediaQueueResponseQueue updateMediaQueueResponseQueue = new UpdateMediaQueueResponse.UpdateMediaQueueResponseQueue();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<UpdateMediaQueueResponse.UpdateMediaQueueResponseQueue> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, updateMediaQueueResponseQueue, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "Queue" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return updateMediaQueueResponseQueue;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return updateMediaQueueResponseQueue;
    }
}
