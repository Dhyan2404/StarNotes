package com.sunia.calculatorv2.ink.model;

import com.sunia.HTREnginev2.C13507b;
import com.sunia.HTREnginev2.C14219p1;
import com.sunia.HTREnginev2.InterfaceC13597d0;
import com.sunia.calculatorv2.ink.graphics.BoundBox;
import java.util.Collections;
import java.util.List;

/* renamed from: com.sunia.calculatorv2.ink.model.a */
/* loaded from: classes10.dex */
public class C14802a extends AbstractC14808g implements InterfaceC13597d0 {

    /* renamed from: h */
    public final List<C13507b> f92411h;

    /* renamed from: i */
    public String f92412i;

    public C14802a(List<C13507b> list, List<C14219p1> list2, BoundBox boundBox) {
        super(Collections.emptyList(), list2);
        this.f92411h = list;
        m58855a(boundBox);
    }

    @Override // com.sunia.HTREnginev2.InterfaceC13597d0
    /* renamed from: a */
    public String mo53565a() {
        if (this.f92412i == null) {
            if (this.f92411h.isEmpty()) {
                return "";
            }
            this.f92412i = this.f92411h.get(0).getContent();
        }
        return this.f92412i;
    }

    public List<C13507b> getCandidates() {
        return this.f92411h;
    }

    @Override // com.sunia.calculatorv2.ink.model.AbstractC14807f
    /* renamed from: j */
    public String mo54389j() {
        return "Chemical";
    }
}
