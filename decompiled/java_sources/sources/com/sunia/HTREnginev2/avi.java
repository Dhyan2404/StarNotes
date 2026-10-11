package com.sunia.HTREnginev2;

import java.util.Hashtable;

/* loaded from: classes13.dex */
public class avi extends mae {

    /* renamed from: d */
    public Hashtable f65134d;

    public avi(int i) {
        this.f65134d = new Hashtable((i * 2) + 1);
        this.f77404a = new hgk[i];
    }

    @Override // com.sunia.HTREnginev2.mae
    /* renamed from: a */
    public hgk mo53103a(String str) {
        return (hgk) this.f65134d.get(str);
    }

    @Override // com.sunia.HTREnginev2.mae
    /* renamed from: c */
    public void mo53104c(String str, hgk hgkVar) {
        this.f65134d.put(str, hgkVar);
        hgk[] hgkVarArr = this.f77404a;
        int i = this.f77405b;
        this.f77405b = i + 1;
        hgkVarArr[i] = hgkVar;
    }
}
