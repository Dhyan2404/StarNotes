package com.sunia.calculatorv2.ink.model;

import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import java.util.Collections;
import java.util.List;

/* renamed from: com.sunia.calculatorv2.ink.model.i */
/* loaded from: classes10.dex */
public class C14810i extends AbstractC14807f<AbstractC14807f> {

    /* renamed from: e */
    public final AbstractC14807f f92434e;

    public C14810i(AbstractC14807f abstractC14807f) {
        this.f92434e = abstractC14807f;
    }

    @Override // com.sunia.calculatorv2.ink.model.AbstractC14807f
    /* renamed from: f */
    public List<AbstractC14807f> mo58831f() {
        return Collections.singletonList(this.f92434e);
    }

    @Override // com.sunia.calculatorv2.ink.model.AbstractC14807f
    /* renamed from: j */
    public String mo54389j() {
        return IStyleSheet.CLASS_GENERATED;
    }

    /* renamed from: l */
    public AbstractC14807f m58864l() {
        return this.f92434e;
    }
}
