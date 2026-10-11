package com.sunia.HTREnginev2;

import com.google.auto.value.AutoValue;
import com.sunia.HTREnginev2.C14403sj;

@AutoValue
/* loaded from: classes4.dex */
public abstract class jxf {

    /* renamed from: a */
    public static final long f74793a = 10485760;

    /* renamed from: b */
    public static final int f74794b = 200;

    /* renamed from: c */
    public static final int f74795c = 10000;

    /* renamed from: d */
    public static final long f74796d = 604800000;

    /* renamed from: e */
    public static final int f74797e = 81920;

    /* renamed from: f */
    public static final jxf f74798f = m55057a().mo55069f(10485760).mo55067d(200).mo55065b(10000).mo55066c(604800000).mo55068e(f74797e).mo55064a();

    @AutoValue.Builder
    /* renamed from: com.sunia.HTREnginev2.jxf$a */
    /* loaded from: classes4.dex */
    public static abstract class AbstractC13955a {
        /* renamed from: a */
        public abstract jxf mo55064a();

        /* renamed from: b */
        public abstract AbstractC13955a mo55065b(int i);

        /* renamed from: c */
        public abstract AbstractC13955a mo55066c(long j);

        /* renamed from: d */
        public abstract AbstractC13955a mo55067d(int i);

        /* renamed from: e */
        public abstract AbstractC13955a mo55068e(int i);

        /* renamed from: f */
        public abstract AbstractC13955a mo55069f(long j);
    }

    /* renamed from: a */
    public static AbstractC13955a m55057a() {
        return new C14403sj.b();
    }

    /* renamed from: b */
    public abstract int mo55058b();

    /* renamed from: c */
    public abstract long mo55059c();

    /* renamed from: d */
    public abstract int mo55060d();

    /* renamed from: e */
    public abstract int mo55061e();

    /* renamed from: f */
    public abstract long mo55062f();

    /* renamed from: g */
    public AbstractC13955a m55063g() {
        return m55057a().mo55069f(mo55062f()).mo55067d(mo55060d()).mo55065b(mo55058b()).mo55066c(mo55059c()).mo55068e(mo55061e());
    }
}
