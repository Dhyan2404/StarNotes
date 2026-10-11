package com.sunia.HTREnginev2;

import android.graphics.Path;

/* renamed from: com.sunia.HTREnginev2.f0 */
/* loaded from: classes10.dex */
public class C13699f0 extends AbstractC13652e1 {

    /* renamed from: k */
    public final C14376s1 f69500k;

    /* renamed from: l */
    public final C14376s1 f69501l;

    @Override // com.sunia.HTREnginev2.AbstractC13961k
    /* renamed from: c */
    public String mo52911c() {
        return "line";
    }

    @Override // com.sunia.HTREnginev2.AbstractC13652e1
    /* renamed from: d */
    public C14376s1 mo53369d() {
        return this.f69501l;
    }

    @Override // com.sunia.HTREnginev2.AbstractC13652e1
    /* renamed from: e */
    public double mo53370e() {
        return mo53372g() + 3.141592653589793d;
    }

    @Override // com.sunia.HTREnginev2.AbstractC13652e1
    /* renamed from: f */
    public C14376s1 mo53371f() {
        return this.f69500k;
    }

    @Override // com.sunia.HTREnginev2.AbstractC13652e1
    /* renamed from: g */
    public double mo53372g() {
        return Math.atan2(this.f69501l.m57120c() - this.f69500k.m57120c(), this.f69501l.m57119b() - this.f69500k.m57119b());
    }

    @Override // com.sunia.HTREnginev2.AbstractC13652e1
    /* renamed from: h */
    public Path mo53373h() {
        Path path = new Path();
        path.moveTo(this.f69500k.m57119b(), this.f69500k.m57120c());
        path.lineTo(this.f69501l.m57119b(), this.f69501l.m57120c());
        return path;
    }
}
