package com.google.android.gms.internal.mlkit_vision_digital_ink;

import com.google.android.gms.internal.mlkit_vision_digital_ink.zzbub;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes5.dex */
public abstract class zzbui<MessageType extends zzbui<MessageType, BuilderType>, BuilderType extends zzbub<MessageType, BuilderType>> extends zzbsd<MessageType, BuilderType> {
    private static final Map zza = new ConcurrentHashMap();
    public static final /* synthetic */ int zzd = 0;
    private int zze = -1;
    protected zzbxd zzc = zzbxd.zzc();

    public static zzbug zzP(zzbvu zzbvuVar, Object obj, zzbvu zzbvuVar2, zzbul zzbulVar, int i, zzbxs zzbxsVar, Class cls) {
        return new zzbug(zzbvuVar, obj, zzbvuVar2, new zzbuf(null, 43, zzbxsVar, false, false), cls);
    }

    public static /* bridge */ /* synthetic */ zzbui zzQ(zzbui zzbuiVar, byte[] bArr, int i, int i2, zzbtr zzbtrVar) {
        return zze(zzbuiVar, bArr, i, i2, zzbtrVar);
    }

    public static zzbui zzR(Class cls) {
        Map map = zza;
        zzbui zzbuiVar = (zzbui) map.get(cls);
        if (zzbuiVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                zzbuiVar = (zzbui) map.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        if (zzbuiVar == null) {
            zzbuiVar = (zzbui) ((zzbui) zzbxm.zze(cls)).zzb(6, null, null);
            if (zzbuiVar == null) {
                throw new IllegalStateException();
            }
            map.put(cls, zzbuiVar);
        }
        return zzbuiVar;
    }

    public static zzbui zzT(zzbui zzbuiVar, byte[] bArr, zzbtr zzbtrVar) throws zzbut {
        zzbui zze = zze(zzbuiVar, bArr, 0, bArr.length, zzbtrVar);
        if (zze == null || zze.zzal()) {
            return zze;
        }
        zzbut zza2 = new zzbxb(zze).zza();
        zza2.zzh(zze);
        throw zza2;
    }

    public static zzbui zzU(zzbui zzbuiVar, zzbtf zzbtfVar, zzbtr zzbtrVar) throws zzbut {
        zzbui zzS = zzbuiVar.zzS();
        try {
            zzbwi zzb = zzbwe.zza().zzb(zzS.getClass());
            zzb.zzh(zzS, zzbtg.zzq(zzbtfVar), zzbtrVar);
            zzb.zzf(zzS);
            return zzS;
        } catch (zzbut e) {
            e = e;
            if (e.zzl()) {
                e = new zzbut(e);
            }
            e.zzh(zzS);
            throw e;
        } catch (zzbxb e2) {
            zzbut zza2 = e2.zza();
            zza2.zzh(zzS);
            throw zza2;
        } catch (IOException e3) {
            if (e3.getCause() instanceof zzbut) {
                throw ((zzbut) e3.getCause());
            }
            zzbut zzbutVar = new zzbut(e3);
            zzbutVar.zzh(zzS);
            throw zzbutVar;
        } catch (RuntimeException e4) {
            if (e4.getCause() instanceof zzbut) {
                throw ((zzbut) e4.getCause());
            }
            throw e4;
        }
    }

    public static zzbun zzV() {
        return zzbuj.zzf();
    }

    public static zzbuq zzW() {
        return zzbwf.zze();
    }

    public static zzbuq zzX(zzbuq zzbuqVar) {
        int size = zzbuqVar.size();
        return zzbuqVar.zzd(size == 0 ? 10 : size + size);
    }

    public static Object zzZ(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e);
        } catch (InvocationTargetException e2) {
            Throwable cause = e2.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
        }
    }

    public static Object zzaa(zzbvu zzbvuVar, String str, Object[] objArr) {
        return new zzbwg(zzbvuVar, str, objArr);
    }

    public static void zzad(Class cls, zzbui zzbuiVar) {
        zzbuiVar.zzac();
        zza.put(cls, zzbuiVar);
    }

    public static final boolean zzaf(zzbui zzbuiVar, boolean z) {
        byte byteValue = ((Byte) zzbuiVar.zzb(1, null, null)).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        boolean zzl = zzbwe.zza().zzb(zzbuiVar.getClass()).zzl(zzbuiVar);
        if (z) {
            zzbuiVar.zzb(2, true != zzl ? null : zzbuiVar, null);
        }
        return zzl;
    }

    private final int zzc(zzbwi zzbwiVar) {
        if (zzbwiVar != null) {
            return zzbwiVar.zza(this);
        }
        return zzbwe.zza().zzb(getClass()).zza(this);
    }

    public static zzbui zze(zzbui zzbuiVar, byte[] bArr, int i, int i2, zzbtr zzbtrVar) throws zzbut {
        zzbui zzS = zzbuiVar.zzS();
        try {
            zzbwi zzb = zzbwe.zza().zzb(zzS.getClass());
            zzb.zzi(zzS, bArr, i, i + i2, new zzbsl(zzbtrVar));
            zzb.zzf(zzS);
            return zzS;
        } catch (zzbut e) {
            e = e;
            if (e.zzl()) {
                e = new zzbut(e);
            }
            e.zzh(zzS);
            throw e;
        } catch (zzbxb e2) {
            zzbut zza2 = e2.zza();
            zza2.zzh(zzS);
            throw zza2;
        } catch (IOException e3) {
            if (e3.getCause() instanceof zzbut) {
                throw ((zzbut) e3.getCause());
            }
            zzbut zzbutVar = new zzbut(e3);
            zzbutVar.zzh(zzS);
            throw zzbutVar;
        } catch (IndexOutOfBoundsException unused) {
            zzbut zzj = zzbut.zzj();
            zzj.zzh(zzS);
            throw zzj;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return zzbwe.zza().zzb(getClass()).zzk(this, (zzbui) obj);
    }

    public final int hashCode() {
        if (zzag()) {
            return zzL();
        }
        int i = this.zzb;
        if (i != 0) {
            return i;
        }
        int zzL = zzL();
        this.zzb = zzL;
        return zzL;
    }

    public final String toString() {
        return zzbvw.zza(this, super.toString());
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbsd
    public final int zzG(zzbwi zzbwiVar) {
        if (zzag()) {
            int zzc = zzc(zzbwiVar);
            if (zzc >= 0) {
                return zzc;
            }
            throw new IllegalStateException("serialized size must be non-negative, was " + zzc);
        }
        int i = this.zze & Integer.MAX_VALUE;
        if (i != Integer.MAX_VALUE) {
            return i;
        }
        int zzc2 = zzc(zzbwiVar);
        if (zzc2 >= 0) {
            this.zze = (this.zze & Integer.MIN_VALUE) | zzc2;
            return zzc2;
        }
        throw new IllegalStateException("serialized size must be non-negative, was " + zzc2);
    }

    public final int zzL() {
        return zzbwe.zza().zzb(getClass()).zzb(this);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbvu
    public final int zzM() {
        if (zzag()) {
            int zzc = zzc(null);
            if (zzc >= 0) {
                return zzc;
            }
            throw new IllegalStateException("serialized size must be non-negative, was " + zzc);
        }
        int i = this.zze & Integer.MAX_VALUE;
        if (i == Integer.MAX_VALUE) {
            i = zzc(null);
            if (i < 0) {
                throw new IllegalStateException("serialized size must be non-negative, was " + i);
            }
            this.zze = (this.zze & Integer.MIN_VALUE) | i;
        }
        return i;
    }

    public final zzbub zzN() {
        return (zzbub) zzb(5, null, null);
    }

    public final zzbub zzO() {
        zzbub zzbubVar = (zzbub) zzb(5, null, null);
        zzbubVar.zzt(this);
        return zzbubVar;
    }

    public final zzbui zzS() {
        return (zzbui) zzb(4, null, null);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbvu
    public final zzbwc zzY() {
        return (zzbwc) zzb(7, null, null);
    }

    public final void zzab() {
        zzbwe.zza().zzb(getClass()).zzf(this);
        zzac();
    }

    public final void zzac() {
        this.zze &= Integer.MAX_VALUE;
    }

    public final void zzae(int i) {
        this.zze = (this.zze & Integer.MIN_VALUE) | Integer.MAX_VALUE;
    }

    public final boolean zzag() {
        return (this.zze & Integer.MIN_VALUE) != 0;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbvu
    public final /* synthetic */ zzbvt zzah() {
        return (zzbub) zzb(5, null, null);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbvu
    public final /* synthetic */ zzbvt zzai() {
        zzbub zzbubVar = (zzbub) zzb(5, null, null);
        zzbubVar.zzt(this);
        return zzbubVar;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbvu
    public final void zzaj(zzbtm zzbtmVar) throws IOException {
        zzbwe.zza().zzb(getClass()).zzj(this, zzbtn.zza(zzbtmVar));
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbvv
    public final /* synthetic */ zzbvu zzak() {
        return (zzbui) zzb(6, null, null);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbvv
    public final boolean zzal() {
        return zzaf(this, true);
    }

    public abstract Object zzb(int i, Object obj, Object obj2);
}
