package com.google.android.gms.internal.mlkit_vision_digital_ink;

import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class zzaoy extends zzaoz {

    @CheckForNull
    private volatile zzaoz zza;
    final zzaou zzb;

    @CheckForNull
    final Character zzc;

    public zzaoy(zzaou zzaouVar, @CheckForNull Character ch) {
        this.zzb = zzaouVar;
        boolean z = true;
        if (ch != null) {
            ch.charValue();
            if (zzaouVar.zze('=')) {
                z = false;
            }
        }
        zzagg.zzh(z, "Padding character %s was already in alphabet", ch);
        this.zzc = ch;
    }

    public final boolean equals(@CheckForNull Object obj) {
        if (obj instanceof zzaoy) {
            zzaoy zzaoyVar = (zzaoy) obj;
            if (this.zzb.equals(zzaoyVar.zzb)) {
                Character ch = this.zzc;
                Character ch2 = zzaoyVar.zzc;
                if (ch == ch2) {
                    return true;
                }
                if (ch != null && ch.equals(ch2)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = this.zzb.hashCode();
        Character ch = this.zzc;
        return (ch == null ? 0 : ch.hashCode()) ^ hashCode;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("BaseEncoding.");
        sb.append(this.zzb);
        if (8 % this.zzb.zza != 0) {
            if (this.zzc == null) {
                sb.append(".omitPadding()");
            } else {
                sb.append(".withPadChar('");
                sb.append(this.zzc);
                sb.append("')");
            }
        }
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaoz
    public int zza(byte[] bArr, CharSequence charSequence) throws zzaox {
        zzaou zzaouVar;
        bArr.getClass();
        CharSequence zze = zze(charSequence);
        if (!this.zzb.zzd(zze.length())) {
            throw new zzaox("Invalid input length " + zze.length());
        }
        int i = 0;
        int i2 = 0;
        while (i < zze.length()) {
            long j = 0;
            int i3 = 0;
            int i4 = 0;
            while (true) {
                zzaouVar = this.zzb;
                if (i3 >= zzaouVar.zzb) {
                    break;
                }
                j <<= zzaouVar.zza;
                if (i + i3 < zze.length()) {
                    j |= this.zzb.zzb(zze.charAt(i4 + i));
                    i4++;
                }
                i3++;
            }
            int i5 = zzaouVar.zzc;
            int i6 = i5 * 8;
            int i7 = i4 * zzaouVar.zza;
            int i8 = (i5 - 1) * 8;
            while (i8 >= i6 - i7) {
                bArr[i2] = (byte) ((j >>> i8) & 255);
                i8 -= 8;
                i2++;
            }
            i += this.zzb.zzb;
        }
        return i2;
    }

    public zzaoz zzb(zzaou zzaouVar, @CheckForNull Character ch) {
        return new zzaoy(zzaouVar, ch);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaoz
    public final int zzc(int i) {
        return (int) (((this.zzb.zza * i) + 7) / 8);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaoz
    public final zzaoz zzd() {
        zzaoz zzaozVar = this.zza;
        if (zzaozVar == null) {
            zzaou zzc = this.zzb.zzc();
            zzaozVar = zzc == this.zzb ? this : zzb(zzc, this.zzc);
            this.zza = zzaozVar;
        }
        return zzaozVar;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaoz
    public final CharSequence zze(CharSequence charSequence) {
        charSequence.getClass();
        Character ch = this.zzc;
        if (ch == null) {
            return charSequence;
        }
        ch.charValue();
        int length = charSequence.length();
        do {
            length--;
            if (length < 0) {
                break;
            }
        } while (charSequence.charAt(length) == '=');
        return charSequence.subSequence(0, length + 1);
    }

    public zzaoy(String str, String str2, @CheckForNull Character ch) {
        this(new zzaou(str, str2.toCharArray()), ch);
    }
}
