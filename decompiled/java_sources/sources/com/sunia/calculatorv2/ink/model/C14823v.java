package com.sunia.calculatorv2.ink.model;

import java.util.Arrays;
import java.util.List;

/* renamed from: com.sunia.calculatorv2.ink.model.v */
/* loaded from: classes10.dex */
public class C14823v extends AbstractC14807f<AbstractC14807f> {

    /* renamed from: e */
    public final AbstractC14807f f92466e;

    /* renamed from: f */
    public final C14819r f92467f;

    public C14823v(AbstractC14807f abstractC14807f, C14819r c14819r) {
        this.f92466e = abstractC14807f;
        this.f92467f = c14819r;
    }

    /* renamed from: a */
    public String m58899a() {
        return this.f92467f.mo53565a();
    }

    @Override // com.sunia.calculatorv2.ink.model.AbstractC14807f
    /* renamed from: f */
    public List<AbstractC14807f> mo58831f() {
        return Arrays.asList(this.f92466e, this.f92467f);
    }

    @Override // com.sunia.calculatorv2.ink.model.AbstractC14807f
    /* renamed from: j */
    public String mo54389j() {
        return "underscript";
    }

    /* renamed from: l */
    public C14819r m58900l() {
        return this.f92467f;
    }

    /* renamed from: m */
    public AbstractC14807f m58901m() {
        return this.f92466e;
    }
}
