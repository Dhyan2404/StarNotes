package com.burgstaller.okhttp.digest;

/* loaded from: classes3.dex */
public class Credentials {

    /* renamed from: a */
    public String f15527a;

    /* renamed from: b */
    public String f15528b;

    public Credentials(String str, String str2) {
        if (str == null || str2 == null) {
            throw new IllegalArgumentException("username and password cannot be null");
        }
        this.f15527a = str;
        this.f15528b = str2;
    }

    public String getPassword() {
        return this.f15528b;
    }

    public String getUserName() {
        return this.f15527a;
    }

    public void setPassword(String str) {
        this.f15528b = str;
    }

    public void setUserName(String str) {
        this.f15527a = str;
    }
}
