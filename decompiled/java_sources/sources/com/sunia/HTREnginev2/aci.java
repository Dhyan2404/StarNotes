package com.sunia.HTREnginev2;

/* loaded from: classes12.dex */
public final class aci {

    /* renamed from: a */
    public final Object f64557a;

    /* renamed from: b */
    public final int f64558b;

    public aci(Object obj) {
        this.f64558b = System.identityHashCode(obj);
        this.f64557a = obj;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof aci)) {
            return false;
        }
        aci aciVar = (aci) obj;
        return this.f64558b == aciVar.f64558b && this.f64557a == aciVar.f64557a;
    }

    public int hashCode() {
        return this.f64558b;
    }
}
