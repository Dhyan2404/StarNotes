package org.apache.xerces.impl.validation;

import java.util.Iterator;

/* loaded from: classes13.dex */
public final class ConfigurableValidationState extends ValidationState {

    /* renamed from: l */
    public boolean f112436l = true;

    /* renamed from: m */
    public boolean f112437m = true;

    @Override // org.apache.xerces.impl.validation.ValidationState, org.apache.xerces.impl.p115dv.ValidationContext
    public void addId(String str) {
        if (this.f112436l) {
            super.addId(str);
        }
    }

    @Override // org.apache.xerces.impl.validation.ValidationState, org.apache.xerces.impl.p115dv.ValidationContext
    public void addIdRef(String str) {
        if (this.f112436l) {
            super.addIdRef(str);
        }
    }

    @Override // org.apache.xerces.impl.validation.ValidationState
    public Iterator checkIDRefID() {
        if (this.f112436l) {
            return super.checkIDRefID();
        }
        return null;
    }

    @Override // org.apache.xerces.impl.validation.ValidationState, org.apache.xerces.impl.p115dv.ValidationContext
    public boolean isEntityDeclared(String str) {
        if (this.f112437m) {
            return super.isEntityDeclared(str);
        }
        return true;
    }

    @Override // org.apache.xerces.impl.validation.ValidationState, org.apache.xerces.impl.p115dv.ValidationContext
    public boolean isEntityUnparsed(String str) {
        if (this.f112437m) {
            return super.isEntityUnparsed(str);
        }
        return true;
    }

    @Override // org.apache.xerces.impl.validation.ValidationState, org.apache.xerces.impl.p115dv.ValidationContext
    public boolean isIdDeclared(String str) {
        if (this.f112436l) {
            return super.isIdDeclared(str);
        }
        return false;
    }

    public void setIdIdrefChecking(boolean z) {
        this.f112436l = z;
    }

    public void setUnparsedEntityChecking(boolean z) {
        this.f112437m = z;
    }
}
