package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.IOException;
import java.io.OutputStream;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.imageio.plugins.tiff.TIFFTag;
import kotlinx.coroutines.scheduling.CoroutineScheduler;

/* loaded from: classes5.dex */
public abstract class zzbtm extends zzbso {
    private static final Logger zza = Logger.getLogger(zzbtm.class.getName());
    private static final boolean zzb = zzbxm.zzx();
    public static final /* synthetic */ int zzf = 0;
    zzbtn zze;

    private zzbtm() {
    }

    public static int zzB(byte[] bArr) {
        int length = bArr.length;
        return zzM(length) + length;
    }

    public static int zzC(zzbsz zzbszVar) {
        int zzd = zzbszVar.zzd();
        return zzM(zzd) + zzd;
    }

    @Deprecated
    public static int zzD(int i, zzbvu zzbvuVar, zzbwi zzbwiVar) {
        int zzG = ((zzbsd) zzbvuVar).zzG(zzbwiVar);
        int zzM = zzM(i << 3);
        return zzM + zzM + zzG;
    }

    @Deprecated
    public static int zzE(zzbvu zzbvuVar) {
        return zzbvuVar.zzM();
    }

    public static int zzF(int i) {
        if (i >= 0) {
            return zzM(i);
        }
        return 10;
    }

    public static int zzG(zzbuz zzbuzVar) {
        int zza2 = zzbuzVar.zza();
        return zzM(zza2) + zza2;
    }

    public static int zzH(zzbvu zzbvuVar) {
        int zzM = zzbvuVar.zzM();
        return zzM(zzM) + zzM;
    }

    public static int zzI(zzbvu zzbvuVar, zzbwi zzbwiVar) {
        int zzG = ((zzbsd) zzbvuVar).zzG(zzbwiVar);
        return zzM(zzG) + zzG;
    }

    public static int zzJ(int i) {
        if (i > 4096) {
            return 4096;
        }
        return i;
    }

    public static int zzK(String str) {
        int length;
        try {
            length = zzbxr.zzc(str);
        } catch (zzbxq unused) {
            length = str.getBytes(zzbur.zzb).length;
        }
        return zzM(length) + length;
    }

    public static int zzL(int i) {
        return zzM(i << 3);
    }

    public static int zzM(int i) {
        if ((i & (-128)) == 0) {
            return 1;
        }
        if ((i & TIFFTag.f97946g) == 0) {
            return 2;
        }
        if (((-2097152) & i) == 0) {
            return 3;
        }
        return (i & (-268435456)) == 0 ? 4 : 5;
    }

    public static int zzN(long j) {
        int i;
        if (((-128) & j) == 0) {
            return 1;
        }
        if (j < 0) {
            return 10;
        }
        if (((-34359738368L) & j) != 0) {
            j >>>= 28;
            i = 6;
        } else {
            i = 2;
        }
        if ((CoroutineScheduler.f98641q & j) != 0) {
            j >>>= 14;
            i += 2;
        }
        return (j & (-16384)) != 0 ? i + 1 : i;
    }

    public static zzbtm zzO(byte[] bArr) {
        return new zzbti(bArr, 0, bArr.length);
    }

    public static zzbtm zzP(OutputStream outputStream, int i) {
        return new zzbtk(outputStream, i);
    }

    public static zzbtm zzQ(byte[] bArr, int i, int i2) {
        return new zzbti(bArr, i, i2);
    }

    public final void zzR() {
        if (zzb() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    public final void zzS(String str, zzbxq zzbxqVar) throws IOException {
        zza.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) zzbxqVar);
        byte[] bytes = str.getBytes(zzbur.zzb);
        try {
            int length = bytes.length;
            zzx(length);
            zza(bytes, 0, length);
        } catch (IndexOutOfBoundsException e) {
            throw new zzbtj(e);
        }
    }

    public abstract void zzW() throws IOException;

    public abstract void zzX(byte b) throws IOException;

    public abstract void zzY(int i, boolean z) throws IOException;

    public abstract void zzZ(byte[] bArr, int i, int i2) throws IOException;

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbso
    public abstract void zza(byte[] bArr, int i, int i2) throws IOException;

    public abstract int zzb();

    public abstract void zzh(int i, zzbsz zzbszVar) throws IOException;

    public abstract void zzi(zzbsz zzbszVar) throws IOException;

    public abstract void zzj(int i, int i2) throws IOException;

    public abstract void zzk(int i) throws IOException;

    public abstract void zzl(int i, long j) throws IOException;

    public abstract void zzm(long j) throws IOException;

    public abstract void zzn(int i, int i2) throws IOException;

    public abstract void zzo(int i) throws IOException;

    public abstract void zzp(int i, zzbvu zzbvuVar, zzbwi zzbwiVar) throws IOException;

    public abstract void zzq(zzbvu zzbvuVar) throws IOException;

    public abstract void zzr(int i, zzbvu zzbvuVar) throws IOException;

    public abstract void zzs(int i, zzbsz zzbszVar) throws IOException;

    public abstract void zzt(int i, String str) throws IOException;

    public abstract void zzu(String str) throws IOException;

    public abstract void zzv(int i, int i2) throws IOException;

    public abstract void zzw(int i, int i2) throws IOException;

    public abstract void zzx(int i) throws IOException;

    public abstract void zzy(int i, long j) throws IOException;

    public abstract void zzz(long j) throws IOException;

    public /* synthetic */ zzbtm(zzbtl zzbtlVar) {
    }
}
