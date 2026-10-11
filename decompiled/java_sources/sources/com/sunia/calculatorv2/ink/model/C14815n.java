package com.sunia.calculatorv2.ink.model;

import java.util.Arrays;
import java.util.List;

/* renamed from: com.sunia.calculatorv2.ink.model.n */
/* loaded from: classes10.dex */
public class C14815n extends AbstractC14807f<AbstractC14807f> {

    /* renamed from: e */
    public final AbstractC14807f f92445e;

    /* renamed from: f */
    public final C14819r f92446f;

    public C14815n(AbstractC14807f abstractC14807f, C14819r c14819r) {
        this.f92445e = abstractC14807f;
        this.f92446f = c14819r;
    }

    @Override // com.sunia.calculatorv2.ink.model.AbstractC14807f
    /* renamed from: f */
    public List<AbstractC14807f> mo58831f() {
        return Arrays.asList(this.f92445e, this.f92446f);
    }

    @Override // com.sunia.calculatorv2.ink.model.AbstractC14807f
    /* renamed from: j */
    public String mo54389j() {
        return "square root";
    }

    /* renamed from: l */
    public C14819r m58880l() {
        return this.f92446f;
    }

    /* renamed from: m */
    public AbstractC14807f m58881m() {
        return this.f92445e;
    }
}
