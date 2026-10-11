package com.google.android.gms.internal.mlkit_vision_digital_ink;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.galaxy.note.editor.action.audio.RemoveAudioAction;
import java.io.IOException;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;

/* loaded from: classes5.dex */
public abstract class zzbsz implements Iterable, Serializable {
    private static final Comparator zza;
    public static final zzbsz zzb = new zzbsw(zzbur.zzd);
    private static final zzbsy zzd;
    private int zzc = 0;

    static {
        int i = zzbsh.zza;
        zzd = new zzbsy(null);
        zza = new zzbsq();
    }

    public static int zzj(int i, int i2, int i3) {
        int i4 = i2 - i;
        if ((i | i2 | i4 | (i3 - i2)) >= 0) {
            return i4;
        }
        if (i < 0) {
            throw new IndexOutOfBoundsException("Beginning index: " + i + " < 0");
        }
        if (i2 < i) {
            throw new IndexOutOfBoundsException("Beginning index larger than ending index: " + i + ", " + i2);
        }
        throw new IndexOutOfBoundsException("End index: " + i2 + CloudStorageConstants.OPERATION_GREATER_EQUAL + i3);
    }

    public static zzbsz zzl(byte[] bArr) {
        return zzm(bArr, 0, bArr.length);
    }

    public static zzbsz zzm(byte[] bArr, int i, int i2) {
        zzj(i, i + i2, bArr.length);
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        return new zzbsw(bArr2);
    }

    public static zzbsz zzn(String str) {
        return new zzbsw(str.getBytes(zzbur.zzb));
    }

    public static zzbsz zzo(byte[] bArr) {
        return new zzbsw(bArr);
    }

    public abstract boolean equals(Object obj);

    public final int hashCode() {
        int i = this.zzc;
        if (i == 0) {
            int zzd2 = zzd();
            i = zze(zzd2, 0, zzd2);
            if (i == 0) {
                i = 1;
            }
            this.zzc = i;
        }
        return i;
    }

    @Override // java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return new zzbsp(this);
    }

    public final String toString() {
        Locale locale = Locale.ROOT;
        Object[] objArr = new Object[3];
        objArr[0] = Integer.toHexString(System.identityHashCode(this));
        objArr[1] = Integer.valueOf(zzd());
        objArr[2] = zzd() <= 50 ? zzbwx.zza(this) : zzbwx.zza(zzf(0, 47)).concat(RemoveAudioAction.f58149k);
        return String.format(locale, "<ByteString@%s size=%d contents=\"%s\">", objArr);
    }

    public abstract byte zza(int i);

    public abstract byte zzb(int i);

    public abstract int zzd();

    public abstract int zze(int i, int i2, int i3);

    public abstract zzbsz zzf(int i, int i2);

    public abstract String zzg(Charset charset);

    public abstract void zzh(zzbso zzbsoVar) throws IOException;

    public abstract boolean zzi();

    public final int zzk() {
        return this.zzc;
    }

    public final String zzp(Charset charset) {
        return zzd() == 0 ? "" : zzg(charset);
    }
}
