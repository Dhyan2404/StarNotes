package com.tencent.cos.xml.model.ci.ai;

import com.tencent.cos.xml.model.ci.ai.UpdateAIQueueResponse;
import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes10.dex */
public class UpdateAIQueueResponse$$XmlAdapter extends IXmlAdapter<UpdateAIQueueResponse> {
    private HashMap<String, ChildElementBinder<UpdateAIQueueResponse>> childElementBinders;

    public UpdateAIQueueResponse$$XmlAdapter() {
        HashMap<String, ChildElementBinder<UpdateAIQueueResponse>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put("RequestId", new ChildElementBinder<UpdateAIQueueResponse>() { // from class: com.tencent.cos.xml.model.ci.ai.UpdateAIQueueResponse$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, UpdateAIQueueResponse updateAIQueueResponse, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                updateAIQueueResponse.requestId = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Queue", new ChildElementBinder<UpdateAIQueueResponse>() { // from class: com.tencent.cos.xml.model.ci.ai.UpdateAIQueueResponse$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, UpdateAIQueueResponse updateAIQueueResponse, String str) throws IOException, XmlPullParserException {
                updateAIQueueResponse.queue = (UpdateAIQueueResponse.UpdateAIQueueResponseQueue) QCloudXml.fromXml(xmlPullParser, UpdateAIQueueResponse.UpdateAIQueueResponseQueue.class, "Queue");
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public UpdateAIQueueResponse fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        UpdateAIQueueResponse updateAIQueueResponse = new UpdateAIQueueResponse();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<UpdateAIQueueResponse> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, updateAIQueueResponse, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "Response" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return updateAIQueueResponse;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return updateAIQueueResponse;
    }
}
