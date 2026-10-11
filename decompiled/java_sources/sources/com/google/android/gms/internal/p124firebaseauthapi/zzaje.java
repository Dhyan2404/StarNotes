package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.internal.firebase-auth-api.zzaje.zza;
import com.google.android.gms.internal.p124firebaseauthapi.zzaje;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes5.dex */
public abstract class zzaje<MessageType extends zzaje<MessageType, BuilderType>, BuilderType extends zza<MessageType, BuilderType>> extends zzahf<MessageType, BuilderType> {
    private static Map<Object, zzaje<?, ?>> zzc = new ConcurrentHashMap();
    private int zzd = -1;
    protected zzamf zzb = zzamf.zzc();

    /* loaded from: classes5.dex */
    public static abstract class zzb<MessageType extends zzb<MessageType, BuilderType>, BuilderType> extends zzaje<MessageType, BuilderType> implements zzakr {
        protected zzaix<zze> zzc = zzaix.zzb();

        public final zzaix<zze> zza() {
            if (this.zzc.zzf()) {
                this.zzc = (zzaix) this.zzc.clone();
            }
            return this.zzc;
        }
    }

    /* loaded from: classes5.dex */
    public static class zzc<T extends zzaje<T, ?>> extends zzahj<T> {
        private final T zza;

        public zzc(T t) {
            this.zza = t;
        }
    }

    /* loaded from: classes5.dex */
    public static class zzd<ContainingType extends zzakp, Type> extends zzair<ContainingType, Type> {
    }

    /* loaded from: classes5.dex */
    public static final class zze implements zzaiz<zze> {
        @Override // java.lang.Comparable
        public final /* synthetic */ int compareTo(Object obj) {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaiz
        public final int zza() {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaiz
        public final zzamt zzb() {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaiz
        public final zzand zzc() {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaiz
        public final boolean zzd() {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaiz
        public final boolean zze() {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaiz
        public final zzako zza(zzako zzakoVar, zzakp zzakpVar) {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaiz
        public final zzaku zza(zzaku zzakuVar, zzaku zzakuVar2) {
            throw new NoSuchMethodError();
        }
    }

    /* loaded from: classes5.dex */
    public enum zzf {
        public static final int zza = 1;
        public static final int zzb = 2;
        public static final int zzc = 3;
        public static final int zzd = 4;
        public static final int zze = 5;
        public static final int zzf = 6;
        public static final int zzg = 7;
        private static final /* synthetic */ int[] zzh = {1, 2, 3, 4, 5, 6, 7};

        public static int[] zza() {
            return (int[]) zzh.clone();
        }
    }

    private final int zza() {
        return zzald.zza().zza((zzald) this).zzb(this);
    }

    private final int zzb(zzalh<?> zzalhVar) {
        if (zzalhVar == null) {
            return zzald.zza().zza((zzald) this).zza(this);
        }
        return zzalhVar.zza(this);
    }

    public static <E> zzajl<E> zzp() {
        return zzalc.zzd();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return zzald.zza().zza((zzald) this).zzb(this, (zzaje) obj);
        }
        return false;
    }

    public int hashCode() {
        if (zzu()) {
            return zza();
        }
        if (this.zza == 0) {
            this.zza = zza();
        }
        return this.zza;
    }

    public String toString() {
        return zzakq.zza(this, super.toString());
    }

    public abstract Object zza(int i, Object obj, Object obj2);

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzakr
    public final /* synthetic */ zzakp zzh() {
        return (zzaje) zza(zzf.zzf, (Object) null, (Object) null);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzahf
    final int zzi() {
        return this.zzd & Integer.MAX_VALUE;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzakr
    public final boolean zzk() {
        return zza(this, true);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzakp
    public final int zzl() {
        return zza((zzalh) null);
    }

    public final <MessageType extends zzaje<MessageType, BuilderType>, BuilderType extends zza<MessageType, BuilderType>> BuilderType zzm() {
        return (BuilderType) zza(zzf.zze, (Object) null, (Object) null);
    }

    public final BuilderType zzn() {
        return (BuilderType) ((zza) zza(zzf.zze, (Object) null, (Object) null)).zza(this);
    }

    public final MessageType zzo() {
        return (MessageType) zza(zzf.zzd, (Object) null, (Object) null);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzakp
    public final /* synthetic */ zzako zzq() {
        return (zza) zza(zzf.zze, (Object) null, (Object) null);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzakp
    public final /* synthetic */ zzako zzr() {
        return ((zza) zza(zzf.zze, (Object) null, (Object) null)).zza(this);
    }

    public final void zzs() {
        zzald.zza().zza((zzald) this).zzc(this);
        zzt();
    }

    public final void zzt() {
        this.zzd &= Integer.MAX_VALUE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean zzu() {
        return (this.zzd & Integer.MIN_VALUE) != 0;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzahf
    public final int zza(zzalh zzalhVar) {
        if (zzu()) {
            int zzb2 = zzb((zzalh<?>) zzalhVar);
            if (zzb2 >= 0) {
                return zzb2;
            }
            throw new IllegalStateException("serialized size must be non-negative, was " + zzb2);
        }
        if (zzi() != Integer.MAX_VALUE) {
            return zzi();
        }
        int zzb3 = zzb((zzalh<?>) zzalhVar);
        zzb(zzb3);
        return zzb3;
    }

    private static <T extends zzaje<T, ?>> T zzb(T t, zzaho zzahoVar, zzaiq zzaiqVar) throws zzajk {
        zzaic zzc2 = zzahoVar.zzc();
        T t2 = (T) zza(t, zzc2, zzaiqVar);
        try {
            zzc2.zzc(0);
            return t2;
        } catch (zzajk e) {
            throw e.zza(t2);
        }
    }

    /* loaded from: classes5.dex */
    public static abstract class zza<MessageType extends zzaje<MessageType, BuilderType>, BuilderType extends zza<MessageType, BuilderType>> extends zzahh<MessageType, BuilderType> {
        protected MessageType zza;
        private final MessageType zzb;

        public zza(MessageType messagetype) {
            this.zzb = messagetype;
            if (messagetype.zzu()) {
                throw new IllegalArgumentException("Default instance must be immutable.");
            }
            this.zza = (MessageType) messagetype.zzo();
        }

        @Override // com.google.android.gms.internal.p124firebaseauthapi.zzahh
        public /* synthetic */ Object clone() throws CloneNotSupportedException {
            zza zzaVar = (zza) this.zzb.zza(zzf.zze, null, null);
            zzaVar.zza = (MessageType) zzg();
            return zzaVar;
        }

        public final BuilderType zza(MessageType messagetype) {
            if (this.zzb.equals(messagetype)) {
                return this;
            }
            if (!this.zza.zzu()) {
                zzj();
            }
            zza(this.zza, messagetype);
            return this;
        }

        @Override // com.google.android.gms.internal.p124firebaseauthapi.zzahh
        /* renamed from: zzc */
        public final /* synthetic */ zzahh clone() {
            return (zza) clone();
        }

        @Override // com.google.android.gms.internal.p124firebaseauthapi.zzako
        /* renamed from: zzd, reason: merged with bridge method [inline-methods] */
        public final MessageType zzf() {
            MessageType messagetype = (MessageType) zzg();
            if (messagetype.zzk()) {
                return messagetype;
            }
            throw new zzame(messagetype);
        }

        @Override // com.google.android.gms.internal.p124firebaseauthapi.zzako
        /* renamed from: zze, reason: merged with bridge method [inline-methods] */
        public MessageType zzg() {
            if (!this.zza.zzu()) {
                return this.zza;
            }
            this.zza.zzs();
            return this.zza;
        }

        @Override // com.google.android.gms.internal.p124firebaseauthapi.zzakr
        public final /* synthetic */ zzakp zzh() {
            return this.zzb;
        }

        public final void zzi() {
            if (this.zza.zzu()) {
                return;
            }
            zzj();
        }

        public void zzj() {
            MessageType messagetype = (MessageType) this.zzb.zzo();
            zza(messagetype, this.zza);
            this.zza = messagetype;
        }

        @Override // com.google.android.gms.internal.p124firebaseauthapi.zzakr
        public final boolean zzk() {
            return zzaje.zza(this.zza, false);
        }

        private static <MessageType> void zza(MessageType messagetype, MessageType messagetype2) {
            zzald.zza().zza((zzald) messagetype).zza(messagetype, messagetype2);
        }
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzahf
    final void zzb(int i) {
        if (i >= 0) {
            this.zzd = (i & Integer.MAX_VALUE) | (this.zzd & Integer.MIN_VALUE);
        } else {
            throw new IllegalStateException("serialized size must be non-negative, was " + i);
        }
    }

    private static <T extends zzaje<T, ?>> T zza(T t) throws zzajk {
        if (t == null || t.zzk()) {
            return t;
        }
        throw new zzame(t).zza().zza(t);
    }

    public static <T extends zzaje<?, ?>> T zza(Class<T> cls) {
        zzaje<?, ?> zzajeVar = zzc.get(cls);
        if (zzajeVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                zzajeVar = zzc.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        if (zzajeVar == null) {
            zzajeVar = (T) ((zzaje) zzamm.zza(cls)).zza(zzf.zzf, (Object) null, (Object) null);
            if (zzajeVar != null) {
                zzc.put(cls, zzajeVar);
            } else {
                throw new IllegalStateException();
            }
        }
        return (T) zzajeVar;
    }

    public static <T extends zzaje<T, ?>> T zza(T t, zzaho zzahoVar, zzaiq zzaiqVar) throws zzajk {
        return (T) zza(zzb(t, zzahoVar, zzaiqVar));
    }

    public static <T extends zzaje<T, ?>> T zza(T t, InputStream inputStream, zzaiq zzaiqVar) throws zzajk {
        zzaic zzaihVar;
        if (inputStream == null) {
            byte[] bArr = zzajh.zzb;
            zzaihVar = zzaic.zza(bArr, 0, bArr.length, false);
        } else {
            zzaihVar = new zzaih(inputStream);
        }
        return (T) zza(zza(t, zzaihVar, zzaiqVar));
    }

    public static <T extends zzaje<T, ?>> T zza(T t, byte[] bArr, zzaiq zzaiqVar) throws zzajk {
        return (T) zza(zza(t, bArr, 0, bArr.length, zzaiqVar));
    }

    private static <T extends zzaje<T, ?>> T zza(T t, zzaic zzaicVar, zzaiq zzaiqVar) throws zzajk {
        T t2 = (T) t.zzo();
        try {
            zzalh zza2 = zzald.zza().zza((zzald) t2);
            zza2.zza(t2, zzail.zza(zzaicVar), zzaiqVar);
            zza2.zzc(t2);
            return t2;
        } catch (zzajk e) {
            e = e;
            if (e.zzk()) {
                e = new zzajk(e);
            }
            throw e.zza(t2);
        } catch (zzame e2) {
            throw e2.zza().zza(t2);
        } catch (IOException e3) {
            if (e3.getCause() instanceof zzajk) {
                throw ((zzajk) e3.getCause());
            }
            throw new zzajk(e3).zza(t2);
        } catch (RuntimeException e4) {
            if (e4.getCause() instanceof zzajk) {
                throw ((zzajk) e4.getCause());
            }
            throw e4;
        }
    }

    private static <T extends zzaje<T, ?>> T zza(T t, byte[] bArr, int i, int i2, zzaiq zzaiqVar) throws zzajk {
        T t2 = (T) t.zzo();
        try {
            zzalh zza2 = zzald.zza().zza((zzald) t2);
            zza2.zza(t2, bArr, 0, i2, new zzahn(zzaiqVar));
            zza2.zzc(t2);
            return t2;
        } catch (zzajk e) {
            e = e;
            if (e.zzk()) {
                e = new zzajk(e);
            }
            throw e.zza(t2);
        } catch (zzame e2) {
            throw e2.zza().zza(t2);
        } catch (IOException e3) {
            if (e3.getCause() instanceof zzajk) {
                throw ((zzajk) e3.getCause());
            }
            throw new zzajk(e3).zza(t2);
        } catch (IndexOutOfBoundsException unused) {
            throw zzajk.zzi().zza(t2);
        }
    }

    public static <E> zzajl<E> zza(zzajl<E> zzajlVar) {
        int size = zzajlVar.size();
        return zzajlVar.zza(size == 0 ? 10 : size << 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object zza(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e);
        } catch (InvocationTargetException e2) {
            Throwable cause = e2.getCause();
            if (!(cause instanceof RuntimeException)) {
                if (cause instanceof Error) {
                    throw ((Error) cause);
                }
                throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
            }
            throw ((RuntimeException) cause);
        }
    }

    public static Object zza(zzakp zzakpVar, String str, Object[] objArr) {
        return new zzalf(zzakpVar, str, objArr);
    }

    public static <T extends zzaje<?, ?>> void zza(Class<T> cls, T t) {
        t.zzt();
        zzc.put(cls, t);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzakp
    public final void zza(zzaim zzaimVar) throws IOException {
        zzald.zza().zza((zzald) this).zza((zzalh) this, (zzanc) zzaip.zza(zzaimVar));
    }

    public static final <T extends zzaje<T, ?>> boolean zza(T t, boolean z) {
        byte byteValue = ((Byte) t.zza(zzf.zza, null, null)).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        boolean zzd2 = zzald.zza().zza((zzald) t).zzd(t);
        if (z) {
            t.zza(zzf.zzb, zzd2 ? t : null, null);
        }
        return zzd2;
    }
}
