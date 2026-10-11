package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.net.Uri;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.annotation.Nullable;

/* loaded from: classes5.dex */
final class zzyb extends zzzr {
    private final List zza;

    private zzyb(OutputStream outputStream, List list) {
        super(outputStream);
        this.zza = list;
        zzzt.zza(outputStream != null, "Output was null", new Object[0]);
    }

    @Nullable
    public static zzyb zza(List list, Uri uri, OutputStream outputStream) {
        ArrayList arrayList = new ArrayList();
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            zzzx zzb = ((zzaai) it2.next()).zzb(uri);
            if (zzb != null) {
                arrayList.add(zzb);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new zzyb(outputStream, arrayList);
    }

    @Nullable
    public static zzyb zzb(List list, Uri uri, OutputStream outputStream) {
        ArrayList arrayList = new ArrayList();
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            zzzx zzc = ((zzaai) it2.next()).zzc(uri);
            if (zzc != null) {
                arrayList.add(zzc);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new zzyb(outputStream, arrayList);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        Iterator it2 = this.zza.iterator();
        while (it2.hasNext()) {
            try {
                ((zzzx) it2.next()).close();
            } catch (Throwable unused) {
            }
        }
        super.close();
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public final void write(int i) throws IOException {
        ((FilterOutputStream) this).out.write(i);
        byte[] bArr = {(byte) i};
        Iterator it2 = this.zza.iterator();
        while (it2.hasNext()) {
            ((zzzx) it2.next()).zza(bArr, 0, 1);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzzr, java.io.FilterOutputStream, java.io.OutputStream
    public final void write(byte[] bArr) throws IOException {
        ((FilterOutputStream) this).out.write(bArr);
        Iterator it2 = this.zza.iterator();
        while (it2.hasNext()) {
            ((zzzx) it2.next()).zza(bArr, 0, bArr.length);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzzr, java.io.FilterOutputStream, java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) throws IOException {
        ((FilterOutputStream) this).out.write(bArr, i, i2);
        Iterator it2 = this.zza.iterator();
        while (it2.hasNext()) {
            ((zzzx) it2.next()).zza(bArr, i, i2);
        }
    }
}
