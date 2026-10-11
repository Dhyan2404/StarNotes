package com.sunia.calculatorv2.ink.model;

import java.util.Arrays;
import java.util.List;

/* renamed from: com.sunia.calculatorv2.ink.model.h */
/* loaded from: classes10.dex */
public class C14809h extends AbstractC14807f<AbstractC14807f> {

    /* renamed from: e */
    public final AbstractC14807f f92430e;

    /* renamed from: f */
    public final AbstractC14807f f92431f;

    /* renamed from: h */
    public final C14819r f92432h;

    /* renamed from: i */
    public String f92433i;

    public C14809h(AbstractC14807f abstractC14807f, AbstractC14807f abstractC14807f2, C14819r c14819r) {
        this.f92430e = abstractC14807f;
        this.f92432h = c14819r;
        this.f92431f = abstractC14807f2;
    }

    /* renamed from: q */
    public static boolean m58860q(AbstractC14807f abstractC14807f) {
        if (!(abstractC14807f instanceof C14814m)) {
            return false;
        }
        List mo58831f = abstractC14807f.mo58831f();
        if (mo58831f.size() >= 2) {
            return false;
        }
        if (mo58831f.size() == 1) {
            return m58860q((AbstractC14807f) mo58831f.get(0));
        }
        return true;
    }

    @Override // com.sunia.calculatorv2.ink.model.AbstractC14807f
    /* renamed from: f */
    public List<AbstractC14807f> mo58831f() {
        return "fraction".equals(mo54389j()) ? Arrays.asList(this.f92430e, this.f92431f, this.f92432h) : "partialfractiondenominator".equals(mo54389j()) ? Arrays.asList(this.f92431f, this.f92432h) : Arrays.asList(this.f92430e, this.f92432h);
    }

    @Override // com.sunia.calculatorv2.ink.model.AbstractC14807f
    /* renamed from: j */
    public String mo54389j() {
        if (this.f92433i == null) {
            this.f92433i = m58860q(this.f92430e) ? "partialfractiondenominator" : m58860q(this.f92431f) ? "partialfractionnumerator" : "fraction";
        }
        return this.f92433i;
    }

    /* renamed from: l */
    public AbstractC14807f m58861l() {
        return this.f92431f;
    }

    /* renamed from: m */
    public C14819r m58862m() {
        return this.f92432h;
    }

    /* renamed from: n */
    public AbstractC14807f m58863n() {
        return this.f92430e;
    }
}
