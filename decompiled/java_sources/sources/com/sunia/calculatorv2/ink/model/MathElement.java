package com.sunia.calculatorv2.ink.model;

import com.sunia.HTREnginev2.AbstractC13961k;
import com.sunia.HTREnginev2.C14069m0;
import com.sunia.HTREnginev2.C14119n0;
import com.sunia.HTREnginev2.C14219p1;
import com.sunia.HTREnginev2.InterfaceC13597d0;
import com.sunia.HTREnginev2.InterfaceC13856i;
import com.sunia.HTREnginev2.utils.LogUtil;
import com.sunia.calculatorv2.ink.converter.LatexConverter;
import com.sunia.calculatorv2.ink.graphics.BoundBox;
import com.sunia.calculatorv2.ink.solver.SolverContext;
import com.sunia.calculatorv2.ink.util.Alternative;
import com.sunia.ref.jlatexmath.awt.Color;
import java.util.Collections;
import java.util.List;

/* loaded from: classes10.dex */
public class MathElement extends AbstractC14807f<AbstractC14807f> implements InterfaceC13597d0, InterfaceC13856i {

    /* renamed from: k */
    public static final Color f92405k = new Color(0, 128, 255);

    /* renamed from: e */
    public final List<Alternative<AbstractC14807f>> f92406e;

    /* renamed from: f */
    public final List<C14219p1> f92407f;

    /* renamed from: h */
    public Color f92408h = f92405k;

    /* renamed from: i */
    public C14069m0 f92409i;

    /* renamed from: j */
    public SolverContext f92410j;

    public MathElement(List<Alternative<AbstractC14807f>> list, List<C14219p1> list2, BoundBox boundBox, SolverContext solverContext) {
        this.f92406e = list;
        this.f92407f = list2;
        this.f92410j = solverContext;
        m58855a(boundBox);
        m58859k();
    }

    @Override // com.sunia.HTREnginev2.InterfaceC13597d0
    /* renamed from: a */
    public String mo53565a() {
        if (this.f92406e.isEmpty()) {
            return "";
        }
        return "$" + LatexConverter.encode(this.f92406e.get(0).getContent()) + "$";
    }

    @Override // com.sunia.HTREnginev2.InterfaceC13856i
    /* renamed from: b */
    public void mo54662b() {
        this.f92409i = null;
        m58859k();
        mo58829c();
    }

    @Override // com.sunia.calculatorv2.ink.model.AbstractC14807f
    /* renamed from: c */
    public List<? extends AbstractC13961k> mo58829c() {
        C14069m0 c14069m0 = this.f92409i;
        if (c14069m0 != null) {
            return Collections.singletonList(c14069m0);
        }
        C14119n0.m55697a(this, -1.0d, this.f92408h);
        throw null;
    }

    @Override // com.sunia.calculatorv2.ink.model.AbstractC14807f
    /* renamed from: d */
    public List<C14219p1> mo58830d() {
        return this.f92407f;
    }

    @Override // com.sunia.calculatorv2.ink.model.AbstractC14807f
    /* renamed from: f */
    public List<AbstractC14807f> mo58831f() {
        return this.f92406e.isEmpty() ? Collections.emptyList() : Collections.singletonList(this.f92406e.get(0).getContent());
    }

    public List<Alternative<AbstractC14807f>> getCandidates() {
        return this.f92406e;
    }

    @Override // com.sunia.calculatorv2.ink.model.AbstractC14807f
    /* renamed from: j */
    public String mo54389j() {
        return "Math";
    }

    /* renamed from: l */
    public SolverContext m58832l() {
        return this.f92410j;
    }

    /* renamed from: a */
    public void m58828a(int i) {
        Color color = new Color(i);
        if (this.f92408h.getColorInt() != color.getColorInt()) {
            this.f92408h = color;
            this.f92409i = null;
            LogUtil.m57656i("Math", "Color changed: " + i);
        }
    }
}
