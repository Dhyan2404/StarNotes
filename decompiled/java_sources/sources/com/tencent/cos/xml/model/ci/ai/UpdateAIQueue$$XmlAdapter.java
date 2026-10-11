package com.tencent.cos.xml.model.ci.ai;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.cos.xml.model.ci.common.NotifyConfig;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class UpdateAIQueue$$XmlAdapter extends IXmlAdapter<UpdateAIQueue> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, UpdateAIQueue updateAIQueue, String str) throws IOException, XmlPullParserException {
        if (updateAIQueue == null) {
            return;
        }
        if (str == null) {
            str = SingleRequest.f15334D;
        }
        xmlSerializer.startTag("", str);
        if (updateAIQueue.name != null) {
            xmlSerializer.startTag("", "Name");
            xmlSerializer.text(String.valueOf(updateAIQueue.name));
            xmlSerializer.endTag("", "Name");
        }
        if (updateAIQueue.state != null) {
            xmlSerializer.startTag("", "State");
            xmlSerializer.text(String.valueOf(updateAIQueue.state));
            xmlSerializer.endTag("", "State");
        }
        NotifyConfig notifyConfig = updateAIQueue.notifyConfig;
        if (notifyConfig != null) {
            QCloudXml.toXml(xmlSerializer, notifyConfig, "NotifyConfig");
        }
        xmlSerializer.endTag("", str);
    }
}
