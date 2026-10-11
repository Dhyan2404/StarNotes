package org.scribe.model;

import org.scribe.utils.OAuthEncoder;

/* loaded from: classes16.dex */
public class Parameter implements Comparable<Parameter> {

    /* renamed from: g */
    public static final String f115947g = "UTF8";

    /* renamed from: e */
    public final String f115948e;

    /* renamed from: f */
    public final String f115949f;

    public Parameter(String str, String str2) {
        this.f115948e = str;
        this.f115949f = str2;
    }

    public String asUrlEncodedPair() {
        return OAuthEncoder.encode(this.f115948e).concat("=").concat(OAuthEncoder.encode(this.f115949f));
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Parameter)) {
            return false;
        }
        Parameter parameter = (Parameter) obj;
        return parameter.f115948e.equals(this.f115948e) && parameter.f115949f.equals(this.f115949f);
    }

    public int hashCode() {
        return this.f115948e.hashCode() + this.f115949f.hashCode();
    }

    @Override // java.lang.Comparable
    public int compareTo(Parameter parameter) {
        int compareTo = this.f115948e.compareTo(parameter.f115948e);
        return compareTo != 0 ? compareTo : this.f115949f.compareTo(parameter.f115949f);
    }
}
