package com.sunia.HTREnginev2;

import android.view.ViewConfiguration;
import com.sunia.HTREnginev2.InterfaceC14734z;
import com.sunia.HTREnginev2.utils.LogUtil;
import com.sunia.calculatorv2.ink.editor.Selection;
import com.sunia.calculatorv2.ink.graphics.BoundBox;
import com.sunia.calculatorv2.ink.model.AbstractC14807f;
import com.sunia.calculatorv2.ink.model.C14806e;
import com.sunia.calculatorv2.ink.model.C14810i;
import com.sunia.calculatorv2.ink.model.C14811j;
import com.sunia.calculatorv2.ink.model.C14814m;
import com.sunia.calculatorv2.ink.model.C14815n;
import com.sunia.calculatorv2.ink.model.C14819r;
import com.sunia.calculatorv2.ink.model.C14824w;
import com.sunia.calculatorv2.ink.model.C14825x;
import com.sunia.calculatorv2.ink.model.C14826y;
import com.sunia.calculatorv2.ink.util.Pair;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.function.Predicate;
import java.util.stream.Collectors;

/* renamed from: com.sunia.HTREnginev2.z */
/* loaded from: classes10.dex */
public interface InterfaceC14734z {

    /* renamed from: a */
    public static final InterfaceC14734z f91230a;

    /* renamed from: b */
    public static final InterfaceC14734z f91231b;

    /* renamed from: c */
    public static final InterfaceC14734z f91232c = new b(ViewConfiguration.getLongPressTimeout(), 2.0f);

    /* renamed from: com.sunia.HTREnginev2.z$b */
    /* loaded from: classes10.dex */
    public static class b implements InterfaceC14734z {

        /* renamed from: d */
        public final long f91233d;

        /* renamed from: e */
        public final float f91234e;

        public b(long j, float f) {
            this.f91233d = j;
            this.f91234e = f;
        }

        @Override // com.sunia.HTREnginev2.InterfaceC14734z
        /* renamed from: a */
        public boolean mo58541a(C14219p1 c14219p1, C14270q c14270q) {
            if (!c14270q.isCopyAndPasteModeEnabled()) {
                return false;
            }
            C14376s1 m56198a = c14219p1.m56198a();
            c14270q.m56519a(m56198a.m57119b(), m56198a.m57120c());
            return true;
        }
    }

    /* renamed from: com.sunia.HTREnginev2.z$c */
    /* loaded from: classes10.dex */
    public static class c implements InterfaceC14734z {
        @Override // com.sunia.HTREnginev2.InterfaceC14734z
        /* renamed from: a */
        public boolean mo58541a(C14219p1 c14219p1, C14270q c14270q) {
            List<C14376s1> m56576a = C14272q1.m56576a(c14219p1.getPoints());
            if (!m58544c(c14219p1, m56576a)) {
                return false;
            }
            LogUtil.m57656i("ScratchGesture", "Scratch detected");
            Pair<List<C14219p1>, Boolean> m58545d = m58545d(m56576a, c14270q);
            Pair<C14806e, Boolean> m58542a = m58542a(m56576a, c14270q);
            if (!m58545d.getValue().booleanValue() && !m58542a.getValue().booleanValue()) {
                return false;
            }
            c14270q.m56525a(new Selection<>(m58542a.getKey(), m58545d.getKey()));
            return true;
        }

        /* JADX WARN: Code restructure failed: missing block: B:38:0x00df, code lost:
        
            if (com.sunia.HTREnginev2.C14272q1.m56578a(r13.getPoints().iterator(), r2) == false) goto L52;
         */
        /* JADX WARN: Code restructure failed: missing block: B:61:0x012a, code lost:
        
            if (com.sunia.HTREnginev2.C14272q1.m56578a(r13.getPoints().iterator(), (com.sunia.HTREnginev2.C14376s1) r2.get(0)) == false) goto L52;
         */
        /* JADX WARN: Code restructure failed: missing block: B:67:0x013d, code lost:
        
            if (r12.m58858h().size() <= 1) goto L53;
         */
        /* JADX WARN: Removed duplicated region for block: B:41:0x0143 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:49:0x0097 A[SYNTHETIC] */
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void m58543b(com.sunia.calculatorv2.ink.model.AbstractC14807f<? extends com.sunia.calculatorv2.ink.model.AbstractC14807f> r12, com.sunia.HTREnginev2.C14219p1 r13, com.sunia.calculatorv2.ink.graphics.BoundBox r14, java.util.HashSet<com.sunia.calculatorv2.ink.model.AbstractC14807f> r15) {
            /*
                Method dump skipped, instructions count: 351
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.InterfaceC14734z.c.m58543b(com.sunia.calculatorv2.ink.model.f, com.sunia.HTREnginev2.p1, com.sunia.calculatorv2.ink.graphics.BoundBox, java.util.HashSet):void");
        }

        /* renamed from: c */
        public final boolean m58544c(C14219p1 c14219p1, List<C14376s1> list) {
            Iterator<C14376s1> it2 = c14219p1.getPoints().iterator();
            if (!it2.hasNext()) {
                return false;
            }
            C14376s1 next = it2.next();
            float f = 0.0f;
            float f2 = 0.0f;
            while (it2.hasNext()) {
                C14376s1 next2 = it2.next();
                f += Math.abs(next2.m57119b() - next.m57119b());
                f2 += Math.abs(next2.m57120c() - next.m57120c());
                next = next2;
            }
            double m56573a = C14272q1.m56573a(c14219p1.getPoints().iterator());
            BoundBox boundBox = c14219p1.getBoundBox();
            float width = boundBox.getWidth();
            float height = boundBox.getHeight();
            return (f > width * 5.0f || f2 > 5.0f * height) && m56573a > ((double) (Math.max(width, height) * 2.0f));
        }

        /* renamed from: d */
        public final Pair<List<C14219p1>, Boolean> m58545d(List<C14376s1> list, C14270q c14270q) {
            ArrayList arrayList = new ArrayList();
            List<C14219p1> traces = c14270q.getTraces();
            boolean z = false;
            for (C14219p1 c14219p1 : traces) {
                Iterator<C14376s1> it2 = C14330r1.m56877a(c14219p1, 11, C14330r1.m56876a(c14219p1)).getPoints().iterator();
                int i = 0;
                while (it2.hasNext()) {
                    if (C14272q1.m56578a(list.iterator(), it2.next())) {
                        i++;
                    }
                }
                if (i <= 5) {
                    arrayList.add(c14219p1);
                } else {
                    z = true;
                }
            }
            return z ? new Pair<>(arrayList, Boolean.TRUE) : new Pair<>(traces, Boolean.FALSE);
        }

        public c() {
        }

        /* renamed from: a */
        public final Pair<C14806e, Boolean> m58542a(List<C14376s1> list, C14270q c14270q) {
            C14806e convertedElement = c14270q.getConvertedElement();
            HashSet<AbstractC14807f> hashSet = new HashSet<>();
            list.add(list.get(0));
            C14219p1 c14219p1 = new C14219p1(list);
            m58543b(convertedElement, c14219p1, c14219p1.getBoundBox(), hashSet);
            LogUtil.m57656i("ScratchGesture", "Items to delete: " + hashSet.size());
            if (!hashSet.isEmpty()) {
                return C14527v.m57724a(hashSet, convertedElement);
            }
            return new Pair<>(convertedElement, Boolean.FALSE);
        }
    }

    /* renamed from: com.sunia.HTREnginev2.z$d */
    /* loaded from: classes10.dex */
    public static class d implements InterfaceC14734z {
        /* renamed from: j */
        public static /* synthetic */ boolean m58547j(AbstractC14807f abstractC14807f) {
            return !C14163o0.m55827g((AbstractC14807f<? extends AbstractC14807f>) abstractC14807f);
        }

        /* renamed from: b */
        public final void m58548b(AbstractC14807f<? extends AbstractC14807f> abstractC14807f, C14219p1 c14219p1, BoundBox boundBox, Set<AbstractC14807f> set, List<AbstractC14807f> list) {
            BoundBox mo58857g = abstractC14807f.mo58857g();
            if (BoundBox.isIntersect(mo58857g, boundBox)) {
                if (abstractC14807f instanceof C14825x) {
                    ArrayList arrayList = new ArrayList();
                    Iterator<C14826y> it2 = ((C14825x) abstractC14807f).mo58831f().iterator();
                    int i = -1;
                    int i2 = -1;
                    while (it2.hasNext()) {
                        for (C14824w c14824w : it2.next().mo58831f()) {
                            List<? extends AbstractC13961k> mo58829c = c14824w.mo58829c();
                            if (!mo58829c.isEmpty()) {
                                arrayList.add(c14824w);
                                if (m58553g(mo58829c.get(0).m55095b(), boundBox)) {
                                    if (i == -1) {
                                        i = arrayList.size() - 1;
                                    }
                                    i2 = arrayList.size();
                                }
                            }
                        }
                    }
                    if ((i == 0 && i2 == arrayList.size()) || (arrayList.isEmpty() && m58553g(mo58857g, boundBox))) {
                        m58549c(abstractC14807f, c14219p1, set, list);
                        return;
                    } else {
                        if (i != -1) {
                            m58550d(arrayList.subList(i, i2), c14219p1, set, list);
                            return;
                        }
                        return;
                    }
                }
                if (abstractC14807f instanceof C14814m) {
                    List<? extends AbstractC14807f> mo58831f = abstractC14807f.mo58831f();
                    ArrayList arrayList2 = new ArrayList();
                    int i3 = 0;
                    int i4 = -1;
                    int i5 = -1;
                    for (AbstractC14807f abstractC14807f2 : mo58831f) {
                        i3++;
                        BoundBox mo58857g2 = abstractC14807f2.mo58857g();
                        if (BoundBox.isIntersect(mo58857g2, boundBox)) {
                            arrayList2.add(abstractC14807f2);
                            if (m58553g(mo58857g2, boundBox)) {
                                if (i4 == -1) {
                                    i4 = i3 - 1;
                                }
                                i5 = i3;
                            }
                        }
                    }
                    if (i4 == 0 && i5 == mo58831f.size()) {
                        m58549c(abstractC14807f, c14219p1, set, list);
                        return;
                    } else if (arrayList2.size() == 1) {
                        m58548b((AbstractC14807f) arrayList2.get(0), c14219p1, boundBox, set, list);
                        return;
                    } else {
                        if (i4 != -1) {
                            m58550d(mo58831f.subList(i4, i5), c14219p1, set, list);
                            return;
                        }
                        return;
                    }
                }
                if (abstractC14807f instanceof C14819r) {
                    if (m58553g(mo58857g, boundBox)) {
                        m58549c(abstractC14807f, c14219p1, set, list);
                        return;
                    }
                    return;
                }
                if (abstractC14807f instanceof C14815n) {
                    C14815n c14815n = (C14815n) abstractC14807f;
                    AbstractC14807f m58881m = c14815n.m58881m();
                    m58548b(m58881m, c14219p1, boundBox, set, list);
                    if (boundBox.getLeft() < m58881m.mo58857g().getLeft() || boundBox.getTop() < m58881m.mo58857g().getTop()) {
                        m58549c(c14815n.m58880l(), c14219p1, set, list);
                        return;
                    }
                    return;
                }
                if (!(abstractC14807f instanceof C14811j)) {
                    if (abstractC14807f instanceof C14810i) {
                        return;
                    }
                    Iterator<? extends AbstractC14807f> it3 = abstractC14807f.mo58831f().iterator();
                    while (it3.hasNext()) {
                        m58548b(it3.next(), c14219p1, boundBox, set, list);
                    }
                    return;
                }
                C14811j c14811j = (C14811j) abstractC14807f;
                AbstractC14807f m58867n = c14811j.m58867n();
                m58548b(m58867n, c14219p1, boundBox, set, list);
                AbstractC14807f m58865l = c14811j.m58865l();
                m58548b(m58865l, c14219p1, boundBox, set, list);
                BoundBox mo58857g3 = m58867n.mo58857g();
                BoundBox mo58857g4 = m58865l.mo58857g();
                if ((boundBox.getLeft() >= mo58857g3.getLeft() || BoundBox.isContain(mo58857g4, boundBox)) && (boundBox.getRight() < mo58857g3.getLeft() || boundBox.getTop() >= mo58857g3.getTop())) {
                    return;
                }
                m58549c(c14811j.m58866m(), c14219p1, set, list);
            }
        }

        /* renamed from: c */
        public final void m58549c(AbstractC14807f<? extends AbstractC14807f> abstractC14807f, C14219p1 c14219p1, Set<AbstractC14807f> set, List<AbstractC14807f> list) {
            if (C14163o0.m55827g(abstractC14807f)) {
                return;
            }
            set.add(abstractC14807f);
            if (list.isEmpty() && m58552f(c14219p1, abstractC14807f.mo58857g())) {
                list.add(abstractC14807f);
            }
        }

        /* renamed from: d */
        public final void m58550d(List<? extends AbstractC14807f> list, C14219p1 c14219p1, Set<AbstractC14807f> set, List<AbstractC14807f> list2) {
            List list3 = (List) list.stream().filter(new Predicate() { // from class: com.sunia.HTREnginev2.v8p
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    boolean m58547j;
                    m58547j = InterfaceC14734z.d.m58547j((AbstractC14807f) obj);
                    return m58547j;
                }
            }).collect(Collectors.toList());
            set.addAll(list3);
            if (list2.isEmpty() && m58552f(c14219p1, BoundBox.union(list3.stream().map(new fzo()).iterator()))) {
                list2.addAll(list3);
            }
        }

        /* renamed from: e */
        public final boolean m58551e(C14219p1 c14219p1, C14219p1 c14219p12) {
            C14376s1 m56198a = c14219p12.m56198a();
            C14376s1 m56200b = c14219p1.m56200b();
            return ((m56198a instanceof C14580w0) && (m56200b instanceof C14580w0) && m56200b.mo57118a() - m56198a.mo57118a() < 500) ? false : true;
        }

        /* renamed from: f */
        public final boolean m58552f(C14219p1 c14219p1, BoundBox boundBox) {
            float left = boundBox.getLeft();
            float right = boundBox.getRight();
            float top = boundBox.getTop();
            float bottom = boundBox.getBottom();
            C14376s1 c14376s1 = new C14376s1(left, top);
            C14219p1 c14219p12 = new C14219p1(Arrays.asList(c14376s1, new C14376s1(right, top), new C14376s1(right, bottom), new C14376s1(left, bottom), c14376s1));
            return C14272q1.m56578a(c14219p12.getPoints().iterator(), c14219p1.m56200b()) || C14272q1.m56577a(c14219p1, c14219p12);
        }

        /* renamed from: g */
        public final boolean m58553g(BoundBox boundBox, BoundBox boundBox2) {
            if (!BoundBox.isIntersect(boundBox, boundBox2)) {
                return false;
            }
            float left = boundBox.getLeft();
            float right = boundBox.getRight();
            float top = boundBox.getTop();
            float bottom = boundBox.getBottom();
            float left2 = boundBox2.getLeft();
            return right >= left && bottom >= top && (Math.min(right, boundBox2.getRight()) - Math.max(left, left2) >= (right - left) * 0.5f || Math.min(bottom, boundBox2.getBottom()) - Math.max(top, boundBox2.getTop()) >= (bottom - top) * 0.5f);
        }

        /* renamed from: h */
        public final boolean m58554h(BoundBox boundBox, AbstractC14807f<?> abstractC14807f) {
            if (!BoundBox.isIntersect(boundBox, abstractC14807f.mo58857g())) {
                return false;
            }
            Iterator<? extends AbstractC13961k> it2 = abstractC14807f.mo58829c().iterator();
            while (it2.hasNext()) {
                if (BoundBox.isContain(boundBox, it2.next().m55095b())) {
                    return true;
                }
            }
            Iterator<?> it3 = abstractC14807f.mo58831f().iterator();
            while (it3.hasNext()) {
                if (m58554h(boundBox, (AbstractC14807f) it3.next())) {
                    return true;
                }
            }
            return false;
        }

        /* renamed from: i */
        public final boolean m58555i(BoundBox boundBox, List<C14219p1> list) {
            Iterator<C14219p1> it2 = list.iterator();
            while (it2.hasNext()) {
                if (BoundBox.isContain(boundBox, it2.next().getBoundBox())) {
                    return true;
                }
            }
            return false;
        }

        /* renamed from: k */
        public final Pair<C14806e, Boolean> m58556k(C14219p1 c14219p1, C14270q c14270q) {
            AbstractC14807f<? extends AbstractC14807f> convertedElement = c14270q.getConvertedElement();
            HashSet hashSet = new HashSet();
            List<AbstractC14807f> arrayList = new ArrayList<>();
            m58548b(convertedElement, c14219p1, c14219p1.getBoundBox(), hashSet, arrayList);
            LogUtil.m57656i("StrikeGesture", "Items to delete: " + hashSet.size() + "; touched: " + arrayList.size());
            return (hashSet.isEmpty() || arrayList.isEmpty()) ? new Pair<>(convertedElement, Boolean.FALSE) : C14527v.m57724a(hashSet, convertedElement);
        }

        /* renamed from: l */
        public final Pair<List<C14219p1>, Boolean> m58557l(C14219p1 c14219p1, C14270q c14270q) {
            ArrayList arrayList = new ArrayList();
            boolean z = false;
            for (C14219p1 c14219p12 : c14270q.getTraces()) {
                if ((BoundBox.isContain(c14219p1.getBoundBox(), c14219p12.getBoundBox()) || C14272q1.m56577a(c14219p1, c14219p12)) && m58551e(c14219p1, c14219p12)) {
                    z = true;
                } else {
                    arrayList.add(c14219p12);
                }
            }
            return new Pair<>(arrayList, Boolean.valueOf(z));
        }

        /* renamed from: m */
        public final boolean m58558m(C14219p1 c14219p1, C14270q c14270q) {
            C14376s1 m56200b = c14219p1.m56200b();
            C14376s1 m56198a = c14219p1.m56198a();
            double m57117a = C14376s1.m57117a(m56200b, m56198a);
            double m56574a = C14272q1.m56574a(c14219p1.getPoints(), m56200b, m56198a);
            long mo57118a = m56198a.mo57118a() - m56200b.mo57118a();
            LogUtil.m57656i("StrikeGesture", "Measure: " + (m56574a / m57117a));
            if (m56574a >= 0.125d * m57117a || Math.abs(m56198a.m57119b() - m56200b.m57119b()) <= Math.abs(m56198a.m57120c() - m56200b.m57120c()) * 0.2f) {
                return false;
            }
            if (m57117a * c14270q.getMatrix().mapRadius(1.0f) * 25.399999618530273d > c14270q.m56540f() * ((float) mo57118a) * 0.2f) {
                return true;
            }
            BoundBox boundBox = c14219p1.getBoundBox();
            return m58554h(boundBox, c14270q.getConvertedElement()) || m58555i(boundBox, c14270q.getTraces());
        }

        public d() {
        }

        @Override // com.sunia.HTREnginev2.InterfaceC14734z
        /* renamed from: a */
        public boolean mo58541a(C14219p1 c14219p1, C14270q c14270q) {
            if (!m58558m(c14219p1, c14270q)) {
                return false;
            }
            LogUtil.m57656i("StrikeGesture", "Strike detected");
            Pair<List<C14219p1>, Boolean> m58557l = m58557l(c14219p1, c14270q);
            Pair<C14806e, Boolean> m58556k = m58556k(new C14219p1(Arrays.asList(c14219p1.m56200b(), c14219p1.m56198a())), c14270q);
            if (!m58557l.getValue().booleanValue() && !m58556k.getValue().booleanValue()) {
                return false;
            }
            c14270q.m56525a(new Selection<>(m58556k.getKey(), m58557l.getKey()));
            return true;
        }
    }

    static {
        f91230a = new c();
        f91231b = new d();
    }

    /* renamed from: a */
    boolean mo58541a(C14219p1 c14219p1, C14270q c14270q);
}
