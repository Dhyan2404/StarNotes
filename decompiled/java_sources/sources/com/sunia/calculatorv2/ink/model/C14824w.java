package com.sunia.calculatorv2.ink.model;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.sunia.HTREnginev2.AbstractC13961k;
import com.sunia.HTREnginev2.C13507b;
import com.sunia.HTREnginev2.C14219p1;
import java.util.Collections;
import java.util.List;

/* renamed from: com.sunia.calculatorv2.ink.model.w */
/* loaded from: classes10.dex */
public class C14824w extends AbstractC14808g {

    /* renamed from: h */
    public final List<C13507b> f92468h;

    /* renamed from: i */
    public String f92469i;

    /* renamed from: j */
    public AbstractC13961k f92470j;

    public C14824w(List<C13507b> list, List<C14219p1> list2) {
        super(Collections.emptyList(), list2);
        this.f92470j = null;
        this.f92468h = list;
    }

    /* renamed from: a */
    public String m58902a() {
        if (this.f92469i == null) {
            if (this.f92468h.isEmpty()) {
                return "";
            }
            this.f92469i = this.f92468h.get(0).m53112a();
        }
        return this.f92469i;
    }

    @Override // com.sunia.calculatorv2.ink.model.AbstractC14808g, com.sunia.calculatorv2.ink.model.AbstractC14807f
    /* renamed from: c */
    public List<? extends AbstractC13961k> mo58829c() {
        AbstractC13961k abstractC13961k = this.f92470j;
        return abstractC13961k != null ? Collections.singletonList(abstractC13961k) : Collections.emptyList();
    }

    public List<C13507b> getCandidates() {
        return this.f92468h;
    }

    @Override // com.sunia.calculatorv2.ink.model.AbstractC14807f
    /* renamed from: j */
    public String mo54389j() {
        return FirebaseAnalytics.Param.CHARACTER;
    }

    /* renamed from: q */
    public void m58903q(AbstractC13961k abstractC13961k) {
        this.f92470j = abstractC13961k;
    }
}
