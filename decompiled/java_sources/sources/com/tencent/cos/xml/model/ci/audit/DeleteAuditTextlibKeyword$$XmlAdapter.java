package com.tencent.cos.xml.model.ci.audit;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class DeleteAuditTextlibKeyword$$XmlAdapter extends IXmlAdapter<DeleteAuditTextlibKeyword> {
    private HashMap<String, ChildElementBinder<DeleteAuditTextlibKeyword>> childElementBinders;

    public DeleteAuditTextlibKeyword$$XmlAdapter() {
        HashMap<String, ChildElementBinder<DeleteAuditTextlibKeyword>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put("KeywordIDs", new ChildElementBinder<DeleteAuditTextlibKeyword>() { // from class: com.tencent.cos.xml.model.ci.audit.DeleteAuditTextlibKeyword$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, DeleteAuditTextlibKeyword deleteAuditTextlibKeyword, String str) throws IOException, XmlPullParserException {
                if (deleteAuditTextlibKeyword.keywordIDs == null) {
                    deleteAuditTextlibKeyword.keywordIDs = new ArrayList();
                }
                int eventType = xmlPullParser.getEventType();
                while (eventType != 1) {
                    if (eventType != 2) {
                        if (eventType == 3 && "KeywordIDs".equalsIgnoreCase(xmlPullParser.getName())) {
                            return;
                        }
                    } else {
                        xmlPullParser.next();
                        deleteAuditTextlibKeyword.keywordIDs.add(xmlPullParser.getText());
                    }
                    eventType = xmlPullParser.next();
                }
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public DeleteAuditTextlibKeyword fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        DeleteAuditTextlibKeyword deleteAuditTextlibKeyword = new DeleteAuditTextlibKeyword();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<DeleteAuditTextlibKeyword> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, deleteAuditTextlibKeyword, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? SingleRequest.f15334D : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return deleteAuditTextlibKeyword;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return deleteAuditTextlibKeyword;
    }

    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, DeleteAuditTextlibKeyword deleteAuditTextlibKeyword, String str) throws IOException, XmlPullParserException {
        if (deleteAuditTextlibKeyword == null) {
            return;
        }
        if (str == null) {
            str = SingleRequest.f15334D;
        }
        xmlSerializer.startTag("", str);
        if (deleteAuditTextlibKeyword.keywordIDs != null) {
            for (int i = 0; i < deleteAuditTextlibKeyword.keywordIDs.size(); i++) {
                xmlSerializer.startTag("", "KeywordIDs");
                xmlSerializer.text(String.valueOf(deleteAuditTextlibKeyword.keywordIDs.get(i)));
                xmlSerializer.endTag("", "KeywordIDs");
            }
        }
        xmlSerializer.endTag("", str);
    }
}
