package com.tencent.cos.xml.model.ci.ai;

import com.tencent.cos.xml.model.ci.ai.UpdateAIQueueResponse;
import com.tencent.cos.xml.model.ci.common.NotifyConfig;
import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes10.dex */
public class UpdateAIQueueResponse$UpdateAIQueueResponseQueue$$XmlAdapter extends IXmlAdapter<UpdateAIQueueResponse.UpdateAIQueueResponseQueue> {
    private HashMap<String, ChildElementBinder<UpdateAIQueueResponse.UpdateAIQueueResponseQueue>> childElementBinders;

    public UpdateAIQueueResponse$UpdateAIQueueResponseQueue$$XmlAdapter() {
        HashMap<String, ChildElementBinder<UpdateAIQueueResponse.UpdateAIQueueResponseQueue>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put("QueueId", new ChildElementBinder<UpdateAIQueueResponse.UpdateAIQueueResponseQueue>() { // from class: com.tencent.cos.xml.model.ci.ai.UpdateAIQueueResponse$UpdateAIQueueResponseQueue$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, UpdateAIQueueResponse.UpdateAIQueueResponseQueue updateAIQueueResponseQueue, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                updateAIQueueResponseQueue.queueId = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Name", new ChildElementBinder<UpdateAIQueueResponse.UpdateAIQueueResponseQueue>() { // from class: com.tencent.cos.xml.model.ci.ai.UpdateAIQueueResponse$UpdateAIQueueResponseQueue$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, UpdateAIQueueResponse.UpdateAIQueueResponseQueue updateAIQueueResponseQueue, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                updateAIQueueResponseQueue.name = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("State", new ChildElementBinder<UpdateAIQueueResponse.UpdateAIQueueResponseQueue>() { // from class: com.tencent.cos.xml.model.ci.ai.UpdateAIQueueResponse$UpdateAIQueueResponseQueue$$XmlAdapter.3
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, UpdateAIQueueResponse.UpdateAIQueueResponseQueue updateAIQueueResponseQueue, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                updateAIQueueResponseQueue.state = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("NotifyConfig", new ChildElementBinder<UpdateAIQueueResponse.UpdateAIQueueResponseQueue>() { // from class: com.tencent.cos.xml.model.ci.ai.UpdateAIQueueResponse$UpdateAIQueueResponseQueue$$XmlAdapter.4
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, UpdateAIQueueResponse.UpdateAIQueueResponseQueue updateAIQueueResponseQueue, String str) throws IOException, XmlPullParserException {
                updateAIQueueResponseQueue.notifyConfig = (NotifyConfig) QCloudXml.fromXml(xmlPullParser, NotifyConfig.class, "NotifyConfig");
            }
        });
        this.childElementBinders.put("MaxSize", new ChildElementBinder<UpdateAIQueueResponse.UpdateAIQueueResponseQueue>() { // from class: com.tencent.cos.xml.model.ci.ai.UpdateAIQueueResponse$UpdateAIQueueResponseQueue$$XmlAdapter.5
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, UpdateAIQueueResponse.UpdateAIQueueResponseQueue updateAIQueueResponseQueue, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                updateAIQueueResponseQueue.maxSize = Integer.parseInt(xmlPullParser.getText());
            }
        });
        this.childElementBinders.put("MaxConcurrent", new ChildElementBinder<UpdateAIQueueResponse.UpdateAIQueueResponseQueue>() { // from class: com.tencent.cos.xml.model.ci.ai.UpdateAIQueueResponse$UpdateAIQueueResponseQueue$$XmlAdapter.6
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, UpdateAIQueueResponse.UpdateAIQueueResponseQueue updateAIQueueResponseQueue, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                updateAIQueueResponseQueue.maxConcurrent = Integer.parseInt(xmlPullParser.getText());
            }
        });
        this.childElementBinders.put("Category", new ChildElementBinder<UpdateAIQueueResponse.UpdateAIQueueResponseQueue>() { // from class: com.tencent.cos.xml.model.ci.ai.UpdateAIQueueResponse$UpdateAIQueueResponseQueue$$XmlAdapter.7
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, UpdateAIQueueResponse.UpdateAIQueueResponseQueue updateAIQueueResponseQueue, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                updateAIQueueResponseQueue.category = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("UpdateTime", new ChildElementBinder<UpdateAIQueueResponse.UpdateAIQueueResponseQueue>() { // from class: com.tencent.cos.xml.model.ci.ai.UpdateAIQueueResponse$UpdateAIQueueResponseQueue$$XmlAdapter.8
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, UpdateAIQueueResponse.UpdateAIQueueResponseQueue updateAIQueueResponseQueue, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                updateAIQueueResponseQueue.updateTime = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("CreateTime", new ChildElementBinder<UpdateAIQueueResponse.UpdateAIQueueResponseQueue>() { // from class: com.tencent.cos.xml.model.ci.ai.UpdateAIQueueResponse$UpdateAIQueueResponseQueue$$XmlAdapter.9
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, UpdateAIQueueResponse.UpdateAIQueueResponseQueue updateAIQueueResponseQueue, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                updateAIQueueResponseQueue.createTime = xmlPullParser.getText();
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public UpdateAIQueueResponse.UpdateAIQueueResponseQueue fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        UpdateAIQueueResponse.UpdateAIQueueResponseQueue updateAIQueueResponseQueue = new UpdateAIQueueResponse.UpdateAIQueueResponseQueue();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<UpdateAIQueueResponse.UpdateAIQueueResponseQueue> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, updateAIQueueResponseQueue, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "Queue" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return updateAIQueueResponseQueue;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return updateAIQueueResponseQueue;
    }
}
