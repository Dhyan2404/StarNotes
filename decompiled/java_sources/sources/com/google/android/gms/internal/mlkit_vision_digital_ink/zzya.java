package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.net.Uri;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.annotation.Nullable;

/* loaded from: classes5.dex */
final class zzya extends zzzq {
    private final List zza;

    private zzya(InputStream inputStream, List list) {
        super(inputStream);
        this.zza = list;
    }

    @Nullable
    public static zzya zza(List list, Uri uri, InputStream inputStream) {
        ArrayList arrayList = new ArrayList();
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            ((zzaai) it2.next()).zza(uri);
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new zzya(inputStream, arrayList);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        Iterator it2 = this.zza.iterator();
        while (it2.hasNext()) {
            try {
                ((zzaah) it2.next()).close();
            } catch (Throwable unused) {
            }
        }
        super.close();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() throws IOException {
        int read = ((FilterInputStream) this).in.read();
        if (read != -1) {
            Iterator it2 = this.zza.iterator();
            while (it2.hasNext()) {
                ((zzaah) it2.next()).zza();
            }
        }
        return read;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzzq, java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr) throws IOException {
        int read = ((FilterInputStream) this).in.read(bArr);
        if (read != -1) {
            Iterator it2 = this.zza.iterator();
            while (it2.hasNext()) {
                ((zzaah) it2.next()).zza();
            }
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        int read = ((FilterInputStream) this).in.read(bArr, i, i2);
        if (read != -1) {
            Iterator it2 = this.zza.iterator();
            while (it2.hasNext()) {
                ((zzaah) it2.next()).zza();
            }
        }
        return read;
    }
}
