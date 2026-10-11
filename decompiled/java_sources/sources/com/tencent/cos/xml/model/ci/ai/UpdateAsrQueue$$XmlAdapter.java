package com.tencent.cos.xml.model.ci.ai;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.cos.xml.model.ci.common.NotifyConfig;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class UpdateAsrQueue$$XmlAdapter extends IXmlAdapter<UpdateAsrQueue> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, UpdateAsrQueue updateAsrQueue, String str) throws IOException, XmlPullParserException {
        if (updateAsrQueue == null) {
            return;
        }
        if (str == null) {
            str = SingleRequest.f15334D;
        }
        xmlSerializer.startTag("", str);
        if (updateAsrQueue.name != null) {
            xmlSerializer.startTag("", "Name");
            xmlSerializer.text(String.valueOf(updateAsrQueue.name));
            xmlSerializer.endTag("", "Name");
        }
        if (updateAsrQueue.state != null) {
            xmlSerializer.startTag("", "State");
            xmlSerializer.text(String.valueOf(updateAsrQueue.state));
            xmlSerializer.endTag("", "State");
        }
        NotifyConfig notifyConfig = updateAsrQueue.notifyConfig;
        if (notifyConfig != null) {
            QCloudXml.toXml(xmlSerializer, notifyConfig, "NotifyConfig");
        }
        xmlSerializer.endTag("", str);
    }
}
