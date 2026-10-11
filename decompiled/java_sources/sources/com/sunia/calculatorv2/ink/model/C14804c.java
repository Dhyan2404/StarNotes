package com.sunia.calculatorv2.ink.model;

import com.sunia.HTREnginev2.AbstractC13961k;
import com.sunia.HTREnginev2.C14219p1;
import java.util.List;

/* renamed from: com.sunia.calculatorv2.ink.model.c */
/* loaded from: classes10.dex */
public class C14804c extends AbstractC14808g {

    /* renamed from: h */
    public final List<String> f92415h;

    /* renamed from: i */
    public final List<String> f92416i;

    /* renamed from: j */
    public final List<Float> f92417j;

    public C14804c(List<String> list, List<String> list2, List<Float> list3, List<? extends AbstractC13961k> list4, List<C14219p1> list5) {
        super(list4, list5);
        this.f92415h = list;
        this.f92416i = list2;
        this.f92417j = list3;
    }

    @Override // com.sunia.calculatorv2.ink.model.AbstractC14807f
    /* renamed from: j */
    public String mo54389j() {
        return "Edge";
    }

    /* renamed from: l */
    public List<String> m58833l() {
        return this.f92416i;
    }

    /* renamed from: m */
    public List<String> m58834m() {
        return this.f92415h;
    }

    /* renamed from: n */
    public List<Float> m58835n() {
        return this.f92417j;
    }
}
