package com.sagittarius.p050v6;

import android.content.Context;
import com.sagittarius.p050v6.p052b.C13099h;
import dalvik.system.DexFile;
import java.nio.ByteBuffer;
import java.util.Enumeration;

/* renamed from: com.sagittarius.v6.A */
/* loaded from: classes18.dex */
public class C13084A {
    /* renamed from: a1 */
    public static void m52299a1(ByteBuffer byteBuffer) {
        C13099h.m52346a(StubApplication.mContext, byteBuffer);
    }

    /* renamed from: a2 */
    public static void m52300a2(ByteBuffer[] byteBufferArr) {
        C13099h.m52347a(StubApplication.mContext, byteBufferArr);
    }

    /* renamed from: a3 */
    public static void m52301a3(String str) {
        C13099h.m52345a(StubApplication.mContext, str);
    }

    /* renamed from: a4 */
    public static Enumeration m52302a4(DexFile dexFile) {
        return C13099h.m52344a(dexFile);
    }

    /* renamed from: n1 */
    public static native void m52303n1(Context context, String str, String str2, String str3, int i);

    /* renamed from: n2 */
    public static native void m52304n2(Context context);

    /* renamed from: n3 */
    public static native void m52305n3(Context context);
}
