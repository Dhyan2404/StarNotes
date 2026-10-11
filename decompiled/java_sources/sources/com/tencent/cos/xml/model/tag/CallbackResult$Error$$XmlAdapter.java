package com.tencent.cos.xml.model.tag;

import com.tencent.cos.xml.model.tag.CallbackResult;
import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import java.io.IOException;
import java.util.HashMap;
import org.apache.commons.compress.harmony.unpack200.AttributeLayout;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes10.dex */
public class CallbackResult$Error$$XmlAdapter extends IXmlAdapter<CallbackResult.Error> {
    private HashMap<String, ChildElementBinder<CallbackResult.Error>> childElementBinders;

    public CallbackResult$Error$$XmlAdapter() {
        HashMap<String, ChildElementBinder<CallbackResult.Error>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put(AttributeLayout.ATTRIBUTE_CODE, new ChildElementBinder<CallbackResult.Error>() { // from class: com.tencent.cos.xml.model.tag.CallbackResult$Error$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, CallbackResult.Error error, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                error.code = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Message", new ChildElementBinder<CallbackResult.Error>() { // from class: com.tencent.cos.xml.model.tag.CallbackResult$Error$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, CallbackResult.Error error, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                error.message = xmlPullParser.getText();
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public CallbackResult.Error fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        CallbackResult.Error error = new CallbackResult.Error();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<CallbackResult.Error> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, error, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "Error" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return error;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return error;
    }
}
