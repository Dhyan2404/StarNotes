package com.tencent.cos.xml.model.ci.ai;

import com.tencent.cos.xml.model.ci.ai.VocalScoreResponse;
import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes10.dex */
public class VocalScoreResponse$VocalScoreResponseRhythemScore$$XmlAdapter extends IXmlAdapter<VocalScoreResponse.VocalScoreResponseRhythemScore> {
    private HashMap<String, ChildElementBinder<VocalScoreResponse.VocalScoreResponseRhythemScore>> childElementBinders;

    public VocalScoreResponse$VocalScoreResponseRhythemScore$$XmlAdapter() {
        HashMap<String, ChildElementBinder<VocalScoreResponse.VocalScoreResponseRhythemScore>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put("SentenceScores", new ChildElementBinder<VocalScoreResponse.VocalScoreResponseRhythemScore>() { // from class: com.tencent.cos.xml.model.ci.ai.VocalScoreResponse$VocalScoreResponseRhythemScore$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, VocalScoreResponse.VocalScoreResponseRhythemScore vocalScoreResponseRhythemScore, String str) throws IOException, XmlPullParserException {
                if (vocalScoreResponseRhythemScore.sentenceScores == null) {
                    vocalScoreResponseRhythemScore.sentenceScores = new ArrayList();
                }
                vocalScoreResponseRhythemScore.sentenceScores.add((VocalScoreResponse.VocalScoreResponseRhythemScoreSentenceScores) QCloudXml.fromXml(xmlPullParser, VocalScoreResponse.VocalScoreResponseRhythemScoreSentenceScores.class, "SentenceScores"));
            }
        });
        this.childElementBinders.put("TotalScore", new ChildElementBinder<VocalScoreResponse.VocalScoreResponseRhythemScore>() { // from class: com.tencent.cos.xml.model.ci.ai.VocalScoreResponse$VocalScoreResponseRhythemScore$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, VocalScoreResponse.VocalScoreResponseRhythemScore vocalScoreResponseRhythemScore, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                vocalScoreResponseRhythemScore.totalScore = Integer.parseInt(xmlPullParser.getText());
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public VocalScoreResponse.VocalScoreResponseRhythemScore fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        VocalScoreResponse.VocalScoreResponseRhythemScore vocalScoreResponseRhythemScore = new VocalScoreResponse.VocalScoreResponseRhythemScore();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<VocalScoreResponse.VocalScoreResponseRhythemScore> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, vocalScoreResponseRhythemScore, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "RhythemScore" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return vocalScoreResponseRhythemScore;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return vocalScoreResponseRhythemScore;
    }
}
