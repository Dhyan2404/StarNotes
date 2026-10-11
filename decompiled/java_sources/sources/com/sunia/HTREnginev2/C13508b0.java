package com.sunia.HTREnginev2;

import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.sunia.HTREnginev2.utils.LogUtil;
import com.sunia.calculatorv2.ink.graphics.BoundBox;
import com.sunia.calculatorv2.ink.model.AbstractC14807f;
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
import com.sunia.calculatorv2.ink.model.MathElement;
import com.sunia.calculatorv2.ink.util.Alternative;
import com.sunia.calculatorv2.ink.util.Pair;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import java.util.function.ToDoubleFunction;
import java.util.function.ToIntFunction;
import java.util.stream.Collectors;
import java.util.stream.Stream;

/* renamed from: com.sunia.HTREnginev2.b0 */
/* loaded from: classes10.dex */
public class C13508b0 {

    /* renamed from: a */
    public static final Map<String, String> f65245a;

    /* renamed from: b */
    public static final Map<String, String> f65246b;

    static {
        HashMap hashMap = new HashMap();
        f65245a = hashMap;
        HashMap hashMap2 = new HashMap();
        f65246b = hashMap2;
        hashMap.put(".", "˙");
        hashMap.put("-", "‾");
        hashMap.put("∼", "~");
        hashMap.put("∧", "ˆ");
        hashMap.put("∨", "ˇ");
        hashMap.put("v", "ˇ");
        hashMap.put("/", "´");
        hashMap.put("\\", "`");
        hashMap.put("U", "˘");
        hashMap.put("→", "→");
        hashMap.put(C4921e.f26528e, "˚");
        hashMap.put(BaseTLSIdentity.CERT_ATTRIBUTE_ORGANIZATION, "˚");
        hashMap.put("0", "˚");
        hashMap.put("°", "˚");
        hashMap2.put("-", "_");
    }

    /* renamed from: A */
    public static C14819r m53114A(AbstractC14807f abstractC14807f) {
        if (abstractC14807f instanceof C14819r) {
            C14819r c14819r = (C14819r) abstractC14807f;
            String str = f65245a.get(c14819r.mo53565a());
            if (str != null) {
                return new C14819r(Collections.singletonList(new C13507b(str, c14819r.m58897l())), abstractC14807f.mo58830d());
            }
            return null;
        }
        if (!(abstractC14807f instanceof C14814m)) {
            return null;
        }
        List mo58831f = abstractC14807f.mo58831f();
        if (mo58831f.size() == 1) {
            return m53114A((AbstractC14807f) mo58831f.get(0));
        }
        return null;
    }

    /* renamed from: B */
    public static List<Pair<Pair<AbstractC14807f, Boolean>, int[]>> m53115B(List<Pair<AbstractC14807f, Boolean>> list, List<AbstractC14807f> list2, List<AbstractC14807f> list3, Function<AbstractC14807f, BoundBox> function) {
        char c;
        int i;
        int i2;
        int i3;
        int i4;
        boolean z;
        int i5;
        List<AbstractC14807f> list4 = list2;
        int size = list2.size();
        float[] fArr = new float[size + 1];
        char c2 = 0;
        fArr[0] = function.apply(list4.get(0)).getLeft();
        int i6 = 1;
        for (int i7 = 1; i7 < size; i7++) {
            fArr[i7] = (function.apply(list4.get(i7 - 1)).getRight() + function.apply(list4.get(i7)).getLeft()) * 0.5f;
        }
        fArr[size] = function.apply(list4.get(size - 1)).getRight();
        ArrayList arrayList = new ArrayList(list.size());
        for (Pair<AbstractC14807f, Boolean> pair : list) {
            int[] m53149y = m53149y(pair.getKey(), fArr, list4, function);
            if (pair.getValue().booleanValue() && (pair.getKey() instanceof C14814m) && (i4 = (i2 = m53149y[i6]) - (i3 = m53149y[c2])) >= i6) {
                ArrayList<AbstractC14807f> arrayList2 = new ArrayList(pair.getKey().mo58831f().size());
                m53148x(pair.getKey().mo58831f(), arrayList2);
                ArrayList<Pair> arrayList3 = new ArrayList(arrayList2.size());
                int i8 = -1;
                int i9 = -1;
                for (AbstractC14807f abstractC14807f : arrayList2) {
                    if (!(abstractC14807f instanceof C14810i)) {
                        int[] m53149y2 = m53149y(abstractC14807f, fArr, list4, function);
                        int i10 = m53149y2[0];
                        if (i10 < i8 || (i5 = m53149y2[1]) < i9) {
                            z = false;
                            break;
                        }
                        arrayList3.add(new Pair(new Pair(abstractC14807f, Boolean.TRUE), m53149y2));
                        i8 = i10;
                        list4 = list2;
                        i9 = i5;
                    }
                }
                z = true;
                if (!z) {
                    c = 0;
                    i = 1;
                    arrayList.add(new Pair(pair, m53149y));
                } else if (i4 == 1) {
                    ArrayList arrayList4 = new ArrayList();
                    for (Pair pair2 : arrayList3) {
                        int[] iArr = (int[]) pair2.getValue();
                        int i11 = iArr[0];
                        int i12 = iArr[1];
                        if (i11 == i3 && i12 == i2) {
                            arrayList4.add((AbstractC14807f) ((Pair) pair2.getKey()).getKey());
                        } else {
                            arrayList.add(pair2);
                        }
                    }
                    c = 0;
                    i = 1;
                    if (!arrayList4.isEmpty()) {
                        arrayList.add(new Pair(new Pair(C14814m.m58872b(arrayList4), Boolean.TRUE), m53149y));
                    }
                } else {
                    i = 1;
                    c = 0;
                    arrayList.addAll(arrayList3);
                }
            } else {
                c = c2;
                i = i6;
                arrayList.add(new Pair(pair, m53149y));
            }
            list4 = list2;
            c2 = c;
            i6 = i;
        }
        return arrayList;
    }

    /* renamed from: C */
    public static boolean m53116C(AbstractC14807f<? extends AbstractC14807f> abstractC14807f) {
        if (!(abstractC14807f instanceof C14814m)) {
            return false;
        }
        Iterator<? extends AbstractC14807f> it2 = abstractC14807f.mo58831f().iterator();
        while (it2.hasNext()) {
            if (!m53116C(it2.next())) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: D */
    public static boolean m53117D(AbstractC14807f<? extends AbstractC14807f> abstractC14807f) {
        if (abstractC14807f instanceof C14819r) {
            return true;
        }
        List<? extends AbstractC14807f> mo58831f = abstractC14807f.mo58831f();
        if (mo58831f.size() == 1) {
            return m53117D(mo58831f.get(0));
        }
        return false;
    }

    /* renamed from: E */
    public static Pair<AbstractC14807f, C14819r> m53118E(AbstractC14807f<? extends AbstractC14807f> abstractC14807f) {
        if (abstractC14807f instanceof C14809h) {
            C14809h c14809h = (C14809h) abstractC14807f;
            if (m53116C(c14809h.m58863n())) {
                return new Pair<>(c14809h.m58861l(), c14809h.m58862m());
            }
            return null;
        }
        if (abstractC14807f instanceof C14813l) {
            C14813l c14813l = (C14813l) abstractC14807f;
            C14819r m58870l = c14813l.m58870l();
            if ("‾".equals(m58870l.mo53565a())) {
                return new Pair<>(c14813l.m58871m(), new C14819r(Collections.singletonList(new C13507b("-", m58870l.m58897l())), m58870l.mo58830d()));
            }
            return null;
        }
        if (abstractC14807f instanceof C14814m) {
            List<? extends AbstractC14807f> mo58831f = abstractC14807f.mo58831f();
            if (mo58831f.size() == 1) {
                return m53118E(mo58831f.get(0));
            }
        }
        return null;
    }

    /* renamed from: F */
    public static Pair<AbstractC14807f, C14819r> m53119F(AbstractC14807f<? extends AbstractC14807f> abstractC14807f) {
        if (abstractC14807f instanceof C14809h) {
            C14809h c14809h = (C14809h) abstractC14807f;
            if (m53116C(c14809h.m58861l())) {
                return new Pair<>(c14809h.m58863n(), c14809h.m58862m());
            }
            return null;
        }
        if (abstractC14807f instanceof C14823v) {
            C14823v c14823v = (C14823v) abstractC14807f;
            C14819r m58900l = c14823v.m58900l();
            if ("_".equals(m58900l.mo53565a())) {
                return new Pair<>(c14823v.m58901m(), new C14819r(Collections.singletonList(new C13507b("-", m58900l.m58897l())), m58900l.mo58830d()));
            }
            return null;
        }
        if (abstractC14807f instanceof C14814m) {
            List<? extends AbstractC14807f> mo58831f = abstractC14807f.mo58831f();
            if (mo58831f.size() == 1) {
                return m53119F(mo58831f.get(0));
            }
        }
        return null;
    }

    /* renamed from: e */
    public static /* synthetic */ double m53128e(MathElement mathElement) {
        return mathElement.mo58856e().getLeft();
    }

    /* renamed from: f */
    public static /* synthetic */ int m53129f(Pair pair) {
        return ((int[]) pair.getValue())[0];
    }

    /* renamed from: g */
    public static AbstractC14807f m53130g(AbstractC14807f<? extends AbstractC14807f> abstractC14807f, AbstractC14807f<? extends AbstractC14807f> abstractC14807f2, AbstractC14807f<? extends AbstractC14807f> abstractC14807f3, boolean z, boolean z2) {
        if (!z) {
            Pair<AbstractC14807f, C14819r> m53119F = m53119F(abstractC14807f3);
            Pair<AbstractC14807f, C14819r> m53118E = m53118E(abstractC14807f2);
            if (m53119F != null) {
                return new C14814m(Arrays.asList(abstractC14807f, new C14809h(m53119F.getKey(), abstractC14807f2, m53119F.getValue())));
            }
            if (m53118E != null) {
                return new C14814m(Arrays.asList(abstractC14807f, new C14809h(abstractC14807f3, m53118E.getKey(), m53118E.getValue())));
            }
        }
        return new C14817p(abstractC14807f, abstractC14807f2, abstractC14807f3, z, z2);
    }

    /* renamed from: h */
    public static AbstractC14807f<?> m53131h(AbstractC14807f<? extends AbstractC14807f> abstractC14807f) {
        if (!(abstractC14807f instanceof C14814m)) {
            return abstractC14807f;
        }
        List<? extends AbstractC14807f> mo58831f = abstractC14807f.mo58831f();
        return mo58831f.size() == 1 ? m53131h(mo58831f.get(0)) : abstractC14807f;
    }

    /* renamed from: i */
    public static AbstractC14807f m53133i(List<Pair<AbstractC14807f, Boolean>> list, C14810i c14810i, List<AbstractC14807f> list2, Function<AbstractC14807f, BoundBox> function) {
        return m53145u(list, Collections.emptyList(), list2, function);
    }

    /* renamed from: j */
    public static AbstractC14807f m53134j(List<Pair<AbstractC14807f, Boolean>> list, C14811j c14811j, List<AbstractC14807f> list2, Function<AbstractC14807f, BoundBox> function) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        BoundBox apply = function.apply(c14811j.m58867n());
        BoundBox apply2 = function.apply(c14811j.m58865l());
        if (apply.isNonempty()) {
            for (Pair<AbstractC14807f, Boolean> pair : list) {
                BoundBox mo58856e = pair.getKey().mo58856e();
                if (mo58856e.getRight() <= apply.getLeft()) {
                    arrayList2.add(pair);
                } else {
                    if (mo58856e.getLeft() < apply2.getRight()) {
                        return m53145u(list, Collections.singletonList(c14811j), list2, function);
                    }
                    arrayList.add(pair);
                }
            }
        } else {
            for (Pair<AbstractC14807f, Boolean> pair2 : list) {
                if (pair2.getKey().mo58856e().getLeft() >= apply2.getRight()) {
                    arrayList.add(pair2);
                } else {
                    arrayList2.add(pair2);
                }
            }
        }
        return new C14811j(m53121a(arrayList, c14811j.m58867n(), list2, function), m53121a(arrayList2, c14811j.m58865l(), list2, function), c14811j.m58866m());
    }

    /* renamed from: k */
    public static AbstractC14807f m53135k(List<Pair<AbstractC14807f, Boolean>> list, C14812k c14812k, List<AbstractC14807f> list2, Function<AbstractC14807f, BoundBox> function) {
        return m53121a(list, c14812k.m58868l(), list2, function);
    }

    /* renamed from: l */
    public static AbstractC14807f m53136l(List<Pair<AbstractC14807f, Boolean>> list, C14813l c14813l, List<AbstractC14807f> list2, Function<AbstractC14807f, BoundBox> function) {
        BoundBox apply = function.apply(c14813l.m58871m());
        if (!apply.isNonempty()) {
            return new C14813l(m53121a(list, c14813l.m58871m(), list2, function), c14813l.m58870l());
        }
        ArrayList arrayList = new ArrayList();
        C14819r c14819r = null;
        for (Pair<AbstractC14807f, Boolean> pair : list) {
            if (pair.getKey().mo58856e().getTop() > apply.getBottom()) {
                C14819r m53146v = m53146v(pair.getKey());
                if (c14819r != null || m53146v == null) {
                    return m53145u(list, Collections.singletonList(c14813l), list2, function);
                }
                c14819r = m53146v;
            } else {
                arrayList.add(pair);
            }
        }
        AbstractC14807f m53121a = m53121a(arrayList, c14813l.m58871m(), list2, function);
        if (c14819r == null) {
            c14819r = c14813l.m58870l();
        }
        return new C14813l(m53121a, c14819r);
    }

    /* renamed from: m */
    public static AbstractC14807f m53137m(List<Pair<AbstractC14807f, Boolean>> list, C14814m c14814m, List<AbstractC14807f> list2, Function<AbstractC14807f, BoundBox> function) {
        ArrayList arrayList;
        int i;
        ArrayList arrayList2 = new ArrayList(c14814m.mo58831f().size());
        m53148x(c14814m.mo58831f(), arrayList2);
        int size = arrayList2.size();
        if (size == 0) {
            return m53145u(list, Collections.emptyList(), list2, function);
        }
        List<Pair<Pair<AbstractC14807f, Boolean>, int[]>> m53115B = m53115B(list, arrayList2, list2, function);
        ArrayList arrayList3 = new ArrayList();
        Collections.sort(m53115B, Comparator.comparingInt(new ToIntFunction() { // from class: com.sunia.HTREnginev2.byo
            @Override // java.util.function.ToIntFunction
            public final int applyAsInt(Object obj) {
                int m53129f;
                m53129f = C13508b0.m53129f((Pair) obj);
                return m53129f;
            }
        }).thenComparingInt(new ToIntFunction() { // from class: com.sunia.HTREnginev2.cyo
            @Override // java.util.function.ToIntFunction
            public final int applyAsInt(Object obj) {
                int m53150z;
                m53150z = C13508b0.m53150z((Pair) obj);
                return m53150z;
            }
        }));
        ArrayList arrayList4 = new ArrayList();
        char c = 0;
        int i2 = 0;
        int i3 = 0;
        while (i2 < m53115B.size()) {
            Pair<Pair<AbstractC14807f, Boolean>, int[]> pair = m53115B.get(i2);
            int i4 = pair.getValue()[c];
            arrayList3.addAll(arrayList2.subList(i3, i4));
            int i5 = pair.getValue()[1];
            arrayList4.clear();
            int i6 = i2 + 1;
            while (i6 < m53115B.size()) {
                Pair<Pair<AbstractC14807f, Boolean>, int[]> pair2 = m53115B.get(i6);
                if (pair2.getValue()[c] >= i5) {
                    break;
                }
                if (pair2.getValue()[1] > i5) {
                    i5 = pair2.getValue()[1];
                }
                i6++;
            }
            int i7 = i5 - i4;
            ArrayList arrayList5 = new ArrayList((i7 * 2) + 1);
            ArrayList arrayList6 = new ArrayList(i7);
            arrayList5.add(new ArrayList());
            int i8 = i4;
            while (true) {
                int i9 = i2;
                if (i8 >= i5) {
                    break;
                }
                arrayList5.add(C13751g0.m54216a((AbstractC14807f) arrayList2.get(i8)));
                arrayList5.add(new ArrayList());
                arrayList6.add(new ArrayList());
                i8++;
                i2 = i9;
            }
            while (i2 < i6) {
                Pair<Pair<AbstractC14807f, Boolean>, int[]> pair3 = m53115B.get(i2);
                int i10 = pair3.getValue()[0];
                List<Pair<Pair<AbstractC14807f, Boolean>, int[]>> list3 = m53115B;
                int i11 = pair3.getValue()[1];
                int i12 = i5;
                ArrayList arrayList7 = arrayList2;
                int i13 = pair3.getValue()[2];
                int i14 = i10 - i4;
                int i15 = i4;
                int i16 = i14 * 2;
                int i17 = size;
                AbstractC14807f key = pair.getKey().getKey();
                ArrayList arrayList8 = arrayList3;
                if (i13 == 1) {
                    ((List) arrayList5.get(i16)).add(new C14816o(C14814m.m58873l(), C14814m.m58872b((List<? extends AbstractC14807f>) Collections.singletonList(key)), false, false));
                    i = i6;
                } else {
                    i = i6;
                    if (i13 == 2) {
                        ((List) arrayList5.get(i16)).add(new C14818q(C14814m.m58873l(), C14814m.m58872b((List<? extends AbstractC14807f>) Collections.singletonList(key)), false, false));
                    } else if (i11 == i10) {
                        ((List) arrayList5.get(i16)).add(key);
                    } else if (i11 == i10 + 1) {
                        ((List) arrayList6.get(i14)).add(pair.getKey());
                    } else {
                        arrayList4.add(pair3.getKey());
                    }
                }
                i2++;
                i6 = i;
                i5 = i12;
                m53115B = list3;
                arrayList2 = arrayList7;
                i4 = i15;
                arrayList3 = arrayList8;
                size = i17;
            }
            List<Pair<Pair<AbstractC14807f, Boolean>, int[]>> list4 = m53115B;
            ArrayList arrayList9 = arrayList2;
            int i18 = size;
            ArrayList arrayList10 = arrayList3;
            int i19 = i5;
            int i20 = i6;
            for (int i21 = 0; i21 < arrayList6.size(); i21++) {
                List list5 = (List) arrayList6.get(i21);
                if (!arrayList6.isEmpty()) {
                    int i22 = (i21 * 2) + 1;
                    ((List) arrayList5.get(i22)).set(0, m53121a(list5, (AbstractC14807f) ((List) arrayList5.get(i22)).get(0), list2, function));
                }
            }
            int i23 = i20 - 1;
            List list6 = (List) arrayList5.stream().flatMap(new dyo()).collect(Collectors.toList());
            if (arrayList4.isEmpty()) {
                arrayList = arrayList10;
                arrayList.addAll(list6);
            } else {
                arrayList = arrayList10;
                arrayList.add(m53145u(arrayList4, list6, list2, function));
            }
            arrayList3 = arrayList;
            c = 0;
            i3 = i19;
            arrayList2 = arrayList9;
            size = i18;
            i2 = 1 + i23;
            m53115B = list4;
        }
        ArrayList arrayList11 = arrayList2;
        ArrayList arrayList12 = arrayList3;
        arrayList12.addAll(arrayList11.subList(i3, size));
        return C14814m.m58872b(arrayList12);
    }

    /* renamed from: n */
    public static AbstractC14807f m53138n(List<Pair<AbstractC14807f, Boolean>> list, C14815n c14815n, List<AbstractC14807f> list2, Function<AbstractC14807f, BoundBox> function) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        BoundBox apply = function.apply(c14815n.m58881m());
        if (apply.isNonempty()) {
            for (Pair<AbstractC14807f, Boolean> pair : list) {
                if (pair.getKey().mo58856e().getRight() <= apply.getLeft()) {
                    arrayList2.add(pair);
                } else {
                    arrayList.add(pair);
                }
            }
        } else {
            arrayList.addAll(list);
        }
        return arrayList2.isEmpty() ? new C14815n(m53121a(arrayList, c14815n.m58881m(), list2, function), c14815n.m58880l()) : new C14811j(m53121a(arrayList, c14815n.m58881m(), list2, function), m53145u(arrayList2, Collections.emptyList(), list2, function), c14815n.m58880l());
    }

    /* renamed from: o */
    public static AbstractC14807f m53139o(List<Pair<AbstractC14807f, Boolean>> list, C14816o c14816o, List<AbstractC14807f> list2, Function<AbstractC14807f, BoundBox> function) {
        BoundBox apply = function.apply(c14816o.m58882l());
        BoundBox apply2 = function.apply(c14816o.m58883m());
        if (!apply.isNonempty()) {
            return new C14816o(c14816o.m58882l(), m53121a(list, c14816o.m58883m(), list2, function), c14816o.m58884n(), c14816o.m58885o());
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        if (c14816o.m58884n()) {
            for (Pair<AbstractC14807f, Boolean> pair : list) {
                BoundBox mo58856e = pair.getKey().mo58856e();
                if (mo58856e.getBottom() <= apply.getTop()) {
                    arrayList3.add(pair);
                } else if (mo58856e.getTop() >= apply.getBottom()) {
                    arrayList2.add(pair);
                } else {
                    if (mo58856e.getBottom() > apply2.getTop()) {
                        return m53145u(list, Collections.singletonList(c14816o), list2, function);
                    }
                    arrayList.add(pair);
                }
            }
        } else {
            for (Pair<AbstractC14807f, Boolean> pair2 : list) {
                BoundBox mo58856e2 = pair2.getKey().mo58856e();
                if (mo58856e2.getRight() <= apply2.getLeft()) {
                    arrayList.add(pair2);
                } else {
                    if (mo58856e2.getLeft() < apply.getRight()) {
                        return m53145u(list, Collections.singletonList(c14816o), list2, function);
                    }
                    if (mo58856e2.getBottom() >= apply2.getTop()) {
                        arrayList2.add(pair2);
                    } else {
                        arrayList3.add(pair2);
                    }
                }
            }
        }
        return arrayList3.isEmpty() ? new C14816o(m53121a(arrayList, c14816o.m58882l(), list2, function), m53121a(arrayList2, c14816o.m58883m(), list2, function), c14816o.m58884n(), c14816o.m58885o()) : m53130g(m53121a(arrayList, c14816o.m58882l(), list2, function), m53121a(arrayList2, c14816o.m58883m(), list2, function), m53145u(arrayList3, Collections.emptyList(), list2, function), c14816o.m58884n(), c14816o.m58885o());
    }

    /* renamed from: p */
    public static AbstractC14807f m53140p(List<Pair<AbstractC14807f, Boolean>> list, C14817p c14817p, List<AbstractC14807f> list2, Function<AbstractC14807f, BoundBox> function) {
        BoundBox apply = function.apply(c14817p.m58886l());
        BoundBox apply2 = function.apply(c14817p.m58887m());
        BoundBox apply3 = function.apply(c14817p.m58888n());
        apply3.getBottom();
        apply2.getTop();
        if (!apply.isNonempty()) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            for (Pair<AbstractC14807f, Boolean> pair : list) {
                BoundBox mo58856e = pair.getKey().mo58856e();
                if (mo58856e.getTop() >= apply3.getBottom()) {
                    arrayList.add(pair);
                } else {
                    if (mo58856e.getBottom() > apply2.getTop()) {
                        return m53145u(list, Collections.singletonList(c14817p), list2, function);
                    }
                    arrayList2.add(pair);
                }
            }
            return m53130g(c14817p.m58886l(), m53121a(arrayList, c14817p.m58887m(), list2, function), m53121a(arrayList2, c14817p.m58888n(), list2, function), c14817p.m58889o(), c14817p.m58890p());
        }
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        ArrayList arrayList5 = new ArrayList();
        ArrayList arrayList6 = new ArrayList();
        if (c14817p.m58889o()) {
            for (Pair<AbstractC14807f, Boolean> pair2 : list) {
                BoundBox mo58856e2 = pair2.getKey().mo58856e();
                if (mo58856e2.getTop() >= apply.getBottom()) {
                    arrayList4.add(pair2);
                } else if (mo58856e2.getBottom() <= apply.getTop()) {
                    arrayList5.add(pair2);
                } else {
                    if (mo58856e2.getTop() < apply3.getBottom() || mo58856e2.getBottom() > apply2.getTop()) {
                        return m53145u(list, Collections.singletonList(c14817p), list2, function);
                    }
                    arrayList3.add(pair2);
                }
            }
        } else {
            for (Pair<AbstractC14807f, Boolean> pair3 : list) {
                BoundBox mo58856e3 = pair3.getKey().mo58856e();
                if (mo58856e3.getRight() <= apply3.getLeft()) {
                    arrayList3.add(pair3);
                } else {
                    if (mo58856e3.getLeft() < apply.getRight()) {
                        return m53145u(list, Collections.singletonList(c14817p), list2, function);
                    }
                    if (mo58856e3.getTop() >= apply3.getBottom()) {
                        arrayList4.add(pair3);
                    } else if (mo58856e3.getBottom() <= apply2.getTop()) {
                        arrayList5.add(pair3);
                    } else {
                        arrayList6.add(pair3);
                    }
                }
            }
        }
        return arrayList6.isEmpty() ? m53130g(m53121a(arrayList3, c14817p.m58886l(), list2, function), m53121a(arrayList4, c14817p.m58887m(), list2, function), m53121a(arrayList5, c14817p.m58888n(), list2, function), c14817p.m58889o(), c14817p.m58890p()) : C14814m.m58872b((List<? extends AbstractC14807f>) Arrays.asList(m53121a(arrayList3, c14817p.m58886l(), list2, function), m53145u((List) Stream.of((Object[]) new List[]{arrayList6, arrayList4, arrayList5}).flatMap(new Function() { // from class: com.sunia.HTREnginev2.ayo
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Stream stream;
                stream = ((List) obj).stream();
                return stream;
            }
        }).collect(Collectors.toList()), Collections.emptyList(), list2, function)));
    }

    /* renamed from: q */
    public static AbstractC14807f m53141q(List<Pair<AbstractC14807f, Boolean>> list, C14818q c14818q, List<AbstractC14807f> list2, Function<AbstractC14807f, BoundBox> function) {
        BoundBox apply = function.apply(c14818q.m58891l());
        BoundBox apply2 = function.apply(c14818q.m58892m());
        if (!apply.isNonempty()) {
            return new C14818q(c14818q.m58891l(), m53121a(list, c14818q.m58892m(), list2, function), c14818q.m58893n(), c14818q.m58894o());
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        if (c14818q.m58893n()) {
            for (Pair<AbstractC14807f, Boolean> pair : list) {
                BoundBox mo58856e = pair.getKey().mo58856e();
                if (mo58856e.getTop() >= apply.getBottom()) {
                    arrayList2.add(pair);
                } else if (mo58856e.getBottom() <= apply.getTop()) {
                    arrayList3.add(pair);
                } else {
                    if (mo58856e.getTop() < apply2.getBottom()) {
                        return m53145u(list, Collections.singletonList(c14818q), list2, function);
                    }
                    arrayList.add(pair);
                }
            }
        } else {
            for (Pair<AbstractC14807f, Boolean> pair2 : list) {
                BoundBox mo58856e2 = pair2.getKey().mo58856e();
                if (mo58856e2.getRight() <= apply2.getLeft()) {
                    arrayList.add(pair2);
                } else {
                    if (mo58856e2.getLeft() < apply.getRight()) {
                        return m53145u(list, Collections.singletonList(c14818q), list2, function);
                    }
                    if (mo58856e2.getTop() <= apply2.getBottom()) {
                        arrayList3.add(pair2);
                    } else {
                        arrayList2.add(pair2);
                    }
                }
            }
        }
        return arrayList2.isEmpty() ? new C14818q(m53121a(arrayList, c14818q.m58891l(), list2, function), m53121a(arrayList3, c14818q.m58892m(), list2, function), c14818q.m58893n(), c14818q.m58894o()) : m53130g(m53121a(arrayList, c14818q.m58891l(), list2, function), m53145u(arrayList2, Collections.emptyList(), list2, function), m53121a(arrayList3, c14818q.m58892m(), list2, function), c14818q.m58893n(), c14818q.m58894o());
    }

    /* renamed from: r */
    public static AbstractC14807f m53142r(List<Pair<AbstractC14807f, Boolean>> list, C14820s c14820s, List<AbstractC14807f> list2, Function<AbstractC14807f, BoundBox> function) {
        return new C14820s(m53121a(list, c14820s.m58898l(), list2, function));
    }

    /* renamed from: s */
    public static AbstractC14807f m53143s(List<Pair<AbstractC14807f, Boolean>> list, C14821t c14821t, List<AbstractC14807f> list2, Function<AbstractC14807f, BoundBox> function) {
        int i;
        char c;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        arrayList3.add(new ArrayList());
        List<C14822u> mo58831f = c14821t.mo58831f();
        int i2 = 2;
        int i3 = 1;
        int size = (mo58831f.size() * 2) + 1;
        int i4 = 1;
        int i5 = 0;
        while (i5 < mo58831f.size()) {
            List<AbstractC14807f> mo58831f2 = mo58831f.get(i5).mo58831f();
            ArrayList arrayList4 = new ArrayList((mo58831f2.size() * i2) + i3);
            arrayList4.add(new Pair(C14814m.m58873l(), new ArrayList()));
            float[] fArr = new float[i2];
            // fill-array-data instruction
            fArr[0] = Float.POSITIVE_INFINITY;
            fArr[1] = Float.NEGATIVE_INFINITY;
            int i6 = 0;
            while (i6 < mo58831f2.size()) {
                AbstractC14807f abstractC14807f = mo58831f2.get(i6);
                arrayList4.add(new Pair(abstractC14807f, new ArrayList()));
                arrayList4.add(new Pair(C14814m.m58873l(), new ArrayList()));
                BoundBox apply = function.apply(abstractC14807f);
                if (i6 < arrayList.size()) {
                    float[] fArr2 = (float[]) arrayList.get(i6);
                    if (apply.getLeft() < fArr2[0]) {
                        fArr2[0] = apply.getLeft();
                    }
                    if (apply.getRight() > fArr2[1]) {
                        fArr2[1] = apply.getRight();
                    }
                    i = 2;
                    c = 0;
                } else {
                    i = 2;
                    c = 0;
                    arrayList.add(new float[]{apply.getLeft(), apply.getRight()});
                }
                if (apply.getTop() < fArr[c]) {
                    fArr[c] = apply.getTop();
                }
                if (apply.getBottom() > fArr[1]) {
                    fArr[1] = apply.getBottom();
                }
                i6++;
                i2 = i;
            }
            int i7 = i2;
            arrayList2.add(fArr);
            if (arrayList4.size() > i4) {
                i4 = arrayList4.size();
            }
            arrayList3.add(arrayList4);
            arrayList3.add(new ArrayList());
            i5++;
            i2 = i7;
            i3 = 1;
        }
        for (int i8 = 0; i8 < size; i8++) {
            List list3 = (List) arrayList3.get(i8);
            while (list3.size() < i4) {
                list3.add(new Pair(C14814m.m58873l(), new ArrayList()));
            }
        }
        float[] fArr3 = new float[i4];
        float[] fArr4 = new float[size];
        boolean[] zArr = new boolean[i4];
        boolean[] zArr2 = new boolean[size];
        char c2 = 0;
        fArr3[0] = Float.NEGATIVE_INFINITY;
        fArr4[0] = Float.NEGATIVE_INFINITY;
        int i9 = 0;
        int i10 = 1;
        while (i10 < size) {
            zArr2[i10] = true;
            float[] fArr5 = (float[]) arrayList2.get(i9);
            fArr4[i10] = fArr5[c2];
            fArr4[i10 + 1] = fArr5[1];
            i9++;
            i10 += 2;
            c2 = 0;
        }
        boolean z = true;
        int i11 = 1;
        int i12 = 0;
        while (i11 < i4) {
            zArr[i11] = z;
            float[] fArr6 = (float[]) arrayList.get(i12);
            fArr3[i11] = fArr6[0];
            fArr3[i11 + 1] = fArr6[z ? 1 : 0];
            i12++;
            i11 += 2;
            z = true;
        }
        for (Pair<AbstractC14807f, Boolean> pair : list) {
            BoundBox mo58856e = pair.getKey().mo58856e();
            float centerX = mo58856e.getCenterX();
            float centerY = mo58856e.getCenterY();
            int i13 = 0;
            while (centerY > fArr4[i13] && i13 < size) {
                i13++;
            }
            int i14 = i13 - 1;
            int i15 = 0;
            while (centerX > fArr3[i15] && i15 < i4) {
                i15++;
            }
            int i16 = i15 - 1;
            zArr2[i14] = true;
            zArr[i16] = true;
            ((List) ((Pair) ((List) arrayList3.get(i14)).get(i16)).getValue()).add(pair);
        }
        ArrayList arrayList5 = new ArrayList();
        for (int i17 = 0; i17 < size; i17++) {
            if (zArr2[i17]) {
                List list4 = (List) arrayList3.get(i17);
                ArrayList arrayList6 = new ArrayList();
                for (int i18 = 0; i18 < i4; i18++) {
                    if (zArr[i18]) {
                        Pair pair2 = (Pair) list4.get(i18);
                        arrayList6.add(m53121a((List) pair2.getValue(), (AbstractC14807f) pair2.getKey(), list2, function));
                    }
                }
                arrayList5.add(new C14822u(arrayList6));
            }
        }
        return new C14821t(arrayList5);
    }

    /* renamed from: t */
    public static AbstractC14807f m53144t(List<Pair<AbstractC14807f, Boolean>> list, C14823v c14823v, List<AbstractC14807f> list2, Function<AbstractC14807f, BoundBox> function) {
        BoundBox apply = function.apply(c14823v.m58901m());
        if (!apply.isNonempty()) {
            return new C14823v(m53121a(list, c14823v.m58901m(), list2, function), c14823v.m58900l());
        }
        ArrayList arrayList = new ArrayList();
        C14819r c14819r = null;
        for (Pair<AbstractC14807f, Boolean> pair : list) {
            if (pair.getKey().mo58856e().getBottom() < apply.getTop()) {
                C14819r m53114A = m53114A(pair.getKey());
                if (c14819r != null || m53114A == null) {
                    return m53145u(list, Collections.singletonList(c14823v), list2, function);
                }
                c14819r = m53114A;
            } else {
                arrayList.add(pair);
            }
        }
        AbstractC14807f m53121a = m53121a(arrayList, c14823v.m58901m(), list2, function);
        if (c14819r == null) {
            c14819r = c14823v.m58900l();
        }
        return new C14823v(m53121a, c14819r);
    }

    /* renamed from: u */
    public static AbstractC14807f m53145u(List<Pair<AbstractC14807f, Boolean>> list, List<? extends AbstractC14807f> list2, List<AbstractC14807f> list3, Function<AbstractC14807f, BoundBox> function) {
        if (list.size() != 1) {
            return C14814m.m58872b((List<? extends AbstractC14807f>) list.stream().map(new Function() { // from class: com.sunia.HTREnginev2.fyo
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return (AbstractC14807f) ((Pair) obj).getKey();
                }
            }).collect(Collectors.toList()));
        }
        AbstractC14807f<?> m53131h = m53131h(list.get(0).getKey());
        if (m53131h instanceof C14815n) {
            C14815n c14815n = (C14815n) m53131h;
            if (m53116C(c14815n.m58881m())) {
                return new C14814m(Collections.singletonList(new C14815n(C14814m.m58872b(list2), c14815n.m58880l())));
            }
        }
        Pair<AbstractC14807f, C14819r> m53118E = m53118E(m53131h);
        if (m53118E != null) {
            return new C14809h(C14814m.m58872b(list2), m53118E.getKey(), m53118E.getValue());
        }
        Pair<AbstractC14807f, C14819r> m53119F = m53119F(m53131h);
        return m53119F != null ? new C14809h(m53119F.getKey(), C14814m.m58872b(list2), m53119F.getValue()) : C14814m.m58872b((List<? extends AbstractC14807f>) list.stream().map(new Function() { // from class: com.sunia.HTREnginev2.fyo
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return (AbstractC14807f) ((Pair) obj).getKey();
            }
        }).collect(Collectors.toList()));
    }

    /* renamed from: v */
    public static C14819r m53146v(AbstractC14807f abstractC14807f) {
        if (abstractC14807f instanceof C14819r) {
            C14819r c14819r = (C14819r) abstractC14807f;
            String str = f65246b.get(c14819r.mo53565a());
            if (str != null) {
                return new C14819r(Collections.singletonList(new C13507b(str, c14819r.m58897l())), abstractC14807f.mo58830d());
            }
            return null;
        }
        if (!(abstractC14807f instanceof C14814m)) {
            return null;
        }
        List mo58831f = abstractC14807f.mo58831f();
        if (mo58831f.size() == 1) {
            return m53146v((AbstractC14807f) mo58831f.get(0));
        }
        return null;
    }

    /* renamed from: x */
    public static void m53148x(List<? extends AbstractC14807f> list, List<AbstractC14807f> list2) {
        for (AbstractC14807f abstractC14807f : list) {
            if ((abstractC14807f instanceof C14814m) || (abstractC14807f instanceof C14812k)) {
                m53148x(abstractC14807f.mo58831f(), list2);
            } else {
                list2.add(abstractC14807f);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:58:0x009d, code lost:
    
        if (r2 > r10) goto L16;
     */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00a3  */
    /* renamed from: y */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int[] m53149y(com.sunia.calculatorv2.ink.model.AbstractC14807f r14, float[] r15, java.util.List<com.sunia.calculatorv2.ink.model.AbstractC14807f> r16, java.util.function.Function<com.sunia.calculatorv2.ink.model.AbstractC14807f, com.sunia.calculatorv2.ink.graphics.BoundBox> r17) {
        /*
            Method dump skipped, instructions count: 249
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.C13508b0.m53149y(com.sunia.calculatorv2.ink.model.f, float[], java.util.List, java.util.function.Function):int[]");
    }

    /* renamed from: z */
    public static /* synthetic */ int m53150z(Pair pair) {
        return ((int[]) pair.getValue())[1];
    }

    /* renamed from: a */
    public static List<MathElement> m53122a(List<MathElement> list, MathElement mathElement, Function<AbstractC14807f, BoundBox> function) {
        if (mathElement.getCandidates().isEmpty()) {
            return list;
        }
        BoundBox mo58857g = mathElement.mo58857g();
        Alternative<AbstractC14807f> alternative = mathElement.getCandidates().get(0);
        AbstractC14807f content = alternative.getContent();
        if (content instanceof C14814m) {
            List mo58831f = content.mo58831f();
            int size = mo58831f.size();
            while (size > 0 && (mo58831f.get(size - 1) instanceof C14810i)) {
                size--;
            }
            if (size < mo58831f.size()) {
                content = new C14814m(mo58831f.subList(0, size));
            }
        }
        ArrayList arrayList = new ArrayList();
        for (MathElement mathElement2 : list) {
            MathElement mathElement3 = mathElement2;
            if (!mathElement3.getCandidates().isEmpty()) {
                AbstractC14807f content2 = mathElement3.getCandidates().get(0).getContent();
                if (m53126c((AbstractC14807f<? extends AbstractC14807f>) content2)) {
                    LogUtil.m57656i("Inserter", "AlignmentAvailable");
                    arrayList.add(new Pair(content2, Boolean.TRUE));
                } else {
                    LogUtil.m57656i("Inserter", "AlignmentUnavailable");
                    content2.m58855a(mathElement3.mo58856e());
                    arrayList.add(new Pair(content2, Boolean.FALSE));
                }
                mo58857g = BoundBox.union(mo58857g, mathElement2.mo58856e());
            }
        }
        Collections.sort(list, Comparator.comparingDouble(new ToDoubleFunction() { // from class: com.sunia.HTREnginev2.eyo
            @Override // java.util.function.ToDoubleFunction
            public final double applyAsDouble(Object obj) {
                double m53128e;
                m53128e = C13508b0.m53128e((MathElement) obj);
                return m53128e;
            }
        }));
        ArrayList<AbstractC14807f> arrayList2 = new ArrayList();
        AbstractC14807f m53121a = m53121a(arrayList, content, arrayList2, function);
        ArrayList arrayList3 = new ArrayList(arrayList2.size() + 1);
        arrayList3.add(new MathElement(Collections.singletonList(new Alternative(m53121a, alternative.getConfidence())), Collections.emptyList(), mo58857g, null));
        for (AbstractC14807f abstractC14807f : arrayList2) {
            arrayList3.add(new MathElement(Collections.singletonList(new Alternative(abstractC14807f, alternative.getConfidence())), Collections.emptyList(), abstractC14807f.mo58856e(), null));
        }
        return arrayList3;
    }

    /* renamed from: b */
    public static List<MathElement> m53123b(MathElement mathElement) {
        List<Alternative<AbstractC14807f>> candidates = mathElement.getCandidates();
        mathElement.mo58829c();
        if (!candidates.isEmpty()) {
            boolean z = false;
            AbstractC14807f<?> m53131h = m53131h(candidates.get(0).getContent());
            double confidence = candidates.get(0).getConfidence();
            if (m53131h instanceof C14821t) {
                ArrayList arrayList = new ArrayList();
                Iterator<C14822u> it2 = ((C14821t) m53131h).mo58831f().iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        z = true;
                        break;
                    }
                    C14822u next = it2.next();
                    if (next.mo58831f().size() != 1) {
                        break;
                    }
                    AbstractC14807f abstractC14807f = next.mo58831f().get(0);
                    arrayList.add(new MathElement(Collections.singletonList(new Alternative(abstractC14807f, confidence)), Collections.emptyList(), abstractC14807f.mo58857g(), null));
                }
                if (z) {
                    return arrayList;
                }
            } else if (m53131h instanceof C14817p) {
                C14817p c14817p = (C14817p) m53131h;
                if (m53116C(c14817p.m58886l())) {
                    AbstractC14807f m58888n = c14817p.m58888n();
                    AbstractC14807f m58887m = c14817p.m58887m();
                    return Arrays.asList(new MathElement(Collections.singletonList(new Alternative(m58888n, confidence)), Collections.emptyList(), m58888n.mo58857g(), null), new MathElement(Collections.singletonList(new Alternative(m58887m, confidence)), Collections.emptyList(), m58887m.mo58857g(), null));
                }
            }
        }
        return Collections.singletonList(mathElement);
    }

    /* renamed from: c */
    public static boolean m53126c(AbstractC14807f<? extends AbstractC14807f> abstractC14807f) {
        if (abstractC14807f instanceof C14819r) {
            if (abstractC14807f.mo58830d().isEmpty()) {
                LogUtil.m57656i("Inserter", "Unavailable: " + ((C14819r) abstractC14807f).mo53565a());
            }
            return !abstractC14807f.mo58830d().isEmpty();
        }
        if (abstractC14807f instanceof C14810i) {
            return true;
        }
        Iterator<? extends AbstractC14807f> it2 = abstractC14807f.mo58831f().iterator();
        while (it2.hasNext()) {
            if (!m53126c((AbstractC14807f<? extends AbstractC14807f>) it2.next())) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: h */
    public static AbstractC14807f m53132h(List<Pair<AbstractC14807f, Boolean>> list, C14809h c14809h, List<AbstractC14807f> list2, Function<AbstractC14807f, BoundBox> function) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        BoundBox apply = function.apply(c14809h.m58862m());
        for (Pair<AbstractC14807f, Boolean> pair : list) {
            BoundBox mo58856e = pair.getKey().mo58856e();
            if (mo58856e.getBottom() < apply.getTop()) {
                arrayList.add(pair);
            } else if (mo58856e.getTop() > apply.getBottom()) {
                arrayList2.add(pair);
            } else {
                return m53145u(list, Collections.singletonList(c14809h), list2, function);
            }
        }
        return new C14809h(m53121a(arrayList, c14809h.m58863n(), list2, function), m53121a(arrayList2, c14809h.m58861l(), list2, function), c14809h.m58862m());
    }

    /* renamed from: a */
    public static AbstractC14807f m53121a(List<Pair<AbstractC14807f, Boolean>> list, AbstractC14807f<? extends AbstractC14807f> abstractC14807f, List<AbstractC14807f> list2, Function<AbstractC14807f, BoundBox> function) {
        if (list.isEmpty()) {
            return abstractC14807f;
        }
        if (abstractC14807f instanceof C14819r) {
            return m53145u(list, Collections.singletonList(abstractC14807f), list2, function);
        }
        if (abstractC14807f instanceof C14814m) {
            return m53137m(list, (C14814m) abstractC14807f, list2, function);
        }
        if (abstractC14807f instanceof C14816o) {
            return m53139o(list, (C14816o) abstractC14807f, list2, function);
        }
        if (abstractC14807f instanceof C14818q) {
            return m53141q(list, (C14818q) abstractC14807f, list2, function);
        }
        if (abstractC14807f instanceof C14817p) {
            return m53140p(list, (C14817p) abstractC14807f, list2, function);
        }
        if (abstractC14807f instanceof C14823v) {
            return m53144t(list, (C14823v) abstractC14807f, list2, function);
        }
        if (abstractC14807f instanceof C14813l) {
            return m53136l(list, (C14813l) abstractC14807f, list2, function);
        }
        if (abstractC14807f instanceof C14809h) {
            return m53132h(list, (C14809h) abstractC14807f, list2, function);
        }
        if (abstractC14807f instanceof C14815n) {
            return m53138n(list, (C14815n) abstractC14807f, list2, function);
        }
        if (abstractC14807f instanceof C14811j) {
            return m53134j(list, (C14811j) abstractC14807f, list2, function);
        }
        if (abstractC14807f instanceof C14821t) {
            return m53143s(list, (C14821t) abstractC14807f, list2, function);
        }
        if (abstractC14807f instanceof C14820s) {
            return m53142r(list, (C14820s) abstractC14807f, list2, function);
        }
        if (abstractC14807f instanceof C14812k) {
            return m53135k(list, (C14812k) abstractC14807f, list2, function);
        }
        if (abstractC14807f instanceof C14810i) {
            return m53133i(list, (C14810i) abstractC14807f, list2, function);
        }
        LogUtil.m57656i("Inserter", "Unknown type: " + abstractC14807f);
        return m53145u(list, Collections.singletonList(abstractC14807f), list2, function);
    }
}
