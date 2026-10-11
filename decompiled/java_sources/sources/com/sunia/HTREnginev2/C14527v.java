package com.sunia.HTREnginev2;

import com.sunia.calculatorv2.ink.model.AbstractC14807f;
import com.sunia.calculatorv2.ink.model.C14806e;
import com.sunia.calculatorv2.ink.util.Pair;
import java.util.HashSet;

/* renamed from: com.sunia.HTREnginev2.v */
/* loaded from: classes10.dex */
public class C14527v {

    /* renamed from: com.sunia.HTREnginev2.v$a */
    /* loaded from: classes10.dex */
    public class a extends C14328r {

        /* renamed from: b */
        public final /* synthetic */ HashSet f86999b;

        public a(HashSet hashSet) {
            this.f86999b = hashSet;
        }

        @Override // com.sunia.HTREnginev2.AbstractC14374s
        /* renamed from: f1, reason: merged with bridge method [inline-methods] */
        public AbstractC14807f mo57108G(AbstractC14807f<? extends AbstractC14807f> abstractC14807f) {
            if (this.f86999b.contains(abstractC14807f)) {
                return null;
            }
            return (AbstractC14807f) super.mo57108G(abstractC14807f);
        }
    }

    /* renamed from: a */
    public static Pair<C14806e, Boolean> m57724a(HashSet<AbstractC14807f> hashSet, AbstractC14807f abstractC14807f) {
        C14806e c14806e = (C14806e) new a(hashSet).mo57108G(abstractC14807f);
        if (c14806e == null) {
            c14806e = C14806e.f92421g;
        }
        return new Pair<>(c14806e, Boolean.valueOf(c14806e != abstractC14807f));
    }
}
