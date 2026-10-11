package com.alibaba.sdk.android.oss.model;

import android.util.Xml;
import com.alibaba.sdk.android.oss.common.utils.DateUtil;
import com.alibaba.sdk.android.oss.common.utils.OSSUtils;
import com.alibaba.sdk.android.oss.internal.ResponseMessage;
import java.util.ArrayList;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;

/* loaded from: classes3.dex */
public class ListMultipartUploadsResult extends OSSResult {

    /* renamed from: f */
    public String f13204f;

    /* renamed from: g */
    public String f13205g;

    /* renamed from: h */
    public String f13206h;

    /* renamed from: i */
    public String f13207i;

    /* renamed from: j */
    public String f13208j;

    /* renamed from: k */
    public int f13209k;

    /* renamed from: l */
    public boolean f13210l;

    /* renamed from: m */
    public String f13211m;

    /* renamed from: n */
    public String f13212n;

    /* renamed from: o */
    public List<MultipartUpload> f13213o = new ArrayList();

    /* renamed from: p */
    public List<String> f13214p = new ArrayList();

    public void addCommonPrefix(String str) {
        this.f13214p.add(str);
    }

    public void addMultipartUpload(MultipartUpload multipartUpload) {
        this.f13213o.add(multipartUpload);
    }

    public String getBucketName() {
        return this.f13204f;
    }

    public List<String> getCommonPrefixes() {
        return this.f13214p;
    }

    public String getDelimiter() {
        return this.f13206h;
    }

    public String getKeyMarker() {
        return this.f13205g;
    }

    public int getMaxUploads() {
        return this.f13209k;
    }

    public List<MultipartUpload> getMultipartUploads() {
        return this.f13213o;
    }

    public String getNextKeyMarker() {
        return this.f13211m;
    }

    public String getNextUploadIdMarker() {
        return this.f13212n;
    }

    public String getPrefix() {
        return this.f13207i;
    }

    public String getUploadIdMarker() {
        return this.f13208j;
    }

    public boolean isTruncated() {
        return this.f13210l;
    }

    public ListMultipartUploadsResult parseData(ResponseMessage responseMessage) throws Exception {
        ArrayList arrayList = new ArrayList();
        XmlPullParser newPullParser = Xml.newPullParser();
        newPullParser.setInput(responseMessage.getContent(), "utf-8");
        int eventType = newPullParser.getEventType();
        MultipartUpload multipartUpload = null;
        boolean z = false;
        while (eventType != 1) {
            if (eventType == 2) {
                String name = newPullParser.getName();
                if ("Bucket".equals(name)) {
                    setBucketName(newPullParser.nextText());
                } else if ("Delimiter".equals(name)) {
                    setDelimiter(newPullParser.nextText());
                } else if ("Prefix".equals(name)) {
                    if (z) {
                        String nextText = newPullParser.nextText();
                        if (!OSSUtils.isEmptyString(nextText)) {
                            addCommonPrefix(nextText);
                        }
                    } else {
                        setPrefix(newPullParser.nextText());
                    }
                } else if ("MaxUploads".equals(name)) {
                    String nextText2 = newPullParser.nextText();
                    if (!OSSUtils.isEmptyString(nextText2)) {
                        setMaxUploads(Integer.valueOf(nextText2).intValue());
                    }
                } else if ("IsTruncated".equals(name)) {
                    String nextText3 = newPullParser.nextText();
                    if (!OSSUtils.isEmptyString(nextText3)) {
                        setTruncated(Boolean.valueOf(nextText3).booleanValue());
                    }
                } else if ("KeyMarker".equals(name)) {
                    setKeyMarker(newPullParser.nextText());
                } else if ("UploadIdMarker".equals(name)) {
                    setUploadIdMarker(newPullParser.nextText());
                } else if ("NextKeyMarker".equals(name)) {
                    setNextKeyMarker(newPullParser.nextText());
                } else if ("NextUploadIdMarker".equals(name)) {
                    setNextUploadIdMarker(newPullParser.nextText());
                } else if ("Upload".equals(name)) {
                    multipartUpload = new MultipartUpload();
                } else if ("Key".equals(name)) {
                    multipartUpload.setKey(newPullParser.nextText());
                } else if ("UploadId".equals(name)) {
                    multipartUpload.setUploadId(newPullParser.nextText());
                } else if ("Initiated".equals(name)) {
                    multipartUpload.setInitiated(DateUtil.parseIso8601Date(newPullParser.nextText()));
                } else if (CreateBucketRequest.TAB_STORAGECLASS.equals(name)) {
                    multipartUpload.setStorageClass(newPullParser.nextText());
                } else if ("CommonPrefixes".equals(name)) {
                    z = true;
                }
            } else if (eventType == 3) {
                if ("Upload".equals(newPullParser.getName())) {
                    arrayList.add(multipartUpload);
                } else if ("CommonPrefixes".equals(newPullParser.getName())) {
                    z = false;
                }
            }
            eventType = newPullParser.next();
            if (eventType == 4) {
                eventType = newPullParser.next();
            }
        }
        if (arrayList.size() > 0) {
            setMultipartUploads(arrayList);
        }
        return this;
    }

    public void setBucketName(String str) {
        this.f13204f = str;
    }

    public void setCommonPrefixes(List<String> list) {
        this.f13214p.clear();
        if (list == null || list.isEmpty()) {
            return;
        }
        this.f13214p.addAll(list);
    }

    public void setDelimiter(String str) {
        this.f13206h = str;
    }

    public void setKeyMarker(String str) {
        this.f13205g = str;
    }

    public void setMaxUploads(int i) {
        this.f13209k = i;
    }

    public void setMultipartUploads(List<MultipartUpload> list) {
        this.f13213o.clear();
        if (list == null || list.isEmpty()) {
            return;
        }
        this.f13213o.addAll(list);
    }

    public void setNextKeyMarker(String str) {
        this.f13211m = str;
    }

    public void setNextUploadIdMarker(String str) {
        this.f13212n = str;
    }

    public void setPrefix(String str) {
        this.f13207i = str;
    }

    public void setTruncated(boolean z) {
        this.f13210l = z;
    }

    public void setUploadIdMarker(String str) {
        this.f13208j = str;
    }
}
