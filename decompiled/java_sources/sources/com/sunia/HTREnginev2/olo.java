package com.sunia.HTREnginev2;

/* loaded from: classes13.dex */
public final class olo {

    /* renamed from: a */
    public String f79907a;

    /* renamed from: b */
    public String f79908b;

    public olo(String str, String str2) {
        this.f79907a = str;
        this.f79908b = str2;
    }

    /* renamed from: a */
    public void m56081a(String str, String str2) {
        this.f79907a = str;
        this.f79908b = str2;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof olo)) {
            return false;
        }
        olo oloVar = (olo) obj;
        return this.f79907a.equals(oloVar.f79907a) && this.f79908b.equals(oloVar.f79908b);
    }

    public int hashCode() {
        return this.f79907a.hashCode() + this.f79908b.hashCode();
    }
}
