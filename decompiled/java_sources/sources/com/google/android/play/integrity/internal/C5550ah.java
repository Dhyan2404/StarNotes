package com.google.android.play.integrity.internal;

import com.onyx.android.sdk.base.data.font.TTCFont;

/* renamed from: com.google.android.play.integrity.internal.ah */
/* loaded from: classes6.dex */
public final class C5550ah implements InterfaceC5554al {

    /* renamed from: c */
    public static final Object f33476c = new Object();

    /* renamed from: a */
    public volatile InterfaceC5554al f33477a;

    /* renamed from: b */
    public volatile Object f33478b = f33476c;

    public C5550ah(InterfaceC5554al interfaceC5554al) {
        this.f33477a = interfaceC5554al;
    }

    /* renamed from: b */
    public static InterfaceC5554al m25728b(InterfaceC5554al interfaceC5554al) {
        return interfaceC5554al instanceof C5550ah ? interfaceC5554al : new C5550ah(interfaceC5554al);
    }

    @Override // com.google.android.play.integrity.internal.InterfaceC5554al
    /* renamed from: a */
    public final Object mo25669a() {
        Object obj = this.f33478b;
        Object obj2 = f33476c;
        if (obj == obj2) {
            synchronized (this) {
                obj = this.f33478b;
                if (obj == obj2) {
                    obj = this.f33477a.mo25669a();
                    Object obj3 = this.f33478b;
                    if (obj3 != obj2 && obj3 != obj) {
                        throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj3 + TTCFont.FONT_NAME_DELIMITER + obj + ". This is likely due to a circular dependency.");
                    }
                    this.f33478b = obj;
                    this.f33477a = null;
                }
            }
        }
        return obj;
    }
}
