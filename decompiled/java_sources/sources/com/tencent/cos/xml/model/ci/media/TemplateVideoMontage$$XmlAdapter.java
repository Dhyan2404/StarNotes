package com.tencent.cos.xml.model.ci.media;

import com.bumptech.glide.request.SingleRequest;
import com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser;
import com.tencent.cos.xml.model.ci.common.AudioMix;
import com.tencent.cos.xml.model.ci.media.TemplateVideoMontage;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class TemplateVideoMontage$$XmlAdapter extends IXmlAdapter<TemplateVideoMontage> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, TemplateVideoMontage templateVideoMontage, String str) throws IOException, XmlPullParserException {
        if (templateVideoMontage == null) {
            return;
        }
        if (str == null) {
            str = SingleRequest.f15334D;
        }
        xmlSerializer.startTag("", str);
        if (templateVideoMontage.tag != null) {
            xmlSerializer.startTag("", "Tag");
            xmlSerializer.text(String.valueOf(templateVideoMontage.tag));
            xmlSerializer.endTag("", "Tag");
        }
        if (templateVideoMontage.name != null) {
            xmlSerializer.startTag("", "Name");
            xmlSerializer.text(String.valueOf(templateVideoMontage.name));
            xmlSerializer.endTag("", "Name");
        }
        if (templateVideoMontage.duration != null) {
            xmlSerializer.startTag("", SsManifestParser.C4933d.f26659s);
            xmlSerializer.text(String.valueOf(templateVideoMontage.duration));
            xmlSerializer.endTag("", SsManifestParser.C4933d.f26659s);
        }
        TemplateVideoMontage.TemplateVideoMontageContainer templateVideoMontageContainer = templateVideoMontage.container;
        if (templateVideoMontageContainer != null) {
            QCloudXml.toXml(xmlSerializer, templateVideoMontageContainer, "Container");
        }
        TemplateVideoMontage.TemplateVideoMontageVideo templateVideoMontageVideo = templateVideoMontage.video;
        if (templateVideoMontageVideo != null) {
            QCloudXml.toXml(xmlSerializer, templateVideoMontageVideo, "Video");
        }
        TemplateVideoMontage.TemplateVideoMontageAudio templateVideoMontageAudio = templateVideoMontage.audio;
        if (templateVideoMontageAudio != null) {
            QCloudXml.toXml(xmlSerializer, templateVideoMontageAudio, "Audio");
        }
        if (templateVideoMontage.scene != null) {
            xmlSerializer.startTag("", "Scene");
            xmlSerializer.text(String.valueOf(templateVideoMontage.scene));
            xmlSerializer.endTag("", "Scene");
        }
        AudioMix audioMix = templateVideoMontage.audioMix;
        if (audioMix != null) {
            QCloudXml.toXml(xmlSerializer, audioMix, "AudioMix");
        }
        if (templateVideoMontage.audioMixArray != null) {
            for (int i = 0; i < templateVideoMontage.audioMixArray.size(); i++) {
                QCloudXml.toXml(xmlSerializer, templateVideoMontage.audioMixArray.get(i), "AudioMix");
            }
        }
        xmlSerializer.endTag("", str);
    }
}
