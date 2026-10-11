package com.sunia.calculatorv2.ink.model;

import com.google.android.material.motion.MotionUtils;
import com.sunia.HTREnginev2.C13507b;
import com.sunia.HTREnginev2.C14219p1;
import com.sunia.HTREnginev2.InterfaceC13597d0;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.Vector;
import org.apache.commons.collections4.IteratorUtils;

/* renamed from: com.sunia.calculatorv2.ink.model.r */
/* loaded from: classes10.dex */
public class C14819r extends AbstractC14808g implements InterfaceC13597d0 {

    /* renamed from: i */
    public static final Set<String> f92460i;

    /* renamed from: j */
    public static final Set<String> f92461j;

    /* renamed from: h */
    public final List<C13507b> f92462h;

    static {
        HashSet hashSet = new HashSet();
        f92460i = hashSet;
        HashSet hashSet2 = new HashSet();
        f92461j = hashSet2;
        hashSet.add(MotionUtils.f31761c);
        hashSet.add(IteratorUtils.f104923a);
        hashSet.add("{");
        hashSet.add("⌊");
        hashSet.add("⌈");
        hashSet.add("〈");
        hashSet.add("⟦");
        hashSet2.add(MotionUtils.f31762d);
        hashSet2.add(IteratorUtils.f104924b);
        hashSet2.add("}");
        hashSet2.add("⌋");
        hashSet2.add("⌉");
        hashSet2.add("〉");
        hashSet2.add("⟧");
    }

    public C14819r(List<C13507b> list, List<C14219p1> list2) {
        super(new Vector(1), list2);
        this.f92462h = list;
    }

    /* renamed from: b */
    public static boolean m58896b(String str) {
        return f92460i.contains(str);
    }

    @Override // com.sunia.HTREnginev2.InterfaceC13597d0
    /* renamed from: a */
    public String mo53565a() {
        return this.f92462h.isEmpty() ? "" : this.f92462h.get(0).m53112a();
    }

    public List<C13507b> getCandidates() {
        return this.f92462h;
    }

    @Override // com.sunia.calculatorv2.ink.model.AbstractC14807f
    /* renamed from: j */
    public String mo54389j() {
        return "symbol";
    }

    /* renamed from: l */
    public double m58897l() {
        if (this.f92462h.isEmpty()) {
            return 0.0d;
        }
        return this.f92462h.get(0).getConfidence();
    }

    /* renamed from: a */
    public static boolean m58895a(String str) {
        return f92461j.contains(str);
    }
}
