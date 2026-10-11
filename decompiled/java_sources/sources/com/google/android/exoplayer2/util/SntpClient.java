package com.google.android.exoplayer2.util;

import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.common.base.Ascii;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.util.Arrays;
import java.util.ConcurrentModificationException;

/* loaded from: classes5.dex */
public final class SntpClient {
    public static final String DEFAULT_NTP_HOST = "time.android.com";

    /* renamed from: a */
    public static final int f28432a = 10000;

    /* renamed from: b */
    public static final int f28433b = 24;

    /* renamed from: c */
    public static final int f28434c = 32;

    /* renamed from: d */
    public static final int f28435d = 40;

    /* renamed from: e */
    public static final int f28436e = 48;

    /* renamed from: f */
    public static final int f28437f = 123;

    /* renamed from: g */
    public static final int f28438g = 3;

    /* renamed from: h */
    public static final int f28439h = 4;

    /* renamed from: i */
    public static final int f28440i = 5;

    /* renamed from: j */
    public static final int f28441j = 3;

    /* renamed from: k */
    public static final int f28442k = 3;

    /* renamed from: l */
    public static final int f28443l = 0;

    /* renamed from: m */
    public static final int f28444m = 15;

    /* renamed from: n */
    public static final long f28445n = 2208988800L;

    /* renamed from: o */
    public static final Object f28446o = new Object();

    /* renamed from: p */
    public static final Object f28447p = new Object();

    /* renamed from: q */
    @GuardedBy("valueLock")
    public static boolean f28448q = false;

    /* renamed from: r */
    @GuardedBy("valueLock")
    public static long f28449r = 0;

    /* renamed from: s */
    @GuardedBy("valueLock")
    public static String f28450s = "time.android.com";

    /* loaded from: classes5.dex */
    public interface InitializationCallback {
        void onInitializationFailed(IOException iOException);

        void onInitialized();
    }

    /* renamed from: com.google.android.exoplayer2.util.SntpClient$b */
    /* loaded from: classes5.dex */
    public static final class C5021b implements Loader.Callback<Loader.Loadable> {

        /* renamed from: e */
        @Nullable
        public final InitializationCallback f28451e;

        public C5021b(@Nullable InitializationCallback initializationCallback) {
            this.f28451e = initializationCallback;
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.Callback
        public void onLoadCanceled(Loader.Loadable loadable, long j, long j2, boolean z) {
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.Callback
        public void onLoadCompleted(Loader.Loadable loadable, long j, long j2) {
            if (this.f28451e != null) {
                if (SntpClient.isInitialized()) {
                    this.f28451e.onInitialized();
                } else {
                    this.f28451e.onInitializationFailed(new IOException(new ConcurrentModificationException()));
                }
            }
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.Callback
        public Loader.LoadErrorAction onLoadError(Loader.Loadable loadable, long j, long j2, IOException iOException, int i) {
            InitializationCallback initializationCallback = this.f28451e;
            if (initializationCallback != null) {
                initializationCallback.onInitializationFailed(iOException);
            }
            return Loader.DONT_RETRY;
        }
    }

    /* renamed from: com.google.android.exoplayer2.util.SntpClient$c */
    /* loaded from: classes5.dex */
    public static final class C5022c implements Loader.Loadable {
        public C5022c() {
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.Loadable
        public void cancelLoad() {
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.Loadable
        public void load() throws IOException {
            synchronized (SntpClient.f28446o) {
                synchronized (SntpClient.f28447p) {
                    if (SntpClient.f28448q) {
                        return;
                    }
                    long m21525e = SntpClient.m21525e();
                    synchronized (SntpClient.f28447p) {
                        long unused = SntpClient.f28449r = m21525e;
                        boolean unused2 = SntpClient.f28448q = true;
                    }
                }
            }
        }
    }

    /* renamed from: e */
    public static /* synthetic */ long m21525e() throws IOException {
        return m21528h();
    }

    /* renamed from: g */
    public static void m21527g(byte b, byte b2, int i, long j) throws IOException {
        if (b == 3) {
            throw new IOException("SNTP: Unsynchronized server");
        }
        if (b2 != 4 && b2 != 5) {
            StringBuilder sb = new StringBuilder(26);
            sb.append("SNTP: Untrusted mode: ");
            sb.append((int) b2);
            throw new IOException(sb.toString());
        }
        if (i != 0 && i <= 15) {
            if (j == 0) {
                throw new IOException("SNTP: Zero transmitTime");
            }
        } else {
            StringBuilder sb2 = new StringBuilder(36);
            sb2.append("SNTP: Untrusted stratum: ");
            sb2.append(i);
            throw new IOException(sb2.toString());
        }
    }

    public static long getElapsedRealtimeOffsetMs() {
        long j;
        synchronized (f28447p) {
            j = f28448q ? f28449r : C4649C.TIME_UNSET;
        }
        return j;
    }

    public static String getNtpHost() {
        String str;
        synchronized (f28447p) {
            str = f28450s;
        }
        return str;
    }

    /* renamed from: h */
    public static long m21528h() throws IOException {
        InetAddress byName = InetAddress.getByName(getNtpHost());
        DatagramSocket datagramSocket = new DatagramSocket();
        try {
            datagramSocket.setSoTimeout(10000);
            byte[] bArr = new byte[48];
            DatagramPacket datagramPacket = new DatagramPacket(bArr, 48, byName, 123);
            bArr[0] = Ascii.ESC;
            long currentTimeMillis = System.currentTimeMillis();
            long elapsedRealtime = android.os.SystemClock.elapsedRealtime();
            m21531k(bArr, 40, currentTimeMillis);
            datagramSocket.send(datagramPacket);
            datagramSocket.receive(new DatagramPacket(bArr, 48));
            long elapsedRealtime2 = android.os.SystemClock.elapsedRealtime();
            long j = currentTimeMillis + (elapsedRealtime2 - elapsedRealtime);
            byte b = bArr[0];
            int i = bArr[1] & 255;
            long m21530j = m21530j(bArr, 24);
            long m21530j2 = m21530j(bArr, 32);
            long m21530j3 = m21530j(bArr, 40);
            m21527g((byte) ((b >> 6) & 3), (byte) (b & 7), i, m21530j3);
            long j2 = (j + (((m21530j2 - m21530j) + (m21530j3 - j)) / 2)) - elapsedRealtime2;
            datagramSocket.close();
            return j2;
        } catch (Throwable th) {
            try {
                datagramSocket.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    /* renamed from: i */
    public static long m21529i(byte[] bArr, int i) {
        int i2 = bArr[i];
        int i3 = bArr[i + 1];
        int i4 = bArr[i + 2];
        int i5 = bArr[i + 3];
        if ((i2 & 128) == 128) {
            i2 = (i2 & 127) + 128;
        }
        if ((i3 & 128) == 128) {
            i3 = (i3 & 127) + 128;
        }
        if ((i4 & 128) == 128) {
            i4 = (i4 & 127) + 128;
        }
        if ((i5 & 128) == 128) {
            i5 = (i5 & 127) + 128;
        }
        return (i2 << 24) + (i3 << 16) + (i4 << 8) + i5;
    }

    public static void initialize(@Nullable Loader loader, @Nullable InitializationCallback initializationCallback) {
        if (isInitialized()) {
            if (initializationCallback != null) {
                initializationCallback.onInitialized();
            }
        } else {
            if (loader == null) {
                loader = new Loader("SntpClient");
            }
            loader.startLoading(new C5022c(), new C5021b(initializationCallback), 1);
        }
    }

    public static boolean isInitialized() {
        boolean z;
        synchronized (f28447p) {
            z = f28448q;
        }
        return z;
    }

    /* renamed from: j */
    public static long m21530j(byte[] bArr, int i) {
        long m21529i = m21529i(bArr, i);
        long m21529i2 = m21529i(bArr, i + 4);
        if (m21529i == 0 && m21529i2 == 0) {
            return 0L;
        }
        return ((m21529i - f28445n) * 1000) + ((m21529i2 * 1000) / 4294967296L);
    }

    /* renamed from: k */
    public static void m21531k(byte[] bArr, int i, long j) {
        if (j == 0) {
            Arrays.fill(bArr, i, i + 8, (byte) 0);
            return;
        }
        long j2 = j / 1000;
        long j3 = j - (j2 * 1000);
        long j4 = j2 + f28445n;
        int i2 = i + 1;
        bArr[i] = (byte) (j4 >> 24);
        int i3 = i2 + 1;
        bArr[i2] = (byte) (j4 >> 16);
        int i4 = i3 + 1;
        bArr[i3] = (byte) (j4 >> 8);
        int i5 = i4 + 1;
        bArr[i4] = (byte) (j4 >> 0);
        long j5 = (j3 * 4294967296L) / 1000;
        int i6 = i5 + 1;
        bArr[i5] = (byte) (j5 >> 24);
        int i7 = i6 + 1;
        bArr[i6] = (byte) (j5 >> 16);
        bArr[i7] = (byte) (j5 >> 8);
        bArr[i7 + 1] = (byte) (Math.random() * 255.0d);
    }

    public static void setNtpHost(String str) {
        synchronized (f28447p) {
            if (!f28450s.equals(str)) {
                f28450s = str;
                f28448q = false;
            }
        }
    }
}
