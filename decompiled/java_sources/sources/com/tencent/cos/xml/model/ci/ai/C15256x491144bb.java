package com.tencent.cos.xml.model.ci.ai;

import com.tencent.cos.xml.model.ci.ai.PostSoundHoundResponse;
import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* renamed from: com.tencent.cos.xml.model.ci.ai.PostSoundHoundResponse$PostSoundHoundResponseOperation$$XmlAdapter */
/* loaded from: classes10.dex */
public class C15256x491144bb extends IXmlAdapter<PostSoundHoundResponse.PostSoundHoundResponseOperation> {
    private HashMap<String, ChildElementBinder<PostSoundHoundResponse.PostSoundHoundResponseOperation>> childElementBinders;

    public C15256x491144bb() {
        HashMap<String, ChildElementBinder<PostSoundHoundResponse.PostSoundHoundResponseOperation>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put("UserData", new ChildElementBinder<PostSoundHoundResponse.PostSoundHoundResponseOperation>() { // from class: com.tencent.cos.xml.model.ci.ai.PostSoundHoundResponse$PostSoundHoundResponseOperation$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, PostSoundHoundResponse.PostSoundHoundResponseOperation postSoundHoundResponseOperation, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                postSoundHoundResponseOperation.userData = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("JobLevel", new ChildElementBinder<PostSoundHoundResponse.PostSoundHoundResponseOperation>() { // from class: com.tencent.cos.xml.model.ci.ai.PostSoundHoundResponse$PostSoundHoundResponseOperation$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, PostSoundHoundResponse.PostSoundHoundResponseOperation postSoundHoundResponseOperation, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                postSoundHoundResponseOperation.jobLevel = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("SoundHoundResult", new ChildElementBinder<PostSoundHoundResponse.PostSoundHoundResponseOperation>() { // from class: com.tencent.cos.xml.model.ci.ai.PostSoundHoundResponse$PostSoundHoundResponseOperation$$XmlAdapter.3
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, PostSoundHoundResponse.PostSoundHoundResponseOperation postSoundHoundResponseOperation, String str) throws IOException, XmlPullParserException {
                postSoundHoundResponseOperation.soundHoundResult = (PostSoundHoundResponse.PostSoundHoundResponseSoundHoundResult) QCloudXml.fromXml(xmlPullParser, PostSoundHoundResponse.PostSoundHoundResponseSoundHoundResult.class, "SoundHoundResult");
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public PostSoundHoundResponse.PostSoundHoundResponseOperation fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        PostSoundHoundResponse.PostSoundHoundResponseOperation postSoundHoundResponseOperation = new PostSoundHoundResponse.PostSoundHoundResponseOperation();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<PostSoundHoundResponse.PostSoundHoundResponseOperation> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, postSoundHoundResponseOperation, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "Operation" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return postSoundHoundResponseOperation;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return postSoundHoundResponseOperation;
    }
}
