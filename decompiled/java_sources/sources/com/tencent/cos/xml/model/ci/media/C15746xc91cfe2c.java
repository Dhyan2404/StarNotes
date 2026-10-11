package com.tencent.cos.xml.model.ci.media;

import com.tencent.cos.xml.model.ci.media.GetWorkflowDetailResponse;
import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* renamed from: com.tencent.cos.xml.model.ci.media.GetWorkflowDetailResponse$GetWorkflowDetailResponseFileInfo$$XmlAdapter */
/* loaded from: classes10.dex */
public class C15746xc91cfe2c extends IXmlAdapter<GetWorkflowDetailResponse.GetWorkflowDetailResponseFileInfo> {
    private HashMap<String, ChildElementBinder<GetWorkflowDetailResponse.GetWorkflowDetailResponseFileInfo>> childElementBinders;

    public C15746xc91cfe2c() {
        HashMap<String, ChildElementBinder<GetWorkflowDetailResponse.GetWorkflowDetailResponseFileInfo>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put("BasicInfo", new ChildElementBinder<GetWorkflowDetailResponse.GetWorkflowDetailResponseFileInfo>() { // from class: com.tencent.cos.xml.model.ci.media.GetWorkflowDetailResponse$GetWorkflowDetailResponseFileInfo$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetWorkflowDetailResponse.GetWorkflowDetailResponseFileInfo getWorkflowDetailResponseFileInfo, String str) throws IOException, XmlPullParserException {
                getWorkflowDetailResponseFileInfo.basicInfo = (GetWorkflowDetailResponse.GetWorkflowDetailResponseBasicInfo) QCloudXml.fromXml(xmlPullParser, GetWorkflowDetailResponse.GetWorkflowDetailResponseBasicInfo.class, "BasicInfo");
            }
        });
        this.childElementBinders.put("MediaInfo", new ChildElementBinder<GetWorkflowDetailResponse.GetWorkflowDetailResponseFileInfo>() { // from class: com.tencent.cos.xml.model.ci.media.GetWorkflowDetailResponse$GetWorkflowDetailResponseFileInfo$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetWorkflowDetailResponse.GetWorkflowDetailResponseFileInfo getWorkflowDetailResponseFileInfo, String str) throws IOException, XmlPullParserException {
                getWorkflowDetailResponseFileInfo.mediaInfo = (GetWorkflowDetailResponse.GetWorkflowDetailResponseMediaInfo) QCloudXml.fromXml(xmlPullParser, GetWorkflowDetailResponse.GetWorkflowDetailResponseMediaInfo.class, "MediaInfo");
            }
        });
        this.childElementBinders.put("ImageInfo", new ChildElementBinder<GetWorkflowDetailResponse.GetWorkflowDetailResponseFileInfo>() { // from class: com.tencent.cos.xml.model.ci.media.GetWorkflowDetailResponse$GetWorkflowDetailResponseFileInfo$$XmlAdapter.3
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, GetWorkflowDetailResponse.GetWorkflowDetailResponseFileInfo getWorkflowDetailResponseFileInfo, String str) throws IOException, XmlPullParserException {
                getWorkflowDetailResponseFileInfo.imageInfo = (GetWorkflowDetailResponse.GetWorkflowDetailResponseImageInfo) QCloudXml.fromXml(xmlPullParser, GetWorkflowDetailResponse.GetWorkflowDetailResponseImageInfo.class, "ImageInfo");
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public GetWorkflowDetailResponse.GetWorkflowDetailResponseFileInfo fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        GetWorkflowDetailResponse.GetWorkflowDetailResponseFileInfo getWorkflowDetailResponseFileInfo = new GetWorkflowDetailResponse.GetWorkflowDetailResponseFileInfo();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<GetWorkflowDetailResponse.GetWorkflowDetailResponseFileInfo> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, getWorkflowDetailResponseFileInfo, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "FileInfo" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return getWorkflowDetailResponseFileInfo;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return getWorkflowDetailResponseFileInfo;
    }
}
