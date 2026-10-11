package com.tencent.cos.xml.model.tag;

import com.tencent.cos.xml.model.tag.ListAllMyBuckets;
import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes10.dex */
public class ListAllMyBuckets$$XmlAdapter extends IXmlAdapter<ListAllMyBuckets> {
    private HashMap<String, ChildElementBinder<ListAllMyBuckets>> childElementBinders;

    public ListAllMyBuckets$$XmlAdapter() {
        HashMap<String, ChildElementBinder<ListAllMyBuckets>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put("Owner", new ChildElementBinder<ListAllMyBuckets>() { // from class: com.tencent.cos.xml.model.tag.ListAllMyBuckets$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, ListAllMyBuckets listAllMyBuckets, String str) throws IOException, XmlPullParserException {
                listAllMyBuckets.owner = (ListAllMyBuckets.Owner) QCloudXml.fromXml(xmlPullParser, ListAllMyBuckets.Owner.class, "Owner");
            }
        });
        this.childElementBinders.put("Buckets", new ChildElementBinder<ListAllMyBuckets>() { // from class: com.tencent.cos.xml.model.tag.ListAllMyBuckets$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, ListAllMyBuckets listAllMyBuckets, String str) throws IOException, XmlPullParserException {
                if (listAllMyBuckets.buckets == null) {
                    listAllMyBuckets.buckets = new ArrayList();
                }
                int eventType = xmlPullParser.getEventType();
                while (eventType != 1) {
                    if (eventType != 2) {
                        if (eventType == 3 && "Buckets".equalsIgnoreCase(xmlPullParser.getName())) {
                            return;
                        }
                    } else {
                        listAllMyBuckets.buckets.add((ListAllMyBuckets.Bucket) QCloudXml.fromXml(xmlPullParser, ListAllMyBuckets.Bucket.class, "Bucket"));
                    }
                    eventType = xmlPullParser.next();
                }
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public ListAllMyBuckets fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        ListAllMyBuckets listAllMyBuckets = new ListAllMyBuckets();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<ListAllMyBuckets> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, listAllMyBuckets, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "ListAllMyBucketsResult" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return listAllMyBuckets;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return listAllMyBuckets;
    }
}
