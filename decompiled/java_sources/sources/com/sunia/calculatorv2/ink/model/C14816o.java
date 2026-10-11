package com.sunia.calculatorv2.ink.model;

import java.util.Arrays;
import java.util.List;

/* renamed from: com.sunia.calculatorv2.ink.model.o */
/* loaded from: classes10.dex */
public class C14816o extends AbstractC14807f<AbstractC14807f> {

    /* renamed from: e */
    public final AbstractC14807f f92447e;

    /* renamed from: f */
    public final AbstractC14807f f92448f;

    /* renamed from: h */
    public final boolean f92449h;

    /* renamed from: i */
    public final boolean f92450i;

    public C14816o(AbstractC14807f abstractC14807f, AbstractC14807f abstractC14807f2, boolean z, boolean z2) {
        this.f92447e = abstractC14807f;
        this.f92448f = abstractC14807f2;
        this.f92449h = z;
        this.f92450i = z2;
    }

    @Override // com.sunia.calculatorv2.ink.model.AbstractC14807f
    /* renamed from: f */
    public List<AbstractC14807f> mo58831f() {
        return Arrays.asList(this.f92447e, this.f92448f);
    }

    @Override // com.sunia.calculatorv2.ink.model.AbstractC14807f
    /* renamed from: j */
    public String mo54389j() {
        return this.f92450i ? "underscript" : "subscript";
    }

    /* renamed from: l */
    public AbstractC14807f m58882l() {
        return this.f92447e;
    }

    /* renamed from: m */
    public AbstractC14807f m58883m() {
        return this.f92448f;
    }

    /* renamed from: n */
    public boolean m58884n() {
        return this.f92449h;
    }

    /* renamed from: o */
    public boolean m58885o() {
        return this.f92450i;
    }
}
