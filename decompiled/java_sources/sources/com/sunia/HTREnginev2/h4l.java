package com.sunia.HTREnginev2;

import com.google.common.annotations.GwtCompatible;

@GwtCompatible(emulated = true)
@tnf
/* loaded from: classes6.dex */
public final class h4l {

    /* renamed from: a */
    public static final ThreadLocal<char[]> f71810a = new C13808a();

    /* renamed from: com.sunia.HTREnginev2.h4l$a */
    /* loaded from: classes6.dex */
    public class C13808a extends ThreadLocal<char[]> {
        @Override // java.lang.ThreadLocal
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public char[] initialValue() {
            return new char[1024];
        }
    }

    /* renamed from: a */
    public static char[] m54396a() {
        return f71810a.get();
    }
}
