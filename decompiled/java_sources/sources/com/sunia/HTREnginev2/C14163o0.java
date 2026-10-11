package com.sunia.HTREnginev2;

import com.google.android.material.motion.MotionUtils;
import com.sunia.HTREnginev2.C13700f1;
import com.sunia.HTREnginev2.utils.LogUtil;
import com.sunia.calculatorv2.ink.analyzer.GenericRecognizer;
import com.sunia.calculatorv2.ink.converter.LatexConverter;
import com.sunia.calculatorv2.ink.graphics.BoundBox;
import com.sunia.calculatorv2.ink.model.AbstractC14807f;
import com.sunia.calculatorv2.ink.model.C14802a;
import com.sunia.calculatorv2.ink.model.C14804c;
import com.sunia.calculatorv2.ink.model.C14805d;
import com.sunia.calculatorv2.ink.model.C14806e;
import com.sunia.calculatorv2.ink.model.C14810i;
import com.sunia.calculatorv2.ink.model.C14814m;
import com.sunia.calculatorv2.ink.model.C14819r;
import com.sunia.calculatorv2.ink.model.C14824w;
import com.sunia.calculatorv2.ink.model.C14825x;
import com.sunia.calculatorv2.ink.model.C14826y;
import com.sunia.calculatorv2.ink.model.MathElement;
import com.sunia.calculatorv2.ink.solver.SolverContext;
import com.sunia.calculatorv2.ink.util.Alternative;
import com.sunia.calculatorv2.ink.util.Pair;
import com.sunia.hwrv2.demo.calculator.hwr.HWREngineAdapter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.ToDoubleFunction;
import java.util.function.ToIntFunction;
import java.util.stream.Collectors;
import java.util.stream.Stream;

/* renamed from: com.sunia.HTREnginev2.o0 */
/* loaded from: classes10.dex */
public class C14163o0 {

    /* renamed from: a */
    public static final Set<String> f79180a = new HashSet(Arrays.asList("+", "-", "×", "÷", "/", ":", MotionUtils.f31761c));

    /* renamed from: b */
    public static final Set<String> f79181b = new HashSet(Arrays.asList("+", "-", "×", "÷", "/", ":", MotionUtils.f31762d, "!", "%"));

    /* renamed from: com.sunia.HTREnginev2.o0$b */
    /* loaded from: classes10.dex */
    public class b extends C14328r {
        /* renamed from: g1 */
        public static /* synthetic */ double m55867g1(AbstractC14807f abstractC14807f) {
            return abstractC14807f.mo58856e().getTop();
        }

        @Override // com.sunia.HTREnginev2.C14328r, com.sunia.HTREnginev2.AbstractC14374s
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public AbstractC14807f m57054N(C13802h0 c13802h0) {
            return c13802h0;
        }

        @Override // com.sunia.HTREnginev2.C14328r, com.sunia.HTREnginev2.AbstractC14374s
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public AbstractC14807f m57086j0(C14072m1 c14072m1) {
            return c14072m1;
        }

        @Override // com.sunia.HTREnginev2.C14328r, com.sunia.HTREnginev2.AbstractC14374s
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public AbstractC14807f m57057Q(C14068m c14068m) {
            return c14068m;
        }

        /* JADX WARN: Code restructure failed: missing block: B:38:0x00c9, code lost:
        
            r1.add(com.sunia.HTREnginev2.C14163o0.m55842u(r0.subList(r3, r6)));
            r3 = r6 - 1;
         */
        @Override // com.sunia.HTREnginev2.C14328r, com.sunia.HTREnginev2.AbstractC14374s
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.sunia.calculatorv2.ink.model.AbstractC14807f<? extends com.sunia.calculatorv2.ink.model.AbstractC14807f> m57088k0(com.sunia.HTREnginev2.C14120n1 r12) {
            /*
                r11 = this;
                java.util.List r11 = r12.mo58831f()
                java.util.ArrayList r0 = new java.util.ArrayList
                int r1 = r11.size()
                r0.<init>(r1)
                java.util.Iterator r1 = r11.iterator()
            L11:
                boolean r2 = r1.hasNext()
                if (r2 == 0) goto L2f
                java.lang.Object r2 = r1.next()
                com.sunia.calculatorv2.ink.model.f r2 = (com.sunia.calculatorv2.ink.model.AbstractC14807f) r2
                boolean r3 = r2 instanceof com.sunia.calculatorv2.ink.model.MathElement
                if (r3 == 0) goto L2b
                com.sunia.calculatorv2.ink.model.MathElement r2 = (com.sunia.calculatorv2.ink.model.MathElement) r2
                java.util.List r2 = com.sunia.HTREnginev2.C13508b0.m53123b(r2)
                r0.addAll(r2)
                goto L11
            L2b:
                r0.add(r2)
                goto L11
            L2f:
                com.sunia.HTREnginev2.nzo r1 = new com.sunia.HTREnginev2.nzo
                r1.<init>()
                java.util.Comparator r1 = java.util.Comparator.comparingDouble(r1)
                java.util.Collections.sort(r0, r1)
                boolean r11 = r0.equals(r11)
                r11 = r11 ^ 1
                java.util.ArrayList r1 = new java.util.ArrayList
                int r2 = r0.size()
                r1.<init>(r2)
                r2 = 0
                r3 = r2
            L4c:
                int r4 = r0.size()
                if (r3 >= r4) goto Lde
                java.lang.Object r4 = r0.get(r3)
                com.sunia.calculatorv2.ink.model.f r4 = (com.sunia.calculatorv2.ink.model.AbstractC14807f) r4
                int r5 = r3 + 1
                boolean r6 = r4 instanceof com.sunia.calculatorv2.ink.model.MathElement
                if (r6 == 0) goto Lc6
                r6 = r4
                com.sunia.calculatorv2.ink.model.MathElement r6 = (com.sunia.calculatorv2.ink.model.MathElement) r6
                java.util.List r6 = r6.getCandidates()
                boolean r6 = r6.isEmpty()
                if (r6 != 0) goto Lc6
                r6 = r5
            L6c:
                int r7 = r0.size()
                if (r6 >= r7) goto Lc7
                java.lang.Object r7 = r0.get(r6)
                com.sunia.calculatorv2.ink.model.f r7 = (com.sunia.calculatorv2.ink.model.AbstractC14807f) r7
                boolean r8 = r7 instanceof com.sunia.calculatorv2.ink.model.MathElement
                if (r8 == 0) goto Lc7
                r8 = r7
                com.sunia.calculatorv2.ink.model.MathElement r8 = (com.sunia.calculatorv2.ink.model.MathElement) r8
                java.util.List r9 = r8.getCandidates()
                boolean r9 = r9.isEmpty()
                if (r9 == 0) goto L8a
                goto Lc7
            L8a:
                r9 = r4
                com.sunia.calculatorv2.ink.model.MathElement r9 = (com.sunia.calculatorv2.ink.model.MathElement) r9
                java.util.List r9 = r9.getCandidates()
                java.lang.Object r9 = r9.get(r2)
                com.sunia.calculatorv2.ink.util.Alternative r9 = (com.sunia.calculatorv2.ink.util.Alternative) r9
                java.lang.Object r9 = r9.getContent()
                com.sunia.calculatorv2.ink.model.f r9 = (com.sunia.calculatorv2.ink.model.AbstractC14807f) r9
                java.util.List r8 = r8.getCandidates()
                java.lang.Object r8 = r8.get(r2)
                com.sunia.calculatorv2.ink.util.Alternative r8 = (com.sunia.calculatorv2.ink.util.Alternative) r8
                java.lang.Object r8 = r8.getContent()
                com.sunia.calculatorv2.ink.model.f r8 = (com.sunia.calculatorv2.ink.model.AbstractC14807f) r8
                boolean r10 = r9 instanceof com.sunia.calculatorv2.ink.model.C14814m
                if (r10 == 0) goto Lc7
                boolean r10 = r8 instanceof com.sunia.calculatorv2.ink.model.C14814m
                if (r10 == 0) goto Lc7
                boolean r9 = com.sunia.HTREnginev2.C14163o0.m55838q(r9)
                if (r9 != 0) goto Lc2
                boolean r8 = com.sunia.HTREnginev2.C14163o0.m55844w(r8)
                if (r8 != 0) goto Lc2
                goto Lc7
            Lc2:
                int r6 = r6 + 1
                r4 = r7
                goto L6c
            Lc6:
                r6 = r5
            Lc7:
                if (r6 <= r5) goto Ld7
                java.util.List r3 = r0.subList(r3, r6)
                com.sunia.calculatorv2.ink.model.MathElement r3 = com.sunia.HTREnginev2.C14163o0.m55829i(r3)
                r1.add(r3)
                int r3 = r6 + (-1)
                goto Lda
            Ld7:
                r1.add(r4)
            Lda:
                int r3 = r3 + 1
                goto L4c
            Lde:
                if (r11 != 0) goto Lec
                int r11 = r1.size()
                int r0 = r0.size()
                if (r11 >= r0) goto Leb
                goto Lec
            Leb:
                return r12
            Lec:
                com.sunia.HTREnginev2.n1 r11 = new com.sunia.HTREnginev2.n1
                r11.<init>(r1)
                return r11
            */
            throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.C14163o0.b.m57088k0(com.sunia.HTREnginev2.n1):com.sunia.calculatorv2.ink.model.f");
        }
    }

    /* renamed from: com.sunia.HTREnginev2.o0$c */
    /* loaded from: classes10.dex */
    public class c extends C14328r {

        /* renamed from: b */
        public final /* synthetic */ C14270q f79182b;

        /* renamed from: com.sunia.HTREnginev2.o0$c$a */
        /* loaded from: classes10.dex */
        public class a extends C14328r {
            public a() {
            }

            @Override // com.sunia.HTREnginev2.C14328r, com.sunia.HTREnginev2.AbstractC14374s
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public AbstractC14807f m57060T(C14810i c14810i) {
                return new C14810i(new C14814m(Collections.singletonList(new C14819r(Collections.singletonList(new C13507b("?", 1.0d)), Collections.emptyList()))));
            }
        }

        public c(C14270q c14270q) {
            this.f79182b = c14270q;
        }

        @Override // com.sunia.HTREnginev2.C14328r, com.sunia.HTREnginev2.AbstractC14374s
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public AbstractC14807f m57084i0(C13803h1 c13803h1) {
            return c13803h1;
        }

        @Override // com.sunia.HTREnginev2.C14328r, com.sunia.HTREnginev2.AbstractC14374s
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public AbstractC14807f m57052L(C14162o c14162o) {
            return c14162o;
        }

        @Override // com.sunia.HTREnginev2.C14328r, com.sunia.HTREnginev2.AbstractC14374s
        /* renamed from: b */
        public AbstractC14807f m57096o0(C14825x c14825x) {
            return c14825x;
        }

        @Override // com.sunia.HTREnginev2.C14328r, com.sunia.HTREnginev2.AbstractC14374s
        /* renamed from: b */
        public AbstractC14807f m57058R(MathElement mathElement) {
            C13700f1 m54217a;
            float height;
            float height2;
            SolverContext solverContext = this.f79182b.getSolverContext();
            if (mathElement.getCandidates().isEmpty() || solverContext.equals(mathElement.m58832l())) {
                return mathElement;
            }
            Alternative<AbstractC14807f> alternative = mathElement.getCandidates().get(0);
            String encode = LatexConverter.encode(alternative.getContent());
            LogUtil.m57656i("Merger", "Solving old: " + encode);
            String replaceAll = encode.replace("\\left .", " ").replace("\\right .", " ").replace("\\left ", " ").replace("\\right ", " ").replaceAll("\\\\hl\\s*\\{([^{}]|\\{[^{}]*\\})*\\}", " ").replaceAll("\\\\mathop\\s*\\{([^}]*)\\}", "$1").replaceAll(" {2,}", " ");
            LogUtil.m57656i("Merger", "Solving: " + replaceAll);
            try {
                String calculate = HWREngineAdapter.calculate(replaceAll, solverContext);
                if (calculate == null) {
                    m54217a = new C13700f1(C13700f1.a.UNPARSED, replaceAll);
                } else {
                    m54217a = new C13700f1(C13700f1.a.SOLVED, calculate);
                }
            } catch (RuntimeException e) {
                LogUtil.m57658w("Merger", e);
                m54217a = C13752g1.m54217a(replaceAll, solverContext);
            }
            if (m54217a.m54060b() == C13700f1.a.SOLVED) {
                mathElement.mo58829c();
                BoundBox m55847z = C14163o0.m55847z(alternative.getContent());
                AbstractC14807f m58793a = LatexConverter.m58793a(m54217a.m54059a().replace("\\underline", "\\hl ").replace("\\left(", MotionUtils.f31761c).replace("\\right)", MotionUtils.f31762d));
                List singletonList = Collections.singletonList(new Alternative(m58793a, alternative.getConfidence()));
                MathElement mathElement2 = new MathElement(singletonList, mathElement.mo58830d(), mathElement.mo58856e(), solverContext);
                mathElement2.mo58829c();
                BoundBox m55847z2 = C14163o0.m55847z(m58793a);
                BoundBox mo58857g = m58793a.mo58857g();
                if (!m55847z.isNonempty() || !m55847z2.isNonempty() || !mo58857g.isNonempty()) {
                    return mathElement2;
                }
                if (m55847z2.getWidth() > m55847z2.getHeight()) {
                    height = m55847z.getWidth();
                    height2 = m55847z2.getWidth();
                } else {
                    height = m55847z.getHeight();
                    height2 = m55847z2.getHeight() + 1.0E-18f;
                }
                float f = height / height2;
                float centerX = m55847z.getCenterX() - (m55847z2.getCenterX() * f);
                float centerY = m55847z.getCenterY() - (m55847z2.getCenterY() * f);
                return new MathElement(singletonList, mathElement.mo58830d(), BoundBox.intersect(new BoundBox((mo58857g.getLeft() * f) + centerX, (mo58857g.getRight() * f) + centerX, (mo58857g.getTop() * f) + centerY, (mo58857g.getBottom() * f) + centerY), this.f79182b.m56546l()), solverContext);
            }
            return new a().mo57108G(mathElement);
        }
    }

    /* renamed from: A */
    public static boolean m55814A(AbstractC14807f<? extends AbstractC14807f> abstractC14807f) {
        if (!(abstractC14807f instanceof C14814m)) {
            if (abstractC14807f instanceof C14819r) {
                return f79181b.contains(((C14819r) abstractC14807f).mo53565a());
            }
            return false;
        }
        for (AbstractC14807f abstractC14807f2 : abstractC14807f.mo58831f()) {
            if (!m55827g((AbstractC14807f<? extends AbstractC14807f>) abstractC14807f2)) {
                return m55814A(abstractC14807f2);
            }
        }
        return false;
    }

    /* renamed from: B */
    public static boolean m55815B(AbstractC14807f<? extends AbstractC14807f> abstractC14807f) {
        if (!(abstractC14807f instanceof C14814m)) {
            if (abstractC14807f instanceof C14819r) {
                return f79180a.contains(((C14819r) abstractC14807f).mo53565a());
            }
            return false;
        }
        ListIterator<? extends AbstractC14807f> listIterator = abstractC14807f.mo58831f().listIterator(abstractC14807f.mo58831f().size());
        while (listIterator.hasPrevious()) {
            AbstractC14807f previous = listIterator.previous();
            if (!m55827g((AbstractC14807f<? extends AbstractC14807f>) previous)) {
                return m55815B(previous);
            }
        }
        return false;
    }

    /* renamed from: C */
    public static /* synthetic */ Stream m55816C(AbstractC14807f abstractC14807f) {
        return abstractC14807f.mo58831f().stream();
    }

    /* renamed from: h */
    public static /* synthetic */ int m55828h(Pair pair) {
        return ((int[]) pair.getValue())[0];
    }

    /* renamed from: j */
    public static AbstractC14807f m55830j(AbstractC14807f abstractC14807f) {
        return new b().mo57108G(abstractC14807f);
    }

    /* renamed from: k */
    public static List<C14825x> m55832k(List<C14825x> list, C14825x c14825x) {
        LogUtil.m57656i("Merger", "Correcting text");
        List<Pair> list2 = (List) list.stream().filter(new Predicate() { // from class: com.sunia.HTREnginev2.jzo
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean m55839r;
                m55839r = C14163o0.m55839r((C14825x) obj);
                return m55839r;
            }
        }).map(new Function() { // from class: com.sunia.HTREnginev2.kzo
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Pair m55843v;
                m55843v = C14163o0.m55843v((C14825x) obj);
                return m55843v;
            }
        }).collect(Collectors.toList());
        ArrayList arrayList = new ArrayList();
        for (C14826y c14826y : c14825x.mo58831f()) {
            for (C14824w c14824w : c14826y.mo58831f()) {
                if (!c14824w.mo58829c().isEmpty()) {
                    arrayList.add(new Pair(c14824w, c14826y));
                    BoundBox mo58857g = c14824w.mo58857g();
                    for (Pair pair : list2) {
                        if (BoundBox.isIntersect(mo58857g, ((C14825x) pair.getKey()).mo58856e())) {
                            int[] iArr = (int[]) pair.getValue();
                            if (iArr[0] == -1) {
                                iArr[0] = arrayList.size() - 1;
                            }
                            iArr[1] = arrayList.size();
                        }
                    }
                }
            }
        }
        if (arrayList.isEmpty()) {
            return list;
        }
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList<Pair> arrayList4 = new ArrayList();
        for (Pair pair2 : list2) {
            LogUtil.m57656i("Merger", "Selected: " + ((int[]) pair2.getValue())[0] + ":" + ((int[]) pair2.getValue())[1]);
            if (((int[]) pair2.getValue())[1] == 0) {
                arrayList2.add((C14825x) pair2.getKey());
            } else {
                arrayList4.add(pair2);
            }
        }
        Collections.sort(arrayList4, Comparator.comparingInt(new ToIntFunction() { // from class: com.sunia.HTREnginev2.lzo
            @Override // java.util.function.ToIntFunction
            public final int applyAsInt(Object obj) {
                int m55828h;
                m55828h = C14163o0.m55828h((Pair) obj);
                return m55828h;
            }
        }).thenComparingInt(new ToIntFunction() { // from class: com.sunia.HTREnginev2.mzo
            @Override // java.util.function.ToIntFunction
            public final int applyAsInt(Object obj) {
                int m55841t;
                m55841t = C14163o0.m55841t((Pair) obj);
                return m55841t;
            }
        }));
        BoundBox mo58857g2 = c14825x.mo58857g();
        int i = 0;
        for (Pair pair3 : arrayList4) {
            int i2 = ((int[]) pair3.getValue())[0];
            int i3 = ((int[]) pair3.getValue())[1];
            if (i2 > i) {
                m55834m(i, i2, arrayList, arrayList3);
            }
            Iterator<C14826y> it2 = ((C14825x) pair3.getKey()).mo58831f().iterator();
            while (it2.hasNext()) {
                arrayList3.add(it2.next());
            }
            if (i3 > i) {
                i = i3;
            }
            mo58857g2 = BoundBox.union(mo58857g2, ((C14825x) pair3.getKey()).mo58856e());
        }
        if (i < arrayList.size()) {
            m55834m(i, arrayList.size(), arrayList, arrayList3);
        }
        arrayList2.add(new C14825x(Collections.singletonList(new Alternative(arrayList3, 1.0d)), Collections.emptyList(), mo58857g2));
        return arrayList2;
    }

    /* renamed from: l */
    public static List<? extends AbstractC14807f> m55833l(List<? extends AbstractC14807f> list, List<? extends AbstractC14807f> list2, C14270q c14270q) {
        if (list2.isEmpty()) {
            return list;
        }
        ArrayList arrayList = new ArrayList();
        LinkedHashSet linkedHashSet = new LinkedHashSet(list2);
        HashMap hashMap = new HashMap();
        for (AbstractC14807f abstractC14807f : list) {
            if ((abstractC14807f instanceof C14825x) || (abstractC14807f instanceof MathElement)) {
                BoundBox mo58856e = abstractC14807f.mo58856e();
                LogUtil.m57656i("Merger", "Unconverted box: " + mo58856e);
                Iterator<? extends AbstractC14807f> it2 = list2.iterator();
                AbstractC14807f abstractC14807f2 = null;
                AbstractC14807f abstractC14807f3 = null;
                while (true) {
                    if (!it2.hasNext()) {
                        abstractC14807f2 = abstractC14807f3;
                        break;
                    }
                    AbstractC14807f next = it2.next();
                    if (Objects.equals(next.mo54389j(), abstractC14807f.mo54389j())) {
                        BoundBox mo58857g = next.mo58857g();
                        if (BoundBox.isIntersect(mo58856e, mo58857g) || ((abstractC14807f instanceof MathElement) && mo58856e.getTop() <= mo58857g.getBottom() && mo58857g.getTop() <= mo58856e.getBottom())) {
                            if (abstractC14807f3 != null) {
                                break;
                            }
                            abstractC14807f3 = next;
                        }
                    }
                }
                if (abstractC14807f2 == null && (abstractC14807f instanceof MathElement)) {
                    for (AbstractC14807f abstractC14807f4 : list2) {
                        if ((abstractC14807f4 instanceof MathElement) && !abstractC14807f.mo58831f().isEmpty()) {
                            BoundBox mo58857g2 = abstractC14807f4.mo58857g();
                            float min = ((mo58856e.getLeft() > mo58857g2.getRight() || mo58857g2.getLeft() > mo58856e.getRight()) ? Math.min(Math.abs(mo58857g2.getLeft() - mo58856e.getRight()), Math.abs(mo58856e.getLeft() - mo58857g2.getRight())) : 0.0f) + ((mo58856e.getTop() > mo58857g2.getBottom() || mo58857g2.getTop() > mo58856e.getBottom()) ? Math.min(Math.abs(mo58857g2.getTop() - mo58856e.getBottom()), Math.abs(mo58856e.getTop() - mo58857g2.getBottom())) : 0.0f);
                            if (min < Float.POSITIVE_INFINITY && min < mo58857g2.getHeight() * 0.5f && min < mo58856e.getHeight() * 0.5f) {
                                double[] array = abstractC14807f4.m58858h().stream().filter(new Predicate() { // from class: com.sunia.HTREnginev2.hzo
                                    @Override // java.util.function.Predicate
                                    public final boolean test(Object obj) {
                                        boolean m55837p;
                                        m55837p = C14163o0.m55837p((AbstractC13961k) obj);
                                        return m55837p;
                                    }
                                }).mapToDouble(new ToDoubleFunction() { // from class: com.sunia.HTREnginev2.izo
                                    @Override // java.util.function.ToDoubleFunction
                                    public final double applyAsDouble(Object obj) {
                                        double m55840s;
                                        m55840s = C14163o0.m55840s((AbstractC13961k) obj);
                                        return m55840s;
                                    }
                                }).sorted().toArray();
                                if (array.length == 0 || min < array[array.length / 2] / 2.0d) {
                                    if (C13508b0.m53119F((AbstractC14807f) abstractC14807f.mo58831f().get(0)) != null || C13508b0.m53118E((AbstractC14807f) abstractC14807f.mo58831f().get(0)) != null) {
                                        abstractC14807f2 = abstractC14807f4;
                                    }
                                }
                            }
                        }
                    }
                }
                if (abstractC14807f2 != null) {
                    List list3 = (List) hashMap.get(abstractC14807f2);
                    if (list3 == null) {
                        list3 = new ArrayList();
                        hashMap.put(abstractC14807f2, list3);
                        linkedHashSet.remove(abstractC14807f2);
                    }
                    list3.add(abstractC14807f);
                } else {
                    arrayList.add(abstractC14807f);
                }
            } else {
                arrayList.add(abstractC14807f);
            }
        }
        for (Map.Entry entry : hashMap.entrySet()) {
            AbstractC14807f abstractC14807f5 = (AbstractC14807f) entry.getKey();
            List list4 = (List) entry.getValue();
            if (abstractC14807f5 instanceof MathElement) {
                arrayList.addAll(m55831j(list4, (MathElement) abstractC14807f5));
            } else if (abstractC14807f5 instanceof C14825x) {
                arrayList.addAll(m55832k(list4, (C14825x) abstractC14807f5));
            }
        }
        arrayList.addAll(linkedHashSet);
        return arrayList;
    }

    /* renamed from: m */
    public static void m55834m(int i, int i2, List<Pair<C14824w, C14826y>> list, List<C14826y> list2) {
        ArrayList arrayList = new ArrayList();
        C14826y c14826y = null;
        while (i < i2) {
            Pair<C14824w, C14826y> pair = list.get(i);
            C14824w key = pair.getKey();
            C14826y value = pair.getValue();
            if (value != c14826y) {
                if (!arrayList.isEmpty()) {
                    list2.add(new C14826y(Collections.singletonList(new Alternative(arrayList, 1.0d))));
                    arrayList = new ArrayList();
                }
                c14826y = value;
            }
            arrayList.add(key);
            i++;
        }
        if (arrayList.isEmpty()) {
            return;
        }
        list2.add(new C14826y(Collections.singletonList(new Alternative(arrayList, 1.0d))));
    }

    /* renamed from: n */
    public static void m55835n(AbstractC14807f<? extends AbstractC14807f> abstractC14807f, List<BoundBox> list) {
        if (abstractC14807f instanceof C14810i) {
            return;
        }
        Iterator<? extends AbstractC13961k> it2 = abstractC14807f.mo58829c().iterator();
        while (it2.hasNext()) {
            list.add(it2.next().m55095b());
        }
        Iterator<? extends AbstractC14807f> it3 = abstractC14807f.mo58831f().iterator();
        while (it3.hasNext()) {
            m55835n(it3.next(), list);
        }
    }

    /* renamed from: o */
    public static void m55836o(List<BoundBox> list, BoundBox boundBox, float f) {
        float min;
        float f2 = 4.0f * f;
        if (boundBox.getWidth() > f2 && boundBox.getHeight() > f2) {
            boundBox = new BoundBox(boundBox.getLeft() + f, boundBox.getRight() - f, boundBox.getTop() + f, boundBox.getBottom() - f);
        }
        BoundBox union = BoundBox.union(list.iterator());
        if (BoundBox.isContain(boundBox, union)) {
            return;
        }
        if (union.getWidth() > boundBox.getWidth() || union.getHeight() > boundBox.getHeight()) {
            min = Math.min(boundBox.getWidth() / union.getWidth(), boundBox.getHeight() / union.getHeight());
            union = union.scale(min);
        } else {
            min = 1.0f;
        }
        float right = union.getRight() > boundBox.getRight() ? (boundBox.getRight() - union.getRight()) + 0.0f : 0.0f;
        if (union.getLeft() < boundBox.getLeft()) {
            right += boundBox.getLeft() - union.getLeft();
        }
        float bottom = union.getBottom() > boundBox.getBottom() ? 0.0f + (boundBox.getBottom() - union.getBottom()) : 0.0f;
        if (union.getTop() < boundBox.getTop()) {
            bottom += boundBox.getTop() - union.getTop();
        }
        ListIterator<BoundBox> listIterator = list.listIterator();
        while (listIterator.hasNext()) {
            BoundBox next = listIterator.next();
            listIterator.set(new BoundBox((next.getLeft() * min) + right, (next.getRight() * min) + right, (next.getTop() * min) + bottom, (next.getBottom() * min) + bottom));
        }
    }

    /* renamed from: p */
    public static /* synthetic */ boolean m55837p(AbstractC13961k abstractC13961k) {
        return abstractC13961k instanceof C14482u0;
    }

    /* renamed from: r */
    public static /* synthetic */ boolean m55839r(C14825x c14825x) {
        return !c14825x.mo58831f().isEmpty();
    }

    /* renamed from: s */
    public static /* synthetic */ double m55840s(AbstractC13961k abstractC13961k) {
        return abstractC13961k.m55095b().getHeight();
    }

    /* renamed from: t */
    public static /* synthetic */ int m55841t(Pair pair) {
        return ((int[]) pair.getValue())[1];
    }

    /* renamed from: u */
    public static MathElement m55842u(List<MathElement> list) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        double d = 1.0d;
        for (MathElement mathElement : list) {
            Alternative<AbstractC14807f> alternative = mathElement.getCandidates().get(0);
            AbstractC14807f content = alternative.getContent();
            if (content instanceof C14814m) {
                arrayList.addAll(content.mo58831f());
                ListIterator listIterator = arrayList.listIterator(arrayList.size());
                while (listIterator.hasPrevious() && m55827g((AbstractC14807f<? extends AbstractC14807f>) listIterator.previous())) {
                    listIterator.remove();
                }
            } else {
                arrayList.add(content);
            }
            arrayList2.addAll(mathElement.mo58830d());
            d *= alternative.getConfidence();
        }
        return new MathElement(Collections.singletonList(new Alternative(C14814m.m58872b(arrayList), Math.pow(d, 1.0d / list.size()))), arrayList2, list.get(0).mo58856e(), null);
    }

    /* renamed from: v */
    public static /* synthetic */ Pair m55843v(C14825x c14825x) {
        return new Pair(c14825x, new int[]{-1, 0});
    }

    /* renamed from: y */
    public static AbstractC14807f m55846y(AbstractC14807f abstractC14807f) {
        return new a().mo57108G(abstractC14807f);
    }

    /* renamed from: z */
    public static BoundBox m55847z(AbstractC14807f<? extends AbstractC14807f> abstractC14807f) {
        ArrayList arrayList = new ArrayList();
        m55835n(abstractC14807f, arrayList);
        return BoundBox.union(arrayList.iterator());
    }

    /* renamed from: a */
    public static C14806e m55817a(C14806e c14806e, C14806e c14806e2, C14270q c14270q) {
        List<AbstractC14807f> mo58831f = c14806e2.mo58831f();
        List<AbstractC14807f> mo58831f2 = c14806e.mo58831f();
        if (!mo58831f.isEmpty()) {
            if (mo58831f2.isEmpty()) {
                return c14806e2;
            }
            ArrayList arrayList = new ArrayList();
            LinkedHashSet<AbstractC14807f> linkedHashSet = new LinkedHashSet(mo58831f);
            boolean z = c14270q.m56533c() == GenericRecognizer.AnalyzerMode.MATHS || c14270q.m56533c() == GenericRecognizer.AnalyzerMode.TEXT_BLOCK;
            for (AbstractC14807f abstractC14807f : mo58831f2) {
                ArrayList arrayList2 = new ArrayList();
                BoundBox mo58856e = abstractC14807f.mo58856e();
                for (AbstractC14807f abstractC14807f2 : linkedHashSet) {
                    if (Objects.equals(abstractC14807f.mo54389j(), abstractC14807f2.mo54389j()) && !(abstractC14807f2 instanceof C14022l0) && (BoundBox.isIntersect(mo58856e, abstractC14807f2.mo58857g()) || z)) {
                        arrayList2.add(abstractC14807f2);
                    }
                }
                if (arrayList2.isEmpty()) {
                    arrayList.add(abstractC14807f);
                } else {
                    linkedHashSet.removeAll(arrayList2);
                    List<? extends AbstractC14807f> m55833l = m55833l(abstractC14807f.mo58831f(), (List) arrayList2.stream().flatMap(new Function() { // from class: com.sunia.HTREnginev2.gzo
                        @Override // java.util.function.Function
                        public final Object apply(Object obj) {
                            Stream m55816C;
                            m55816C = C14163o0.m55816C((AbstractC14807f) obj);
                            return m55816C;
                        }
                    }).collect(Collectors.toList()), c14270q);
                    if (abstractC14807f instanceof C14120n1) {
                        arrayList.add(new C14120n1(m55833l));
                    } else if (abstractC14807f instanceof C14068m) {
                        arrayList.add(new C14068m(m55833l));
                    } else if (abstractC14807f instanceof C14072m1) {
                        arrayList.add(new C14072m1(m55833l));
                    } else if (abstractC14807f instanceof C14022l0) {
                        arrayList.add(new C14022l0(m55833l));
                    } else if (abstractC14807f instanceof C13802h0) {
                        arrayList.add(new C13802h0(m55833l));
                    }
                }
            }
            arrayList.addAll(linkedHashSet);
            c14806e = new C14806e(arrayList, Collections.emptyList());
        }
        LogUtil.m57656i("Merger", "Discarding" + C13546c0.m53376a(c14806e));
        C14806e c14806e3 = (C14806e) m55846y(c14806e);
        LogUtil.m57656i("Merger", "Discarded" + C13546c0.m53376a(c14806e3));
        return c14806e3;
    }

    /* renamed from: b */
    public static AbstractC14807f m55821b(AbstractC14807f<? extends AbstractC14807f> abstractC14807f, C14270q c14270q) {
        return new c(c14270q).mo57108G(abstractC14807f);
    }

    /* renamed from: g */
    public static boolean m55827g(AbstractC14807f<? extends AbstractC14807f> abstractC14807f) {
        if (abstractC14807f instanceof C14810i) {
            return true;
        }
        if (!(abstractC14807f instanceof C14814m)) {
            return false;
        }
        Iterator<? extends AbstractC14807f> it2 = abstractC14807f.mo58831f().iterator();
        while (it2.hasNext()) {
            if (!m55827g((AbstractC14807f<? extends AbstractC14807f>) it2.next())) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: com.sunia.HTREnginev2.o0$a */
    /* loaded from: classes10.dex */
    public class a extends C14328r {
        @Override // com.sunia.HTREnginev2.C14328r, com.sunia.HTREnginev2.AbstractC14374s
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public C14806e m57051K(C14806e c14806e) {
            C14806e m57051K = super.m57051K(c14806e);
            return m57051K.mo58838i().isEmpty() ? m57051K : new C14806e(m57051K.mo58831f(), Collections.emptyList());
        }

        @Override // com.sunia.HTREnginev2.AbstractC14374s
        /* renamed from: f1, reason: merged with bridge method [inline-methods] */
        public C14683y m57053M(C14683y c14683y) {
            return null;
        }

        @Override // com.sunia.HTREnginev2.AbstractC14374s
        /* renamed from: g1, reason: merged with bridge method [inline-methods] */
        public C14802a m57056P(C14802a c14802a) {
            return c14802a.mo58830d().isEmpty() ? c14802a : new C14802a(c14802a.getCandidates(), Collections.emptyList(), c14802a.mo58856e());
        }

        @Override // com.sunia.HTREnginev2.AbstractC14374s
        /* renamed from: h1, reason: merged with bridge method [inline-methods] */
        public C14804c m57070b0(C14804c c14804c) {
            return c14804c.mo58830d().isEmpty() ? c14804c : new C14804c(c14804c.m58834m(), c14804c.m58833l(), c14804c.m58835n(), c14804c.mo58829c(), Collections.emptyList());
        }

        @Override // com.sunia.HTREnginev2.AbstractC14374s
        /* renamed from: i1, reason: merged with bridge method [inline-methods] */
        public C14805d m57092m0(C14805d c14805d) {
            return c14805d.mo58830d().isEmpty() ? c14805d : new C14805d(c14805d.mo53565a(), c14805d.m58837m(), c14805d.m58836l(), c14805d.mo58829c(), Collections.emptyList());
        }

        @Override // com.sunia.HTREnginev2.AbstractC14374s
        /* renamed from: j1, reason: merged with bridge method [inline-methods] */
        public C14819r m57074d0(C14819r c14819r) {
            return c14819r.mo58830d().isEmpty() ? c14819r : new C14819r(c14819r.getCandidates(), Collections.emptyList());
        }

        @Override // com.sunia.HTREnginev2.AbstractC14374s
        /* renamed from: k1, reason: merged with bridge method [inline-methods] */
        public C14824w m57090l0(C14824w c14824w) {
            return c14824w.mo58830d().isEmpty() ? c14824w : new C14824w(c14824w.getCandidates(), Collections.emptyList());
        }

        @Override // com.sunia.HTREnginev2.C14328r, com.sunia.HTREnginev2.AbstractC14374s
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public AbstractC14807f m57096o0(C14825x c14825x) {
            C14825x c14825x2 = (C14825x) super.m57096o0(c14825x);
            return c14825x2.mo58830d().isEmpty() ? c14825x2 : new C14825x(c14825x2.getCandidates(), Collections.emptyList(), c14825x2.mo58856e());
        }

        @Override // com.sunia.HTREnginev2.C14328r, com.sunia.HTREnginev2.AbstractC14374s
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public AbstractC14807f m57058R(MathElement mathElement) {
            MathElement mathElement2 = (MathElement) super.m57058R(mathElement);
            return mathElement2.mo58830d().isEmpty() ? mathElement2 : new MathElement(mathElement2.getCandidates(), Collections.emptyList(), mathElement2.mo58856e(), mathElement2.m58832l());
        }
    }

    /* renamed from: j */
    public static List<MathElement> m55831j(List<MathElement> list, MathElement mathElement) {
        return C13508b0.m53122a(list, mathElement, new fzo());
    }

    /* renamed from: a */
    public static AbstractC14807f m55818a(AbstractC14807f<? extends AbstractC14807f> abstractC14807f, C14270q c14270q) {
        if (!c14270q.m56548n()) {
            return abstractC14807f;
        }
        LogUtil.m57656i("Merger", "Aligning: " + abstractC14807f.mo58831f());
        ArrayList arrayList = new ArrayList();
        Iterator<? extends AbstractC14807f> it2 = abstractC14807f.mo58831f().iterator();
        while (it2.hasNext()) {
            for (AbstractC14807f abstractC14807f2 : it2.next().mo58831f()) {
                if (!(abstractC14807f2 instanceof MathElement)) {
                    return abstractC14807f;
                }
                arrayList.add((MathElement) abstractC14807f2);
            }
        }
        if (arrayList.size() == 0) {
            return abstractC14807f;
        }
        Iterator it3 = arrayList.iterator();
        float f = 0.0f;
        while (true) {
            if (it3.hasNext()) {
                List<? extends AbstractC13961k> mo58829c = ((MathElement) it3.next()).mo58829c();
                if (mo58829c.size() != 1) {
                    return abstractC14807f;
                }
                f += ((C14069m0) mo58829c.get(0)).m55527d();
            } else {
                float m56540f = c14270q.m56540f() / (c14270q.getMatrix().mapRadius(1.0f) * 25.4f);
                float max = Math.max(f / arrayList.size(), 10.0f * m56540f);
                ArrayList arrayList2 = new ArrayList(arrayList.size());
                BoundBox mo58857g = abstractC14807f.mo58857g();
                float left = mo58857g.getLeft();
                float top = mo58857g.getTop();
                Iterator it4 = arrayList.iterator();
                while (it4.hasNext()) {
                    C14069m0 c14069m0 = (C14069m0) ((MathElement) it4.next()).mo58829c().get(0);
                    float m55527d = max / c14069m0.m55527d();
                    BoundBox m55095b = c14069m0.m55095b();
                    BoundBox boundBox = new BoundBox(left, (m55095b.getWidth() * m55527d) + left, top, (m55527d * m55095b.getHeight()) + top);
                    arrayList2.add(boundBox);
                    top = boundBox.getBottom() + max;
                }
                m55836o(arrayList2, c14270q.m56546l(), m56540f * 5.0f);
                ArrayList arrayList3 = new ArrayList(arrayList.size());
                for (int i = 0; i < arrayList.size(); i++) {
                    MathElement mathElement = (MathElement) arrayList.get(i);
                    arrayList3.add(new MathElement(mathElement.getCandidates(), mathElement.mo58830d(), (BoundBox) arrayList2.get(i), mathElement.m58832l()));
                }
                return new C14806e(Collections.singletonList(new C14120n1(arrayList3)), abstractC14807f.mo58838i());
            }
        }
    }
}
