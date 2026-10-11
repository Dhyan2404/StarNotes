package com.sunia.HTREnginev2;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.sidesheet.SideSheetBehavior;

/* loaded from: classes6.dex */
public final class pxi extends unm {

    /* renamed from: a */
    public final SideSheetBehavior<? extends View> f81361a;

    public pxi(@NonNull SideSheetBehavior<? extends View> sideSheetBehavior) {
        this.f81361a = sideSheetBehavior;
    }

    @Override // com.sunia.HTREnginev2.unm
    /* renamed from: a */
    public int mo56452a(@NonNull ViewGroup.MarginLayoutParams marginLayoutParams) {
        return marginLayoutParams.leftMargin;
    }

    @Override // com.sunia.HTREnginev2.unm
    /* renamed from: b */
    public float mo56453b(int i) {
        float mo56456e = mo56456e();
        return (i - mo56456e) / (mo56455d() - mo56456e);
    }

    @Override // com.sunia.HTREnginev2.unm
    /* renamed from: c */
    public int mo56454c(@NonNull ViewGroup.MarginLayoutParams marginLayoutParams) {
        return marginLayoutParams.leftMargin;
    }

    @Override // com.sunia.HTREnginev2.unm
    /* renamed from: d */
    public int mo56455d() {
        return Math.max(0, this.f81361a.m24856C() + this.f81361a.m24854A());
    }

    @Override // com.sunia.HTREnginev2.unm
    /* renamed from: e */
    public int mo56456e() {
        return (-this.f81361a.m24892w()) - this.f81361a.m24854A();
    }

    @Override // com.sunia.HTREnginev2.unm
    /* renamed from: f */
    public int mo56457f() {
        return this.f81361a.m24854A();
    }

    @Override // com.sunia.HTREnginev2.unm
    /* renamed from: g */
    public int mo56458g() {
        return -this.f81361a.m24892w();
    }

    @Override // com.sunia.HTREnginev2.unm
    /* renamed from: h */
    public <V extends View> int mo56459h(@NonNull V v) {
        return v.getRight() + this.f81361a.m24854A();
    }

    @Override // com.sunia.HTREnginev2.unm
    /* renamed from: i */
    public int mo56460i(@NonNull CoordinatorLayout coordinatorLayout) {
        return coordinatorLayout.getLeft();
    }

    @Override // com.sunia.HTREnginev2.unm
    /* renamed from: j */
    public int mo56461j() {
        return 1;
    }

    @Override // com.sunia.HTREnginev2.unm
    /* renamed from: k */
    public boolean mo56462k(float f) {
        return f > 0.0f;
    }

    @Override // com.sunia.HTREnginev2.unm
    /* renamed from: l */
    public boolean mo56463l(@NonNull View view) {
        return view.getRight() < (mo56455d() - mo56456e()) / 2;
    }

    @Override // com.sunia.HTREnginev2.unm
    /* renamed from: m */
    public boolean mo56464m(float f, float f2) {
        return oom.m56137a(f, f2) && Math.abs(f) > ((float) this.f81361a.getSignificantVelocityThreshold());
    }

    @Override // com.sunia.HTREnginev2.unm
    /* renamed from: n */
    public boolean mo56465n(@NonNull View view, float f) {
        return Math.abs(((float) view.getLeft()) + (f * this.f81361a.getHideFriction())) > this.f81361a.m24895z();
    }

    @Override // com.sunia.HTREnginev2.unm
    /* renamed from: o */
    public void mo56466o(@NonNull ViewGroup.MarginLayoutParams marginLayoutParams, int i) {
        marginLayoutParams.leftMargin = i;
    }

    @Override // com.sunia.HTREnginev2.unm
    /* renamed from: p */
    public void mo56467p(@NonNull ViewGroup.MarginLayoutParams marginLayoutParams, int i, int i2) {
        if (i <= this.f81361a.m24857D()) {
            marginLayoutParams.leftMargin = i2;
        }
    }
}
