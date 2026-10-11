package com.google.android.gms.internal.p124firebaseauthapi;

import java.util.Arrays;
import java.util.Map;
import java.util.Objects;
import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzax<K, V> extends zzau<K, V> {
    private static final zzau<Object, Object> zza = new zzax(null, new Object[0], 0);

    @CheckForNull
    private final transient Object zzb;
    private final transient Object[] zzc;
    private final transient int zzd;

    private zzax(@CheckForNull Object obj, Object[] objArr, int i) {
        this.zzb = obj;
        this.zzc = objArr;
        this.zzd = i;
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x009e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x009f A[RETURN] */
    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzau, java.util.Map
    @javax.annotation.CheckForNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final V get(@javax.annotation.CheckForNull java.lang.Object r8) {
        /*
            r7 = this;
            java.lang.Object r0 = r7.zzb
            java.lang.Object[] r1 = r7.zzc
            int r7 = r7.zzd
            r2 = 0
            if (r8 != 0) goto Lc
        L9:
            r7 = r2
            goto L9c
        Lc:
            r3 = 1
            if (r7 != r3) goto L22
            r7 = 0
            r7 = r1[r7]
            java.util.Objects.requireNonNull(r7)
            boolean r7 = r7.equals(r8)
            if (r7 == 0) goto L9
            r7 = r1[r3]
            java.util.Objects.requireNonNull(r7)
            goto L9c
        L22:
            if (r0 != 0) goto L25
            goto L9
        L25:
            boolean r7 = r0 instanceof byte[]
            if (r7 == 0) goto L50
            r7 = r0
            byte[] r7 = (byte[]) r7
            int r0 = r7.length
            int r4 = r0 + (-1)
            int r0 = r8.hashCode()
            int r0 = com.google.android.gms.internal.p124firebaseauthapi.zzam.zza(r0)
        L37:
            r0 = r0 & r4
            r5 = r7[r0]
            r6 = 255(0xff, float:3.57E-43)
            r5 = r5 & r6
            if (r5 != r6) goto L40
            goto L9
        L40:
            r6 = r1[r5]
            boolean r6 = r8.equals(r6)
            if (r6 == 0) goto L4d
            r7 = r5 ^ 1
            r7 = r1[r7]
            goto L9c
        L4d:
            int r0 = r0 + 1
            goto L37
        L50:
            boolean r7 = r0 instanceof short[]
            if (r7 == 0) goto L7c
            r7 = r0
            short[] r7 = (short[]) r7
            int r0 = r7.length
            int r4 = r0 + (-1)
            int r0 = r8.hashCode()
            int r0 = com.google.android.gms.internal.p124firebaseauthapi.zzam.zza(r0)
        L62:
            r0 = r0 & r4
            short r5 = r7[r0]
            r6 = 65535(0xffff, float:9.1834E-41)
            r5 = r5 & r6
            if (r5 != r6) goto L6c
            goto L9
        L6c:
            r6 = r1[r5]
            boolean r6 = r8.equals(r6)
            if (r6 == 0) goto L79
            r7 = r5 ^ 1
            r7 = r1[r7]
            goto L9c
        L79:
            int r0 = r0 + 1
            goto L62
        L7c:
            int[] r0 = (int[]) r0
            int r7 = r0.length
            int r7 = r7 - r3
            int r4 = r8.hashCode()
            int r4 = com.google.android.gms.internal.p124firebaseauthapi.zzam.zza(r4)
        L88:
            r4 = r4 & r7
            r5 = r0[r4]
            r6 = -1
            if (r5 != r6) goto L90
            goto L9
        L90:
            r6 = r1[r5]
            boolean r6 = r8.equals(r6)
            if (r6 == 0) goto La0
            r7 = r5 ^ 1
            r7 = r1[r7]
        L9c:
            if (r7 != 0) goto L9f
            return r2
        L9f:
            return r7
        La0:
            int r4 = r4 + 1
            goto L88
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.p124firebaseauthapi.zzax.get(java.lang.Object):java.lang.Object");
    }

    @Override // java.util.Map
    public final int size() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzau
    public final zzal<V> zza() {
        return new zzbb(this.zzc, 1, this.zzd);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzau
    public final zzav<Map.Entry<K, V>> zzb() {
        return new zzba(this, this.zzc, 0, this.zzd);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzau
    public final zzav<K> zzc() {
        return new zzbc(this, new zzbb(this.zzc, 0, this.zzd));
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzau
    public final boolean zzd() {
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r4v2, types: [java.lang.Object, int[]] */
    /* JADX WARN: Type inference failed for: r4v3 */
    public static <K, V> zzax<K, V> zza(int i, Object[] objArr, zzat<K, V> zzatVar) {
        int i2;
        short[] sArr;
        int i3 = i;
        Object[] objArr2 = objArr;
        if (i3 == 0) {
            return (zzax) zza;
        }
        Object obj = null;
        if (i3 == 1) {
            Object obj2 = objArr2[0];
            Objects.requireNonNull(obj2);
            Object obj3 = objArr2[1];
            Objects.requireNonNull(obj3);
            zzaj.zza(obj2, obj3);
            return new zzax<>(null, objArr2, 1);
        }
        zzz.zzb(i3, objArr2.length >> 1);
        int max = Math.max(i3, 2);
        if (max < 751619276) {
            i2 = Integer.highestOneBit(max - 1) << 1;
            while (i2 * 0.7d < max) {
                i2 <<= 1;
            }
        } else {
            i2 = 1073741824;
            if (!(max < 1073741824)) {
                throw new IllegalArgumentException("collection too large");
            }
        }
        if (i3 == 1) {
            Object obj4 = objArr2[0];
            Objects.requireNonNull(obj4);
            Object obj5 = objArr2[1];
            Objects.requireNonNull(obj5);
            zzaj.zza(obj4, obj5);
        } else {
            int i4 = i2 - 1;
            char c = 65535;
            if (i2 <= 128) {
                byte[] bArr = new byte[i2];
                Arrays.fill(bArr, (byte) -1);
                int i5 = 0;
                for (int i6 = 0; i6 < i3; i6++) {
                    int i7 = i6 * 2;
                    int i8 = i5 * 2;
                    Object obj6 = objArr2[i7];
                    Objects.requireNonNull(obj6);
                    Object obj7 = objArr2[i7 ^ 1];
                    Objects.requireNonNull(obj7);
                    zzaj.zza(obj6, obj7);
                    int zza2 = zzam.zza(obj6.hashCode());
                    while (true) {
                        int i9 = zza2 & i4;
                        int i10 = bArr[i9] & 255;
                        if (i10 == 255) {
                            bArr[i9] = (byte) i8;
                            if (i5 < i6) {
                                objArr2[i8] = obj6;
                                objArr2[i8 ^ 1] = obj7;
                            }
                            i5++;
                        } else {
                            if (obj6.equals(objArr2[i10])) {
                                int i11 = i10 ^ 1;
                                Object obj8 = objArr2[i11];
                                Objects.requireNonNull(obj8);
                                obj = new zzaw(obj6, obj7, obj8);
                                objArr2[i11] = obj7;
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
                    int i14 = i13 * 2;
                    int i15 = i12 * 2;
                    Object obj9 = objArr2[i14];
                    Objects.requireNonNull(obj9);
                    Object obj10 = objArr2[i14 ^ 1];
                    Objects.requireNonNull(obj10);
                    zzaj.zza(obj9, obj10);
                    int zza3 = zzam.zza(obj9.hashCode());
                    while (true) {
                        int i16 = zza3 & i4;
                        int i17 = sArr[i16] & 65535;
                        if (i17 == 65535) {
                            sArr[i16] = (short) i15;
                            if (i12 < i13) {
                                objArr2[i15] = obj9;
                                objArr2[i15 ^ 1] = obj10;
                            }
                            i12++;
                        } else {
                            if (obj9.equals(objArr2[i17])) {
                                int i18 = i17 ^ 1;
                                Object obj11 = objArr2[i18];
                                Objects.requireNonNull(obj11);
                                obj = new zzaw(obj9, obj10, obj11);
                                objArr2[i18] = obj10;
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
                int i19 = 0;
                int i20 = 0;
                while (i19 < i3) {
                    int i21 = i19 * 2;
                    int i22 = i20 * 2;
                    Object obj12 = objArr2[i21];
                    Objects.requireNonNull(obj12);
                    Object obj13 = objArr2[i21 ^ 1];
                    Objects.requireNonNull(obj13);
                    zzaj.zza(obj12, obj13);
                    int zza4 = zzam.zza(obj12.hashCode());
                    while (true) {
                        int i23 = zza4 & i4;
                        ?? r15 = sArr[i23];
                        if (r15 == c) {
                            sArr[i23] = i22;
                            if (i20 < i19) {
                                objArr2[i22] = obj12;
                                objArr2[i22 ^ 1] = obj13;
                            }
                            i20++;
                        } else {
                            if (obj12.equals(objArr2[r15])) {
                                int i24 = r15 ^ 1;
                                Object obj14 = objArr2[i24];
                                Objects.requireNonNull(obj14);
                                obj = new zzaw(obj12, obj13, obj14);
                                objArr2[i24] = obj13;
                                break;
                            }
                            zza4 = i23 + 1;
                            c = 65535;
                        }
                    }
                    i19++;
                    c = 65535;
                }
                if (i20 != i3) {
                    obj = new Object[]{sArr, Integer.valueOf(i20), obj};
                }
                obj = sArr;
            }
        }
        boolean z = obj instanceof Object[];
        Object obj15 = obj;
        if (z) {
            Object[] objArr3 = (Object[]) obj;
            zzaw zzawVar = (zzaw) objArr3[2];
            if (zzatVar != null) {
                zzatVar.zza = zzawVar;
                Object obj16 = objArr3[0];
                int intValue = ((Integer) objArr3[1]).intValue();
                objArr2 = Arrays.copyOf(objArr2, intValue << 1);
                obj15 = obj16;
                i3 = intValue;
            } else {
                throw zzawVar.zza();
            }
        }
        return new zzax<>(obj15, objArr2, i3);
    }
}
