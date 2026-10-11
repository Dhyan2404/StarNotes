package com.sunia.calculatorv2.ink.editor;

import com.sunia.HTREnginev2.AbstractC13961k;
import com.sunia.HTREnginev2.C13545c;
import com.sunia.HTREnginev2.C13699f0;
import com.sunia.HTREnginev2.C13751g0;
import com.sunia.HTREnginev2.C14219p1;
import com.sunia.HTREnginev2.C14270q;
import com.sunia.HTREnginev2.C14272q1;
import com.sunia.HTREnginev2.C14330r1;
import com.sunia.HTREnginev2.C14376s1;
import com.sunia.HTREnginev2.C14527v;
import com.sunia.HTREnginev2.InterfaceC14734z;
import com.sunia.calculatorv2.ink.graphics.BoundBox;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import com.sunia.calculatorv2.ink.model.AbstractC14807f;
import com.sunia.calculatorv2.ink.model.C14806e;
import com.sunia.calculatorv2.ink.model.C14811j;
import com.sunia.calculatorv2.ink.model.C14815n;
import com.sunia.calculatorv2.ink.model.C14825x;
import com.sunia.calculatorv2.ink.model.MathElement;
import com.sunia.calculatorv2.ink.util.Pair;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes10.dex */
public interface PointerTool {

    /* loaded from: classes10.dex */
    public static class HandTool implements PointerTool {
        @Override // com.sunia.calculatorv2.ink.editor.PointerTool
        /* renamed from: a */
        public void mo58824a(C14219p1 c14219p1, C14270q c14270q) {
            if (c14219p1.getPoints().size() > 1) {
                C14376s1 m56200b = c14219p1.m56200b();
                C14376s1 m56198a = c14219p1.m56198a();
                c14270q.m56534c(-(m56198a.m57119b() - m56200b.m57119b()), -(m56198a.m57120c() - m56200b.m57120c()));
            }
        }

        @Override // com.sunia.calculatorv2.ink.editor.PointerTool
        public String getStyleName() {
            return IStyleSheet.CLASS_HAND;
        }
    }

    /* loaded from: classes10.dex */
    public static class PenTool implements PointerTool {

        /* renamed from: a */
        public final InterfaceC14734z[] f92397a;

        public PenTool(InterfaceC14734z... interfaceC14734zArr) {
            this.f92397a = interfaceC14734zArr;
        }

        @Override // com.sunia.calculatorv2.ink.editor.PointerTool
        /* renamed from: a */
        public void mo58824a(C14219p1 c14219p1, C14270q c14270q) {
            if (c14270q.m56549o()) {
                for (InterfaceC14734z interfaceC14734z : this.f92397a) {
                    if (interfaceC14734z.mo58541a(c14219p1, c14270q)) {
                        return;
                    }
                }
            }
            c14270q.m56524a(c14219p1);
        }

        @Override // com.sunia.calculatorv2.ink.editor.PointerTool
        public String getStyleName() {
            return IStyleSheet.CLASS_WET;
        }
    }

    /* renamed from: com.sunia.calculatorv2.ink.editor.PointerTool$a */
    /* loaded from: classes10.dex */
    public static class C14792a implements PointerTool {
        /* renamed from: b */
        public static void m58825b(AbstractC14807f<? extends AbstractC14807f> abstractC14807f, C14219p1 c14219p1, BoundBox boundBox, HashSet<AbstractC14807f> hashSet) {
            BoundBox mo58857g = abstractC14807f.mo58857g();
            if (BoundBox.isIntersect(mo58857g, boundBox)) {
                if (abstractC14807f instanceof C14815n) {
                    C14815n c14815n = (C14815n) abstractC14807f;
                    AbstractC14807f m58881m = c14815n.m58881m();
                    m58825b(m58881m, c14219p1, boundBox, hashSet);
                    if (boundBox.getLeft() < m58881m.mo58857g().getLeft() || boundBox.getTop() < m58881m.mo58857g().getTop()) {
                        hashSet.add(c14815n.m58880l());
                        return;
                    }
                    return;
                }
                if (abstractC14807f instanceof C14811j) {
                    C14811j c14811j = (C14811j) abstractC14807f;
                    AbstractC14807f m58867n = c14811j.m58867n();
                    m58825b(m58867n, c14219p1, boundBox, hashSet);
                    AbstractC14807f m58865l = c14811j.m58865l();
                    m58825b(m58865l, c14219p1, boundBox, hashSet);
                    BoundBox mo58857g2 = m58867n.mo58857g();
                    BoundBox mo58857g3 = m58865l.mo58857g();
                    if ((boundBox.getLeft() >= mo58857g2.getLeft() || BoundBox.isContain(mo58857g3, boundBox)) && (boundBox.getRight() < mo58857g2.getLeft() || boundBox.getTop() >= mo58857g2.getTop())) {
                        return;
                    }
                    hashSet.add(((C14815n) abstractC14807f).m58880l());
                    return;
                }
                Iterator<? extends AbstractC13961k> it2 = abstractC14807f.mo58829c().iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    }
                    AbstractC13961k next = it2.next();
                    if (BoundBox.isIntersect(next.m55095b(), boundBox)) {
                        boolean z = false;
                        if (next instanceof C13699f0) {
                            C13699f0 c13699f0 = (C13699f0) next;
                            z = C14272q1.m56577a(new C14219p1(Arrays.asList(c13699f0.mo53371f(), c13699f0.mo53369d())), c14219p1);
                        } else if (next instanceof C13545c) {
                            ArrayList arrayList = new ArrayList();
                            C13545c c13545c = (C13545c) next;
                            float m53374i = c13545c.m53374i();
                            float m53375j = c13545c.m53375j();
                            for (float f = 0.0f; f <= 1.0f; f = (float) (f + 0.125d)) {
                                arrayList.add(c13545c.m53368a((f * m53375j) + m53374i));
                            }
                            z = C14272q1.m56577a(new C14219p1(arrayList), c14219p1);
                        } else if (!(abstractC14807f instanceof MathElement) && (!(abstractC14807f instanceof C14825x) || abstractC14807f.m58858h().size() <= 1)) {
                            float left = mo58857g.getLeft();
                            float right = mo58857g.getRight();
                            float top = mo58857g.getTop();
                            float bottom = mo58857g.getBottom();
                            C14219p1 c14219p12 = new C14219p1(C13751g0.m54216a(new C14376s1(left, top), new C14376s1(right, top), new C14376s1(right, bottom), new C14376s1(left, bottom), new C14376s1(left, top)));
                            if (C14272q1.m56577a(c14219p12, c14219p1) || C14272q1.m56578a(c14219p12.getPoints().iterator(), c14219p1.m56200b())) {
                                z = true;
                            }
                        }
                        if (z) {
                            hashSet.add(abstractC14807f);
                            break;
                        }
                    }
                }
                Iterator<? extends AbstractC14807f> it3 = abstractC14807f.mo58831f().iterator();
                while (it3.hasNext()) {
                    m58825b(it3.next(), c14219p1, boundBox, hashSet);
                }
            }
        }

        /* renamed from: c */
        public static Pair<C14806e, Boolean> m58826c(C14219p1 c14219p1, C14270q c14270q) {
            C14806e convertedElement = c14270q.getConvertedElement();
            HashSet hashSet = new HashSet();
            m58825b(convertedElement, c14219p1, c14219p1.getBoundBox(), hashSet);
            return !hashSet.isEmpty() ? C14527v.m57724a(hashSet, convertedElement) : new Pair<>(convertedElement, Boolean.FALSE);
        }

        /* renamed from: d */
        public static Pair<List<C14219p1>, Boolean> m58827d(C14219p1 c14219p1, C14270q c14270q) {
            ArrayList arrayList = new ArrayList();
            List<C14219p1> traces = c14270q.getTraces();
            boolean z = false;
            for (C14219p1 c14219p12 : traces) {
                if (C14272q1.m56577a(c14219p12, c14219p1)) {
                    z = true;
                } else {
                    arrayList.add(c14219p12);
                }
            }
            return z ? new Pair<>(arrayList, Boolean.TRUE) : new Pair<>(traces, Boolean.FALSE);
        }

        @Override // com.sunia.calculatorv2.ink.editor.PointerTool
        /* renamed from: a */
        public void mo58824a(C14219p1 c14219p1, C14270q c14270q) {
            Pair<List<C14219p1>, Boolean> m58827d = m58827d(c14219p1, c14270q);
            Pair<C14806e, Boolean> m58826c = m58826c(c14219p1, c14270q);
            if (m58827d.getValue().booleanValue() || m58826c.getValue().booleanValue()) {
                c14270q.m56525a(new Selection<>(m58826c.getKey(), m58827d.getKey()));
            }
        }

        @Override // com.sunia.calculatorv2.ink.editor.PointerTool
        public String getStyleName() {
            return IStyleSheet.CLASS_ERASER;
        }
    }

    /* renamed from: com.sunia.calculatorv2.ink.editor.PointerTool$b */
    /* loaded from: classes10.dex */
    public static class C14793b implements PointerTool {
        @Override // com.sunia.calculatorv2.ink.editor.PointerTool
        /* renamed from: a */
        public void mo58824a(C14219p1 c14219p1, C14270q c14270q) {
        }

        @Override // com.sunia.calculatorv2.ink.editor.PointerTool
        public String getStyleName() {
            return IStyleSheet.CLASS_HIGHLIGHTER;
        }
    }

    /* renamed from: com.sunia.calculatorv2.ink.editor.PointerTool$c */
    /* loaded from: classes10.dex */
    public static class C14794c implements PointerTool {
        @Override // com.sunia.calculatorv2.ink.editor.PointerTool
        /* renamed from: a */
        public void mo58824a(C14219p1 c14219p1, C14270q c14270q) {
        }

        @Override // com.sunia.calculatorv2.ink.editor.PointerTool
        public String getStyleName() {
            return IStyleSheet.CLASS_PLACEHOLDER;
        }
    }

    /* renamed from: com.sunia.calculatorv2.ink.editor.PointerTool$d */
    /* loaded from: classes10.dex */
    public static class C14795d implements PointerTool {
        @Override // com.sunia.calculatorv2.ink.editor.PointerTool
        /* renamed from: a */
        public void mo58824a(C14219p1 c14219p1, C14270q c14270q) {
            ArrayList arrayList = new ArrayList();
            for (C14219p1 c14219p12 : c14270q.getTraces()) {
                Iterator<C14376s1> it2 = C14330r1.m56877a(c14219p12, 11, C14330r1.m56876a(c14219p12)).getPoints().iterator();
                int i = 0;
                while (it2.hasNext()) {
                    if (C14272q1.m56578a(c14219p1.getPoints().iterator(), it2.next())) {
                        i++;
                    }
                }
                if (i > 5) {
                    arrayList.add(c14219p12);
                }
            }
            c14270q.m56531b(new Selection<>(C14806e.f92421g, arrayList));
        }

        @Override // com.sunia.calculatorv2.ink.editor.PointerTool
        public String getStyleName() {
            return IStyleSheet.CLASS_SELECTOR;
        }
    }

    /* renamed from: a */
    void mo58824a(C14219p1 c14219p1, C14270q c14270q);

    String getStyleName();
}
