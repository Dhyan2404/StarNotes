package com.sunia.calculatorv2.ink.model;

import java.util.Arrays;
import java.util.List;

/* renamed from: com.sunia.calculatorv2.ink.model.q */
/* loaded from: classes10.dex */
public class C14818q extends AbstractC14807f<AbstractC14807f> {

    /* renamed from: e */
    public final AbstractC14807f f92456e;

    /* renamed from: f */
    public final AbstractC14807f f92457f;

    /* renamed from: h */
    public final boolean f92458h;

    /* renamed from: i */
    public final boolean f92459i;

    public C14818q(AbstractC14807f abstractC14807f, AbstractC14807f abstractC14807f2, boolean z, boolean z2) {
        this.f92456e = abstractC14807f;
        this.f92457f = abstractC14807f2;
        this.f92458h = z;
        this.f92459i = z2;
    }

    @Override // com.sunia.calculatorv2.ink.model.AbstractC14807f
    /* renamed from: f */
    public List<AbstractC14807f> mo58831f() {
        return Arrays.asList(this.f92456e, this.f92457f);
    }

    @Override // com.sunia.calculatorv2.ink.model.AbstractC14807f
    /* renamed from: j */
    public String mo54389j() {
        return this.f92459i ? "overscript" : "superscript";
    }

    /* renamed from: l */
    public AbstractC14807f m58891l() {
        return this.f92456e;
    }

    /* renamed from: m */
    public AbstractC14807f m58892m() {
        return this.f92457f;
    }

    /* renamed from: n */
    public boolean m58893n() {
        return this.f92458h;
    }

    /* renamed from: o */
    public boolean m58894o() {
        return this.f92459i;
    }
}
