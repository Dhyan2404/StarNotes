package com.google.android.gms.internal.mlkit_common;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Arrays;
import java.util.Objects;
import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzaq extends zzai {
    static final zzai zza = new zzaq(null, new Object[0], 0);
    final transient Object[] zzb;

    @CheckForNull
    private final transient Object zzc;
    private final transient int zzd;

    private zzaq(@CheckForNull Object obj, Object[] objArr, int i) {
        this.zzc = obj;
        this.zzb = objArr;
        this.zzd = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r4v2, types: [java.lang.Object, int[]] */
    /* JADX WARN: Type inference failed for: r4v3 */
    public static zzaq zzg(int i, Object[] objArr, zzah zzahVar) {
        int i2;
        short[] sArr;
        int i3 = i;
        Object[] objArr2 = objArr;
        if (i3 == 0) {
            return (zzaq) zza;
        }
        Object obj = null;
        if (i3 == 1) {
            Object obj2 = objArr2[0];
            Objects.requireNonNull(obj2);
            Object obj3 = objArr2[1];
            Objects.requireNonNull(obj3);
            zzw.zza(obj2, obj3);
            return new zzaq(null, objArr2, 1);
        }
        zzt.zzb(i3, objArr2.length >> 1, FirebaseAnalytics.Param.INDEX);
        int max = Math.max(i3, 2);
        if (max < 751619276) {
            i2 = Integer.highestOneBit(max - 1);
            do {
                i2 += i2;
            } while (i2 * 0.7d < max);
        } else {
            i2 = 1073741824;
            if (max >= 1073741824) {
                throw new IllegalArgumentException("collection too large");
            }
        }
        if (i3 == 1) {
            Object obj4 = objArr2[0];
            Objects.requireNonNull(obj4);
            Object obj5 = objArr2[1];
            Objects.requireNonNull(obj5);
            zzw.zza(obj4, obj5);
            i3 = 1;
        } else {
            int i4 = i2 - 1;
            char c = 65535;
            if (i2 <= 128) {
                byte[] bArr = new byte[i2];
                Arrays.fill(bArr, (byte) -1);
                int i5 = 0;
                for (int i6 = 0; i6 < i3; i6++) {
                    int i7 = i5 + i5;
                    int i8 = i6 + i6;
                    Object obj6 = objArr2[i8];
                    Objects.requireNonNull(obj6);
                    Object obj7 = objArr2[i8 ^ 1];
                    Objects.requireNonNull(obj7);
                    zzw.zza(obj6, obj7);
                    int zza2 = zzy.zza(obj6.hashCode());
                    while (true) {
                        int i9 = zza2 & i4;
                        int i10 = bArr[i9] & 255;
                        if (i10 == 255) {
                            bArr[i9] = (byte) i7;
                            if (i5 < i6) {
                                objArr2[i7] = obj6;
                                objArr2[i7 ^ 1] = obj7;
                            }
                            i5++;
                        } else {
                            if (obj6.equals(objArr2[i10])) {
                                int i11 = i10 ^ 1;
                                Object obj8 = objArr2[i11];
                                Objects.requireNonNull(obj8);
                                zzag zzagVar = new zzag(obj6, obj7, obj8);
                                objArr2[i11] = obj7;
                                obj = zzagVar;
                                break;
                            }
                            zza2 = i9 + 1;
                        }
                    }
                }
                obj = i5 == i3 ? bArr : new Object[]{bArr, Integer.valueOf(i5), obj};
            } else if (i2 <= 32768) {
                sArr = new short[i2];
                Arrays.fill(sArr, (short) -1);
                int i12 = 0;
                for (int i13 = 0; i13 < i3; i13++) {
                    int i14 = i12 + i12;
                    int i15 = i13 + i13;
                    Object obj9 = objArr2[i15];
                    Objects.requireNonNull(obj9);
                    Object obj10 = objArr2[i15 ^ 1];
                    Objects.requireNonNull(obj10);
                    zzw.zza(obj9, obj10);
                    int zza3 = zzy.zza(obj9.hashCode());
                    while (true) {
                        int i16 = zza3 & i4;
                        char c2 = (char) sArr[i16];
                        if (c2 == 65535) {
                            sArr[i16] = (short) i14;
                            if (i12 < i13) {
                                objArr2[i14] = obj9;
                                objArr2[i14 ^ 1] = obj10;
                            }
                            i12++;
                        } else {
                            if (obj9.equals(objArr2[c2])) {
                                int i17 = c2 ^ 1;
                                Object obj11 = objArr2[i17];
                                Objects.requireNonNull(obj11);
                                zzag zzagVar2 = new zzag(obj9, obj10, obj11);
                                objArr2[i17] = obj10;
                                obj = zzagVar2;
                                break;
                            }
                            zza3 = i16 + 1;
                        }
                    }
                }
                if (i12 != i3) {
                    obj = new Object[]{sArr, Integer.valueOf(i12), obj};
                }
                obj = sArr;
            } else {
                sArr = new int[i2];
                Arrays.fill((int[]) sArr, -1);
                int i18 = 0;
                int i19 = 0;
                while (i18 < i3) {
                    int i20 = i19 + i19;
                    int i21 = i18 + i18;
                    Object obj12 = objArr2[i21];
                    Objects.requireNonNull(obj12);
                    Object obj13 = objArr2[i21 ^ 1];
                    Objects.requireNonNull(obj13);
                    zzw.zza(obj12, obj13);
                    int zza4 = zzy.zza(obj12.hashCode());
                    while (true) {
                        int i22 = zza4 & i4;
                        ?? r15 = sArr[i22];
                        if (r15 == c) {
                            sArr[i22] = i20;
                            if (i19 < i18) {
                                objArr2[i20] = obj12;
                                objArr2[i20 ^ 1] = obj13;
                            }
                            i19++;
                        } else {
                            if (obj12.equals(objArr2[r15])) {
                                int i23 = r15 ^ 1;
                                Object obj14 = objArr2[i23];
                                Objects.requireNonNull(obj14);
                                zzag zzagVar3 = new zzag(obj12, obj13, obj14);
                                objArr2[i23] = obj13;
                                obj = zzagVar3;
                                break;
                            }
                            zza4 = i22 + 1;
                            c = 65535;
                        }
                    }
                    i18++;
                    c = 65535;
                }
                if (i19 != i3) {
                    obj = new Object[]{sArr, Integer.valueOf(i19), obj};
                }
                obj = sArr;
            }
        }
        boolean z = obj instanceof Object[];
        Object obj15 = obj;
        if (z) {
            Object[] objArr3 = (Object[]) obj;
            zzag zzagVar4 = (zzag) objArr3[2];
            if (zzahVar == null) {
                throw zzagVar4.zza();
            }
            zzahVar.zzc = zzagVar4;
            Object obj16 = objArr3[0];
            int intValue = ((Integer) objArr3[1]).intValue();
            objArr2 = Arrays.copyOf(objArr2, intValue + intValue);
            obj15 = obj16;
            i3 = intValue;
        }
        return new zzaq(obj15, objArr2, i3);
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x009e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x009f A[RETURN] */
    @Override // com.google.android.gms.internal.mlkit_common.zzai, java.util.Map
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
            int r8 = com.google.android.gms.internal.mlkit_common.zzy.zza(r8)
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
            int r8 = com.google.android.gms.internal.mlkit_common.zzy.zza(r8)
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
            int r5 = com.google.android.gms.internal.mlkit_common.zzy.zza(r5)
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.mlkit_common.zzaq.get(java.lang.Object):java.lang.Object");
    }

    @Override // java.util.Map
    public final int size() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzai
    public final zzab zza() {
        return new zzap(this.zzb, 1, this.zzd);
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzai
    public final zzaj zzd() {
        return new zzan(this, this.zzb, 0, this.zzd);
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzai
    public final zzaj zze() {
        return new zzao(this, new zzap(this.zzb, 0, this.zzd));
    }
}
