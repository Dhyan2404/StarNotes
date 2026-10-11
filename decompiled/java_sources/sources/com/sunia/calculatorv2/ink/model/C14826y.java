package com.sunia.calculatorv2.ink.model;

import com.sunia.calculatorv2.ink.model.C14824w;
import com.sunia.calculatorv2.ink.util.Alternative;
import java.util.Collections;
import java.util.List;
import java.util.function.Function;
import java.util.stream.Collectors;

/* renamed from: com.sunia.calculatorv2.ink.model.y */
/* loaded from: classes10.dex */
public class C14826y extends AbstractC14807f<C14824w> {

    /* renamed from: e */
    public final List<Alternative<List<C14824w>>> f92478e;

    /* renamed from: f */
    public String f92479f;

    public C14826y(List<Alternative<List<C14824w>>> list) {
        this.f92478e = list;
    }

    /* renamed from: a */
    public String m58905a() {
        if (this.f92479f == null) {
            if (this.f92478e.isEmpty()) {
                return "";
            }
            this.f92479f = (String) this.f92478e.get(0).getContent().stream().map(new Function() { // from class: com.sunia.HTREnginev2.t8p
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return ((C14824w) obj).m58902a();
                }
            }).collect(Collectors.joining());
        }
        return this.f92479f;
    }

    @Override // com.sunia.calculatorv2.ink.model.AbstractC14807f
    /* renamed from: f */
    public List<C14824w> mo58831f() {
        return this.f92478e.isEmpty() ? Collections.emptyList() : this.f92478e.get(0).getContent();
    }

    public List<Alternative<List<C14824w>>> getCandidates() {
        return this.f92478e;
    }

    @Override // com.sunia.calculatorv2.ink.model.AbstractC14807f
    /* renamed from: j */
    public String mo54389j() {
        return "word";
    }
}
