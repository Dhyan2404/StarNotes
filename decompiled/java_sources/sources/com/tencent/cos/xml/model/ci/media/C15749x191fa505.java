package com.tencent.cos.xml.model.ci.media;

import androidx.exifinterface.media.ExifInterface;
import com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser;
import com.google.common.net.HttpHeaders;
import com.tencent.cos.xml.model.ci.media.GetWorkflowDetailResponse;
import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import java.io.IOException;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* renamed from: com.tencent.cos.xml.model.ci.media.GetWorkflowDetailResponse$GetWorkflowDetailResponseInputObjectInfo$$XmlAdapter */
/* loaded from: classes10.dex */
public class C15749x191fa505 extends IXmlAdapter<GetWorkflowDetailResponse.GetWorkflowDetailResponseInputObjectInfo> {
    private HashMap<String, ChildElementBinder<GetWorkflowDetailResponse.GetWorkflowDetailResponseInputObjectInfo>> childElementBinders;

    public C15749x191fa505() {
        HashMap<String, ChildElementBinder<GetWorkflowDetailResponse.GetWorkflowDetailResponseInputObjectInfo>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put(HttpHeaders.WIDTH, new ChildElementBinder<GetWorkflowDetailResponse.GetWorkflowDetailResponseInputObjectInfo>() { // from class: com.tencent.cos.xml.model.ci.media.GetWorkflowDetailResponse$GetWorkflowDetailResponseInputObjectInfo$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetWorkflowDetailResponse.GetWorkflowDetailResponseInputObjectInfo getWorkflowDetailResponseInputObjectInfo, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                getWorkflowDetailResponseInputObjectInfo.width = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Height", new ChildElementBinder<GetWorkflowDetailResponse.GetWorkflowDetailResponseInputObjectInfo>() { // from class: com.tencent.cos.xml.model.ci.media.GetWorkflowDetailResponse$GetWorkflowDetailResponseInputObjectInfo$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetWorkflowDetailResponse.GetWorkflowDetailResponseInputObjectInfo getWorkflowDetailResponseInputObjectInfo, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                getWorkflowDetailResponseInputObjectInfo.height = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Dar", new ChildElementBinder<GetWorkflowDetailResponse.GetWorkflowDetailResponseInputObjectInfo>() { // from class: com.tencent.cos.xml.model.ci.media.GetWorkflowDetailResponse$GetWorkflowDetailResponseInputObjectInfo$$XmlAdapter.3
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetWorkflowDetailResponse.GetWorkflowDetailResponseInputObjectInfo getWorkflowDetailResponseInputObjectInfo, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                getWorkflowDetailResponseInputObjectInfo.dar = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put(SsManifestParser.C4933d.f26659s, new ChildElementBinder<GetWorkflowDetailResponse.GetWorkflowDetailResponseInputObjectInfo>() { // from class: com.tencent.cos.xml.model.ci.media.GetWorkflowDetailResponse$GetWorkflowDetailResponseInputObjectInfo$$XmlAdapter.4
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetWorkflowDetailResponse.GetWorkflowDetailResponseInputObjectInfo getWorkflowDetailResponseInputObjectInfo, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                getWorkflowDetailResponseInputObjectInfo.duration = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Size", new ChildElementBinder<GetWorkflowDetailResponse.GetWorkflowDetailResponseInputObjectInfo>() { // from class: com.tencent.cos.xml.model.ci.media.GetWorkflowDetailResponse$GetWorkflowDetailResponseInputObjectInfo$$XmlAdapter.5
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetWorkflowDetailResponse.GetWorkflowDetailResponseInputObjectInfo getWorkflowDetailResponseInputObjectInfo, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                getWorkflowDetailResponseInputObjectInfo.size = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put(ExifInterface.TAG_IMAGE_WIDTH, new ChildElementBinder<GetWorkflowDetailResponse.GetWorkflowDetailResponseInputObjectInfo>() { // from class: com.tencent.cos.xml.model.ci.media.GetWorkflowDetailResponse$GetWorkflowDetailResponseInputObjectInfo$$XmlAdapter.6
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetWorkflowDetailResponse.GetWorkflowDetailResponseInputObjectInfo getWorkflowDetailResponseInputObjectInfo, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                getWorkflowDetailResponseInputObjectInfo.imageWidth = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("ImageHeight", new ChildElementBinder<GetWorkflowDetailResponse.GetWorkflowDetailResponseInputObjectInfo>() { // from class: com.tencent.cos.xml.model.ci.media.GetWorkflowDetailResponse$GetWorkflowDetailResponseInputObjectInfo$$XmlAdapter.7
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetWorkflowDetailResponse.GetWorkflowDetailResponseInputObjectInfo getWorkflowDetailResponseInputObjectInfo, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                getWorkflowDetailResponseInputObjectInfo.imageHeight = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("ImageDar", new ChildElementBinder<GetWorkflowDetailResponse.GetWorkflowDetailResponseInputObjectInfo>() { // from class: com.tencent.cos.xml.model.ci.media.GetWorkflowDetailResponse$GetWorkflowDetailResponseInputObjectInfo$$XmlAdapter.8
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetWorkflowDetailResponse.GetWorkflowDetailResponseInputObjectInfo getWorkflowDetailResponseInputObjectInfo, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                getWorkflowDetailResponseInputObjectInfo.imageDar = xmlPullParser.getText();
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public GetWorkflowDetailResponse.GetWorkflowDetailResponseInputObjectInfo fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        GetWorkflowDetailResponse.GetWorkflowDetailResponseInputObjectInfo getWorkflowDetailResponseInputObjectInfo = new GetWorkflowDetailResponse.GetWorkflowDetailResponseInputObjectInfo();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<GetWorkflowDetailResponse.GetWorkflowDetailResponseInputObjectInfo> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, getWorkflowDetailResponseInputObjectInfo, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "InputObjectInfo" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return getWorkflowDetailResponseInputObjectInfo;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return getWorkflowDetailResponseInputObjectInfo;
    }
}
