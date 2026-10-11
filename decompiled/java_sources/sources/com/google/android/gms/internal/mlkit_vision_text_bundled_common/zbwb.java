package com.google.android.gms.internal.mlkit_vision_text_bundled_common;

import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zbwb implements Map.Entry, Comparable {
    final /* synthetic */ zbwh zba;
    private final Comparable zbb;
    private Object zbc;

    public zbwb(zbwh zbwhVar, Comparable comparable, Object obj) {
        this.zba = zbwhVar;
        this.zbb = comparable;
        this.zbc = obj;
    }

    private static final boolean zbb(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return this.zbb.compareTo(((zbwb) obj).zbb);
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return zbb(this.zbb, entry.getKey()) && zbb(this.zbc, entry.getValue());
    }

    @Override // java.util.Map.Entry
    public final /* synthetic */ Object getKey() {
        return this.zbb;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.zbc;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Comparable comparable = this.zbb;
        int hashCode = comparable == null ? 0 : comparable.hashCode();
        Object obj = this.zbc;
        return hashCode ^ (obj != null ? obj.hashCode() : 0);
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        this.zba.zbo();
        Object obj2 = this.zbc;
        this.zbc = obj;
        return obj2;
    }

    public final String toString() {
        return String.valueOf(this.zbb) + "=" + String.valueOf(this.zbc);
    }

    public final Comparable zba() {
        return this.zbb;
    }
}
