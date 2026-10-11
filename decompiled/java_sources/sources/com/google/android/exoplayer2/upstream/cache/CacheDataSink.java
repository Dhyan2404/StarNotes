package com.google.android.exoplayer2.upstream.cache;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.upstream.DataSink;
import com.google.android.exoplayer2.upstream.DataSpec;
import com.google.android.exoplayer2.upstream.cache.Cache;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.Util;
import com.sunia.HTREnginev2.jrl;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes5.dex */
public final class CacheDataSink implements DataSink {
    public static final int DEFAULT_BUFFER_SIZE = 20480;
    public static final long DEFAULT_FRAGMENT_SIZE = 5242880;

    /* renamed from: k */
    public static final long f28169k = 2097152;

    /* renamed from: l */
    public static final String f28170l = "CacheDataSink";

    /* renamed from: a */
    public final Cache f28171a;

    /* renamed from: b */
    public final long f28172b;

    /* renamed from: c */
    public final int f28173c;

    /* renamed from: d */
    @Nullable
    public DataSpec f28174d;

    /* renamed from: e */
    public long f28175e;

    /* renamed from: f */
    @Nullable
    public File f28176f;

    /* renamed from: g */
    @Nullable
    public OutputStream f28177g;

    /* renamed from: h */
    public long f28178h;

    /* renamed from: i */
    public long f28179i;

    /* renamed from: j */
    public jrl f28180j;

    /* loaded from: classes5.dex */
    public static final class CacheDataSinkException extends Cache.CacheException {
        public CacheDataSinkException(IOException iOException) {
            super(iOException);
        }
    }

    /* loaded from: classes5.dex */
    public static final class Factory implements DataSink.Factory {

        /* renamed from: a */
        public Cache f28181a;

        /* renamed from: b */
        public long f28182b = 5242880;

        /* renamed from: c */
        public int f28183c = CacheDataSink.DEFAULT_BUFFER_SIZE;

        @Override // com.google.android.exoplayer2.upstream.DataSink.Factory
        public DataSink createDataSink() {
            return new CacheDataSink((Cache) Assertions.checkNotNull(this.f28181a), this.f28182b, this.f28183c);
        }

        public Factory setBufferSize(int i) {
            this.f28183c = i;
            return this;
        }

        public Factory setCache(Cache cache) {
            this.f28181a = cache;
            return this;
        }

        public Factory setFragmentSize(long j) {
            this.f28182b = j;
            return this;
        }
    }

    public CacheDataSink(Cache cache, long j) {
        this(cache, j, DEFAULT_BUFFER_SIZE);
    }

    /* renamed from: a */
    public final void m21365a() throws IOException {
        OutputStream outputStream = this.f28177g;
        if (outputStream == null) {
            return;
        }
        try {
            outputStream.flush();
            Util.closeQuietly(this.f28177g);
            this.f28177g = null;
            File file = (File) Util.castNonNull(this.f28176f);
            this.f28176f = null;
            this.f28171a.commitFile(file, this.f28178h);
        } catch (Throwable th) {
            Util.closeQuietly(this.f28177g);
            this.f28177g = null;
            File file2 = (File) Util.castNonNull(this.f28176f);
            this.f28176f = null;
            file2.delete();
            throw th;
        }
    }

    /* renamed from: b */
    public final void m21366b(DataSpec dataSpec) throws IOException {
        long j = dataSpec.length;
        this.f28176f = this.f28171a.startFile((String) Util.castNonNull(dataSpec.key), dataSpec.position + this.f28179i, j != -1 ? Math.min(j - this.f28179i, this.f28175e) : -1L);
        FileOutputStream fileOutputStream = new FileOutputStream(this.f28176f);
        if (this.f28173c > 0) {
            jrl jrlVar = this.f28180j;
            if (jrlVar == null) {
                this.f28180j = new jrl(fileOutputStream, this.f28173c);
            } else {
                jrlVar.m55030f(fileOutputStream);
            }
            this.f28177g = this.f28180j;
        } else {
            this.f28177g = fileOutputStream;
        }
        this.f28178h = 0L;
    }

    @Override // com.google.android.exoplayer2.upstream.DataSink
    public void close() throws CacheDataSinkException {
        if (this.f28174d == null) {
            return;
        }
        try {
            m21365a();
        } catch (IOException e) {
            throw new CacheDataSinkException(e);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.DataSink
    public void open(DataSpec dataSpec) throws CacheDataSinkException {
        Assertions.checkNotNull(dataSpec.key);
        if (dataSpec.length == -1 && dataSpec.isFlagSet(2)) {
            this.f28174d = null;
            return;
        }
        this.f28174d = dataSpec;
        this.f28175e = dataSpec.isFlagSet(4) ? this.f28172b : Long.MAX_VALUE;
        this.f28179i = 0L;
        try {
            m21366b(dataSpec);
        } catch (IOException e) {
            throw new CacheDataSinkException(e);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.DataSink
    public void write(byte[] bArr, int i, int i2) throws CacheDataSinkException {
        DataSpec dataSpec = this.f28174d;
        if (dataSpec == null) {
            return;
        }
        int i3 = 0;
        while (i3 < i2) {
            try {
                if (this.f28178h == this.f28175e) {
                    m21365a();
                    m21366b(dataSpec);
                }
                int min = (int) Math.min(i2 - i3, this.f28175e - this.f28178h);
                ((OutputStream) Util.castNonNull(this.f28177g)).write(bArr, i + i3, min);
                i3 += min;
                long j = min;
                this.f28178h += j;
                this.f28179i += j;
            } catch (IOException e) {
                throw new CacheDataSinkException(e);
            }
        }
    }

    public CacheDataSink(Cache cache, long j, int i) {
        Assertions.checkState(j > 0 || j == -1, "fragmentSize must be positive or C.LENGTH_UNSET.");
        if (j != -1 && j < 2097152) {
            Log.m21493w(f28170l, "fragmentSize is below the minimum recommended value of 2097152. This may cause poor cache performance.");
        }
        this.f28171a = (Cache) Assertions.checkNotNull(cache);
        this.f28172b = j == -1 ? Long.MAX_VALUE : j;
        this.f28173c = i;
    }
}
