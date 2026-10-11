package com.oplus.ocs.base.common.api;

import android.content.Context;
import com.oplus.ocs.base.IAuthenticationListener;
import com.oplus.ocs.base.utils.ServiceCheck;

/* renamed from: com.oplus.ocs.base.common.api.b */
/* loaded from: classes9.dex */
public class C13035b {

    /* renamed from: a */
    private static volatile C13035b f63035a;

    private C13035b() {
    }

    /* renamed from: a */
    public static C13035b m52174a() {
        if (f63035a == null) {
            synchronized (C13035b.class) {
                if (f63035a == null) {
                    f63035a = new C13035b();
                }
            }
        }
        return f63035a;
    }

    /* renamed from: a */
    public static InterfaceC13038e m52176a(Context context, String str, HandlerC13036c handlerC13036c, InterfaceC13044k interfaceC13044k) {
        if (ServiceCheck.check(context, "com.oplus.ocs")) {
            return new C13040g(context, str, handlerC13036c, interfaceC13044k);
        }
        if (ServiceCheck.check(context, "com.coloros.ocs.opencapabilityservice")) {
            return new C13034a(context, str, handlerC13036c, interfaceC13044k);
        }
        return null;
    }

    /* renamed from: a */
    public static InterfaceC13038e m52175a(Context context, InternalClient internalClient, IAuthenticationListener iAuthenticationListener) {
        if (ServiceCheck.check(context, "com.oplus.ocs")) {
            return new C13041h(context, internalClient, iAuthenticationListener);
        }
        if (ServiceCheck.check(context, "com.coloros.ocs.opencapabilityservice")) {
            return new C13039f(context, internalClient, iAuthenticationListener);
        }
        return null;
    }
}
