package com.sunia.calculatorv2.ink.model;

import java.util.Arrays;
import java.util.List;

/* renamed from: com.sunia.calculatorv2.ink.model.j */
/* loaded from: classes10.dex */
public class C14811j extends AbstractC14807f<AbstractC14807f> {

    /* renamed from: e */
    public final AbstractC14807f f92435e;

    /* renamed from: f */
    public final AbstractC14807f f92436f;

    /* renamed from: h */
    public final C14819r f92437h;

    public C14811j(AbstractC14807f abstractC14807f, AbstractC14807f abstractC14807f2, C14819r c14819r) {
        this.f92435e = abstractC14807f;
        this.f92437h = c14819r;
        this.f92436f = abstractC14807f2;
    }

    @Override // com.sunia.calculatorv2.ink.model.AbstractC14807f
    /* renamed from: f */
    public List<AbstractC14807f> mo58831f() {
        return Arrays.asList(new C14815n(this.f92435e, this.f92437h), this.f92436f);
    }

    @Override // com.sunia.calculatorv2.ink.model.AbstractC14807f
    /* renamed from: j */
    public String mo54389j() {
        return "presuperscript";
    }

    /* renamed from: l */
    public AbstractC14807f m58865l() {
        return this.f92436f;
    }

    /* renamed from: m */
    public C14819r m58866m() {
        return this.f92437h;
    }

    /* renamed from: n */
    public AbstractC14807f m58867n() {
        return this.f92435e;
    }
}
