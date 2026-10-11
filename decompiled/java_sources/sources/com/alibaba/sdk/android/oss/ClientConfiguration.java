package com.alibaba.sdk.android.oss;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes3.dex */
public class ClientConfiguration {

    /* renamed from: o */
    public static final int f12889o = 2;

    /* renamed from: g */
    public String f12896g;

    /* renamed from: h */
    public int f12897h;

    /* renamed from: i */
    public String f12898i;

    /* renamed from: l */
    public String f12901l;

    /* renamed from: a */
    public int f12890a = 5;

    /* renamed from: b */
    public int f12891b = 60000;

    /* renamed from: c */
    public int f12892c = 60000;

    /* renamed from: d */
    public long f12893d = 5242880;

    /* renamed from: e */
    public int f12894e = 2;

    /* renamed from: f */
    public List<String> f12895f = new ArrayList();

    /* renamed from: j */
    public boolean f12899j = true;

    /* renamed from: k */
    public boolean f12900k = false;

    /* renamed from: m */
    public boolean f12902m = false;

    /* renamed from: n */
    public boolean f12903n = false;

    public static ClientConfiguration getDefaultConf() {
        return new ClientConfiguration();
    }

    public int getConnectionTimeout() {
        return this.f12892c;
    }

    public List<String> getCustomCnameExcludeList() {
        return Collections.unmodifiableList(this.f12895f);
    }

    public String getCustomUserMark() {
        return this.f12898i;
    }

    public String getIpWithHeader() {
        return this.f12901l;
    }

    public int getMaxConcurrentRequest() {
        return this.f12890a;
    }

    public int getMaxErrorRetry() {
        return this.f12894e;
    }

    public long getMaxLogSize() {
        return this.f12893d;
    }

    public String getProxyHost() {
        return this.f12896g;
    }

    public int getProxyPort() {
        return this.f12897h;
    }

    public int getSocketTimeout() {
        return this.f12891b;
    }

    public boolean isCheckCRC64() {
        return this.f12900k;
    }

    public boolean isCustomPathPrefixEnable() {
        return this.f12903n;
    }

    public boolean isHttpDnsEnable() {
        return this.f12899j;
    }

    public boolean isPathStyleAccessEnable() {
        return this.f12902m;
    }

    public void setCheckCRC64(boolean z) {
        this.f12900k = z;
    }

    public void setConnectionTimeout(int i) {
        this.f12892c = i;
    }

    public void setCustomCnameExcludeList(List<String> list) {
        if (list == null || list.size() == 0) {
            throw new IllegalArgumentException("cname exclude list should not be null.");
        }
        this.f12895f.clear();
        for (String str : list) {
            if (str.contains("://")) {
                this.f12895f.add(str.substring(str.indexOf("://") + 3));
            } else {
                this.f12895f.add(str);
            }
        }
    }

    public void setCustomPathPrefixEnable(boolean z) {
        this.f12903n = z;
    }

    public void setHttpDnsEnable(boolean z) {
        this.f12899j = z;
    }

    public void setIpWithHeader(String str) {
        this.f12901l = str;
    }

    public void setMaxConcurrentRequest(int i) {
        this.f12890a = i;
    }

    public void setMaxErrorRetry(int i) {
        this.f12894e = i;
    }

    public void setMaxLogSize(long j) {
        this.f12893d = j;
    }

    public void setPathStyleAccessEnable(boolean z) {
        this.f12902m = z;
    }

    public void setProxyHost(String str) {
        this.f12896g = str;
    }

    public void setProxyPort(int i) {
        this.f12897h = i;
    }

    public void setSocketTimeout(int i) {
        this.f12891b = i;
    }

    public void setUserAgentMark(String str) {
        this.f12898i = str;
    }
}
