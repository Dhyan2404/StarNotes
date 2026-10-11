package com.tencent.cos.xml.model.ci.audit;

import com.onyx.android.sdk.genericshape.GeoConstant;
import com.tencent.cos.xml.model.ci.audit.CreateStrategy;
import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class CreateStrategy$Labels$$XmlAdapter extends IXmlAdapter<CreateStrategy.Labels> {
    private HashMap<String, ChildElementBinder<CreateStrategy.Labels>> childElementBinders;

    public CreateStrategy$Labels$$XmlAdapter() {
        HashMap<String, ChildElementBinder<CreateStrategy.Labels>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put(GeoConstant.Image, new ChildElementBinder<CreateStrategy.Labels>() { // from class: com.tencent.cos.xml.model.ci.audit.CreateStrategy$Labels$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, CreateStrategy.Labels labels, String str) throws IOException, XmlPullParserException {
                labels.image = (CreateStrategy.LabelInfo) QCloudXml.fromXml(xmlPullParser, CreateStrategy.LabelInfo.class, GeoConstant.Image);
            }
        });
        this.childElementBinders.put("Text", new ChildElementBinder<CreateStrategy.Labels>() { // from class: com.tencent.cos.xml.model.ci.audit.CreateStrategy$Labels$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, CreateStrategy.Labels labels, String str) throws IOException, XmlPullParserException {
                labels.text = (CreateStrategy.LabelInfo) QCloudXml.fromXml(xmlPullParser, CreateStrategy.LabelInfo.class, "Text");
            }
        });
        this.childElementBinders.put("Audio", new ChildElementBinder<CreateStrategy.Labels>() { // from class: com.tencent.cos.xml.model.ci.audit.CreateStrategy$Labels$$XmlAdapter.3
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, CreateStrategy.Labels labels, String str) throws IOException, XmlPullParserException {
                labels.audio = (CreateStrategy.LabelInfo) QCloudXml.fromXml(xmlPullParser, CreateStrategy.LabelInfo.class, "Audio");
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public CreateStrategy.Labels fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        CreateStrategy.Labels labels = new CreateStrategy.Labels();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<CreateStrategy.Labels> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, labels, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "Labels" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return labels;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return labels;
    }

    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, CreateStrategy.Labels labels, String str) throws IOException, XmlPullParserException {
        if (labels == null) {
            return;
        }
        if (str == null) {
            str = "Labels";
        }
        xmlSerializer.startTag("", str);
        CreateStrategy.LabelInfo labelInfo = labels.image;
        if (labelInfo != null) {
            QCloudXml.toXml(xmlSerializer, labelInfo, GeoConstant.Image);
        }
        CreateStrategy.LabelInfo labelInfo2 = labels.text;
        if (labelInfo2 != null) {
            QCloudXml.toXml(xmlSerializer, labelInfo2, "Text");
        }
        CreateStrategy.LabelInfo labelInfo3 = labels.audio;
        if (labelInfo3 != null) {
            QCloudXml.toXml(xmlSerializer, labelInfo3, "Audio");
        }
        xmlSerializer.endTag("", str);
    }
}
