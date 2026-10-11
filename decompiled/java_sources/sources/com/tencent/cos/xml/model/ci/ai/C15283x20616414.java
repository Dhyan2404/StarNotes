package com.tencent.cos.xml.model.ci.ai;

import com.google.android.exoplayer2.source.dash.manifest.UrlTemplate;
import com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser;
import com.tencent.cos.xml.model.ci.ai.PostVideoTargetRecResponse;
import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* renamed from: com.tencent.cos.xml.model.ci.ai.PostVideoTargetRecResponse$PostVideoTargetRecResponsePetRecognition$$XmlAdapter */
/* loaded from: classes10.dex */
public class C15283x20616414 extends IXmlAdapter<PostVideoTargetRecResponse.PostVideoTargetRecResponsePetRecognition> {
    private HashMap<String, ChildElementBinder<PostVideoTargetRecResponse.PostVideoTargetRecResponsePetRecognition>> childElementBinders;

    public C15283x20616414() {
        HashMap<String, ChildElementBinder<PostVideoTargetRecResponse.PostVideoTargetRecResponsePetRecognition>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put(UrlTemplate.f25863h, new ChildElementBinder<PostVideoTargetRecResponse.PostVideoTargetRecResponsePetRecognition>() { // from class: com.tencent.cos.xml.model.ci.ai.PostVideoTargetRecResponse$PostVideoTargetRecResponsePetRecognition$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, PostVideoTargetRecResponse.PostVideoTargetRecResponsePetRecognition postVideoTargetRecResponsePetRecognition, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                postVideoTargetRecResponsePetRecognition.time = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put(SsManifestParser.C4934e.f26671A, new ChildElementBinder<PostVideoTargetRecResponse.PostVideoTargetRecResponsePetRecognition>() { // from class: com.tencent.cos.xml.model.ci.ai.PostVideoTargetRecResponse$PostVideoTargetRecResponsePetRecognition$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, PostVideoTargetRecResponse.PostVideoTargetRecResponsePetRecognition postVideoTargetRecResponsePetRecognition, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                postVideoTargetRecResponsePetRecognition.url = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("PetInfo", new ChildElementBinder<PostVideoTargetRecResponse.PostVideoTargetRecResponsePetRecognition>() { // from class: com.tencent.cos.xml.model.ci.ai.PostVideoTargetRecResponse$PostVideoTargetRecResponsePetRecognition$$XmlAdapter.3
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, PostVideoTargetRecResponse.PostVideoTargetRecResponsePetRecognition postVideoTargetRecResponsePetRecognition, String str) throws IOException, XmlPullParserException {
                if (postVideoTargetRecResponsePetRecognition.petInfo == null) {
                    postVideoTargetRecResponsePetRecognition.petInfo = new ArrayList();
                }
                postVideoTargetRecResponsePetRecognition.petInfo.add((PostVideoTargetRecResponse.PostVideoTargetRecResponsePetInfo) QCloudXml.fromXml(xmlPullParser, PostVideoTargetRecResponse.PostVideoTargetRecResponsePetInfo.class, "PetInfo"));
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public PostVideoTargetRecResponse.PostVideoTargetRecResponsePetRecognition fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        PostVideoTargetRecResponse.PostVideoTargetRecResponsePetRecognition postVideoTargetRecResponsePetRecognition = new PostVideoTargetRecResponse.PostVideoTargetRecResponsePetRecognition();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<PostVideoTargetRecResponse.PostVideoTargetRecResponsePetRecognition> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, postVideoTargetRecResponsePetRecognition, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "PetRecognition" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return postVideoTargetRecResponsePetRecognition;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return postVideoTargetRecResponsePetRecognition;
    }
}
