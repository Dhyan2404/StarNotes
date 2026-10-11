package com.tencent.cos.xml.model.ci.ai;

import com.google.common.net.HttpHeaders;
import com.tencent.cos.xml.model.ci.ai.PostVideoTargetRecResponse;
import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import java.io.IOException;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* renamed from: com.tencent.cos.xml.model.ci.ai.PostVideoTargetRecResponse$PostVideoTargetRecResponseLocation$$XmlAdapter */
/* loaded from: classes10.dex */
public class C15280x1e84e31 extends IXmlAdapter<PostVideoTargetRecResponse.PostVideoTargetRecResponseLocation> {
    private HashMap<String, ChildElementBinder<PostVideoTargetRecResponse.PostVideoTargetRecResponseLocation>> childElementBinders;

    public C15280x1e84e31() {
        HashMap<String, ChildElementBinder<PostVideoTargetRecResponse.PostVideoTargetRecResponseLocation>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put("X", new ChildElementBinder<PostVideoTargetRecResponse.PostVideoTargetRecResponseLocation>() { // from class: com.tencent.cos.xml.model.ci.ai.PostVideoTargetRecResponse$PostVideoTargetRecResponseLocation$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, PostVideoTargetRecResponse.PostVideoTargetRecResponseLocation postVideoTargetRecResponseLocation, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                postVideoTargetRecResponseLocation.f93294x = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Y", new ChildElementBinder<PostVideoTargetRecResponse.PostVideoTargetRecResponseLocation>() { // from class: com.tencent.cos.xml.model.ci.ai.PostVideoTargetRecResponse$PostVideoTargetRecResponseLocation$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, PostVideoTargetRecResponse.PostVideoTargetRecResponseLocation postVideoTargetRecResponseLocation, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                postVideoTargetRecResponseLocation.f93295y = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Height", new ChildElementBinder<PostVideoTargetRecResponse.PostVideoTargetRecResponseLocation>() { // from class: com.tencent.cos.xml.model.ci.ai.PostVideoTargetRecResponse$PostVideoTargetRecResponseLocation$$XmlAdapter.3
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, PostVideoTargetRecResponse.PostVideoTargetRecResponseLocation postVideoTargetRecResponseLocation, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                postVideoTargetRecResponseLocation.height = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put(HttpHeaders.WIDTH, new ChildElementBinder<PostVideoTargetRecResponse.PostVideoTargetRecResponseLocation>() { // from class: com.tencent.cos.xml.model.ci.ai.PostVideoTargetRecResponse$PostVideoTargetRecResponseLocation$$XmlAdapter.4
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, PostVideoTargetRecResponse.PostVideoTargetRecResponseLocation postVideoTargetRecResponseLocation, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                postVideoTargetRecResponseLocation.width = xmlPullParser.getText();
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public PostVideoTargetRecResponse.PostVideoTargetRecResponseLocation fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        PostVideoTargetRecResponse.PostVideoTargetRecResponseLocation postVideoTargetRecResponseLocation = new PostVideoTargetRecResponse.PostVideoTargetRecResponseLocation();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<PostVideoTargetRecResponse.PostVideoTargetRecResponseLocation> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, postVideoTargetRecResponseLocation, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "Location" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return postVideoTargetRecResponseLocation;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return postVideoTargetRecResponseLocation;
    }
}
