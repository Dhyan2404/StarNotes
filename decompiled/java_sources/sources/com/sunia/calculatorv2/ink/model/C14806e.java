package com.sunia.calculatorv2.ink.model;

import com.sunia.HTREnginev2.C14219p1;
import java.util.Collections;
import java.util.List;

/* renamed from: com.sunia.calculatorv2.ink.model.e */
/* loaded from: classes10.dex */
public class C14806e extends AbstractC14807f<AbstractC14807f> {

    /* renamed from: g */
    public static final C14806e f92421g = new C14806e(Collections.emptyList(), Collections.emptyList());

    /* renamed from: e */
    public final List<AbstractC14807f> f92422e;

    /* renamed from: f */
    public final List<C14219p1> f92423f;

    public C14806e(List<AbstractC14807f> list, List<C14219p1> list2) {
        this.f92422e = list;
        this.f92423f = list2;
    }

    @Override // com.sunia.calculatorv2.ink.model.AbstractC14807f
    /* renamed from: f */
    public List<AbstractC14807f> mo58831f() {
        return this.f92422e;
    }

    @Override // com.sunia.calculatorv2.ink.model.AbstractC14807f
    /* renamed from: i */
    public List<C14219p1> mo58838i() {
        return this.f92423f;
    }

    @Override // com.sunia.calculatorv2.ink.model.AbstractC14807f
    /* renamed from: j */
    public String mo54389j() {
        return "Container";
    }
}
