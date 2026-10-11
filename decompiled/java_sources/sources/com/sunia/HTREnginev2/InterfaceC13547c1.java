package com.sunia.HTREnginev2;

import java.util.EnumSet;

/* renamed from: com.sunia.HTREnginev2.c1 */
/* loaded from: classes10.dex */
public interface InterfaceC13547c1 {

    /* renamed from: a */
    public static final EnumSet<a> f66338a;

    /* renamed from: b */
    public static final EnumSet<a> f66339b;

    /* renamed from: c */
    public static final EnumSet<a> f66340c;

    /* renamed from: d */
    public static final EnumSet<a> f66341d;

    /* renamed from: com.sunia.HTREnginev2.c1$a */
    /* loaded from: classes10.dex */
    public enum a {
        CAPTURE,
        MODEL,
        BACKGROUND
    }

    static {
        a aVar = a.CAPTURE;
        f66338a = EnumSet.of(aVar);
        a aVar2 = a.MODEL;
        f66339b = EnumSet.of(aVar2);
        a aVar3 = a.BACKGROUND;
        f66340c = EnumSet.of(aVar3);
        f66341d = EnumSet.of(aVar, aVar2, aVar3);
    }

    float getDpiX();

    float getDpiY();

    void invalidate(EnumSet<a> enumSet);
}
