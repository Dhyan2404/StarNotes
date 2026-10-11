package com.sunia.HTREnginev2;

import javax.annotation.Nonnull;

/* renamed from: com.sunia.HTREnginev2.xj */
/* loaded from: classes6.dex */
public final class C14654xj extends zxi {

    /* renamed from: a */
    public final String f89700a;

    /* renamed from: b */
    public final String f89701b;

    public C14654xj(String str, String str2) {
        if (str == null) {
            throw new NullPointerException("Null libraryName");
        }
        this.f89700a = str;
        if (str2 == null) {
            throw new NullPointerException("Null version");
        }
        this.f89701b = str2;
    }

    @Override // com.sunia.HTREnginev2.zxi
    @Nonnull
    /* renamed from: b */
    public String mo58216b() {
        return this.f89700a;
    }

    @Override // com.sunia.HTREnginev2.zxi
    @Nonnull
    /* renamed from: c */
    public String mo58217c() {
        return this.f89701b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zxi)) {
            return false;
        }
        zxi zxiVar = (zxi) obj;
        return this.f89700a.equals(zxiVar.mo58216b()) && this.f89701b.equals(zxiVar.mo58217c());
    }

    public int hashCode() {
        return this.f89701b.hashCode() ^ ((this.f89700a.hashCode() ^ 1000003) * 1000003);
    }

    public String toString() {
        return "LibraryVersion{libraryName=" + this.f89700a + ", version=" + this.f89701b + "}";
    }
}
