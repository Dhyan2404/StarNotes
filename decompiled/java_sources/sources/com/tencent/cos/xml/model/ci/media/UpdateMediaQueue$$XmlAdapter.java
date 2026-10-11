package com.tencent.cos.xml.model.ci.media;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.cos.xml.model.ci.media.UpdateMediaQueue;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class UpdateMediaQueue$$XmlAdapter extends IXmlAdapter<UpdateMediaQueue> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, UpdateMediaQueue updateMediaQueue, String str) throws IOException, XmlPullParserException {
        if (updateMediaQueue == null) {
            return;
        }
        if (str == null) {
            str = SingleRequest.f15334D;
        }
        xmlSerializer.startTag("", str);
        if (updateMediaQueue.name != null) {
            xmlSerializer.startTag("", "Name");
            xmlSerializer.text(String.valueOf(updateMediaQueue.name));
            xmlSerializer.endTag("", "Name");
        }
        if (updateMediaQueue.state != null) {
            xmlSerializer.startTag("", "State");
            xmlSerializer.text(String.valueOf(updateMediaQueue.state));
            xmlSerializer.endTag("", "State");
        }
        UpdateMediaQueue.UpdateMediaQueueNotifyConfig updateMediaQueueNotifyConfig = updateMediaQueue.notifyConfig;
        if (updateMediaQueueNotifyConfig != null) {
            QCloudXml.toXml(xmlSerializer, updateMediaQueueNotifyConfig, "NotifyConfig");
        }
        xmlSerializer.endTag("", str);
    }
}
