package com.sunia.HTREnginev2;

import com.sunia.HTREnginev2.utils.LogUtil;
import com.sunia.calculatorv2.ink.graphics.BoundBox;
import com.sunia.calculatorv2.ink.model.AbstractC14807f;
import com.sunia.calculatorv2.ink.model.C14806e;
import com.sunia.calculatorv2.ink.model.C14809h;
import com.sunia.calculatorv2.ink.model.C14810i;
import com.sunia.calculatorv2.ink.model.C14811j;
import com.sunia.calculatorv2.ink.model.C14812k;
import com.sunia.calculatorv2.ink.model.C14813l;
import com.sunia.calculatorv2.ink.model.C14814m;
import com.sunia.calculatorv2.ink.model.C14815n;
import com.sunia.calculatorv2.ink.model.C14816o;
import com.sunia.calculatorv2.ink.model.C14817p;
import com.sunia.calculatorv2.ink.model.C14818q;
import com.sunia.calculatorv2.ink.model.C14819r;
import com.sunia.calculatorv2.ink.model.C14820s;
import com.sunia.calculatorv2.ink.model.C14821t;
import com.sunia.calculatorv2.ink.model.C14822u;
import com.sunia.calculatorv2.ink.model.C14823v;
import com.sunia.calculatorv2.ink.model.C14825x;
import com.sunia.calculatorv2.ink.model.C14826y;
import com.sunia.calculatorv2.ink.model.MathElement;
import com.sunia.calculatorv2.ink.util.Alternative;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.function.Function;
import java.util.stream.Stream;

/* renamed from: com.sunia.HTREnginev2.r */
/* loaded from: classes10.dex */
public class C14328r extends AbstractC14374s<AbstractC14807f> {
    /* renamed from: I0 */
    public static boolean m56801I0(AbstractC14807f<? extends AbstractC14807f> abstractC14807f) {
        if (!(abstractC14807f instanceof C14814m)) {
            return true;
        }
        Iterator<? extends AbstractC14807f> it2 = abstractC14807f.mo58831f().iterator();
        while (it2.hasNext()) {
            if (m56801I0(it2.next())) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: J0 */
    public static /* synthetic */ C13803h1 m56802J0(C13803h1 c13803h1, List list) {
        return new C13803h1(list, c13803h1.mo58830d());
    }

    /* renamed from: K0 */
    public static /* synthetic */ C14118n m56803K0(C14118n c14118n, List list) {
        return new C14118n(list, c14118n.mo58838i());
    }

    /* renamed from: L0 */
    public static /* synthetic */ MathElement m56804L0(MathElement mathElement, List list) {
        Alternative<AbstractC14807f> alternative = mathElement.getCandidates().get(0);
        BoundBox union = BoundBox.union(alternative.getContent().m58858h().stream().map(new z5p()).iterator());
        AbstractC14807f abstractC14807f = (AbstractC14807f) list.get(0);
        if (abstractC14807f instanceof C14814m) {
            List mo58831f = abstractC14807f.mo58831f();
            int size = mo58831f.size();
            while (size > 0 && (mo58831f.get(size - 1) instanceof C14810i)) {
                size--;
            }
            if (size == 0) {
                return null;
            }
            if (size < mo58831f.size()) {
                abstractC14807f = new C14814m(mo58831f.subList(0, size));
            }
            ArrayList arrayList = new ArrayList();
            if (m56814W0(abstractC14807f, arrayList)) {
                BoundBox union2 = BoundBox.union(arrayList.iterator());
                if (union2.isNonempty()) {
                    union = union2;
                }
            }
        }
        return new MathElement(Collections.singletonList(new Alternative(abstractC14807f, alternative.getConfidence())), mathElement.mo58830d(), union, null);
    }

    /* renamed from: M0 */
    public static /* synthetic */ C14806e m56805M0(C14806e c14806e, List list) {
        return new C14806e(list, c14806e.mo58838i());
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x004f  */
    /* renamed from: O0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ com.sunia.calculatorv2.ink.model.AbstractC14807f m56806O0(com.sunia.calculatorv2.ink.model.C14809h r7, java.util.List r8) {
        /*
            java.lang.String r0 = r7.mo54389j()
            java.lang.String r1 = "fraction"
            boolean r0 = r1.equals(r0)
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L24
            java.lang.Object r7 = r8.get(r2)
            com.sunia.calculatorv2.ink.model.f r7 = (com.sunia.calculatorv2.ink.model.AbstractC14807f) r7
            java.lang.Object r0 = r8.get(r1)
            com.sunia.calculatorv2.ink.model.f r0 = (com.sunia.calculatorv2.ink.model.AbstractC14807f) r0
            r1 = 2
            java.lang.Object r8 = r8.get(r1)
            com.sunia.calculatorv2.ink.model.f r8 = (com.sunia.calculatorv2.ink.model.AbstractC14807f) r8
        L21:
            r4 = r7
            r3 = r0
            goto L4d
        L24:
            java.lang.String r7 = r7.mo54389j()
            java.lang.String r0 = "partialfractiondenominator"
            boolean r7 = r0.equals(r7)
            r0 = 0
            if (r7 == 0) goto L40
            java.lang.Object r7 = r8.get(r2)
            com.sunia.calculatorv2.ink.model.f r7 = (com.sunia.calculatorv2.ink.model.AbstractC14807f) r7
            java.lang.Object r8 = r8.get(r1)
            com.sunia.calculatorv2.ink.model.f r8 = (com.sunia.calculatorv2.ink.model.AbstractC14807f) r8
            r3 = r7
            r4 = r0
            goto L4d
        L40:
            java.lang.Object r7 = r8.get(r2)
            com.sunia.calculatorv2.ink.model.f r7 = (com.sunia.calculatorv2.ink.model.AbstractC14807f) r7
            java.lang.Object r8 = r8.get(r1)
            com.sunia.calculatorv2.ink.model.f r8 = (com.sunia.calculatorv2.ink.model.AbstractC14807f) r8
            goto L21
        L4d:
            if (r8 != 0) goto L62
            if (r4 != 0) goto L52
            return r3
        L52:
            if (r3 != 0) goto L55
            return r4
        L55:
            com.sunia.calculatorv2.ink.model.p r7 = new com.sunia.calculatorv2.ink.model.p
            com.sunia.calculatorv2.ink.model.m r2 = com.sunia.calculatorv2.ink.model.C14814m.m58873l()
            r5 = 0
            r6 = 0
            r1 = r7
            r1.<init>(r2, r3, r4, r5, r6)
            return r7
        L62:
            if (r4 != 0) goto L73
            if (r3 != 0) goto L67
            return r8
        L67:
            com.sunia.calculatorv2.ink.model.h r7 = new com.sunia.calculatorv2.ink.model.h
            com.sunia.calculatorv2.ink.model.m r0 = com.sunia.calculatorv2.ink.model.C14814m.m58873l()
            com.sunia.calculatorv2.ink.model.r r8 = (com.sunia.calculatorv2.ink.model.C14819r) r8
            r7.<init>(r0, r3, r8)
            return r7
        L73:
            if (r3 != 0) goto L81
            com.sunia.calculatorv2.ink.model.h r7 = new com.sunia.calculatorv2.ink.model.h
            com.sunia.calculatorv2.ink.model.m r0 = com.sunia.calculatorv2.ink.model.C14814m.m58873l()
            com.sunia.calculatorv2.ink.model.r r8 = (com.sunia.calculatorv2.ink.model.C14819r) r8
            r7.<init>(r4, r0, r8)
            return r7
        L81:
            com.sunia.calculatorv2.ink.model.h r7 = new com.sunia.calculatorv2.ink.model.h
            com.sunia.calculatorv2.ink.model.r r8 = (com.sunia.calculatorv2.ink.model.C14819r) r8
            r7.<init>(r4, r3, r8)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.C14328r.m56806O0(com.sunia.calculatorv2.ink.model.h, java.util.List):com.sunia.calculatorv2.ink.model.f");
    }

    /* renamed from: P0 */
    public static /* synthetic */ AbstractC14807f m56807P0(C14811j c14811j, List list) {
        AbstractC14807f abstractC14807f = (AbstractC14807f) list.get(0);
        AbstractC14807f abstractC14807f2 = (AbstractC14807f) list.get(1);
        return abstractC14807f2 == null ? abstractC14807f : abstractC14807f == null ? abstractC14807f2 : abstractC14807f instanceof C14815n ? new C14811j(((C14815n) abstractC14807f).m58881m(), abstractC14807f2, c14811j.m58866m()) : C14814m.m58872b((List<? extends AbstractC14807f>) Arrays.asList(abstractC14807f2, abstractC14807f));
    }

    /* renamed from: Q0 */
    public static /* synthetic */ AbstractC14807f m56808Q0(C14816o c14816o, List list) {
        AbstractC14807f abstractC14807f = (AbstractC14807f) list.get(0);
        AbstractC14807f abstractC14807f2 = (AbstractC14807f) list.get(1);
        boolean m58884n = c14816o.m58884n();
        boolean m58885o = c14816o.m58885o();
        return abstractC14807f2 == null ? abstractC14807f : abstractC14807f == null ? new C14816o(C14814m.m58873l(), abstractC14807f2, m58884n, m58885o) : new C14816o(abstractC14807f, abstractC14807f2, m58884n, m58885o);
    }

    /* renamed from: R0 */
    public static /* synthetic */ AbstractC14807f m56809R0(C14817p c14817p, List list) {
        AbstractC14807f abstractC14807f = (AbstractC14807f) list.get(0);
        AbstractC14807f abstractC14807f2 = (AbstractC14807f) list.get(1);
        AbstractC14807f abstractC14807f3 = (AbstractC14807f) list.get(2);
        boolean m58889o = c14817p.m58889o();
        boolean m58890p = c14817p.m58890p();
        return abstractC14807f == null ? abstractC14807f3 == null ? new C14816o(C14814m.m58873l(), abstractC14807f2, m58889o, m58890p) : abstractC14807f2 == null ? new C14818q(C14814m.m58873l(), abstractC14807f3, m58889o, m58890p) : new C14817p(C14814m.m58873l(), abstractC14807f2, abstractC14807f3, m58889o, m58890p) : abstractC14807f2 == null ? abstractC14807f3 == null ? abstractC14807f : new C14818q(abstractC14807f, abstractC14807f3, m58889o, m58890p) : abstractC14807f3 == null ? new C14816o(abstractC14807f, abstractC14807f2, m58889o, m58890p) : new C14817p(abstractC14807f, abstractC14807f2, abstractC14807f3, m58889o, m58890p);
    }

    /* renamed from: S0 */
    public static /* synthetic */ AbstractC14807f m56810S0(C14818q c14818q, List list) {
        AbstractC14807f abstractC14807f = (AbstractC14807f) list.get(0);
        AbstractC14807f abstractC14807f2 = (AbstractC14807f) list.get(1);
        boolean m58893n = c14818q.m58893n();
        boolean m58894o = c14818q.m58894o();
        return abstractC14807f2 == null ? abstractC14807f : abstractC14807f == null ? new C14818q(C14814m.m58873l(), abstractC14807f2, m58893n, m58894o) : new C14818q(abstractC14807f, abstractC14807f2, m58893n, m58894o);
    }

    /* renamed from: T0 */
    public static /* synthetic */ C14821t m56811T0(List list) {
        ArrayList arrayList = new ArrayList(list.size());
        ArrayList arrayList2 = new ArrayList();
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            AbstractC14807f abstractC14807f = (AbstractC14807f) it2.next();
            ArrayList arrayList3 = new ArrayList();
            boolean z = false;
            for (AbstractC14807f abstractC14807f2 : abstractC14807f.mo58831f()) {
                int size = arrayList3.size();
                if (size >= arrayList2.size()) {
                    arrayList2.add(Boolean.TRUE);
                }
                if (abstractC14807f2 == null) {
                    arrayList3.add(C14814m.m58873l());
                } else {
                    if (m56801I0(abstractC14807f2)) {
                        arrayList2.set(size, Boolean.FALSE);
                        z = true;
                    }
                    arrayList3.add(abstractC14807f2);
                }
            }
            if (z) {
                arrayList.add(new C14822u(arrayList3));
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        ArrayList arrayList4 = new ArrayList();
        for (int size2 = arrayList2.size() - 1; size2 >= 0; size2--) {
            if (((Boolean) arrayList2.get(size2)).booleanValue()) {
                arrayList4.add(Integer.valueOf(size2));
            }
        }
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            List<AbstractC14807f> mo58831f = ((C14822u) it3.next()).mo58831f();
            Iterator it4 = arrayList4.iterator();
            while (it4.hasNext()) {
                int intValue = ((Integer) it4.next()).intValue();
                if (intValue < mo58831f.size()) {
                    mo58831f.remove(intValue);
                }
            }
        }
        return new C14821t(arrayList);
    }

    /* renamed from: U0 */
    public static /* synthetic */ C14825x m56812U0(C14825x c14825x, List list) {
        Alternative<List<C14826y>> alternative = c14825x.getCandidates().get(0);
        return new C14825x(Collections.singletonList(new Alternative(list, alternative.getConfidence())), c14825x.mo58830d(), BoundBox.union(alternative.getContent().stream().flatMap(new Function() { // from class: com.sunia.HTREnginev2.m5p
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Stream m56816Z0;
                m56816Z0 = C14328r.m56816Z0((C14826y) obj);
                return m56816Z0;
            }
        }).map(new z5p()).iterator()));
    }

    /* renamed from: V0 */
    public static /* synthetic */ C14826y m56813V0(C14826y c14826y, List list) {
        return new C14826y(Collections.singletonList(new Alternative(list, c14826y.getCandidates().get(0).getConfidence())));
    }

    /* renamed from: W0 */
    public static boolean m56814W0(AbstractC14807f<? extends AbstractC14807f> abstractC14807f, List<BoundBox> list) {
        if (abstractC14807f instanceof C14819r) {
            Iterator<? extends AbstractC13961k> it2 = abstractC14807f.mo58829c().iterator();
            while (it2.hasNext()) {
                list.add(it2.next().m55095b());
            }
            return !r3.isEmpty();
        }
        Iterator<? extends AbstractC14807f> it3 = abstractC14807f.mo58831f().iterator();
        while (it3.hasNext()) {
            if (!m56814W0(it3.next(), list)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: Y0 */
    public static /* synthetic */ C14820s m56815Y0(List list) {
        return new C14820s((AbstractC14807f) list.get(0));
    }

    /* renamed from: Z0 */
    public static /* synthetic */ Stream m56816Z0(C14826y c14826y) {
        return c14826y.m58858h().stream();
    }

    /* renamed from: a1 */
    public static /* synthetic */ AbstractC14807f m56817a1(List list) {
        AbstractC14807f abstractC14807f = (AbstractC14807f) list.get(0);
        AbstractC14807f abstractC14807f2 = (AbstractC14807f) list.get(1);
        return abstractC14807f2 == null ? abstractC14807f : abstractC14807f == null ? new C14823v(C14814m.m58873l(), (C14819r) abstractC14807f2) : new C14823v(abstractC14807f, (C14819r) abstractC14807f2);
    }

    /* renamed from: b1 */
    public static /* synthetic */ C14810i m56818b1(List list) {
        return new C14810i((AbstractC14807f) list.get(0));
    }

    /* renamed from: c1 */
    public static /* synthetic */ C14812k m56819c1(List list) {
        return new C14812k((AbstractC14807f) list.get(0));
    }

    /* renamed from: d1 */
    public static /* synthetic */ AbstractC14807f m56820d1(List list) {
        AbstractC14807f abstractC14807f = (AbstractC14807f) list.get(0);
        AbstractC14807f abstractC14807f2 = (AbstractC14807f) list.get(1);
        return abstractC14807f2 == null ? abstractC14807f : abstractC14807f == null ? new C14813l(C14814m.m58873l(), (C14819r) abstractC14807f2) : new C14813l(abstractC14807f, (C14819r) abstractC14807f2);
    }

    /* renamed from: e1 */
    public static /* synthetic */ AbstractC14807f m56821e1(List list) {
        AbstractC14807f abstractC14807f = (AbstractC14807f) list.get(0);
        AbstractC14807f abstractC14807f2 = (AbstractC14807f) list.get(1);
        return abstractC14807f == null ? new C14815n(C14814m.m58873l(), (C14819r) abstractC14807f2) : abstractC14807f2 == null ? abstractC14807f : new C14815n(abstractC14807f, (C14819r) abstractC14807f2);
    }

    @Override // com.sunia.HTREnginev2.AbstractC14374s
    /* renamed from: J, reason: merged with bridge method [inline-methods] */
    public AbstractC14807f mo56833H(AbstractC14807f<? extends AbstractC14807f> abstractC14807f) {
        return abstractC14807f;
    }

    /* renamed from: N0 */
    public final <T extends AbstractC14807f> T m56835N0(T t, Function<List<AbstractC14807f>, T> function) {
        List mo58831f = t.mo58831f();
        ListIterator listIterator = mo58831f.listIterator();
        ArrayList arrayList = null;
        while (listIterator.hasNext()) {
            AbstractC14807f abstractC14807f = (AbstractC14807f) listIterator.next();
            AbstractC14807f mo57108G = mo57108G(abstractC14807f);
            if (mo57108G != abstractC14807f) {
                if (arrayList == null) {
                    arrayList = new ArrayList(mo58831f.size());
                    arrayList.addAll(mo58831f.subList(0, listIterator.previousIndex()));
                }
                if (mo57108G != null) {
                    arrayList.add(mo57108G);
                }
            } else if (arrayList != null) {
                arrayList.add(abstractC14807f);
            }
        }
        if (arrayList == null) {
            return t;
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return function.apply(arrayList);
    }

    /* renamed from: X0 */
    public final <T extends AbstractC14807f> T m56836X0(T t, Function<List<AbstractC14807f>, T> function) {
        List mo58831f = t.mo58831f();
        ListIterator listIterator = mo58831f.listIterator();
        boolean z = true;
        ArrayList arrayList = null;
        while (listIterator.hasNext()) {
            AbstractC14807f abstractC14807f = (AbstractC14807f) listIterator.next();
            AbstractC14807f mo57108G = mo57108G(abstractC14807f);
            if (mo57108G != abstractC14807f) {
                if (arrayList == null) {
                    arrayList = new ArrayList(mo58831f.size());
                    arrayList.addAll(mo58831f.subList(0, listIterator.previousIndex()));
                }
                arrayList.add(mo57108G);
            } else if (arrayList != null) {
                arrayList.add(abstractC14807f);
            }
            if (mo57108G != null) {
                z = false;
            }
        }
        if (arrayList == null) {
            return t;
        }
        if (!z) {
            return function.apply(arrayList);
        }
        LogUtil.m57656i("ElementModifier", "Deleted: " + t);
        return null;
    }

    @Override // com.sunia.HTREnginev2.AbstractC14374s
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public AbstractC14807f m57057Q(C14068m c14068m) {
        return m56835N0(c14068m, new Function() { // from class: com.sunia.HTREnginev2.h5p
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return new C14068m((List) obj);
            }
        });
    }

    @Override // com.sunia.HTREnginev2.AbstractC14374s
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public AbstractC14807f m57094n0(final C14826y c14826y) {
        return m56835N0(c14826y, new Function() { // from class: com.sunia.HTREnginev2.l5p
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                C14826y m56813V0;
                m56813V0 = C14328r.m56813V0(C14826y.this, (List) obj);
                return m56813V0;
            }
        });
    }

    @Override // com.sunia.HTREnginev2.AbstractC14374s
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public AbstractC14807f m57050I(final C14118n c14118n) {
        return m56835N0(c14118n, new Function() { // from class: com.sunia.HTREnginev2.j5p
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                C14118n m56803K0;
                m56803K0 = C14328r.m56803K0(C14118n.this, (List) obj);
                return m56803K0;
            }
        });
    }

    @Override // com.sunia.HTREnginev2.AbstractC14374s
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public C14806e m57051K(final C14806e c14806e) {
        C14806e c14806e2 = (C14806e) m56835N0(c14806e, new Function() { // from class: com.sunia.HTREnginev2.t5p
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                C14806e m56805M0;
                m56805M0 = C14328r.m56805M0(C14806e.this, (List) obj);
                return m56805M0;
            }
        });
        return c14806e2 != null ? c14806e2 : C14806e.f92421g;
    }

    @Override // com.sunia.HTREnginev2.AbstractC14374s
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public AbstractC14807f m57052L(C14162o c14162o) {
        return m56835N0(c14162o, new Function() { // from class: com.sunia.HTREnginev2.e5p
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return new C14162o((List) obj);
            }
        });
    }

    @Override // com.sunia.HTREnginev2.AbstractC14374s
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public AbstractC14807f m57054N(C13802h0 c13802h0) {
        return m56835N0(c13802h0, new Function() { // from class: com.sunia.HTREnginev2.g5p
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return new C13802h0((List) obj);
            }
        });
    }

    @Override // com.sunia.HTREnginev2.AbstractC14374s
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public AbstractC14807f m57055O(C14022l0 c14022l0) {
        return m56835N0(c14022l0, new Function() { // from class: com.sunia.HTREnginev2.n5p
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return new C14022l0((List) obj);
            }
        });
    }

    @Override // com.sunia.HTREnginev2.AbstractC14374s
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public AbstractC14807f m57058R(final MathElement mathElement) {
        return m56835N0(mathElement, new Function() { // from class: com.sunia.HTREnginev2.k5p
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                MathElement m56804L0;
                m56804L0 = C14328r.m56804L0(MathElement.this, (List) obj);
                return m56804L0;
            }
        });
    }

    @Override // com.sunia.HTREnginev2.AbstractC14374s
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public AbstractC14807f m57059S(final C14809h c14809h) {
        return m56836X0(c14809h, new Function() { // from class: com.sunia.HTREnginev2.o5p
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                AbstractC14807f m56806O0;
                m56806O0 = C14328r.m56806O0(C14809h.this, (List) obj);
                return m56806O0;
            }
        });
    }

    @Override // com.sunia.HTREnginev2.AbstractC14374s
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public AbstractC14807f m57060T(C14810i c14810i) {
        return m56835N0(c14810i, new Function() { // from class: com.sunia.HTREnginev2.v5p
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                C14810i m56818b1;
                m56818b1 = C14328r.m56818b1((List) obj);
                return m56818b1;
            }
        });
    }

    @Override // com.sunia.HTREnginev2.AbstractC14374s
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public AbstractC14807f m57061U(final C14811j c14811j) {
        return m56836X0(c14811j, new Function() { // from class: com.sunia.HTREnginev2.f6p
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                AbstractC14807f m56807P0;
                m56807P0 = C14328r.m56807P0(C14811j.this, (List) obj);
                return m56807P0;
            }
        });
    }

    @Override // com.sunia.HTREnginev2.AbstractC14374s
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public AbstractC14807f m57062V(C14812k c14812k) {
        return m56835N0(c14812k, new Function() { // from class: com.sunia.HTREnginev2.d6p
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                C14812k m56819c1;
                m56819c1 = C14328r.m56819c1((List) obj);
                return m56819c1;
            }
        });
    }

    @Override // com.sunia.HTREnginev2.AbstractC14374s
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public AbstractC14807f m57063W(C14813l c14813l) {
        return m56836X0(c14813l, new Function() { // from class: com.sunia.HTREnginev2.s5p
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                AbstractC14807f m56820d1;
                m56820d1 = C14328r.m56820d1((List) obj);
                return m56820d1;
            }
        });
    }

    @Override // com.sunia.HTREnginev2.AbstractC14374s
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public AbstractC14807f m57064X(C14814m c14814m) {
        return m56835N0(c14814m, new Function() { // from class: com.sunia.HTREnginev2.p5p
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return C14814m.m58872b((List<? extends AbstractC14807f>) obj);
            }
        });
    }

    @Override // com.sunia.HTREnginev2.AbstractC14374s
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public AbstractC14807f m57065Y(C14815n c14815n) {
        return m56836X0(c14815n, new Function() { // from class: com.sunia.HTREnginev2.r5p
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                AbstractC14807f m56821e1;
                m56821e1 = C14328r.m56821e1((List) obj);
                return m56821e1;
            }
        });
    }

    @Override // com.sunia.HTREnginev2.AbstractC14374s
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public AbstractC14807f m57066Z(final C14816o c14816o) {
        return m56836X0(c14816o, new Function() { // from class: com.sunia.HTREnginev2.e6p
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                AbstractC14807f m56808Q0;
                m56808Q0 = C14328r.m56808Q0(C14816o.this, (List) obj);
                return m56808Q0;
            }
        });
    }

    @Override // com.sunia.HTREnginev2.AbstractC14374s
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public AbstractC14807f m57068a0(final C14817p c14817p) {
        return m56836X0(c14817p, new Function() { // from class: com.sunia.HTREnginev2.u5p
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                AbstractC14807f m56809R0;
                m56809R0 = C14328r.m56809R0(C14817p.this, (List) obj);
                return m56809R0;
            }
        });
    }

    @Override // com.sunia.HTREnginev2.AbstractC14374s
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public AbstractC14807f m57072c0(final C14818q c14818q) {
        return m56836X0(c14818q, new Function() { // from class: com.sunia.HTREnginev2.x5p
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                AbstractC14807f m56810S0;
                m56810S0 = C14328r.m56810S0(C14818q.this, (List) obj);
                return m56810S0;
            }
        });
    }

    @Override // com.sunia.HTREnginev2.AbstractC14374s
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public AbstractC14807f m57076e0(C14821t c14821t) {
        return m56835N0(c14821t, new Function() { // from class: com.sunia.HTREnginev2.b6p
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                C14821t m56811T0;
                m56811T0 = C14328r.m56811T0((List) obj);
                return m56811T0;
            }
        });
    }

    @Override // com.sunia.HTREnginev2.AbstractC14374s
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public AbstractC14807f m57078f0(C14820s c14820s) {
        return m56835N0(c14820s, new Function() { // from class: com.sunia.HTREnginev2.f5p
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                C14820s m56815Y0;
                m56815Y0 = C14328r.m56815Y0((List) obj);
                return m56815Y0;
            }
        });
    }

    @Override // com.sunia.HTREnginev2.AbstractC14374s
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public AbstractC14807f m57080g0(C14822u c14822u) {
        return m56836X0(c14822u, new Function() { // from class: com.sunia.HTREnginev2.i5p
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return new C14822u((List) obj);
            }
        });
    }

    @Override // com.sunia.HTREnginev2.AbstractC14374s
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public AbstractC14807f m57082h0(C14823v c14823v) {
        return m56836X0(c14823v, new Function() { // from class: com.sunia.HTREnginev2.q5p
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                AbstractC14807f m56817a1;
                m56817a1 = C14328r.m56817a1((List) obj);
                return m56817a1;
            }
        });
    }

    @Override // com.sunia.HTREnginev2.AbstractC14374s
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public AbstractC14807f m57084i0(final C13803h1 c13803h1) {
        return m56835N0(c13803h1, new Function() { // from class: com.sunia.HTREnginev2.y5p
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                C13803h1 m56802J0;
                m56802J0 = C14328r.m56802J0(C13803h1.this, (List) obj);
                return m56802J0;
            }
        });
    }

    @Override // com.sunia.HTREnginev2.AbstractC14374s
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public AbstractC14807f m57086j0(C14072m1 c14072m1) {
        return m56835N0(c14072m1, new Function() { // from class: com.sunia.HTREnginev2.c6p
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return new C14072m1((List) obj);
            }
        });
    }

    @Override // com.sunia.HTREnginev2.AbstractC14374s
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public AbstractC14807f m57088k0(C14120n1 c14120n1) {
        return m56835N0(c14120n1, new Function() { // from class: com.sunia.HTREnginev2.w5p
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return new C14120n1((List) obj);
            }
        });
    }

    @Override // com.sunia.HTREnginev2.AbstractC14374s
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public AbstractC14807f m57096o0(final C14825x c14825x) {
        return m56835N0(c14825x, new Function() { // from class: com.sunia.HTREnginev2.a6p
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                C14825x m56812U0;
                m56812U0 = C14328r.m56812U0(C14825x.this, (List) obj);
                return m56812U0;
            }
        });
    }
}
