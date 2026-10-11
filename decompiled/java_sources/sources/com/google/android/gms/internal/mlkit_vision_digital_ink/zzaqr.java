package com.google.android.gms.internal.mlkit_vision_digital_ink;

import com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqa;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.CheckForNull;

/* loaded from: classes5.dex */
abstract class zzaqr extends zzaqa.zzi {
    private static final zzaqn zza;
    private static final Logger zzb = Logger.getLogger(zzaqr.class.getName());
    private volatile int remaining;

    @CheckForNull
    private volatile Set<Throwable> seenExceptions = null;

    static {
        zzaqn zzaqqVar;
        Throwable th;
        zzaqp zzaqpVar = null;
        try {
            zzaqqVar = new zzaqo(AtomicReferenceFieldUpdater.newUpdater(zzaqr.class, Set.class, "seenExceptions"), AtomicIntegerFieldUpdater.newUpdater(zzaqr.class, "remaining"));
            th = null;
        } catch (Error | RuntimeException e) {
            zzaqqVar = new zzaqq(zzaqpVar);
            th = e;
        }
        zza = zzaqqVar;
        if (th != null) {
            zzb.logp(Level.SEVERE, "com.google.common.util.concurrent.AggregateFutureState", Constants.STATIC_INITIALIZER_NAME, "SafeAtomicHelper is broken!", th);
        }
    }

    public zzaqr(int i) {
        this.remaining = i;
    }

    public final int zzA() {
        return zza.zza(this);
    }

    public final Set zzC() {
        Set<Throwable> set = this.seenExceptions;
        if (set != null) {
            return set;
        }
        Set newSetFromMap = Collections.newSetFromMap(new ConcurrentHashMap());
        zzd(newSetFromMap);
        zza.zzb(this, null, newSetFromMap);
        Set<Throwable> set2 = this.seenExceptions;
        set2.getClass();
        return set2;
    }

    public final void zzF() {
        this.seenExceptions = null;
    }

    public abstract void zzd(Set set);
}
