package io.grpc;

import io.grpc.Context;
import java.util.logging.Level;
import java.util.logging.Logger;

/* renamed from: io.grpc.a */
/* loaded from: classes10.dex */
public final class C17106a extends Context.Storage {

    /* renamed from: a */
    public static final Logger f94624a = Logger.getLogger(C17106a.class.getName());

    /* renamed from: b */
    public static final ThreadLocal<Context> f94625b = new ThreadLocal<>();

    @Override // io.grpc.Context.Storage
    public Context current() {
        Context context = f94625b.get();
        return context == null ? Context.ROOT : context;
    }

    @Override // io.grpc.Context.Storage
    public void detach(Context context, Context context2) {
        if (current() != context) {
            f94624a.log(Level.SEVERE, "Context was not attached when detaching", new Throwable().fillInStackTrace());
        }
        if (context2 != Context.ROOT) {
            f94625b.set(context2);
        } else {
            f94625b.set(null);
        }
    }

    @Override // io.grpc.Context.Storage
    public Context doAttach(Context context) {
        Context current = current();
        f94625b.set(context);
        return current;
    }
}
