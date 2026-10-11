package com.tencent.cos.xml.model.ci.media;

import com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser;
import com.tencent.cos.xml.model.ci.media.SubmitTranscodeJob;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class SubmitTranscodeJob$SubmitTranscodeJobSubtitle$$XmlAdapter extends IXmlAdapter<SubmitTranscodeJob.SubmitTranscodeJobSubtitle> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, SubmitTranscodeJob.SubmitTranscodeJobSubtitle submitTranscodeJobSubtitle, String str) throws IOException, XmlPullParserException {
        if (submitTranscodeJobSubtitle == null) {
            return;
        }
        if (str == null) {
            str = "Subtitle";
        }
        xmlSerializer.startTag("", str);
        if (submitTranscodeJobSubtitle.url != null) {
            xmlSerializer.startTag("", SsManifestParser.C4934e.f26671A);
            xmlSerializer.text(String.valueOf(submitTranscodeJobSubtitle.url));
            xmlSerializer.endTag("", SsManifestParser.C4934e.f26671A);
        }
        xmlSerializer.endTag("", str);
    }
}
