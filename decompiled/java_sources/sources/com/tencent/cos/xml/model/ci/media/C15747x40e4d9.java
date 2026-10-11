package com.tencent.cos.xml.model.ci.media;

import com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser;
import com.tencent.cos.xml.model.ci.media.GetWorkflowDetailResponse;
import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import java.io.IOException;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* renamed from: com.tencent.cos.xml.model.ci.media.GetWorkflowDetailResponse$GetWorkflowDetailResponseFormat$$XmlAdapter */
/* loaded from: classes10.dex */
public class C15747x40e4d9 extends IXmlAdapter<GetWorkflowDetailResponse.GetWorkflowDetailResponseFormat> {
    private HashMap<String, ChildElementBinder<GetWorkflowDetailResponse.GetWorkflowDetailResponseFormat>> childElementBinders;

    public C15747x40e4d9() {
        HashMap<String, ChildElementBinder<GetWorkflowDetailResponse.GetWorkflowDetailResponseFormat>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put(SsManifestParser.C4933d.f26659s, new ChildElementBinder<GetWorkflowDetailResponse.GetWorkflowDetailResponseFormat>() { // from class: com.tencent.cos.xml.model.ci.media.GetWorkflowDetailResponse$GetWorkflowDetailResponseFormat$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetWorkflowDetailResponse.GetWorkflowDetailResponseFormat getWorkflowDetailResponseFormat, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                getWorkflowDetailResponseFormat.duration = xmlPullParser.getText();
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public GetWorkflowDetailResponse.GetWorkflowDetailResponseFormat fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        GetWorkflowDetailResponse.GetWorkflowDetailResponseFormat getWorkflowDetailResponseFormat = new GetWorkflowDetailResponse.GetWorkflowDetailResponseFormat();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<GetWorkflowDetailResponse.GetWorkflowDetailResponseFormat> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, getWorkflowDetailResponseFormat, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "Format" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return getWorkflowDetailResponseFormat;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return getWorkflowDetailResponseFormat;
    }
}
