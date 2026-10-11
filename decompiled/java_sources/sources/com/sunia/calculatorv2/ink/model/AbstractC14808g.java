package com.sunia.calculatorv2.ink.model;

import com.sunia.HTREnginev2.AbstractC13961k;
import com.sunia.HTREnginev2.C14219p1;
import java.util.List;

/* renamed from: com.sunia.calculatorv2.ink.model.g */
/* loaded from: classes10.dex */
public abstract class AbstractC14808g extends AbstractC14807f<AbstractC14807f> {

    /* renamed from: e */
    public final List<C14219p1> f92428e;

    /* renamed from: f */
    public final List<? extends AbstractC13961k> f92429f;

    public AbstractC14808g(List<? extends AbstractC13961k> list, List<C14219p1> list2) {
        this.f92429f = list;
        this.f92428e = list2;
    }

    @Override // com.sunia.calculatorv2.ink.model.AbstractC14807f
    /* renamed from: c */
    public List<? extends AbstractC13961k> mo58829c() {
        return this.f92429f;
    }

    @Override // com.sunia.calculatorv2.ink.model.AbstractC14807f
    /* renamed from: d */
    public List<C14219p1> mo58830d() {
        return this.f92428e;
    }
}
