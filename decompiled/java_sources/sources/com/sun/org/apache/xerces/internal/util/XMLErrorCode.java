package com.sun.org.apache.xerces.internal.util;

/* loaded from: classes10.dex */
final class XMLErrorCode {
    private String fDomain;
    private String fKey;

    public XMLErrorCode(String str, String str2) {
        this.fDomain = str;
        this.fKey = str2;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof XMLErrorCode)) {
            return false;
        }
        XMLErrorCode xMLErrorCode = (XMLErrorCode) obj;
        return this.fDomain.equals(xMLErrorCode.fDomain) && this.fKey.equals(xMLErrorCode.fKey);
    }

    public int hashCode() {
        return this.fDomain.hashCode() + this.fKey.hashCode();
    }

    public void setValues(String str, String str2) {
        this.fDomain = str;
        this.fKey = str2;
    }
}
