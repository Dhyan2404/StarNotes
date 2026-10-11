package com.tencent.cos.xml.model.ci.media;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.cos.xml.model.ci.common.AudioMix;
import com.tencent.cos.xml.model.ci.media.TemplateTranscode;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class TemplateTranscode$$XmlAdapter extends IXmlAdapter<TemplateTranscode> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, TemplateTranscode templateTranscode, String str) throws IOException, XmlPullParserException {
        if (templateTranscode == null) {
            return;
        }
        if (str == null) {
            str = SingleRequest.f15334D;
        }
        xmlSerializer.startTag("", str);
        if (templateTranscode.tag != null) {
            xmlSerializer.startTag("", "Tag");
            xmlSerializer.text(String.valueOf(templateTranscode.tag));
            xmlSerializer.endTag("", "Tag");
        }
        if (templateTranscode.name != null) {
            xmlSerializer.startTag("", "Name");
            xmlSerializer.text(String.valueOf(templateTranscode.name));
            xmlSerializer.endTag("", "Name");
        }
        TemplateTranscode.TemplateTranscodeContainer templateTranscodeContainer = templateTranscode.container;
        if (templateTranscodeContainer != null) {
            QCloudXml.toXml(xmlSerializer, templateTranscodeContainer, "Container");
        }
        TemplateTranscode.TemplateTranscodeVideo templateTranscodeVideo = templateTranscode.video;
        if (templateTranscodeVideo != null) {
            QCloudXml.toXml(xmlSerializer, templateTranscodeVideo, "Video");
        }
        TemplateTranscode.TemplateTranscodeTimeInterval templateTranscodeTimeInterval = templateTranscode.timeInterval;
        if (templateTranscodeTimeInterval != null) {
            QCloudXml.toXml(xmlSerializer, templateTranscodeTimeInterval, "TimeInterval");
        }
        TemplateTranscode.TemplateTranscodeAudio templateTranscodeAudio = templateTranscode.audio;
        if (templateTranscodeAudio != null) {
            QCloudXml.toXml(xmlSerializer, templateTranscodeAudio, "Audio");
        }
        TemplateTranscode.TemplateTranscodeTransConfig templateTranscodeTransConfig = templateTranscode.transConfig;
        if (templateTranscodeTransConfig != null) {
            QCloudXml.toXml(xmlSerializer, templateTranscodeTransConfig, "TransConfig");
        }
        AudioMix audioMix = templateTranscode.audioMix;
        if (audioMix != null) {
            QCloudXml.toXml(xmlSerializer, audioMix, "AudioMix");
        }
        if (templateTranscode.audioMixArray != null) {
            for (int i = 0; i < templateTranscode.audioMixArray.size(); i++) {
                QCloudXml.toXml(xmlSerializer, templateTranscode.audioMixArray.get(i), "AudioMix");
            }
        }
        xmlSerializer.endTag("", str);
    }
}
