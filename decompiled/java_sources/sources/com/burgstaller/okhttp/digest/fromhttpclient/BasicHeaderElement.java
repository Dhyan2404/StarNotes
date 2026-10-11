package com.burgstaller.okhttp.digest.fromhttpclient;

/* loaded from: classes3.dex */
public class BasicHeaderElement implements HeaderElement, Cloneable {

    /* renamed from: e */
    public final String f15545e;

    /* renamed from: f */
    public final String f15546f;

    /* renamed from: g */
    public final NameValuePair[] f15547g;

    public BasicHeaderElement(String str, String str2, NameValuePair[] nameValuePairArr) {
        if (str != null) {
            this.f15545e = str;
            this.f15546f = str2;
            if (nameValuePairArr != null) {
                this.f15547g = nameValuePairArr;
                return;
            } else {
                this.f15547g = new NameValuePair[0];
                return;
            }
        }
        throw new IllegalArgumentException("Name may not be null");
    }

    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof HeaderElement)) {
            return false;
        }
        BasicHeaderElement basicHeaderElement = (BasicHeaderElement) obj;
        return this.f15545e.equals(basicHeaderElement.f15545e) && LangUtils.equals(this.f15546f, basicHeaderElement.f15546f) && LangUtils.equals((Object[]) this.f15547g, (Object[]) basicHeaderElement.f15547g);
    }

    @Override // com.burgstaller.okhttp.digest.fromhttpclient.HeaderElement
    public String getName() {
        return this.f15545e;
    }

    @Override // com.burgstaller.okhttp.digest.fromhttpclient.HeaderElement
    public NameValuePair getParameter(int i) {
        return this.f15547g[i];
    }

    @Override // com.burgstaller.okhttp.digest.fromhttpclient.HeaderElement
    public NameValuePair getParameterByName(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Name may not be null");
        }
        int i = 0;
        while (true) {
            NameValuePair[] nameValuePairArr = this.f15547g;
            if (i >= nameValuePairArr.length) {
                return null;
            }
            NameValuePair nameValuePair = nameValuePairArr[i];
            if (nameValuePair.getName().equalsIgnoreCase(str)) {
                return nameValuePair;
            }
            i++;
        }
    }

    @Override // com.burgstaller.okhttp.digest.fromhttpclient.HeaderElement
    public int getParameterCount() {
        return this.f15547g.length;
    }

    @Override // com.burgstaller.okhttp.digest.fromhttpclient.HeaderElement
    public NameValuePair[] getParameters() {
        return (NameValuePair[]) this.f15547g.clone();
    }

    @Override // com.burgstaller.okhttp.digest.fromhttpclient.HeaderElement
    public String getValue() {
        return this.f15546f;
    }

    public int hashCode() {
        int hashCode = LangUtils.hashCode(LangUtils.hashCode(17, this.f15545e), this.f15546f);
        int i = 0;
        while (true) {
            NameValuePair[] nameValuePairArr = this.f15547g;
            if (i >= nameValuePairArr.length) {
                return hashCode;
            }
            hashCode = LangUtils.hashCode(hashCode, nameValuePairArr[i]);
            i++;
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(64);
        sb.append(this.f15545e);
        if (this.f15546f != null) {
            sb.append("=");
            sb.append(this.f15546f);
        }
        for (int i = 0; i < this.f15547g.length; i++) {
            sb.append("; ");
            sb.append(this.f15547g[i]);
        }
        return sb.toString();
    }

    public BasicHeaderElement(String str, String str2) {
        this(str, str2, null);
    }
}
