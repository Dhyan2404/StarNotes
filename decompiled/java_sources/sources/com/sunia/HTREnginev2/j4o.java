package com.sunia.HTREnginev2;

import android.view.View;
import androidx.core.view.ViewCompat;

/* loaded from: classes6.dex */
public class j4o {

    /* renamed from: a */
    public final View f73927a;

    /* renamed from: b */
    public int f73928b;

    /* renamed from: c */
    public int f73929c;

    /* renamed from: d */
    public int f73930d;

    /* renamed from: e */
    public int f73931e;

    /* renamed from: f */
    public boolean f73932f = true;

    /* renamed from: g */
    public boolean f73933g = true;

    public j4o(View view) {
        this.f73927a = view;
    }

    /* renamed from: a */
    public void m54870a() {
        View view = this.f73927a;
        ViewCompat.offsetTopAndBottom(view, this.f73930d - (view.getTop() - this.f73928b));
        View view2 = this.f73927a;
        ViewCompat.offsetLeftAndRight(view2, this.f73931e - (view2.getLeft() - this.f73929c));
    }

    /* renamed from: b */
    public int m54871b() {
        return this.f73929c;
    }

    /* renamed from: c */
    public int m54872c() {
        return this.f73928b;
    }

    /* renamed from: d */
    public int m54873d() {
        return this.f73931e;
    }

    /* renamed from: e */
    public int m54874e() {
        return this.f73930d;
    }

    /* renamed from: f */
    public boolean m54875f() {
        return this.f73933g;
    }

    /* renamed from: g */
    public boolean m54876g() {
        return this.f73932f;
    }

    /* renamed from: h */
    public void m54877h() {
        this.f73928b = this.f73927a.getTop();
        this.f73929c = this.f73927a.getLeft();
    }

    /* renamed from: i */
    public void m54878i(boolean z) {
        this.f73933g = z;
    }

    /* renamed from: j */
    public boolean m54879j(int i) {
        if (!this.f73933g || this.f73931e == i) {
            return false;
        }
        this.f73931e = i;
        m54870a();
        return true;
    }

    /* renamed from: k */
    public boolean m54880k(int i) {
        if (!this.f73932f || this.f73930d == i) {
            return false;
        }
        this.f73930d = i;
        m54870a();
        return true;
    }

    /* renamed from: l */
    public void m54881l(boolean z) {
        this.f73932f = z;
    }
}
