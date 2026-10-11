package com.tencent.cos.xml.model.ci.audit;

import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import java.io.IOException;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes10.dex */
public class CreateAuditTextlibResponse$$XmlAdapter extends IXmlAdapter<CreateAuditTextlibResponse> {
    private HashMap<String, ChildElementBinder<CreateAuditTextlibResponse>> childElementBinders;

    public CreateAuditTextlibResponse$$XmlAdapter() {
        HashMap<String, ChildElementBinder<CreateAuditTextlibResponse>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put("LibID", new ChildElementBinder<CreateAuditTextlibResponse>() { // from class: com.tencent.cos.xml.model.ci.audit.CreateAuditTextlibResponse$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, CreateAuditTextlibResponse createAuditTextlibResponse, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                createAuditTextlibResponse.libID = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("RequestId", new ChildElementBinder<CreateAuditTextlibResponse>() { // from class: com.tencent.cos.xml.model.ci.audit.CreateAuditTextlibResponse$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, CreateAuditTextlibResponse createAuditTextlibResponse, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                createAuditTextlibResponse.requestId = xmlPullParser.getText();
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public CreateAuditTextlibResponse fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        CreateAuditTextlibResponse createAuditTextlibResponse = new CreateAuditTextlibResponse();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<CreateAuditTextlibResponse> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, createAuditTextlibResponse, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "Response" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return createAuditTextlibResponse;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return createAuditTextlibResponse;
    }
}
