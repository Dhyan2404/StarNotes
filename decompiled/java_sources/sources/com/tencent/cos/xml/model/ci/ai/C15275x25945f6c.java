package com.tencent.cos.xml.model.ci.ai;

import com.tencent.cos.xml.model.ci.ai.PostVideoTargetRecResponse;
import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* renamed from: com.tencent.cos.xml.model.ci.ai.PostVideoTargetRecResponse$PostVideoTargetRecResponseBodyInfo$$XmlAdapter */
/* loaded from: classes10.dex */
public class C15275x25945f6c extends IXmlAdapter<PostVideoTargetRecResponse.PostVideoTargetRecResponseBodyInfo> {
    private HashMap<String, ChildElementBinder<PostVideoTargetRecResponse.PostVideoTargetRecResponseBodyInfo>> childElementBinders;

    public C15275x25945f6c() {
        HashMap<String, ChildElementBinder<PostVideoTargetRecResponse.PostVideoTargetRecResponseBodyInfo>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put("Name", new ChildElementBinder<PostVideoTargetRecResponse.PostVideoTargetRecResponseBodyInfo>() { // from class: com.tencent.cos.xml.model.ci.ai.PostVideoTargetRecResponse$PostVideoTargetRecResponseBodyInfo$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, PostVideoTargetRecResponse.PostVideoTargetRecResponseBodyInfo postVideoTargetRecResponseBodyInfo, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                postVideoTargetRecResponseBodyInfo.name = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Score", new ChildElementBinder<PostVideoTargetRecResponse.PostVideoTargetRecResponseBodyInfo>() { // from class: com.tencent.cos.xml.model.ci.ai.PostVideoTargetRecResponse$PostVideoTargetRecResponseBodyInfo$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, PostVideoTargetRecResponse.PostVideoTargetRecResponseBodyInfo postVideoTargetRecResponseBodyInfo, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                postVideoTargetRecResponseBodyInfo.score = Integer.parseInt(xmlPullParser.getText());
            }
        });
        this.childElementBinders.put("Location", new ChildElementBinder<PostVideoTargetRecResponse.PostVideoTargetRecResponseBodyInfo>() { // from class: com.tencent.cos.xml.model.ci.ai.PostVideoTargetRecResponse$PostVideoTargetRecResponseBodyInfo$$XmlAdapter.3
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, PostVideoTargetRecResponse.PostVideoTargetRecResponseBodyInfo postVideoTargetRecResponseBodyInfo, String str) throws IOException, XmlPullParserException {
                postVideoTargetRecResponseBodyInfo.location = (PostVideoTargetRecResponse.PostVideoTargetRecResponseLocation) QCloudXml.fromXml(xmlPullParser, PostVideoTargetRecResponse.PostVideoTargetRecResponseLocation.class, "Location");
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public PostVideoTargetRecResponse.PostVideoTargetRecResponseBodyInfo fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        PostVideoTargetRecResponse.PostVideoTargetRecResponseBodyInfo postVideoTargetRecResponseBodyInfo = new PostVideoTargetRecResponse.PostVideoTargetRecResponseBodyInfo();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<PostVideoTargetRecResponse.PostVideoTargetRecResponseBodyInfo> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, postVideoTargetRecResponseBodyInfo, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "BodyInfo" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return postVideoTargetRecResponseBodyInfo;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return postVideoTargetRecResponseBodyInfo;
    }
}
