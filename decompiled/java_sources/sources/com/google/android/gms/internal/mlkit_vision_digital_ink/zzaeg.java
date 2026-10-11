package com.google.android.gms.internal.mlkit_vision_digital_ink;

import com.bumptech.glide.load.engine.GlideException;
import java.util.Arrays;
import org.apache.commons.text.AlphabetConverter;

/* loaded from: classes5.dex */
final class zzaeg {
    private final int[] zza;
    private final zzaee zzb;
    private zzaee zzc;
    private int zzd;
    private int zze;
    private int zzf;

    private zzaeg(int[] iArr) {
        this.zza = iArr;
        zzaee zzaeeVar = new zzaee(-1, -1, null);
        this.zzb = zzaeeVar;
        this.zzc = zzaeeVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x001f, code lost:
    
        r5 = r0.zzc.zzd;
        r7 = java.lang.Integer.valueOf(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x002b, code lost:
    
        if (r5.containsKey(r7) != false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x002d, code lost:
    
        r0.zzc.zzd.put(r7, new com.google.android.gms.internal.mlkit_vision_digital_ink.zzaee(r1, 1073741824, null));
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0039, code lost:
    
        if (r4 == null) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x003b, code lost:
    
        r4.zzc = r0.zzc;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0049, code lost:
    
        if (r4 == null) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x004b, code lost:
    
        r4.zzc = r0.zzc;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x004f, code lost:
    
        r0.zzd = r1;
        r0.zze++;
        r0.zzd();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.mlkit_vision_digital_ink.zzaeg zzb(int[] r11) {
        /*
            Method dump skipped, instructions count: 242
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.mlkit_vision_digital_ink.zzaeg.zzb(int[]):com.google.android.gms.internal.mlkit_vision_digital_ink.zzaeg");
    }

    private final void zze(zzaee zzaeeVar, StringBuilder sb) {
        for (zzaee zzaeeVar2 : zzaeeVar.zzd.values()) {
            sb.append(GlideException.C1935a.f14609h);
            sb.append(zzaeeVar);
            sb.append(AlphabetConverter.f109940d);
            sb.append(zzaeeVar2);
            sb.append(" [label=\"");
            int[] iArr = this.zza;
            sb.append(Arrays.toString(Arrays.copyOfRange(iArr, zzaeeVar2.zza, Math.min(iArr.length, zzaeeVar2.zzb + 1))));
            sb.append("\"]\n");
            zze(zzaeeVar2, sb);
        }
    }

    private final boolean zzf(int i, int i2, int i3, int i4) {
        if (i >= 0 && i3 >= 0) {
            int min = Math.min(this.zza.length, i2);
            if (min - i == Math.min(this.zza.length, i4) - i3) {
                for (int i5 = i; i5 <= min; i5++) {
                    int[] iArr = this.zza;
                    if (iArr[i5] != iArr[(i3 + i5) - i]) {
                        return false;
                    }
                }
                return true;
            }
        }
        return false;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("digraph {\n");
        zze(this.zzb, sb);
        sb.append("}");
        return sb.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x005c, code lost:
    
        if (zzf(r3, r4, r5, (r5 + r4) - r3) != false) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0094, code lost:
    
        continue;
     */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0082 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.mlkit_vision_digital_ink.zzaef zza() {
        /*
            Method dump skipped, instructions count: 216
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.mlkit_vision_digital_ink.zzaeg.zza():com.google.android.gms.internal.mlkit_vision_digital_ink.zzaef");
    }

    public final void zzc() {
        zzaee zzaeeVar = this.zzc.zzc;
        if (zzaeeVar != null) {
            this.zzc = zzaeeVar;
        } else {
            this.zzc = this.zzb;
            int i = this.zze;
            if (i > 0) {
                this.zze = i - 1;
            }
            if (this.zzf > 0) {
                this.zzd++;
            }
        }
        zzd();
    }

    public final void zzd() {
        if (this.zze == 0) {
            return;
        }
        zzaee zzaeeVar = (zzaee) this.zzc.zzd.get(Integer.valueOf(this.zza[this.zzd]));
        while (true) {
            int i = (zzaeeVar.zzb - zzaeeVar.zza) + 1;
            int i2 = this.zze;
            if (i > i2) {
                return;
            }
            int i3 = this.zzd + i;
            this.zzd = i3;
            this.zzc = zzaeeVar;
            int i4 = i2 - i;
            this.zze = i4;
            if (i4 > 0) {
                zzaeeVar = (zzaee) zzaeeVar.zzd.get(Integer.valueOf(this.zza[i3]));
            }
        }
    }
}
