package com.alibaba.sdk.android.oss.model;

import com.alibaba.sdk.android.oss.common.OSSConstants;
import com.alibaba.sdk.android.oss.common.OSSHeaders;
import com.alibaba.sdk.android.oss.common.utils.CaseInsensitiveHashMap;
import com.alibaba.sdk.android.oss.common.utils.DateUtil;
import java.text.ParseException;
import java.util.Collections;
import java.util.Date;
import java.util.Map;

/* loaded from: classes3.dex */
public class ObjectMetadata {
    public static final String AES_256_SERVER_SIDE_ENCRYPTION = "AES256";

    /* renamed from: a */
    public Map<String, String> f13267a = new CaseInsensitiveHashMap();

    /* renamed from: b */
    public Map<String, Object> f13268b = new CaseInsensitiveHashMap();

    public void addUserMetadata(String str, String str2) {
        this.f13267a.put(str, str2);
    }

    public String getCacheControl() {
        return (String) this.f13268b.get("Cache-Control");
    }

    public String getContentDisposition() {
        return (String) this.f13268b.get("Content-Disposition");
    }

    public String getContentEncoding() {
        return (String) this.f13268b.get("Content-Encoding");
    }

    public long getContentLength() {
        Long l = (Long) this.f13268b.get("Content-Length");
        if (l == null) {
            return 0L;
        }
        return l.longValue();
    }

    public String getContentMD5() {
        return (String) this.f13268b.get("Content-MD5");
    }

    public String getContentType() {
        return (String) this.f13268b.get("Content-Type");
    }

    public String getETag() {
        return (String) this.f13268b.get("ETag");
    }

    public Date getExpirationTime() throws ParseException {
        return DateUtil.parseRfc822Date((String) this.f13268b.get("Expires"));
    }

    public Date getLastModified() {
        return (Date) this.f13268b.get("Last-Modified");
    }

    public String getObjectType() {
        return (String) this.f13268b.get(OSSHeaders.OSS_OBJECT_TYPE);
    }

    public String getRawExpiresValue() {
        return (String) this.f13268b.get("Expires");
    }

    public Map<String, Object> getRawMetadata() {
        return Collections.unmodifiableMap(this.f13268b);
    }

    public String getSHA1() {
        return (String) this.f13268b.get(OSSHeaders.OSS_HASH_SHA1);
    }

    public String getServerSideEncryption() {
        return (String) this.f13268b.get(OSSHeaders.OSS_SERVER_SIDE_ENCRYPTION);
    }

    public Map<String, String> getUserMetadata() {
        return this.f13267a;
    }

    public void setCacheControl(String str) {
        this.f13268b.put("Cache-Control", str);
    }

    public void setContentDisposition(String str) {
        this.f13268b.put("Content-Disposition", str);
    }

    public void setContentEncoding(String str) {
        this.f13268b.put("Content-Encoding", str);
    }

    public void setContentLength(long j) {
        if (j > OSSConstants.DEFAULT_FILE_SIZE_LIMIT) {
            throw new IllegalArgumentException("The content length could not be more than 5GB.");
        }
        this.f13268b.put("Content-Length", Long.valueOf(j));
    }

    public void setContentMD5(String str) {
        this.f13268b.put("Content-MD5", str);
    }

    public void setContentType(String str) {
        this.f13268b.put("Content-Type", str);
    }

    public void setExpirationTime(Date date) {
        this.f13268b.put("Expires", DateUtil.formatRfc822Date(date));
    }

    public void setHeader(String str, Object obj) {
        this.f13268b.put(str, obj);
    }

    public void setLastModified(Date date) {
        this.f13268b.put("Last-Modified", date);
    }

    public void setSHA1(String str) {
        this.f13268b.put(OSSHeaders.OSS_HASH_SHA1, str);
    }

    public void setServerSideEncryption(String str) {
        this.f13268b.put(OSSHeaders.OSS_SERVER_SIDE_ENCRYPTION, str);
    }

    public void setUserMetadata(Map<String, String> map) {
        this.f13267a.clear();
        if (map == null || map.isEmpty()) {
            return;
        }
        this.f13267a.putAll(map);
    }

    public String toString() {
        String str;
        try {
            str = getExpirationTime().toString();
        } catch (Exception unused) {
            str = "";
        }
        return "Last-Modified:" + getLastModified() + "\nExpires:" + str + "\nrawExpires:" + getRawExpiresValue() + "\nContent-MD5:" + getContentMD5() + "\n" + OSSHeaders.OSS_OBJECT_TYPE + ":" + getObjectType() + "\n" + OSSHeaders.OSS_SERVER_SIDE_ENCRYPTION + ":" + getServerSideEncryption() + "\nContent-Disposition:" + getContentDisposition() + "\nContent-Encoding:" + getContentEncoding() + "\nCache-Control:" + getCacheControl() + "\nETag:" + getETag() + "\n";
    }
}
