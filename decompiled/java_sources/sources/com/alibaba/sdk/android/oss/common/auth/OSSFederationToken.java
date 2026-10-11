package com.alibaba.sdk.android.oss.common.auth;

import com.alibaba.sdk.android.oss.common.OSSLog;
import com.alibaba.sdk.android.oss.common.utils.DateUtil;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.TimeZone;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes3.dex */
public class OSSFederationToken {

    /* renamed from: a */
    public String f12940a;

    /* renamed from: b */
    public String f12941b;

    /* renamed from: c */
    public String f12942c;

    /* renamed from: d */
    public long f12943d;

    public OSSFederationToken(String str, String str2, String str3, long j) {
        setTempAk(str);
        setTempSk(str2);
        setSecurityToken(str3);
        setExpiration(j);
    }

    public long getExpiration() {
        return this.f12943d;
    }

    public String getSecurityToken() {
        return this.f12942c;
    }

    public String getTempAK() {
        return this.f12940a;
    }

    public String getTempSK() {
        return this.f12941b;
    }

    public void setExpiration(long j) {
        this.f12943d = j;
    }

    public void setExpirationInGMTFormat(String str) {
        try {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss");
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
            this.f12943d = simpleDateFormat.parse(str).getTime() / 1000;
        } catch (ParseException e) {
            if (OSSLog.isEnableLog()) {
                e.printStackTrace();
            }
            this.f12943d = (DateUtil.getFixedSkewedTimeMillis() / 1000) + 30;
        }
    }

    public void setSecurityToken(String str) {
        this.f12942c = str;
    }

    public void setTempAk(String str) {
        this.f12940a = str;
    }

    public void setTempSk(String str) {
        this.f12941b = str;
    }

    public String toString() {
        return "OSSFederationToken [tempAk=" + this.f12940a + ", tempSk=" + this.f12941b + ", securityToken=" + this.f12942c + ", expiration=" + this.f12943d + IteratorUtils.f104924b;
    }

    public OSSFederationToken(String str, String str2, String str3, String str4) {
        setTempAk(str);
        setTempSk(str2);
        setSecurityToken(str3);
        setExpirationInGMTFormat(str4);
    }
}
