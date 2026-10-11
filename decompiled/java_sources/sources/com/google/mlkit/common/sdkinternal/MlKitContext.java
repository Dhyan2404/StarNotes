package com.google.mlkit.common.sdkinternal;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.TaskExecutors;
import com.google.firebase.components.Component;
import com.google.firebase.components.ComponentDiscovery;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.components.ComponentRuntime;
import com.google.mlkit.common.internal.MlKitComponentDiscoveryService;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.Executor;

@KeepForSdk
/* loaded from: classes6.dex */
public class MlKitContext {

    /* renamed from: b */
    public static final Object f36558b = new Object();

    /* renamed from: c */
    @Nullable
    public static MlKitContext f36559c;

    /* renamed from: a */
    @Nullable
    public ComponentRuntime f36560a;

    /* renamed from: a */
    public static Context m28530a(Context context) {
        Context applicationContext = context.getApplicationContext();
        return applicationContext != null ? applicationContext : context;
    }

    @NonNull
    @KeepForSdk
    public static MlKitContext getInstance() {
        MlKitContext mlKitContext;
        synchronized (f36558b) {
            Preconditions.checkState(f36559c != null, "MlKitContext has not been initialized");
            mlKitContext = (MlKitContext) Preconditions.checkNotNull(f36559c);
        }
        return mlKitContext;
    }

    @NonNull
    @KeepForSdk
    public static MlKitContext initialize(@NonNull Context context, @NonNull List<ComponentRegistrar> list) {
        MlKitContext mlKitContext;
        synchronized (f36558b) {
            Preconditions.checkState(f36559c == null, "MlKitContext is already initialized");
            MlKitContext mlKitContext2 = new MlKitContext();
            f36559c = mlKitContext2;
            Context m28530a = m28530a(context);
            HashMap hashMap = new HashMap();
            for (ComponentRegistrar componentRegistrar : list) {
                hashMap.put(componentRegistrar.getClass(), componentRegistrar);
            }
            ComponentRuntime componentRuntime = new ComponentRuntime(TaskExecutors.MAIN_THREAD, new ArrayList(hashMap.values()), Component.m28020of(m28530a, (Class<Context>) Context.class, (Class<? super Context>[]) new Class[0]), Component.m28020of(mlKitContext2, (Class<MlKitContext>) MlKitContext.class, (Class<? super MlKitContext>[]) new Class[0]));
            mlKitContext2.f36560a = componentRuntime;
            componentRuntime.initializeEagerComponents(true);
            mlKitContext = f36559c;
        }
        return mlKitContext;
    }

    @NonNull
    @KeepForSdk
    public static MlKitContext initializeIfNeeded(@NonNull Context context) {
        MlKitContext mlKitContext;
        synchronized (f36558b) {
            mlKitContext = f36559c;
            if (mlKitContext == null) {
                mlKitContext = zza(context);
            }
        }
        return mlKitContext;
    }

    @NonNull
    public static MlKitContext zza(@NonNull Context context) {
        MlKitContext zzb;
        synchronized (f36558b) {
            zzb = zzb(context, TaskExecutors.MAIN_THREAD);
        }
        return zzb;
    }

    @NonNull
    public static MlKitContext zzb(@NonNull Context context, @NonNull Executor executor) {
        MlKitContext mlKitContext;
        synchronized (f36558b) {
            Preconditions.checkState(f36559c == null, "MlKitContext is already initialized");
            MlKitContext mlKitContext2 = new MlKitContext();
            f36559c = mlKitContext2;
            Context m28530a = m28530a(context);
            ComponentRuntime build = ComponentRuntime.builder(executor).addLazyComponentRegistrars(ComponentDiscovery.forContext(m28530a, MlKitComponentDiscoveryService.class).discoverLazy()).addComponent(Component.m28020of(m28530a, (Class<Context>) Context.class, (Class<? super Context>[]) new Class[0])).addComponent(Component.m28020of(mlKitContext2, (Class<MlKitContext>) MlKitContext.class, (Class<? super MlKitContext>[]) new Class[0])).build();
            mlKitContext2.f36560a = build;
            build.initializeEagerComponents(true);
            mlKitContext = f36559c;
        }
        return mlKitContext;
    }

    @NonNull
    @KeepForSdk
    public <T> T get(@NonNull Class<T> cls) {
        Preconditions.checkState(f36559c == this, "MlKitContext has been deleted");
        Preconditions.checkNotNull(this.f36560a);
        return (T) this.f36560a.get(cls);
    }

    @NonNull
    @KeepForSdk
    public Context getApplicationContext() {
        return (Context) get(Context.class);
    }

    @NonNull
    @KeepForSdk
    public static MlKitContext initializeIfNeeded(@NonNull Context context, @NonNull List<ComponentRegistrar> list) {
        MlKitContext mlKitContext;
        synchronized (f36558b) {
            mlKitContext = f36559c;
            if (mlKitContext == null) {
                mlKitContext = initialize(context, list);
            }
        }
        return mlKitContext;
    }

    @NonNull
    @KeepForSdk
    public static MlKitContext initializeIfNeeded(@NonNull Context context, @NonNull Executor executor) {
        MlKitContext mlKitContext;
        synchronized (f36558b) {
            mlKitContext = f36559c;
            if (mlKitContext == null) {
                mlKitContext = zzb(context, executor);
            }
        }
        return mlKitContext;
    }
}
