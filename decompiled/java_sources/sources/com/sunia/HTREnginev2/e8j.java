package com.sunia.HTREnginev2;

import com.google.protobuf.AbstractC6878o;
import com.google.protobuf.C6854a0;
import com.google.protobuf.C6884u;
import com.google.protobuf.C6885v;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.InterfaceC6889z;
import com.google.protobuf.Internal;
import com.google.protobuf.ProtoSyntax;

@htd
/* loaded from: classes6.dex */
public final class e8j implements n4m {

    /* renamed from: b */
    public static final ymj f68701b = new C13661a();

    /* renamed from: a */
    public final ymj f68702a;

    /* renamed from: com.sunia.HTREnginev2.e8j$a */
    /* loaded from: classes6.dex */
    public class C13661a implements ymj {
        @Override // com.sunia.HTREnginev2.ymj
        /* renamed from: a */
        public boolean mo30245a(Class<?> clazz) {
            return false;
        }

        @Override // com.sunia.HTREnginev2.ymj
        /* renamed from: b */
        public xmj mo30246b(Class<?> clazz) {
            throw new IllegalStateException("This should never be called.");
        }
    }

    /* renamed from: com.sunia.HTREnginev2.e8j$b */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class C13662b {

        /* renamed from: a */
        public static final /* synthetic */ int[] f68703a;

        static {
            int[] iArr = new int[ProtoSyntax.values().length];
            f68703a = iArr;
            try {
                iArr[ProtoSyntax.PROTO3.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    /* renamed from: com.sunia.HTREnginev2.e8j$c */
    /* loaded from: classes6.dex */
    public static class C13663c implements ymj {

        /* renamed from: a */
        public ymj[] f68704a;

        public C13663c(ymj... factories) {
            this.f68704a = factories;
        }

        @Override // com.sunia.HTREnginev2.ymj
        /* renamed from: a */
        public boolean mo30245a(Class<?> clazz) {
            for (ymj ymjVar : this.f68704a) {
                if (ymjVar.mo30245a(clazz)) {
                    return true;
                }
            }
            return false;
        }

        @Override // com.sunia.HTREnginev2.ymj
        /* renamed from: b */
        public xmj mo30246b(Class<?> clazz) {
            for (ymj ymjVar : this.f68704a) {
                if (ymjVar.mo30245a(clazz)) {
                    return ymjVar.mo30246b(clazz);
                }
            }
            throw new UnsupportedOperationException("No factory is available for message type: " + clazz.getName());
        }
    }

    public e8j() {
        this(m53938c());
    }

    /* renamed from: b */
    public static boolean m53937b(xmj messageInfo) {
        return C13662b.f68703a[messageInfo.getSyntax().ordinal()] != 1;
    }

    /* renamed from: c */
    public static ymj m53938c() {
        return new C13663c(wyg.m58143c(), m53939d());
    }

    /* renamed from: d */
    public static ymj m53939d() {
        try {
            return (ymj) Class.forName("com.google.protobuf.h").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            return f68701b;
        }
    }

    /* renamed from: e */
    public static <T> InterfaceC6889z<T> m53940e(Class<T> messageType, xmj messageInfo) {
        return GeneratedMessageLite.class.isAssignableFrom(messageType) ? m53937b(messageInfo) ? C6884u.m30332T(messageType, messageInfo, xtj.m58335b(), AbstractC6878o.m30292b(), C6854a0.m29775R(), m5g.m55544b(), n8j.m55717b()) : C6884u.m30332T(messageType, messageInfo, xtj.m58335b(), AbstractC6878o.m30292b(), C6854a0.m29775R(), null, n8j.m55717b()) : m53937b(messageInfo) ? C6884u.m30332T(messageType, messageInfo, xtj.m58334a(), AbstractC6878o.m30291a(), C6854a0.m29774Q(), m5g.m55543a(), n8j.m55716a()) : C6884u.m30332T(messageType, messageInfo, xtj.m58334a(), AbstractC6878o.m30291a(), C6854a0.m29774Q(), null, n8j.m55716a());
    }

    @Override // com.sunia.HTREnginev2.n4m
    /* renamed from: a */
    public <T> InterfaceC6889z<T> mo53941a(Class<T> messageType) {
        C6854a0.m29768K(messageType);
        xmj mo30246b = this.f68702a.mo30246b(messageType);
        return mo30246b.mo29493a() ? GeneratedMessageLite.class.isAssignableFrom(messageType) ? C6885v.m30406l(C6854a0.m29775R(), m5g.m55544b(), mo30246b.mo29494b()) : C6885v.m30406l(C6854a0.m29774Q(), m5g.m55543a(), mo30246b.mo29494b()) : m53940e(messageType, mo30246b);
    }

    public e8j(ymj messageInfoFactory) {
        this.f68702a = (ymj) Internal.m29344b(messageInfoFactory, "messageInfoFactory");
    }
}
