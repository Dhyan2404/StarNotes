package org.apache.xerces.impl.p115dv.p116xs;

import java.util.Locale;
import org.apache.xerces.impl.p115dv.ValidationContext;

/* renamed from: org.apache.xerces.impl.dv.xs.d */
/* loaded from: classes13.dex */
public class C20026d implements ValidationContext {
    @Override // org.apache.xerces.impl.p115dv.ValidationContext
    public void addId(String str) {
    }

    @Override // org.apache.xerces.impl.p115dv.ValidationContext
    public void addIdRef(String str) {
    }

    @Override // org.apache.xerces.impl.p115dv.ValidationContext
    public Locale getLocale() {
        return Locale.getDefault();
    }

    @Override // org.apache.xerces.impl.p115dv.ValidationContext
    public String getSymbol(String str) {
        return str.intern();
    }

    @Override // org.apache.xerces.impl.p115dv.ValidationContext
    public String getURI(String str) {
        return null;
    }

    @Override // org.apache.xerces.impl.p115dv.ValidationContext
    public boolean isEntityDeclared(String str) {
        return false;
    }

    @Override // org.apache.xerces.impl.p115dv.ValidationContext
    public boolean isEntityUnparsed(String str) {
        return false;
    }

    @Override // org.apache.xerces.impl.p115dv.ValidationContext
    public boolean isIdDeclared(String str) {
        return false;
    }

    @Override // org.apache.xerces.impl.p115dv.ValidationContext
    public boolean needExtraChecking() {
        return false;
    }

    @Override // org.apache.xerces.impl.p115dv.ValidationContext
    public boolean needFacetChecking() {
        return true;
    }

    @Override // org.apache.xerces.impl.p115dv.ValidationContext
    public boolean needToNormalize() {
        return false;
    }

    @Override // org.apache.xerces.impl.p115dv.ValidationContext
    public boolean useNamespaces() {
        return true;
    }
}
