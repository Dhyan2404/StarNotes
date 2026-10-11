package org.apache.commons.compress.utils;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.SeekableByteChannel;

/* loaded from: classes12.dex */
public class BoundedSeekableByteChannelInputStream extends BoundedArchiveInputStream {

    /* renamed from: h */
    public final SeekableByteChannel f107310h;

    public BoundedSeekableByteChannelInputStream(long j, long j2, SeekableByteChannel seekableByteChannel) {
        super(j, j2);
        this.f107310h = seekableByteChannel;
    }

    @Override // org.apache.commons.compress.utils.BoundedArchiveInputStream
    public int read(long j, ByteBuffer byteBuffer) throws IOException {
        int read;
        synchronized (this.f107310h) {
            this.f107310h.position(j);
            read = this.f107310h.read(byteBuffer);
        }
        byteBuffer.flip();
        return read;
    }
}
