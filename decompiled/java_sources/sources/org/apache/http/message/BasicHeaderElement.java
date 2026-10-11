package org.apache.http.message;

import org.apache.http.HeaderElement;
import org.apache.http.NameValuePair;
import org.apache.http.util.Args;
import org.apache.http.util.LangUtils;

/* loaded from: classes12.dex */
public class BasicHeaderElement implements HeaderElement, Cloneable {

    /* renamed from: e */
    public final String f111048e;

    /* renamed from: f */
    public final String f111049f;

    /* renamed from: g */
    public final NameValuePair[] f111050g;

    public BasicHeaderElement(String str, String str2, NameValuePair[] nameValuePairArr) {
        this.f111048e = (String) Args.notNull(str, "Name");
        this.f111049f = str2;
        if (nameValuePairArr != null) {
            this.f111050g = nameValuePairArr;
        } else {
            this.f111050g = new NameValuePair[0];
        }
    }

    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof HeaderElement)) {
            return false;
        }
        BasicHeaderElement basicHeaderElement = (BasicHeaderElement) obj;
        return this.f111048e.equals(basicHeaderElement.f111048e) && LangUtils.equals(this.f111049f, basicHeaderElement.f111049f) && LangUtils.equals((Object[]) this.f111050g, (Object[]) basicHeaderElement.f111050g);
    }

    @Override // org.apache.http.HeaderElement
    public String getName() {
        return this.f111048e;
    }

    @Override // org.apache.http.HeaderElement
    public NameValuePair getParameter(int i) {
        return this.f111050g[i];
    }

    @Override // org.apache.http.HeaderElement
    public NameValuePair getParameterByName(String str) {
        Args.notNull(str, "Name");
        for (NameValuePair nameValuePair : this.f111050g) {
            if (nameValuePair.getName().equalsIgnoreCase(str)) {
                return nameValuePair;
            }
        }
        return null;
    }

    @Override // org.apache.http.HeaderElement
    public int getParameterCount() {
        return this.f111050g.length;
    }

    @Override // org.apache.http.HeaderElement
    public NameValuePair[] getParameters() {
        return (NameValuePair[]) this.f111050g.clone();
    }

    @Override // org.apache.http.HeaderElement
    public String getValue() {
        return this.f111049f;
    }

    public int hashCode() {
        int hashCode = LangUtils.hashCode(LangUtils.hashCode(17, this.f111048e), this.f111049f);
        for (NameValuePair nameValuePair : this.f111050g) {
            hashCode = LangUtils.hashCode(hashCode, nameValuePair);
        }
        return hashCode;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f111048e);
        if (this.f111049f != null) {
            sb.append("=");
            sb.append(this.f111049f);
        }
        for (NameValuePair nameValuePair : this.f111050g) {
            sb.append("; ");
            sb.append(nameValuePair);
        }
        return sb.toString();
    }

    public BasicHeaderElement(String str, String str2) {
        this(str, str2, null);
    }
}
