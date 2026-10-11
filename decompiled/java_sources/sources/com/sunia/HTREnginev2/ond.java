package com.sunia.HTREnginev2;

import android.content.Context;
import android.content.res.ColorStateList;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

@RequiresApi(21)
/* loaded from: classes3.dex */
public class ond implements rnd {
    @Override // com.sunia.HTREnginev2.rnd
    /* renamed from: a */
    public float mo56109a(qnd qndVar) {
        return m56123p(qndVar).m54021d();
    }

    @Override // com.sunia.HTREnginev2.rnd
    /* renamed from: b */
    public float mo56110b(qnd qndVar) {
        return m56123p(qndVar).m54020c();
    }

    @Override // com.sunia.HTREnginev2.rnd
    /* renamed from: c */
    public float mo56111c(qnd qndVar) {
        return mo56109a(qndVar) * 2.0f;
    }

    @Override // com.sunia.HTREnginev2.rnd
    /* renamed from: d */
    public void mo56112d(qnd qndVar, float f) {
        qndVar.mo1301e().setElevation(f);
    }

    @Override // com.sunia.HTREnginev2.rnd
    /* renamed from: e */
    public void mo56113e(qnd qndVar) {
        mo56122o(qndVar, mo56110b(qndVar));
    }

    @Override // com.sunia.HTREnginev2.rnd
    /* renamed from: f */
    public float mo56114f(qnd qndVar) {
        return mo56109a(qndVar) * 2.0f;
    }

    @Override // com.sunia.HTREnginev2.rnd
    /* renamed from: g */
    public void mo56115g(qnd qndVar, @Nullable ColorStateList colorStateList) {
        m56123p(qndVar).m54023f(colorStateList);
    }

    @Override // com.sunia.HTREnginev2.rnd
    /* renamed from: h */
    public void mo56116h(qnd qndVar) {
        if (!qndVar.mo1302f()) {
            qndVar.setShadowPadding(0, 0, 0, 0);
            return;
        }
        float mo56110b = mo56110b(qndVar);
        float mo56109a = mo56109a(qndVar);
        int ceil = (int) Math.ceil(fsl.m54178c(mo56110b, mo56109a, qndVar.mo1300d()));
        int ceil2 = (int) Math.ceil(fsl.m54179d(mo56110b, mo56109a, qndVar.mo1300d()));
        qndVar.setShadowPadding(ceil, ceil2, ceil, ceil2);
    }

    @Override // com.sunia.HTREnginev2.rnd
    /* renamed from: i */
    public void mo56117i(qnd qndVar) {
        mo56122o(qndVar, mo56110b(qndVar));
    }

    @Override // com.sunia.HTREnginev2.rnd
    /* renamed from: j */
    public void mo55770j() {
    }

    @Override // com.sunia.HTREnginev2.rnd
    /* renamed from: k */
    public void mo56118k(qnd qndVar, float f) {
        m56123p(qndVar).m54025h(f);
    }

    @Override // com.sunia.HTREnginev2.rnd
    /* renamed from: l */
    public void mo56119l(qnd qndVar, Context context, ColorStateList colorStateList, float f, float f2, float f3) {
        qndVar.mo1298b(new esl(colorStateList, f));
        View mo1301e = qndVar.mo1301e();
        mo1301e.setClipToOutline(true);
        mo1301e.setElevation(f2);
        mo56122o(qndVar, f3);
    }

    @Override // com.sunia.HTREnginev2.rnd
    /* renamed from: m */
    public float mo56120m(qnd qndVar) {
        return qndVar.mo1301e().getElevation();
    }

    @Override // com.sunia.HTREnginev2.rnd
    /* renamed from: n */
    public ColorStateList mo56121n(qnd qndVar) {
        return m56123p(qndVar).m54019b();
    }

    @Override // com.sunia.HTREnginev2.rnd
    /* renamed from: o */
    public void mo56122o(qnd qndVar, float f) {
        m56123p(qndVar).m54024g(f, qndVar.mo1302f(), qndVar.mo1300d());
        mo56116h(qndVar);
    }

    /* renamed from: p */
    public final esl m56123p(qnd qndVar) {
        return (esl) qndVar.mo1299c();
    }
}
