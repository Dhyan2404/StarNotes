package com.google.android.gms.internal.play_billing;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Arrays;
import java.util.Objects;
import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzdp extends zzcr {
    static final zzcr zza = new zzdp(null, new Object[0], 0);
    final transient Object[] zzb;

    @CheckForNull
    private final transient Object zzc;
    private final transient int zzd;

    private zzdp(@CheckForNull Object obj, Object[] objArr, int i) {
        this.zzc = obj;
        this.zzb = objArr;
        this.zzd = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v8 */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r6v3, types: [java.lang.Object, int[]] */
    /* JADX WARN: Type inference failed for: r6v5 */
    public static zzdp zzg(int i, Object[] objArr, zzcq zzcqVar) {
        byte[] bArr;
        int i2 = i;
        Object[] objArr2 = objArr;
        if (i2 == 0) {
            return (zzdp) zza;
        }
        Object obj = null;
        if (i2 == 1) {
            Object obj2 = objArr2[0];
            Objects.requireNonNull(obj2);
            Object obj3 = objArr2[1];
            Objects.requireNonNull(obj3);
            zzbw.zzb(obj2, obj3);
            return new zzdp(null, objArr2, 1);
        }
        zzbe.zzb(i2, objArr2.length >> 1, FirebaseAnalytics.Param.INDEX);
        int zzh = zzcv.zzh(i);
        if (i2 == 1) {
            Object obj4 = objArr2[0];
            Objects.requireNonNull(obj4);
            Object obj5 = objArr2[1];
            Objects.requireNonNull(obj5);
            zzbw.zzb(obj4, obj5);
            i2 = 1;
        } else {
            int i3 = zzh - 1;
            char c = 65535;
            if (zzh <= 128) {
                bArr = new byte[zzh];
                Arrays.fill(bArr, (byte) -1);
                int i4 = 0;
                for (int i5 = 0; i5 < i2; i5++) {
                    int i6 = i4 + i4;
                    int i7 = i5 + i5;
                    Object obj6 = objArr2[i7];
                    Objects.requireNonNull(obj6);
                    Object obj7 = objArr2[i7 ^ 1];
                    Objects.requireNonNull(obj7);
                    zzbw.zzb(obj6, obj7);
                    int zza2 = zzcg.zza(obj6.hashCode());
                    while (true) {
                        int i8 = zza2 & i3;
                        int i9 = bArr[i8] & 255;
                        if (i9 == 255) {
                            bArr[i8] = (byte) i6;
                            if (i4 < i5) {
                                objArr2[i6] = obj6;
                                objArr2[i6 ^ 1] = obj7;
                            }
                            i4++;
                        } else {
                            if (obj6.equals(objArr2[i9])) {
                                int i10 = i9 ^ 1;
                                Object obj8 = objArr2[i10];
                                Objects.requireNonNull(obj8);
                                zzcp zzcpVar = new zzcp(obj6, obj7, obj8);
                                objArr2[i10] = obj7;
                                obj = zzcpVar;
                                break;
                            }
                            zza2 = i8 + 1;
                        }
                    }
                }
                if (i4 != i2) {
                    obj = new Object[]{bArr, Integer.valueOf(i4), obj};
                }
                obj = bArr;
            } else if (zzh <= 32768) {
                bArr = new short[zzh];
                Arrays.fill(bArr, (short) -1);
                int i11 = 0;
                for (int i12 = 0; i12 < i2; i12++) {
                    int i13 = i11 + i11;
                    int i14 = i12 + i12;
                    Object obj9 = objArr2[i14];
                    Objects.requireNonNull(obj9);
                    Object obj10 = objArr2[i14 ^ 1];
                    Objects.requireNonNull(obj10);
                    zzbw.zzb(obj9, obj10);
                    int zza3 = zzcg.zza(obj9.hashCode());
                    while (true) {
                        int i15 = zza3 & i3;
                        char c2 = (char) bArr[i15];
                        if (c2 == 65535) {
                            bArr[i15] = (short) i13;
                            if (i11 < i12) {
                                objArr2[i13] = obj9;
                                objArr2[i13 ^ 1] = obj10;
                            }
                            i11++;
                        } else {
                            if (obj9.equals(objArr2[c2])) {
                                int i16 = c2 ^ 1;
                                Object obj11 = objArr2[i16];
                                Objects.requireNonNull(obj11);
                                zzcp zzcpVar2 = new zzcp(obj9, obj10, obj11);
                                objArr2[i16] = obj10;
                                obj = zzcpVar2;
                                break;
                            }
                            zza3 = i15 + 1;
                        }
                    }
                }
                if (i11 != i2) {
                    obj = new Object[]{bArr, Integer.valueOf(i11), obj};
                }
                obj = bArr;
            } else {
                bArr = new int[zzh];
                Arrays.fill((int[]) bArr, -1);
                int i17 = 0;
                int i18 = 0;
                while (i17 < i2) {
                    int i19 = i18 + i18;
                    int i20 = i17 + i17;
                    Object obj12 = objArr2[i20];
                    Objects.requireNonNull(obj12);
                    Object obj13 = objArr2[i20 ^ 1];
                    Objects.requireNonNull(obj13);
                    zzbw.zzb(obj12, obj13);
                    int zza4 = zzcg.zza(obj12.hashCode());
                    while (true) {
                        int i21 = zza4 & i3;
                        ?? r15 = bArr[i21];
                        if (r15 == c) {
                            bArr[i21] = i19;
                            if (i18 < i17) {
                                objArr2[i19] = obj12;
                                objArr2[i19 ^ 1] = obj13;
                            }
                            i18++;
                        } else {
                            if (obj12.equals(objArr2[r15])) {
                                int i22 = r15 ^ 1;
                                Object obj14 = objArr2[i22];
                                Objects.requireNonNull(obj14);
                                zzcp zzcpVar3 = new zzcp(obj12, obj13, obj14);
                                objArr2[i22] = obj13;
                                obj = zzcpVar3;
                                break;
                            }
                            zza4 = i21 + 1;
                            c = 65535;
                        }
                    }
                    i17++;
                    c = 65535;
                }
                if (i18 != i2) {
                    obj = new Object[]{bArr, Integer.valueOf(i18), obj};
                }
                obj = bArr;
            }
        }
        if (obj instanceof Object[]) {
            Object[] objArr3 = (Object[]) obj;
            zzcp zzcpVar4 = (zzcp) objArr3[2];
            if (zzcqVar == null) {
                throw zzcpVar4.zza();
            }
            zzcqVar.zzc = zzcpVar4;
            Object obj15 = objArr3[0];
            int intValue = ((Integer) objArr3[1]).intValue();
            objArr2 = Arrays.copyOf(objArr2, intValue + intValue);
            obj = obj15;
            i2 = intValue;
        }
        return new zzdp(obj, objArr2, i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x009e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x009f A[RETURN] */
    @Override // com.google.android.gms.internal.play_billing.zzcr, java.util.Map
    @javax.annotation.CheckForNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object get(@javax.annotation.CheckForNull java.lang.Object r9) {
        /*
            r8 = this;
            r0 = 0
            if (r9 != 0) goto L6
        L3:
            r8 = r0
            goto L9c
        L6:
            int r1 = r8.zzd
            java.lang.Object[] r2 = r8.zzb
            r3 = 1
            if (r1 != r3) goto L20
            r8 = 0
            r8 = r2[r8]
            java.util.Objects.requireNonNull(r8)
            boolean r8 = r8.equals(r9)
            if (r8 == 0) goto L3
            r8 = r2[r3]
            java.util.Objects.requireNonNull(r8)
            goto L9c
        L20:
            java.lang.Object r8 = r8.zzc
            if (r8 != 0) goto L25
            goto L3
        L25:
            boolean r1 = r8 instanceof byte[]
            r4 = -1
            if (r1 == 0) goto L51
            r1 = r8
            byte[] r1 = (byte[]) r1
            int r8 = r1.length
            int r5 = r8 + (-1)
            int r8 = r9.hashCode()
            int r8 = com.google.android.gms.internal.play_billing.zzcg.zza(r8)
        L38:
            r8 = r8 & r5
            r4 = r1[r8]
            r6 = 255(0xff, float:3.57E-43)
            r4 = r4 & r6
            if (r4 != r6) goto L41
            goto L3
        L41:
            r6 = r2[r4]
            boolean r6 = r9.equals(r6)
            if (r6 == 0) goto L4e
            r8 = r4 ^ 1
            r8 = r2[r8]
            goto L9c
        L4e:
            int r8 = r8 + 1
            goto L38
        L51:
            boolean r1 = r8 instanceof short[]
            if (r1 == 0) goto L7d
            r1 = r8
            short[] r1 = (short[]) r1
            int r8 = r1.length
            int r5 = r8 + (-1)
            int r8 = r9.hashCode()
            int r8 = com.google.android.gms.internal.play_billing.zzcg.zza(r8)
        L63:
            r8 = r8 & r5
            short r4 = r1[r8]
            char r4 = (char) r4
            r6 = 65535(0xffff, float:9.1834E-41)
            if (r4 != r6) goto L6d
            goto L3
        L6d:
            r6 = r2[r4]
            boolean r6 = r9.equals(r6)
            if (r6 == 0) goto L7a
            r8 = r4 ^ 1
            r8 = r2[r8]
            goto L9c
        L7a:
            int r8 = r8 + 1
            goto L63
        L7d:
            int[] r8 = (int[]) r8
            int r1 = r8.length
            int r1 = r1 + r4
            int r5 = r9.hashCode()
            int r5 = com.google.android.gms.internal.play_billing.zzcg.zza(r5)
        L89:
            r5 = r5 & r1
            r6 = r8[r5]
            if (r6 != r4) goto L90
            goto L3
        L90:
            r7 = r2[r6]
            boolean r7 = r9.equals(r7)
            if (r7 == 0) goto La0
            r8 = r6 ^ 1
            r8 = r2[r8]
        L9c:
            if (r8 != 0) goto L9f
            return r0
        L9f:
            return r8
        La0:
            int r5 = r5 + 1
            goto L89
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.play_billing.zzdp.get(java.lang.Object):java.lang.Object");
    }

    @Override // java.util.Map
    public final int size() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.play_billing.zzcr
    public final zzcj zza() {
        return new zzdo(this.zzb, 1, this.zzd);
    }

    @Override // com.google.android.gms.internal.play_billing.zzcr
    public final zzcv zzd() {
        return new zzdm(this, this.zzb, 0, this.zzd);
    }

    @Override // com.google.android.gms.internal.play_billing.zzcr
    public final zzcv zze() {
        return new zzdn(this, new zzdo(this.zzb, 0, this.zzd));
    }
}
