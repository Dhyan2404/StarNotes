package com.tencent.cos.xml.model.ci;

import com.google.common.net.HttpHeaders;
import com.tencent.cos.xml.model.ci.QRCodeUploadResult;
import com.tencent.cos.xml.model.tag.pic.QRCodeInfo;
import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes10.dex */
public class QRCodeUploadResult$QrPicObject$$XmlAdapter extends IXmlAdapter<QRCodeUploadResult.QrPicObject> {
    private HashMap<String, ChildElementBinder<QRCodeUploadResult.QrPicObject>> childElementBinders;

    public QRCodeUploadResult$QrPicObject$$XmlAdapter() {
        HashMap<String, ChildElementBinder<QRCodeUploadResult.QrPicObject>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put("CodeStatus", new ChildElementBinder<QRCodeUploadResult.QrPicObject>() { // from class: com.tencent.cos.xml.model.ci.QRCodeUploadResult$QrPicObject$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, QRCodeUploadResult.QrPicObject qrPicObject, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                qrPicObject.codeStatus = Integer.parseInt(xmlPullParser.getText());
            }
        });
        this.childElementBinders.put("QRcodeInfo", new ChildElementBinder<QRCodeUploadResult.QrPicObject>() { // from class: com.tencent.cos.xml.model.ci.QRCodeUploadResult$QrPicObject$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, QRCodeUploadResult.QrPicObject qrPicObject, String str) throws IOException, XmlPullParserException {
                if (qrPicObject.qrCodeInfo == null) {
                    qrPicObject.qrCodeInfo = new ArrayList();
                }
                qrPicObject.qrCodeInfo.add((QRCodeInfo) QCloudXml.fromXml(xmlPullParser, QRCodeInfo.class, "QRcodeInfo"));
            }
        });
        this.childElementBinders.put("Key", new ChildElementBinder<QRCodeUploadResult.QrPicObject>() { // from class: com.tencent.cos.xml.model.ci.QRCodeUploadResult$QrPicObject$$XmlAdapter.3
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, QRCodeUploadResult.QrPicObject qrPicObject, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                qrPicObject.key = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Location", new ChildElementBinder<QRCodeUploadResult.QrPicObject>() { // from class: com.tencent.cos.xml.model.ci.QRCodeUploadResult$QrPicObject$$XmlAdapter.4
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, QRCodeUploadResult.QrPicObject qrPicObject, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                qrPicObject.location = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Format", new ChildElementBinder<QRCodeUploadResult.QrPicObject>() { // from class: com.tencent.cos.xml.model.ci.QRCodeUploadResult$QrPicObject$$XmlAdapter.5
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, QRCodeUploadResult.QrPicObject qrPicObject, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                qrPicObject.format = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put(HttpHeaders.WIDTH, new ChildElementBinder<QRCodeUploadResult.QrPicObject>() { // from class: com.tencent.cos.xml.model.ci.QRCodeUploadResult$QrPicObject$$XmlAdapter.6
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, QRCodeUploadResult.QrPicObject qrPicObject, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                qrPicObject.width = Integer.parseInt(xmlPullParser.getText());
            }
        });
        this.childElementBinders.put("Height", new ChildElementBinder<QRCodeUploadResult.QrPicObject>() { // from class: com.tencent.cos.xml.model.ci.QRCodeUploadResult$QrPicObject$$XmlAdapter.7
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, QRCodeUploadResult.QrPicObject qrPicObject, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                qrPicObject.height = Integer.parseInt(xmlPullParser.getText());
            }
        });
        this.childElementBinders.put("Size", new ChildElementBinder<QRCodeUploadResult.QrPicObject>() { // from class: com.tencent.cos.xml.model.ci.QRCodeUploadResult$QrPicObject$$XmlAdapter.8
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, QRCodeUploadResult.QrPicObject qrPicObject, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                qrPicObject.size = Integer.parseInt(xmlPullParser.getText());
            }
        });
        this.childElementBinders.put("Quality", new ChildElementBinder<QRCodeUploadResult.QrPicObject>() { // from class: com.tencent.cos.xml.model.ci.QRCodeUploadResult$QrPicObject$$XmlAdapter.9
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, QRCodeUploadResult.QrPicObject qrPicObject, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                qrPicObject.quality = Integer.parseInt(xmlPullParser.getText());
            }
        });
        this.childElementBinders.put("ETag", new ChildElementBinder<QRCodeUploadResult.QrPicObject>() { // from class: com.tencent.cos.xml.model.ci.QRCodeUploadResult$QrPicObject$$XmlAdapter.10
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, QRCodeUploadResult.QrPicObject qrPicObject, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                qrPicObject.etag = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("FrameCount", new ChildElementBinder<QRCodeUploadResult.QrPicObject>() { // from class: com.tencent.cos.xml.model.ci.QRCodeUploadResult$QrPicObject$$XmlAdapter.11
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, QRCodeUploadResult.QrPicObject qrPicObject, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                qrPicObject.frameCount = Integer.parseInt(xmlPullParser.getText());
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public QRCodeUploadResult.QrPicObject fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        QRCodeUploadResult.QrPicObject qrPicObject = new QRCodeUploadResult.QrPicObject();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<QRCodeUploadResult.QrPicObject> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, qrPicObject, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "Object" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return qrPicObject;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return qrPicObject;
    }
}
