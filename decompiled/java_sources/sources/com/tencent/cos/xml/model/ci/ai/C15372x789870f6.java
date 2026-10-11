package com.tencent.cos.xml.model.ci.ai;

import com.tencent.cos.xml.model.ci.ai.VocalScoreResponse;
import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* renamed from: com.tencent.cos.xml.model.ci.ai.VocalScoreResponse$VocalScoreResponseVocalScoreResult$$XmlAdapter */
/* loaded from: classes10.dex */
public class C15372x789870f6 extends IXmlAdapter<VocalScoreResponse.VocalScoreResponseVocalScoreResult> {
    private HashMap<String, ChildElementBinder<VocalScoreResponse.VocalScoreResponseVocalScoreResult>> childElementBinders;

    public C15372x789870f6() {
        HashMap<String, ChildElementBinder<VocalScoreResponse.VocalScoreResponseVocalScoreResult>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put("PitchScore", new ChildElementBinder<VocalScoreResponse.VocalScoreResponseVocalScoreResult>() { // from class: com.tencent.cos.xml.model.ci.ai.VocalScoreResponse$VocalScoreResponseVocalScoreResult$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, VocalScoreResponse.VocalScoreResponseVocalScoreResult vocalScoreResponseVocalScoreResult, String str) throws IOException, XmlPullParserException {
                vocalScoreResponseVocalScoreResult.pitchScore = (VocalScoreResponse.VocalScoreResponsePitchScore) QCloudXml.fromXml(xmlPullParser, VocalScoreResponse.VocalScoreResponsePitchScore.class, "PitchScore");
            }
        });
        this.childElementBinders.put("RhythemScore", new ChildElementBinder<VocalScoreResponse.VocalScoreResponseVocalScoreResult>() { // from class: com.tencent.cos.xml.model.ci.ai.VocalScoreResponse$VocalScoreResponseVocalScoreResult$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, VocalScoreResponse.VocalScoreResponseVocalScoreResult vocalScoreResponseVocalScoreResult, String str) throws IOException, XmlPullParserException {
                vocalScoreResponseVocalScoreResult.rhythemScore = (VocalScoreResponse.VocalScoreResponseRhythemScore) QCloudXml.fromXml(xmlPullParser, VocalScoreResponse.VocalScoreResponseRhythemScore.class, "RhythemScore");
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public VocalScoreResponse.VocalScoreResponseVocalScoreResult fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        VocalScoreResponse.VocalScoreResponseVocalScoreResult vocalScoreResponseVocalScoreResult = new VocalScoreResponse.VocalScoreResponseVocalScoreResult();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<VocalScoreResponse.VocalScoreResponseVocalScoreResult> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, vocalScoreResponseVocalScoreResult, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "VocalScoreResult" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return vocalScoreResponseVocalScoreResult;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return vocalScoreResponseVocalScoreResult;
    }
}
