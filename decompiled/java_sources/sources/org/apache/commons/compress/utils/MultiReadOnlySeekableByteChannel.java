package org.apache.commons.compress.utils;

import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.NonWritableChannelException;
import java.nio.channels.SeekableByteChannel;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardOpenOption;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.function.Predicate;

/* loaded from: classes12.dex */
public class MultiReadOnlySeekableByteChannel implements SeekableByteChannel {

    /* renamed from: h */
    public static final Path[] f107330h = new Path[0];

    /* renamed from: e */
    public final List<SeekableByteChannel> f107331e;

    /* renamed from: f */
    public long f107332f;

    /* renamed from: g */
    public int f107333g;

    public MultiReadOnlySeekableByteChannel(List<SeekableByteChannel> list) {
        Objects.requireNonNull(list, "channels must not be null");
        this.f107331e = Collections.unmodifiableList(new ArrayList(list));
    }

    public static SeekableByteChannel forFiles(File... fileArr) throws IOException {
        ArrayList arrayList = new ArrayList();
        Objects.requireNonNull(fileArr, "files must not be null");
        for (File file : fileArr) {
            arrayList.add(file.toPath());
        }
        return forPaths((Path[]) arrayList.toArray(f107330h));
    }

    public static SeekableByteChannel forPaths(Path... pathArr) throws IOException {
        ArrayList arrayList = new ArrayList();
        Objects.requireNonNull(pathArr, "paths must not be null");
        for (Path path : pathArr) {
            arrayList.add(Files.newByteChannel(path, StandardOpenOption.READ));
        }
        return arrayList.size() == 1 ? (SeekableByteChannel) arrayList.get(0) : new MultiReadOnlySeekableByteChannel(arrayList);
    }

    public static SeekableByteChannel forSeekableByteChannels(SeekableByteChannel... seekableByteChannelArr) {
        Objects.requireNonNull(seekableByteChannelArr, "channels must not be null");
        return seekableByteChannelArr.length == 1 ? seekableByteChannelArr[0] : new MultiReadOnlySeekableByteChannel(Arrays.asList(seekableByteChannelArr));
    }

    @Override // java.nio.channels.Channel, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        Iterator<SeekableByteChannel> it2 = this.f107331e.iterator();
        IOException iOException = null;
        while (it2.hasNext()) {
            try {
                it2.next().close();
            } catch (IOException e) {
                if (iOException == null) {
                    iOException = e;
                }
            }
        }
        if (iOException != null) {
            throw new IOException("failed to close wrapped channel", iOException);
        }
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return this.f107331e.stream().allMatch(new Predicate() { // from class: com.sunia.HTREnginev2.bqj
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((SeekableByteChannel) obj).isOpen();
            }
        });
    }

    @Override // java.nio.channels.SeekableByteChannel
    public long position() {
        return this.f107332f;
    }

    @Override // java.nio.channels.SeekableByteChannel, java.nio.channels.ReadableByteChannel
    public synchronized int read(ByteBuffer byteBuffer) throws IOException {
        if (!isOpen()) {
            throw new ClosedChannelException();
        }
        int i = 0;
        if (!byteBuffer.hasRemaining()) {
            return 0;
        }
        while (byteBuffer.hasRemaining() && this.f107333g < this.f107331e.size()) {
            SeekableByteChannel seekableByteChannel = this.f107331e.get(this.f107333g);
            int read = seekableByteChannel.read(byteBuffer);
            if (read == -1) {
                this.f107333g++;
            } else {
                if (seekableByteChannel.position() >= seekableByteChannel.size()) {
                    this.f107333g++;
                }
                i += read;
            }
        }
        if (i <= 0) {
            return -1;
        }
        this.f107332f += i;
        return i;
    }

    @Override // java.nio.channels.SeekableByteChannel
    public long size() throws IOException {
        if (!isOpen()) {
            throw new ClosedChannelException();
        }
        Iterator<SeekableByteChannel> it2 = this.f107331e.iterator();
        long j = 0;
        while (it2.hasNext()) {
            j += it2.next().size();
        }
        return j;
    }

    @Override // java.nio.channels.SeekableByteChannel
    public SeekableByteChannel truncate(long j) {
        throw new NonWritableChannelException();
    }

    @Override // java.nio.channels.SeekableByteChannel, java.nio.channels.WritableByteChannel
    public int write(ByteBuffer byteBuffer) {
        throw new NonWritableChannelException();
    }

    public synchronized SeekableByteChannel position(long j, long j2) throws IOException {
        if (!isOpen()) {
            throw new ClosedChannelException();
        }
        for (int i = 0; i < j; i++) {
            j2 += this.f107331e.get(i).size();
        }
        return position(j2);
    }

    @Override // java.nio.channels.SeekableByteChannel
    public synchronized SeekableByteChannel position(long j) throws IOException {
        try {
            if (j >= 0) {
                if (isOpen()) {
                    this.f107332f = j;
                    int i = 0;
                    while (i < this.f107331e.size()) {
                        SeekableByteChannel seekableByteChannel = this.f107331e.get(i);
                        long size = seekableByteChannel.size();
                        long j2 = -1;
                        if (j == -1) {
                            j2 = j;
                            j = 0;
                        } else if (j <= size) {
                            this.f107333g = i;
                        } else {
                            j2 = j - size;
                            j = size;
                        }
                        seekableByteChannel.position(j);
                        i++;
                        j = j2;
                    }
                } else {
                    throw new ClosedChannelException();
                }
            } else {
                throw new IOException("Negative position: " + j);
            }
        } catch (Throwable th) {
            throw th;
        }
        return this;
    }
}
