package com.sunia.calculatorv2.ink.model;

import com.sunia.HTREnginev2.AbstractC13961k;
import com.sunia.HTREnginev2.C14219p1;
import com.sunia.HTREnginev2.InterfaceC13597d0;
import java.util.List;

/* renamed from: com.sunia.calculatorv2.ink.model.d */
/* loaded from: classes10.dex */
public class C14805d extends AbstractC14808g implements InterfaceC13597d0 {

    /* renamed from: h */
    public final String f92418h;

    /* renamed from: i */
    public final List<String> f92419i;

    /* renamed from: j */
    public final List<String> f92420j;

    public C14805d(String str, List<String> list, List<String> list2, List<? extends AbstractC13961k> list3, List<C14219p1> list4) {
        super(list3, list4);
        this.f92418h = str;
        this.f92419i = list;
        this.f92420j = list2;
    }

    @Override // com.sunia.HTREnginev2.InterfaceC13597d0
    /* renamed from: a */
    public String mo53565a() {
        return this.f92418h;
    }

    @Override // com.sunia.calculatorv2.ink.model.AbstractC14807f
    /* renamed from: j */
    public String mo54389j() {
        return "Node";
    }

    /* renamed from: l */
    public List<String> m58836l() {
        return this.f92420j;
    }

    /* renamed from: m */
    public List<String> m58837m() {
        return this.f92419i;
    }
}
