package com.google.android.gms.internal.mlkit_vision_digital_ink;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Arrays;
import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzalq extends zzajp {
    static final zzajp zza = new zzalq(null, new Object[0], 0);
    final transient Object[] zzb;

    @CheckForNull
    private final transient Object zzc;
    private final transient int zzd;

    private zzalq(@CheckForNull Object obj, Object[] objArr, int i) {
        this.zzc = obj;
        this.zzb = objArr;
        this.zzd = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v8 */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r6v3, types: [java.lang.Object, int[]] */
    /* JADX WARN: Type inference failed for: r6v5 */
    public static zzalq zzm(int i, Object[] objArr, zzajo zzajoVar) {
        byte[] bArr;
        int i2 = i;
        Object[] objArr2 = objArr;
        if (i2 == 0) {
            return (zzalq) zza;
        }
        Object obj = null;
        if (i2 == 1) {
            Object obj2 = objArr2[0];
            obj2.getClass();
            Object obj3 = objArr2[1];
            obj3.getClass();
            zzaij.zzb(obj2, obj3);
            return new zzalq(null, objArr2, 1);
        }
        zzagg.zzb(i2, objArr2.length >> 1, FirebaseAnalytics.Param.INDEX);
        int zzd = zzaka.zzd(i);
        if (i2 == 1) {
            Object obj4 = objArr2[0];
            obj4.getClass();
            Object obj5 = objArr2[1];
            obj5.getClass();
            zzaij.zzb(obj4, obj5);
        } else {
            int i3 = zzd - 1;
            char c = 65535;
            if (zzd <= 128) {
                bArr = new byte[zzd];
                Arrays.fill(bArr, (byte) -1);
                int i4 = 0;
                for (int i5 = 0; i5 < i2; i5++) {
                    int i6 = i4 + i4;
                    int i7 = i5 + i5;
                    Object obj6 = objArr2[i7];
                    obj6.getClass();
                    Object obj7 = objArr2[i7 ^ 1];
                    obj7.getClass();
                    zzaij.zzb(obj6, obj7);
                    int zza2 = zzajd.zza(obj6.hashCode());
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
                                obj8.getClass();
                                zzajn zzajnVar = new zzajn(obj6, obj7, obj8);
                                objArr2[i10] = obj7;
                                obj = zzajnVar;
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
            } else if (zzd <= 32768) {
                bArr = new short[zzd];
                Arrays.fill(bArr, (short) -1);
                int i11 = 0;
                for (int i12 = 0; i12 < i2; i12++) {
                    int i13 = i11 + i11;
                    int i14 = i12 + i12;
                    Object obj9 = objArr2[i14];
                    obj9.getClass();
                    Object obj10 = objArr2[i14 ^ 1];
                    obj10.getClass();
                    zzaij.zzb(obj9, obj10);
                    int zza3 = zzajd.zza(obj9.hashCode());
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
                                obj11.getClass();
                                zzajn zzajnVar2 = new zzajn(obj9, obj10, obj11);
                                objArr2[i16] = obj10;
                                obj = zzajnVar2;
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
                bArr = new int[zzd];
                Arrays.fill((int[]) bArr, -1);
                int i17 = 0;
                int i18 = 0;
                while (i17 < i2) {
                    int i19 = i18 + i18;
                    int i20 = i17 + i17;
                    Object obj12 = objArr2[i20];
                    obj12.getClass();
                    Object obj13 = objArr2[i20 ^ 1];
                    obj13.getClass();
                    zzaij.zzb(obj12, obj13);
                    int zza4 = zzajd.zza(obj12.hashCode());
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
                                obj14.getClass();
                                zzajn zzajnVar3 = new zzajn(obj12, obj13, obj14);
                                objArr2[i22] = obj13;
                                obj = zzajnVar3;
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
            zzajn zzajnVar4 = (zzajn) objArr3[2];
            if (zzajoVar == null) {
                throw zzajnVar4.zza();
            }
            zzajoVar.zzc = zzajnVar4;
            Object obj15 = objArr3[0];
            int intValue = ((Integer) objArr3[1]).intValue();
            objArr2 = Arrays.copyOf(objArr2, intValue + intValue);
            obj = obj15;
            i2 = intValue;
        }
        return new zzalq(obj, objArr2, i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x009e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x009f A[RETURN] */
    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzajp, java.util.Map
    @javax.annotation.CheckForNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object get(@javax.annotation.CheckForNull java.lang.Object r9) {
        /*
            r8 = this;
            java.lang.Object r0 = r8.zzc
            java.lang.Object[] r1 = r8.zzb
            int r8 = r8.zzd
            r2 = 0
            if (r9 != 0) goto Lc
        L9:
            r8 = r2
            goto L9c
        Lc:
            r3 = 1
            if (r8 != r3) goto L22
            r8 = 0
            r8 = r1[r8]
            r8.getClass()
            boolean r8 = r8.equals(r9)
            if (r8 == 0) goto L9
            r8 = r1[r3]
            r8.getClass()
            goto L9c
        L22:
            if (r0 != 0) goto L25
            goto L9
        L25:
            boolean r8 = r0 instanceof byte[]
            r4 = -1
            if (r8 == 0) goto L51
            r8 = r0
            byte[] r8 = (byte[]) r8
            int r0 = r8.length
            int r5 = r0 + (-1)
            int r0 = r9.hashCode()
            int r0 = com.google.android.gms.internal.mlkit_vision_digital_ink.zzajd.zza(r0)
        L38:
            r0 = r0 & r5
            r4 = r8[r0]
            r6 = 255(0xff, float:3.57E-43)
            r4 = r4 & r6
            if (r4 != r6) goto L41
            goto L9
        L41:
            r6 = r1[r4]
            boolean r6 = r9.equals(r6)
            if (r6 == 0) goto L4e
            r8 = r4 ^ 1
            r8 = r1[r8]
            goto L9c
        L4e:
            int r0 = r0 + 1
            goto L38
        L51:
            boolean r8 = r0 instanceof short[]
            if (r8 == 0) goto L7d
            r8 = r0
            short[] r8 = (short[]) r8
            int r0 = r8.length
            int r5 = r0 + (-1)
            int r0 = r9.hashCode()
            int r0 = com.google.android.gms.internal.mlkit_vision_digital_ink.zzajd.zza(r0)
        L63:
            r0 = r0 & r5
            short r4 = r8[r0]
            char r4 = (char) r4
            r6 = 65535(0xffff, float:9.1834E-41)
            if (r4 != r6) goto L6d
            goto L9
        L6d:
            r6 = r1[r4]
            boolean r6 = r9.equals(r6)
            if (r6 == 0) goto L7a
            r8 = r4 ^ 1
            r8 = r1[r8]
            goto L9c
        L7a:
            int r0 = r0 + 1
            goto L63
        L7d:
            int[] r0 = (int[]) r0
            int r8 = r0.length
            int r8 = r8 + r4
            int r5 = r9.hashCode()
            int r5 = com.google.android.gms.internal.mlkit_vision_digital_ink.zzajd.zza(r5)
        L89:
            r5 = r5 & r8
            r6 = r0[r5]
            if (r6 != r4) goto L90
            goto L9
        L90:
            r7 = r1[r6]
            boolean r7 = r9.equals(r7)
            if (r7 == 0) goto La0
            r8 = r6 ^ 1
            r8 = r1[r8]
        L9c:
            if (r8 != 0) goto L9f
            return r2
        L9f:
            return r8
        La0:
            int r5 = r5 + 1
            goto L89
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.mlkit_vision_digital_ink.zzalq.get(java.lang.Object):java.lang.Object");
    }

    @Override // java.util.Map
    public final int size() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzajp
    public final zzajg zza() {
        return new zzalp(this.zzb, 1, this.zzd);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzajp
    public final zzaka zzh() {
        return new zzaln(this, this.zzb, 0, this.zzd);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzajp
    public final zzaka zzi() {
        return new zzalo(this, new zzalp(this.zzb, 0, this.zzd));
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzajp
    public final boolean zzl() {
        return false;
    }
}
