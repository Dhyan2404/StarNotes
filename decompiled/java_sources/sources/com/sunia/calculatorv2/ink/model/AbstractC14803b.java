package com.sunia.calculatorv2.ink.model;

import com.sunia.HTREnginev2.C14219p1;
import com.sunia.calculatorv2.ink.model.AbstractC14807f;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.sunia.calculatorv2.ink.model.b */
/* loaded from: classes10.dex */
public abstract class AbstractC14803b<C extends AbstractC14807f> extends AbstractC14807f<C> {

    /* renamed from: e */
    public final List<C> f92413e;

    /* renamed from: f */
    public final List<C14219p1> f92414f;

    public AbstractC14803b(List<C> list) {
        this(list, new ArrayList());
    }

    @Override // com.sunia.calculatorv2.ink.model.AbstractC14807f
    /* renamed from: d */
    public List<C14219p1> mo58830d() {
        return this.f92414f;
    }

    @Override // com.sunia.calculatorv2.ink.model.AbstractC14807f
    /* renamed from: f */
    public List<C> mo58831f() {
        return this.f92413e;
    }

    public AbstractC14803b(List<C> list, List<C14219p1> list2) {
        this.f92413e = list;
        this.f92414f = list2;
    }
}
