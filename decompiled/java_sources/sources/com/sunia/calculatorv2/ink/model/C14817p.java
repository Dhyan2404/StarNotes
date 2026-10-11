package com.sunia.calculatorv2.ink.model;

import java.util.Arrays;
import java.util.List;

/* renamed from: com.sunia.calculatorv2.ink.model.p */
/* loaded from: classes10.dex */
public class C14817p extends AbstractC14807f<AbstractC14807f> {

    /* renamed from: e */
    public final AbstractC14807f f92451e;

    /* renamed from: f */
    public final AbstractC14807f f92452f;

    /* renamed from: h */
    public final AbstractC14807f f92453h;

    /* renamed from: i */
    public final boolean f92454i;

    /* renamed from: j */
    public final boolean f92455j;

    public C14817p(AbstractC14807f abstractC14807f, AbstractC14807f abstractC14807f2, AbstractC14807f abstractC14807f3, boolean z, boolean z2) {
        this.f92451e = abstractC14807f;
        this.f92452f = abstractC14807f2;
        this.f92453h = abstractC14807f3;
        this.f92454i = z;
        this.f92455j = z2;
    }

    @Override // com.sunia.calculatorv2.ink.model.AbstractC14807f
    /* renamed from: f */
    public List<AbstractC14807f> mo58831f() {
        return Arrays.asList(this.f92451e, this.f92452f, this.f92453h);
    }

    @Override // com.sunia.calculatorv2.ink.model.AbstractC14807f
    /* renamed from: j */
    public String mo54389j() {
        return this.f92455j ? "underoverscript" : "subsuperscript";
    }

    /* renamed from: l */
    public AbstractC14807f m58886l() {
        return this.f92451e;
    }

    /* renamed from: m */
    public AbstractC14807f m58887m() {
        return this.f92452f;
    }

    /* renamed from: n */
    public AbstractC14807f m58888n() {
        return this.f92453h;
    }

    /* renamed from: o */
    public boolean m58889o() {
        return this.f92454i;
    }

    /* renamed from: p */
    public boolean m58890p() {
        return this.f92455j;
    }
}
