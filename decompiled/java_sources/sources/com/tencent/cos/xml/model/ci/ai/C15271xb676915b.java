package com.tencent.cos.xml.model.ci.ai;

import com.tencent.cos.xml.model.ci.ai.PostTranslationResponse;
import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import java.io.IOException;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* renamed from: com.tencent.cos.xml.model.ci.ai.PostTranslationResponse$PostTranslationResponseAITranslateResult$$XmlAdapter */
/* loaded from: classes10.dex */
public class C15271xb676915b extends IXmlAdapter<PostTranslationResponse.PostTranslationResponseAITranslateResult> {
    private HashMap<String, ChildElementBinder<PostTranslationResponse.PostTranslationResponseAITranslateResult>> childElementBinders;

    public C15271xb676915b() {
        HashMap<String, ChildElementBinder<PostTranslationResponse.PostTranslationResponseAITranslateResult>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put("Result", new ChildElementBinder<PostTranslationResponse.PostTranslationResponseAITranslateResult>() { // from class: com.tencent.cos.xml.model.ci.ai.PostTranslationResponse$PostTranslationResponseAITranslateResult$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, PostTranslationResponse.PostTranslationResponseAITranslateResult postTranslationResponseAITranslateResult, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                postTranslationResponseAITranslateResult.result = xmlPullParser.getText();
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public PostTranslationResponse.PostTranslationResponseAITranslateResult fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        PostTranslationResponse.PostTranslationResponseAITranslateResult postTranslationResponseAITranslateResult = new PostTranslationResponse.PostTranslationResponseAITranslateResult();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<PostTranslationResponse.PostTranslationResponseAITranslateResult> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, postTranslationResponseAITranslateResult, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "AITranslateResult" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return postTranslationResponseAITranslateResult;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return postTranslationResponseAITranslateResult;
    }
}
