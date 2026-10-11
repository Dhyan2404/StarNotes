package com.tencent.cos.xml.model.ci.asr.bean;

import com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser;
import com.tencent.cos.xml.model.ci.asr.bean.CreateSpeechJobs;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class CreateSpeechJobs$CreateSpeechJobsInput$$XmlAdapter extends IXmlAdapter<CreateSpeechJobs.CreateSpeechJobsInput> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, CreateSpeechJobs.CreateSpeechJobsInput createSpeechJobsInput, String str) throws IOException, XmlPullParserException {
        if (createSpeechJobsInput == null) {
            return;
        }
        if (str == null) {
            str = "CreateSpeechJobsInput";
        }
        xmlSerializer.startTag("", str);
        if (createSpeechJobsInput.object != null) {
            xmlSerializer.startTag("", "Object");
            xmlSerializer.text(String.valueOf(createSpeechJobsInput.object));
            xmlSerializer.endTag("", "Object");
        }
        if (createSpeechJobsInput.url != null) {
            xmlSerializer.startTag("", SsManifestParser.C4934e.f26671A);
            xmlSerializer.text(String.valueOf(createSpeechJobsInput.url));
            xmlSerializer.endTag("", SsManifestParser.C4934e.f26671A);
        }
        xmlSerializer.endTag("", str);
    }
}
