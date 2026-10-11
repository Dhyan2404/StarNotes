package com.sunia.calculatorv2.ink.model;

import java.util.Arrays;
import java.util.List;

/* renamed from: com.sunia.calculatorv2.ink.model.l */
/* loaded from: classes10.dex */
public class C14813l extends AbstractC14807f<AbstractC14807f> {

    /* renamed from: e */
    public final AbstractC14807f f92439e;

    /* renamed from: f */
    public final C14819r f92440f;

    public C14813l(AbstractC14807f abstractC14807f, C14819r c14819r) {
        this.f92439e = abstractC14807f;
        this.f92440f = c14819r;
    }

    /* renamed from: a */
    public String m58869a() {
        return this.f92440f.mo53565a();
    }

    @Override // com.sunia.calculatorv2.ink.model.AbstractC14807f
    /* renamed from: f */
    public List<AbstractC14807f> mo58831f() {
        return Arrays.asList(this.f92439e, this.f92440f);
    }

    @Override // com.sunia.calculatorv2.ink.model.AbstractC14807f
    /* renamed from: j */
    public String mo54389j() {
        return "overscript";
    }

    /* renamed from: l */
    public C14819r m58870l() {
        return this.f92440f;
    }

    /* renamed from: m */
    public AbstractC14807f m58871m() {
        return this.f92439e;
    }
}
