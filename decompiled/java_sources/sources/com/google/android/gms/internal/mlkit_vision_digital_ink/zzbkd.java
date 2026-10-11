package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Comparator;
import java.util.Map;
import java.util.Set;

/* loaded from: classes5.dex */
public final class zzbkd extends AbstractMap implements Serializable {
    private static final Comparator zze = new zzbjw();
    zzbkc zza;
    int zzb;
    int zzc;
    final zzbkc zzd;
    private final Comparator zzf;
    private final boolean zzg;
    private zzbjy zzh;
    private zzbka zzi;

    public zzbkd() {
        this(zze, true);
    }

    private final void zzf(zzbkc zzbkcVar, boolean z) {
        while (zzbkcVar != null) {
            zzbkc zzbkcVar2 = zzbkcVar.zzb;
            zzbkc zzbkcVar3 = zzbkcVar.zzc;
            int i = zzbkcVar2 != null ? zzbkcVar2.zzi : 0;
            int i2 = zzbkcVar3 != null ? zzbkcVar3.zzi : 0;
            int i3 = i - i2;
            if (i3 == -2) {
                zzbkc zzbkcVar4 = zzbkcVar3.zzb;
                zzbkc zzbkcVar5 = zzbkcVar3.zzc;
                int i4 = (zzbkcVar4 != null ? zzbkcVar4.zzi : 0) - (zzbkcVar5 != null ? zzbkcVar5.zzi : 0);
                if (i4 == -1 || (i4 == 0 && !z)) {
                    zzh(zzbkcVar);
                } else {
                    zzi(zzbkcVar3);
                    zzh(zzbkcVar);
                }
                if (z) {
                    return;
                }
            } else if (i3 == 2) {
                zzbkc zzbkcVar6 = zzbkcVar2.zzb;
                zzbkc zzbkcVar7 = zzbkcVar2.zzc;
                int i5 = (zzbkcVar6 != null ? zzbkcVar6.zzi : 0) - (zzbkcVar7 != null ? zzbkcVar7.zzi : 0);
                if (i5 == 1 || (i5 == 0 && !z)) {
                    zzi(zzbkcVar);
                } else {
                    zzh(zzbkcVar2);
                    zzi(zzbkcVar);
                }
                if (z) {
                    return;
                }
            } else if (i3 == 0) {
                zzbkcVar.zzi = i + 1;
                if (z) {
                    return;
                }
            } else {
                zzbkcVar.zzi = Math.max(i, i2) + 1;
                if (!z) {
                    return;
                }
            }
            zzbkcVar = zzbkcVar.zza;
        }
    }

    private final void zzg(zzbkc zzbkcVar, zzbkc zzbkcVar2) {
        zzbkc zzbkcVar3 = zzbkcVar.zza;
        zzbkcVar.zza = null;
        if (zzbkcVar2 != null) {
            zzbkcVar2.zza = zzbkcVar3;
        }
        if (zzbkcVar3 == null) {
            this.zza = zzbkcVar2;
        } else if (zzbkcVar3.zzb == zzbkcVar) {
            zzbkcVar3.zzb = zzbkcVar2;
        } else {
            zzbkcVar3.zzc = zzbkcVar2;
        }
    }

    private final void zzh(zzbkc zzbkcVar) {
        zzbkc zzbkcVar2 = zzbkcVar.zzb;
        zzbkc zzbkcVar3 = zzbkcVar.zzc;
        zzbkc zzbkcVar4 = zzbkcVar3.zzb;
        zzbkc zzbkcVar5 = zzbkcVar3.zzc;
        zzbkcVar.zzc = zzbkcVar4;
        if (zzbkcVar4 != null) {
            zzbkcVar4.zza = zzbkcVar;
        }
        zzg(zzbkcVar, zzbkcVar3);
        zzbkcVar3.zzb = zzbkcVar;
        zzbkcVar.zza = zzbkcVar3;
        int max = Math.max(zzbkcVar2 != null ? zzbkcVar2.zzi : 0, zzbkcVar4 != null ? zzbkcVar4.zzi : 0) + 1;
        zzbkcVar.zzi = max;
        zzbkcVar3.zzi = Math.max(max, zzbkcVar5 != null ? zzbkcVar5.zzi : 0) + 1;
    }

    private final void zzi(zzbkc zzbkcVar) {
        zzbkc zzbkcVar2 = zzbkcVar.zzb;
        zzbkc zzbkcVar3 = zzbkcVar.zzc;
        zzbkc zzbkcVar4 = zzbkcVar2.zzb;
        zzbkc zzbkcVar5 = zzbkcVar2.zzc;
        zzbkcVar.zzb = zzbkcVar5;
        if (zzbkcVar5 != null) {
            zzbkcVar5.zza = zzbkcVar;
        }
        zzg(zzbkcVar, zzbkcVar2);
        zzbkcVar2.zzc = zzbkcVar;
        zzbkcVar.zza = zzbkcVar2;
        int max = Math.max(zzbkcVar3 != null ? zzbkcVar3.zzi : 0, zzbkcVar5 != null ? zzbkcVar5.zzi : 0) + 1;
        zzbkcVar.zzi = max;
        zzbkcVar2.zzi = Math.max(max, zzbkcVar4 != null ? zzbkcVar4.zzi : 0) + 1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        this.zza = null;
        this.zzb = 0;
        this.zzc++;
        zzbkc zzbkcVar = this.zzd;
        zzbkcVar.zze = zzbkcVar;
        zzbkcVar.zzd = zzbkcVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        return zzc(obj) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        zzbjy zzbjyVar = this.zzh;
        if (zzbjyVar != null) {
            return zzbjyVar;
        }
        zzbjy zzbjyVar2 = new zzbjy(this);
        this.zzh = zzbjyVar2;
        return zzbjyVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        zzbkc zzc = zzc(obj);
        if (zzc != null) {
            return zzc.zzh;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set keySet() {
        zzbka zzbkaVar = this.zzi;
        if (zzbkaVar != null) {
            return zzbkaVar;
        }
        zzbka zzbkaVar2 = new zzbka(this);
        this.zzi = zzbkaVar2;
        return zzbkaVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object put(Object obj, Object obj2) {
        if (obj == null) {
            throw new NullPointerException("key == null");
        }
        if (obj2 == null && !this.zzg) {
            throw new NullPointerException("value == null");
        }
        zzbkc zza = zza(obj, true);
        Object obj3 = zza.zzh;
        zza.zzh = obj2;
        return obj3;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        zzbkc zzd = zzd(obj);
        if (zzd != null) {
            return zzd.zzh;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.zzb;
    }

    public final zzbkc zza(Object obj, boolean z) {
        int i;
        zzbkc zzbkcVar;
        Comparator comparator = this.zzf;
        zzbkc zzbkcVar2 = this.zza;
        if (zzbkcVar2 != null) {
            Comparable comparable = comparator == zze ? (Comparable) obj : null;
            while (true) {
                i = comparable != null ? comparable.compareTo(zzbkcVar2.zzf) : comparator.compare(obj, zzbkcVar2.zzf);
                if (i == 0) {
                    return zzbkcVar2;
                }
                zzbkc zzbkcVar3 = i < 0 ? zzbkcVar2.zzb : zzbkcVar2.zzc;
                if (zzbkcVar3 == null) {
                    break;
                }
                zzbkcVar2 = zzbkcVar3;
            }
        } else {
            i = 0;
        }
        if (!z) {
            return null;
        }
        zzbkc zzbkcVar4 = this.zzd;
        if (zzbkcVar2 != null) {
            zzbkcVar = new zzbkc(this.zzg, zzbkcVar2, obj, zzbkcVar4, zzbkcVar4.zze);
            if (i < 0) {
                zzbkcVar2.zzb = zzbkcVar;
            } else {
                zzbkcVar2.zzc = zzbkcVar;
            }
            zzf(zzbkcVar2, true);
        } else {
            if (comparator == zze && !(obj instanceof Comparable)) {
                throw new ClassCastException(obj.getClass().getName().concat(" is not Comparable"));
            }
            zzbkcVar = new zzbkc(this.zzg, null, obj, zzbkcVar4, zzbkcVar4.zze);
            this.zza = zzbkcVar;
        }
        this.zzb++;
        this.zzc++;
        return zzbkcVar;
    }

    public final zzbkc zzb(Map.Entry entry) {
        zzbkc zzc = zzc(entry.getKey());
        if (zzc == null) {
            return null;
        }
        Object obj = zzc.zzh;
        Object value = entry.getValue();
        if (obj == value || (obj != null && obj.equals(value))) {
            return zzc;
        }
        return null;
    }

    public final zzbkc zzc(Object obj) {
        if (obj == null) {
            return null;
        }
        try {
            return zza(obj, false);
        } catch (ClassCastException unused) {
            return null;
        }
    }

    public final zzbkc zzd(Object obj) {
        zzbkc zzc = zzc(obj);
        if (zzc != null) {
            zze(zzc, true);
        }
        return zzc;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x002f, code lost:
    
        zze(r0, false);
        r8 = r7.zzb;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0034, code lost:
    
        if (r8 == null) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0036, code lost:
    
        r1 = r8.zzi;
        r0.zzb = r8;
        r8.zza = r0;
        r7.zzb = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0040, code lost:
    
        r8 = r7.zzc;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0042, code lost:
    
        if (r8 == null) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0044, code lost:
    
        r2 = r8.zzi;
        r0.zzc = r8;
        r8.zza = r0;
        r7.zzc = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x004c, code lost:
    
        r0.zzi = java.lang.Math.max(r1, r2) + 1;
        zzg(r7, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0057, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x003f, code lost:
    
        r1 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0026, code lost:
    
        r5 = r0;
        r0 = r0.zzb;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x002b, code lost:
    
        if (r0 == null) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x002e, code lost:
    
        r0 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x001c, code lost:
    
        if (r8.zzi > r0.zzi) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x001e, code lost:
    
        r0 = r8;
        r8 = r8.zzc;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0023, code lost:
    
        if (r8 == null) goto L32;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zze(com.google.android.gms.internal.mlkit_vision_digital_ink.zzbkc r7, boolean r8) {
        /*
            r6 = this;
            if (r8 == 0) goto Lc
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzbkc r8 = r7.zze
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzbkc r0 = r7.zzd
            r8.zzd = r0
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzbkc r0 = r7.zzd
            r0.zze = r8
        Lc:
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzbkc r8 = r7.zzb
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzbkc r0 = r7.zzc
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzbkc r1 = r7.zza
            r2 = 0
            r3 = 0
            if (r8 == 0) goto L58
            if (r0 == 0) goto L58
            int r1 = r8.zzi
            int r4 = r0.zzi
            if (r1 <= r4) goto L26
        L1e:
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzbkc r0 = r8.zzc
            r5 = r0
            r0 = r8
            r8 = r5
            if (r8 == 0) goto L2f
            goto L1e
        L26:
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzbkc r8 = r0.zzb
            r5 = r0
            r0 = r8
            r8 = r5
            if (r0 == 0) goto L2e
            goto L26
        L2e:
            r0 = r8
        L2f:
            r6.zze(r0, r2)
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzbkc r8 = r7.zzb
            if (r8 == 0) goto L3f
            int r1 = r8.zzi
            r0.zzb = r8
            r8.zza = r0
            r7.zzb = r3
            goto L40
        L3f:
            r1 = r2
        L40:
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzbkc r8 = r7.zzc
            if (r8 == 0) goto L4c
            int r2 = r8.zzi
            r0.zzc = r8
            r8.zza = r0
            r7.zzc = r3
        L4c:
            int r8 = java.lang.Math.max(r1, r2)
            int r8 = r8 + 1
            r0.zzi = r8
            r6.zzg(r7, r0)
            return
        L58:
            if (r8 == 0) goto L60
            r6.zzg(r7, r8)
            r7.zzb = r3
            goto L6b
        L60:
            if (r0 == 0) goto L68
            r6.zzg(r7, r0)
            r7.zzc = r3
            goto L6b
        L68:
            r6.zzg(r7, r3)
        L6b:
            r6.zzf(r1, r2)
            int r7 = r6.zzb
            int r7 = r7 + (-1)
            r6.zzb = r7
            int r7 = r6.zzc
            int r7 = r7 + 1
            r6.zzc = r7
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.mlkit_vision_digital_ink.zzbkd.zze(com.google.android.gms.internal.mlkit_vision_digital_ink.zzbkc, boolean):void");
    }

    public zzbkd(Comparator comparator, boolean z) {
        this.zzb = 0;
        this.zzc = 0;
        this.zzf = comparator;
        this.zzg = z;
        this.zzd = new zzbkc(z);
    }

    public zzbkd(boolean z) {
        this(zze, false);
    }
}
