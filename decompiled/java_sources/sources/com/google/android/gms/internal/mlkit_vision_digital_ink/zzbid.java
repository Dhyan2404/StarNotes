package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.math.BigInteger;

/* loaded from: classes5.dex */
public final class zzbid extends zzbhy {
    private final Object zza;

    public zzbid(Boolean bool) {
        this.zza = bool;
    }

    private static boolean zzf(zzbid zzbidVar) {
        Object obj = zzbidVar.zza;
        if (!(obj instanceof Number)) {
            return false;
        }
        Number number = (Number) obj;
        return (number instanceof BigInteger) || (number instanceof Long) || (number instanceof Integer) || (number instanceof Short) || (number instanceof Byte);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzbid.class != obj.getClass()) {
            return false;
        }
        zzbid zzbidVar = (zzbid) obj;
        if (this.zza == null) {
            return zzbidVar.zza == null;
        }
        if (zzf(this) && zzf(zzbidVar)) {
            return zza().longValue() == zzbidVar.zza().longValue();
        }
        Object obj2 = this.zza;
        if (!(obj2 instanceof Number) || !(zzbidVar.zza instanceof Number)) {
            return obj2.equals(zzbidVar.zza);
        }
        double doubleValue = zza().doubleValue();
        double doubleValue2 = zzbidVar.zza().doubleValue();
        if (doubleValue != doubleValue2) {
            return Double.isNaN(doubleValue) && Double.isNaN(doubleValue2);
        }
        return true;
    }

    public final int hashCode() {
        long doubleToLongBits;
        if (this.zza == null) {
            return 31;
        }
        if (zzf(this)) {
            doubleToLongBits = zza().longValue();
        } else {
            Object obj = this.zza;
            if (!(obj instanceof Number)) {
                return obj.hashCode();
            }
            doubleToLongBits = Double.doubleToLongBits(zza().doubleValue());
        }
        return (int) ((doubleToLongBits >>> 32) ^ doubleToLongBits);
    }

    public final Number zza() {
        Object obj = this.zza;
        if (obj instanceof Number) {
            return (Number) obj;
        }
        if (obj instanceof String) {
            return new zzbjv((String) obj);
        }
        throw new UnsupportedOperationException("Primitive is neither a number nor a string");
    }

    public final String zzb() {
        Object obj = this.zza;
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof Number) {
            return zza().toString();
        }
        if (obj instanceof Boolean) {
            return ((Boolean) obj).toString();
        }
        throw new AssertionError("Unexpected value type: ".concat(String.valueOf(obj.getClass())));
    }

    public final boolean zzc() {
        Object obj = this.zza;
        return obj instanceof Boolean ? ((Boolean) obj).booleanValue() : Boolean.parseBoolean(zzb());
    }

    public final boolean zzd() {
        return this.zza instanceof Boolean;
    }

    public final boolean zze() {
        return this.zza instanceof Number;
    }

    public zzbid(Number number) {
        this.zza = number;
    }

    public zzbid(String str) {
        str.getClass();
        this.zza = str;
    }
}
