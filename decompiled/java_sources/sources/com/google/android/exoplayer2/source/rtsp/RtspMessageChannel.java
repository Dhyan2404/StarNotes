package com.google.android.exoplayer2.source.rtsp;

import android.os.Handler;
import android.os.HandlerThread;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.source.rtsp.RtspMessageChannel;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.android.exoplayer2.util.Assertions;
import com.google.common.base.Charsets;
import com.google.common.collect.ImmutableList;
import com.google.common.primitives.Ints;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes5.dex */
public final class RtspMessageChannel implements Closeable {

    /* renamed from: k */
    public static final Charset f26385k = Charsets.UTF_8;

    /* renamed from: l */
    public static final String f26386l = "RtspMessageChannel";

    /* renamed from: m */
    public static final int f26387m = 554;

    /* renamed from: e */
    public final MessageListener f26388e;

    /* renamed from: f */
    public final Loader f26389f = new Loader("ExoPlayer:RtspMessageChannel:ReceiverLoader");

    /* renamed from: g */
    public final Map<Integer, InterleavedBinaryDataListener> f26390g = Collections.synchronizedMap(new HashMap());

    /* renamed from: h */
    public C4915e f26391h;

    /* renamed from: i */
    public Socket f26392i;

    /* renamed from: j */
    public volatile boolean f26393j;

    /* loaded from: classes5.dex */
    public interface InterleavedBinaryDataListener {
        void onInterleavedBinaryDataReceived(byte[] bArr);
    }

    /* loaded from: classes5.dex */
    public interface MessageListener {
        default void onReceivingFailed(Exception exc) {
        }

        void onRtspMessageReceived(List<String> list);

        default void onSendingFailed(List<String> list, Exception exc) {
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.rtsp.RtspMessageChannel$b */
    /* loaded from: classes5.dex */
    public final class C4912b implements Loader.Callback<C4914d> {
        public C4912b() {
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.Callback
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onLoadCanceled(C4914d c4914d, long j, long j2, boolean z) {
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.Callback
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void onLoadCompleted(C4914d c4914d, long j, long j2) {
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.Callback
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public Loader.LoadErrorAction onLoadError(C4914d c4914d, long j, long j2, IOException iOException, int i) {
            if (!RtspMessageChannel.this.f26393j) {
                RtspMessageChannel.this.f26388e.onReceivingFailed(iOException);
            }
            return Loader.DONT_RETRY;
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.rtsp.RtspMessageChannel$c */
    /* loaded from: classes5.dex */
    public static final class C4913c {

        /* renamed from: d */
        public static final int f26395d = 1;

        /* renamed from: e */
        public static final int f26396e = 2;

        /* renamed from: f */
        public static final int f26397f = 3;

        /* renamed from: a */
        public final List<String> f26398a = new ArrayList();

        /* renamed from: b */
        public int f26399b = 1;

        /* renamed from: c */
        public long f26400c;

        /* renamed from: d */
        public static byte[] m20377d(byte b, DataInputStream dataInputStream) throws IOException {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = {b, dataInputStream.readByte()};
            byteArrayOutputStream.write(bArr);
            while (true) {
                if (bArr[0] == 13 && bArr[1] == 10) {
                    return byteArrayOutputStream.toByteArray();
                }
                bArr[0] = bArr[1];
                byte readByte = dataInputStream.readByte();
                bArr[1] = readByte;
                byteArrayOutputStream.write(readByte);
            }
        }

        /* renamed from: a */
        public final ImmutableList<String> m20378a(byte[] bArr) {
            Assertions.checkState(this.f26399b == 3);
            if (bArr.length <= 0 || bArr[bArr.length - 1] != 10) {
                throw new IllegalArgumentException("Message body is empty or does not end with a LF.");
            }
            this.f26398a.add((bArr.length <= 1 || bArr[bArr.length + (-2)] != 13) ? new String(bArr, 0, bArr.length - 1, RtspMessageChannel.f26385k) : new String(bArr, 0, bArr.length - 2, RtspMessageChannel.f26385k));
            ImmutableList<String> copyOf = ImmutableList.copyOf((Collection) this.f26398a);
            m20381e();
            return copyOf;
        }

        @Nullable
        /* renamed from: b */
        public final ImmutableList<String> m20379b(byte[] bArr) throws ParserException {
            Assertions.checkArgument(bArr.length >= 2 && bArr[bArr.length - 2] == 13 && bArr[bArr.length - 1] == 10);
            String str = new String(bArr, 0, bArr.length - 2, RtspMessageChannel.f26385k);
            this.f26398a.add(str);
            int i = this.f26399b;
            if (i == 1) {
                if (!RtspMessageUtil.m20391e(str)) {
                    return null;
                }
                this.f26399b = 2;
                return null;
            }
            if (i != 2) {
                throw new IllegalStateException();
            }
            long m20392f = RtspMessageUtil.m20392f(str);
            if (m20392f != -1) {
                this.f26400c = m20392f;
            }
            if (!str.isEmpty()) {
                return null;
            }
            if (this.f26400c > 0) {
                this.f26399b = 3;
                return null;
            }
            ImmutableList<String> copyOf = ImmutableList.copyOf((Collection) this.f26398a);
            m20381e();
            return copyOf;
        }

        /* renamed from: c */
        public ImmutableList<String> m20380c(byte b, DataInputStream dataInputStream) throws IOException {
            ImmutableList<String> m20379b = m20379b(m20377d(b, dataInputStream));
            while (m20379b == null) {
                if (this.f26399b == 3) {
                    long j = this.f26400c;
                    if (j <= 0) {
                        throw new IllegalStateException("Expects a greater than zero Content-Length.");
                    }
                    int checkedCast = Ints.checkedCast(j);
                    Assertions.checkState(checkedCast != -1);
                    byte[] bArr = new byte[checkedCast];
                    dataInputStream.readFully(bArr, 0, checkedCast);
                    m20379b = m20378a(bArr);
                } else {
                    m20379b = m20379b(m20377d(dataInputStream.readByte(), dataInputStream));
                }
            }
            return m20379b;
        }

        /* renamed from: e */
        public final void m20381e() {
            this.f26398a.clear();
            this.f26399b = 1;
            this.f26400c = 0L;
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.rtsp.RtspMessageChannel$d */
    /* loaded from: classes5.dex */
    public final class C4914d implements Loader.Loadable {

        /* renamed from: e */
        public static final byte f26401e = 36;

        /* renamed from: a */
        public final DataInputStream f26402a;

        /* renamed from: b */
        public final C4913c f26403b = new C4913c();

        /* renamed from: c */
        public volatile boolean f26404c;

        public C4914d(InputStream inputStream) {
            this.f26402a = new DataInputStream(inputStream);
        }

        /* renamed from: a */
        public final void m20382a() throws IOException {
            int readUnsignedByte = this.f26402a.readUnsignedByte();
            int readUnsignedShort = this.f26402a.readUnsignedShort();
            byte[] bArr = new byte[readUnsignedShort];
            this.f26402a.readFully(bArr, 0, readUnsignedShort);
            InterleavedBinaryDataListener interleavedBinaryDataListener = (InterleavedBinaryDataListener) RtspMessageChannel.this.f26390g.get(Integer.valueOf(readUnsignedByte));
            if (interleavedBinaryDataListener == null || RtspMessageChannel.this.f26393j) {
                return;
            }
            interleavedBinaryDataListener.onInterleavedBinaryDataReceived(bArr);
        }

        /* renamed from: b */
        public final void m20383b(byte b) throws IOException {
            if (RtspMessageChannel.this.f26393j) {
                return;
            }
            RtspMessageChannel.this.f26388e.onRtspMessageReceived(this.f26403b.m20380c(b, this.f26402a));
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.Loadable
        public void cancelLoad() {
            this.f26404c = true;
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.Loadable
        public void load() throws IOException {
            while (!this.f26404c) {
                byte readByte = this.f26402a.readByte();
                if (readByte == 36) {
                    m20382a();
                } else {
                    m20383b(readByte);
                }
            }
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.rtsp.RtspMessageChannel$e */
    /* loaded from: classes5.dex */
    public final class C4915e implements Closeable {

        /* renamed from: e */
        public final OutputStream f26406e;

        /* renamed from: f */
        public final HandlerThread f26407f;

        /* renamed from: g */
        public final Handler f26408g;

        public C4915e(OutputStream outputStream) {
            this.f26406e = outputStream;
            HandlerThread handlerThread = new HandlerThread("ExoPlayer:RtspMessageChannel:Sender");
            this.f26407f = handlerThread;
            handlerThread.start();
            this.f26408g = new Handler(handlerThread.getLooper());
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: j */
        public /* synthetic */ void m20385j(byte[] bArr, List list) {
            try {
                this.f26406e.write(bArr);
            } catch (Exception e) {
                if (RtspMessageChannel.this.f26393j) {
                    return;
                }
                RtspMessageChannel.this.f26388e.onSendingFailed(list, e);
            }
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            Handler handler = this.f26408g;
            final HandlerThread handlerThread = this.f26407f;
            Objects.requireNonNull(handlerThread);
            handler.post(new Runnable() { // from class: com.sunia.HTREnginev2.wtl
                @Override // java.lang.Runnable
                public final void run() {
                    handlerThread.quit();
                }
            });
            try {
                this.f26407f.join();
            } catch (InterruptedException unused) {
                this.f26407f.interrupt();
            }
        }

        /* renamed from: w */
        public void m20386w(final List<String> list) {
            final byte[] m20387a = RtspMessageUtil.m20387a(list);
            this.f26408g.post(new Runnable() { // from class: com.sunia.HTREnginev2.vtl
                @Override // java.lang.Runnable
                public final void run() {
                    RtspMessageChannel.C4915e.this.m20385j(m20387a, list);
                }
            });
        }
    }

    public RtspMessageChannel(MessageListener messageListener) {
        this.f26388e = messageListener;
    }

    /* renamed from: H */
    public void m20371H(Socket socket) throws IOException {
        this.f26392i = socket;
        this.f26391h = new C4915e(socket.getOutputStream());
        this.f26389f.startLoading(new C4914d(socket.getInputStream()), new C4912b(), 0);
    }

    /* renamed from: I */
    public void m20372I(int i, InterleavedBinaryDataListener interleavedBinaryDataListener) {
        this.f26390g.put(Integer.valueOf(i), interleavedBinaryDataListener);
    }

    /* renamed from: M */
    public void m20373M(List<String> list) {
        Assertions.checkStateNotNull(this.f26391h);
        this.f26391h.m20386w(list);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f26393j) {
            return;
        }
        try {
            C4915e c4915e = this.f26391h;
            if (c4915e != null) {
                c4915e.close();
            }
            this.f26389f.release();
            Socket socket = this.f26392i;
            if (socket != null) {
                socket.close();
            }
        } finally {
            this.f26393j = true;
        }
    }
}
