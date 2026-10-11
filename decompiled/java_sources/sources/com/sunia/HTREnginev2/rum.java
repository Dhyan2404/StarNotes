package com.sunia.HTREnginev2;

/* loaded from: classes13.dex */
public class rum extends mae {

    /* renamed from: d */
    public String[] f83517d;

    public rum(int i) {
        this.f83517d = new String[i];
        this.f77404a = new hgk[i];
    }

    @Override // com.sunia.HTREnginev2.mae
    /* renamed from: a */
    public hgk mo53103a(String str) {
        for (int i = 0; i < this.f77405b; i++) {
            if (this.f83517d[i].equals(str)) {
                return this.f77404a[i];
            }
        }
        return null;
    }

    @Override // com.sunia.HTREnginev2.mae
    /* renamed from: c */
    public void mo53104c(String str, hgk hgkVar) {
        String[] strArr = this.f83517d;
        int i = this.f77405b;
        strArr[i] = str;
        hgk[] hgkVarArr = this.f77404a;
        this.f77405b = i + 1;
        hgkVarArr[i] = hgkVar;
    }
}
