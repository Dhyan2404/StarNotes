package okio;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.data.account.bean.DevicePushAction;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.Closeable;
import java.io.IOException;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\b&\u0018\u00002\u00060\u0001j\u0002`\u0002:\u000245B\u000f\u0012\u0006\u0010&\u001a\u00020!¢\u0006\u0004\b2\u00103J \u0010\b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0003H\u0002J \u0010\u000b\u001a\u00020\n2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0003H\u0002J&\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\u000eJ\u001e\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0003J\u0006\u0010\u0011\u001a\u00020\u0003J\u000e\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u0003J&\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\u000eJ\u001e\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0003J\u0006\u0010\u0014\u001a\u00020\nJ\u0010\u0010\t\u001a\u00020\u00152\b\b\u0002\u0010\u0004\u001a\u00020\u0003J\u000e\u0010\u0016\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0015J\u0016\u0010\u0017\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0003J\u0010\u0010\u0006\u001a\u00020\u00182\b\b\u0002\u0010\u0004\u001a\u00020\u0003J\u0006\u0010\u0019\u001a\u00020\u0018J\u000e\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0018J\u0016\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0006\u001a\u00020\u00182\u0006\u0010\u0016\u001a\u00020\u0003J\u0006\u0010\u001a\u001a\u00020\nJ(\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\u000eH$J(\u0010\u001c\u001a\u00020\n2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\u000eH$J\b\u0010\u001d\u001a\u00020\nH$J\u0010\u0010\u001e\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u0003H$J\b\u0010\u001f\u001a\u00020\u0003H$J\b\u0010 \u001a\u00020\nH$R\u0017\u0010&\u001a\u00020!8\u0006¢\u0006\f\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%R\u0016\u0010'\u001a\u00020!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\b\u0010#R\u0016\u0010*\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)R\u001b\u00101\u001a\u00060+j\u0002`,8\u0006¢\u0006\f\n\u0004\b-\u0010.\u001a\u0004\b/\u00100¨\u00066"}, m61528d2 = {"Lokio/FileHandle;", "Ljava/io/Closeable;", "Lokio/Closeable;", "", "fileOffset", "Lokio/Buffer;", "sink", "byteCount", C6997f.f39671c, "source", "", "j", "", "array", "", "arrayOffset", "read", "size", "resize", "write", "flush", "Lokio/Source;", "position", "reposition", "Lokio/Sink;", "appendingSink", "close", "protectedRead", "protectedWrite", "protectedFlush", "protectedResize", "protectedSize", "protectedClose", "", "e", Constants.HASIDCALL_INDEX_SIG, "getReadWrite", Constants.BOOLEAN_VALUE_SIG, "readWrite", "closed", C6998g.f39679a, "I", "openStreamCount", "Ljava/util/concurrent/locks/ReentrantLock;", "Lokio/Lock;", C6999h.f39688c, "Ljava/util/concurrent/locks/ReentrantLock;", "getLock", "()Ljava/util/concurrent/locks/ReentrantLock;", DevicePushAction.LOCK_DEVICE, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Z)V", "a", "b", "okio"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nFileHandle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileHandle.kt\nokio/FileHandle\n+ 2 -JvmPlatform.kt\nokio/_JvmPlatformKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 RealBufferedSource.kt\nokio/RealBufferedSource\n+ 5 RealBufferedSink.kt\nokio/RealBufferedSink\n+ 6 Util.kt\nokio/-SegmentedByteString\n*L\n1#1,444:1\n33#2:445\n33#2:447\n33#2:448\n33#2:449\n33#2:450\n33#2:451\n33#2:452\n33#2:453\n33#2:457\n33#2:459\n1#3:446\n62#4:454\n62#4:455\n62#4:456\n51#5:458\n86#6:460\n86#6:461\n*S KotlinDebug\n*F\n+ 1 FileHandle.kt\nokio/FileHandle\n*L\n69#1:445\n81#1:447\n92#1:448\n105#1:449\n119#1:450\n129#1:451\n139#1:452\n151#1:453\n221#1:457\n287#1:459\n169#1:454\n195#1:455\n202#1:456\n248#1:458\n345#1:460\n374#1:461\n*E\n"})
/* loaded from: classes11.dex */
public abstract class FileHandle implements Closeable {

    /* renamed from: e, reason: from kotlin metadata */
    public final boolean readWrite;

    /* renamed from: f, reason: from kotlin metadata */
    public boolean closed;

    /* renamed from: g, reason: from kotlin metadata */
    public int openStreamCount;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final ReentrantLock lock = _JvmPlatformKt.newLock();

    @SourceDebugExtension({"SMAP\nFileHandle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileHandle.kt\nokio/FileHandle$FileHandleSink\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 -JvmPlatform.kt\nokio/_JvmPlatformKt\n*L\n1#1,444:1\n1#2:445\n33#3:446\n*S KotlinDebug\n*F\n+ 1 FileHandle.kt\nokio/FileHandle$FileHandleSink\n*L\n410#1:446\n*E\n"})
    /* renamed from: okio.FileHandle$a */
    /* loaded from: classes11.dex */
    public static final class C18621a implements Sink {

        /* renamed from: e */
        @NotNull
        public final FileHandle f104043e;

        /* renamed from: f */
        public long f104044f;

        /* renamed from: g */
        public boolean f104045g;

        public C18621a(@NotNull FileHandle fileHandle, long j) {
            Intrinsics.checkNotNullParameter(fileHandle, "fileHandle");
            this.f104043e = fileHandle;
            this.f104044f = j;
        }

        /* renamed from: H */
        public final void m65015H(boolean z) {
            this.f104045g = z;
        }

        /* renamed from: I */
        public final void m65016I(long j) {
            this.f104044f = j;
        }

        @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
        public void close() {
            if (this.f104045g) {
                return;
            }
            this.f104045g = true;
            ReentrantLock lock = this.f104043e.getLock();
            lock.lock();
            try {
                FileHandle fileHandle = this.f104043e;
                fileHandle.openStreamCount--;
                if (this.f104043e.openStreamCount == 0 && this.f104043e.closed) {
                    Unit unit = Unit.INSTANCE;
                    lock.unlock();
                    this.f104043e.protectedClose();
                }
            } finally {
                lock.unlock();
            }
        }

        /* renamed from: f */
        public final boolean m65017f() {
            return this.f104045g;
        }

        @Override // okio.Sink, java.io.Flushable
        public void flush() {
            if (!(!this.f104045g)) {
                throw new IllegalStateException("closed".toString());
            }
            this.f104043e.protectedFlush();
        }

        @NotNull
        /* renamed from: j */
        public final FileHandle m65018j() {
            return this.f104043e;
        }

        @Override // okio.Sink
        @NotNull
        public Timeout timeout() {
            return Timeout.NONE;
        }

        /* renamed from: w */
        public final long m65019w() {
            return this.f104044f;
        }

        @Override // okio.Sink
        public void write(@NotNull Buffer source, long j) {
            Intrinsics.checkNotNullParameter(source, "source");
            if (!(!this.f104045g)) {
                throw new IllegalStateException("closed".toString());
            }
            this.f104043e.m65014j(this.f104044f, source, j);
            this.f104044f += j;
        }
    }

    @SourceDebugExtension({"SMAP\nFileHandle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileHandle.kt\nokio/FileHandle$FileHandleSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 -JvmPlatform.kt\nokio/_JvmPlatformKt\n*L\n1#1,444:1\n1#2:445\n33#3:446\n*S KotlinDebug\n*F\n+ 1 FileHandle.kt\nokio/FileHandle$FileHandleSource\n*L\n436#1:446\n*E\n"})
    /* renamed from: okio.FileHandle$b */
    /* loaded from: classes11.dex */
    public static final class C18622b implements Source {

        /* renamed from: e */
        @NotNull
        public final FileHandle f104046e;

        /* renamed from: f */
        public long f104047f;

        /* renamed from: g */
        public boolean f104048g;

        public C18622b(@NotNull FileHandle fileHandle, long j) {
            Intrinsics.checkNotNullParameter(fileHandle, "fileHandle");
            this.f104046e = fileHandle;
            this.f104047f = j;
        }

        /* renamed from: H */
        public final void m65020H(boolean z) {
            this.f104048g = z;
        }

        /* renamed from: I */
        public final void m65021I(long j) {
            this.f104047f = j;
        }

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.f104048g) {
                return;
            }
            this.f104048g = true;
            ReentrantLock lock = this.f104046e.getLock();
            lock.lock();
            try {
                FileHandle fileHandle = this.f104046e;
                fileHandle.openStreamCount--;
                if (this.f104046e.openStreamCount == 0 && this.f104046e.closed) {
                    Unit unit = Unit.INSTANCE;
                    lock.unlock();
                    this.f104046e.protectedClose();
                }
            } finally {
                lock.unlock();
            }
        }

        /* renamed from: f */
        public final boolean m65022f() {
            return this.f104048g;
        }

        @NotNull
        /* renamed from: j */
        public final FileHandle m65023j() {
            return this.f104046e;
        }

        @Override // okio.Source
        public long read(@NotNull Buffer sink, long j) {
            Intrinsics.checkNotNullParameter(sink, "sink");
            if (!(!this.f104048g)) {
                throw new IllegalStateException("closed".toString());
            }
            long m65013f = this.f104046e.m65013f(this.f104047f, sink, j);
            if (m65013f != -1) {
                this.f104047f += m65013f;
            }
            return m65013f;
        }

        @Override // okio.Source
        @NotNull
        public Timeout timeout() {
            return Timeout.NONE;
        }

        /* renamed from: w */
        public final long m65024w() {
            return this.f104047f;
        }
    }

    public FileHandle(boolean z) {
        this.readWrite = z;
    }

    public static /* synthetic */ Sink sink$default(FileHandle fileHandle, long j, int i, Object obj) throws IOException {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: sink");
        }
        if ((i & 1) != 0) {
            j = 0;
        }
        return fileHandle.sink(j);
    }

    public static /* synthetic */ Source source$default(FileHandle fileHandle, long j, int i, Object obj) throws IOException {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: source");
        }
        if ((i & 1) != 0) {
            j = 0;
        }
        return fileHandle.source(j);
    }

    @NotNull
    public final Sink appendingSink() throws IOException {
        return sink(size());
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            if (this.closed) {
                return;
            }
            this.closed = true;
            if (this.openStreamCount != 0) {
                return;
            }
            Unit unit = Unit.INSTANCE;
            reentrantLock.unlock();
            protectedClose();
        } finally {
            reentrantLock.unlock();
        }
    }

    /* renamed from: f */
    public final long m65013f(long fileOffset, Buffer sink, long byteCount) {
        if (!(byteCount >= 0)) {
            throw new IllegalArgumentException(("byteCount < 0: " + byteCount).toString());
        }
        long j = fileOffset + byteCount;
        long j2 = fileOffset;
        while (true) {
            if (j2 >= j) {
                break;
            }
            Segment writableSegment$okio = sink.writableSegment$okio(1);
            int protectedRead = protectedRead(j2, writableSegment$okio.data, writableSegment$okio.limit, (int) Math.min(j - j2, 8192 - r9));
            if (protectedRead == -1) {
                if (writableSegment$okio.pos == writableSegment$okio.limit) {
                    sink.head = writableSegment$okio.pop();
                    SegmentPool.recycle(writableSegment$okio);
                }
                if (fileOffset == j2) {
                    return -1L;
                }
            } else {
                writableSegment$okio.limit += protectedRead;
                long j3 = protectedRead;
                j2 += j3;
                sink.setSize$okio(sink.size() + j3);
            }
        }
        return j2 - fileOffset;
    }

    public final void flush() throws IOException {
        if (!this.readWrite) {
            throw new IllegalStateException("file handle is read-only".toString());
        }
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            if (!(!this.closed)) {
                throw new IllegalStateException("closed".toString());
            }
            Unit unit = Unit.INSTANCE;
            reentrantLock.unlock();
            protectedFlush();
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    @NotNull
    public final ReentrantLock getLock() {
        return this.lock;
    }

    public final boolean getReadWrite() {
        return this.readWrite;
    }

    /* renamed from: j */
    public final void m65014j(long fileOffset, Buffer source, long byteCount) {
        SegmentedByteString.checkOffsetAndCount(source.size(), 0L, byteCount);
        long j = byteCount + fileOffset;
        while (fileOffset < j) {
            Segment segment = source.head;
            Intrinsics.checkNotNull(segment);
            int min = (int) Math.min(j - fileOffset, segment.limit - segment.pos);
            protectedWrite(fileOffset, segment.data, segment.pos, min);
            segment.pos += min;
            long j2 = min;
            fileOffset += j2;
            source.setSize$okio(source.size() - j2);
            if (segment.pos == segment.limit) {
                source.head = segment.pop();
                SegmentPool.recycle(segment);
            }
        }
    }

    public final long position(@NotNull Source source) throws IOException {
        long j;
        Intrinsics.checkNotNullParameter(source, "source");
        if (source instanceof buffer) {
            buffer bufferVar = (buffer) source;
            j = bufferVar.bufferField.size();
            source = bufferVar.source;
        } else {
            j = 0;
        }
        if ((source instanceof C18622b) && ((C18622b) source).m65023j() == this) {
            C18622b c18622b = (C18622b) source;
            if (!c18622b.m65022f()) {
                return c18622b.m65024w() - j;
            }
            throw new IllegalStateException("closed".toString());
        }
        throw new IllegalArgumentException("source was not created by this FileHandle".toString());
    }

    public abstract void protectedClose() throws IOException;

    public abstract void protectedFlush() throws IOException;

    public abstract int protectedRead(long fileOffset, @NotNull byte[] array, int arrayOffset, int byteCount) throws IOException;

    public abstract void protectedResize(long size) throws IOException;

    public abstract long protectedSize() throws IOException;

    public abstract void protectedWrite(long fileOffset, @NotNull byte[] array, int arrayOffset, int byteCount) throws IOException;

    public final int read(long fileOffset, @NotNull byte[] array, int arrayOffset, int byteCount) throws IOException {
        Intrinsics.checkNotNullParameter(array, "array");
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            if (!this.closed) {
                Unit unit = Unit.INSTANCE;
                reentrantLock.unlock();
                return protectedRead(fileOffset, array, arrayOffset, byteCount);
            }
            throw new IllegalStateException("closed".toString());
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    public final void reposition(@NotNull Source source, long position) throws IOException {
        Intrinsics.checkNotNullParameter(source, "source");
        boolean z = false;
        if (source instanceof buffer) {
            buffer bufferVar = (buffer) source;
            Source source2 = bufferVar.source;
            if ((source2 instanceof C18622b) && ((C18622b) source2).m65023j() == this) {
                C18622b c18622b = (C18622b) source2;
                if (!c18622b.m65022f()) {
                    long size = bufferVar.bufferField.size();
                    long m65024w = position - (c18622b.m65024w() - size);
                    if (0 <= m65024w && m65024w < size) {
                        z = true;
                    }
                    if (z) {
                        bufferVar.skip(m65024w);
                        return;
                    } else {
                        bufferVar.bufferField.clear();
                        c18622b.m65021I(position);
                        return;
                    }
                }
                throw new IllegalStateException("closed".toString());
            }
            throw new IllegalArgumentException("source was not created by this FileHandle".toString());
        }
        if ((source instanceof C18622b) && ((C18622b) source).m65023j() == this) {
            z = true;
        }
        if (z) {
            C18622b c18622b2 = (C18622b) source;
            if (!c18622b2.m65022f()) {
                c18622b2.m65021I(position);
                return;
            }
            throw new IllegalStateException("closed".toString());
        }
        throw new IllegalArgumentException("source was not created by this FileHandle".toString());
    }

    public final void resize(long size) throws IOException {
        if (!this.readWrite) {
            throw new IllegalStateException("file handle is read-only".toString());
        }
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            if (!(!this.closed)) {
                throw new IllegalStateException("closed".toString());
            }
            Unit unit = Unit.INSTANCE;
            reentrantLock.unlock();
            protectedResize(size);
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    @NotNull
    public final Sink sink(long fileOffset) throws IOException {
        if (!this.readWrite) {
            throw new IllegalStateException("file handle is read-only".toString());
        }
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            if (!(!this.closed)) {
                throw new IllegalStateException("closed".toString());
            }
            this.openStreamCount++;
            reentrantLock.unlock();
            return new C18621a(this, fileOffset);
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    public final long size() throws IOException {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            if (!(!this.closed)) {
                throw new IllegalStateException("closed".toString());
            }
            Unit unit = Unit.INSTANCE;
            reentrantLock.unlock();
            return protectedSize();
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    @NotNull
    public final Source source(long fileOffset) throws IOException {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            if (!(!this.closed)) {
                throw new IllegalStateException("closed".toString());
            }
            this.openStreamCount++;
            reentrantLock.unlock();
            return new C18622b(this, fileOffset);
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    public final void write(long fileOffset, @NotNull byte[] array, int arrayOffset, int byteCount) {
        Intrinsics.checkNotNullParameter(array, "array");
        if (this.readWrite) {
            ReentrantLock reentrantLock = this.lock;
            reentrantLock.lock();
            try {
                if (!this.closed) {
                    Unit unit = Unit.INSTANCE;
                    reentrantLock.unlock();
                    protectedWrite(fileOffset, array, arrayOffset, byteCount);
                    return;
                }
                throw new IllegalStateException("closed".toString());
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
        throw new IllegalStateException("file handle is read-only".toString());
    }

    public final long read(long fileOffset, @NotNull Buffer sink, long byteCount) throws IOException {
        Intrinsics.checkNotNullParameter(sink, "sink");
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            if (!this.closed) {
                Unit unit = Unit.INSTANCE;
                reentrantLock.unlock();
                return m65013f(fileOffset, sink, byteCount);
            }
            throw new IllegalStateException("closed".toString());
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    public final long position(@NotNull Sink sink) throws IOException {
        long j;
        Intrinsics.checkNotNullParameter(sink, "sink");
        if (sink instanceof buffer) {
            buffer bufferVar = (buffer) sink;
            j = bufferVar.bufferField.size();
            sink = bufferVar.sink;
        } else {
            j = 0;
        }
        if ((sink instanceof C18621a) && ((C18621a) sink).m65018j() == this) {
            C18621a c18621a = (C18621a) sink;
            if (!c18621a.m65017f()) {
                return c18621a.m65019w() + j;
            }
            throw new IllegalStateException("closed".toString());
        }
        throw new IllegalArgumentException("sink was not created by this FileHandle".toString());
    }

    public final void write(long fileOffset, @NotNull Buffer source, long byteCount) throws IOException {
        Intrinsics.checkNotNullParameter(source, "source");
        if (this.readWrite) {
            ReentrantLock reentrantLock = this.lock;
            reentrantLock.lock();
            try {
                if (!this.closed) {
                    Unit unit = Unit.INSTANCE;
                    reentrantLock.unlock();
                    m65014j(fileOffset, source, byteCount);
                    return;
                }
                throw new IllegalStateException("closed".toString());
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
        throw new IllegalStateException("file handle is read-only".toString());
    }

    public final void reposition(@NotNull Sink sink, long position) throws IOException {
        Intrinsics.checkNotNullParameter(sink, "sink");
        boolean z = false;
        if (sink instanceof buffer) {
            buffer bufferVar = (buffer) sink;
            Sink sink2 = bufferVar.sink;
            if ((sink2 instanceof C18621a) && ((C18621a) sink2).m65018j() == this) {
                z = true;
            }
            if (z) {
                C18621a c18621a = (C18621a) sink2;
                if (!c18621a.m65017f()) {
                    bufferVar.emit();
                    c18621a.m65016I(position);
                    return;
                }
                throw new IllegalStateException("closed".toString());
            }
            throw new IllegalArgumentException("sink was not created by this FileHandle".toString());
        }
        if ((sink instanceof C18621a) && ((C18621a) sink).m65018j() == this) {
            z = true;
        }
        if (z) {
            C18621a c18621a2 = (C18621a) sink;
            if (!c18621a2.m65017f()) {
                c18621a2.m65016I(position);
                return;
            }
            throw new IllegalStateException("closed".toString());
        }
        throw new IllegalArgumentException("sink was not created by this FileHandle".toString());
    }
}
