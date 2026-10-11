package org.apache.commons.compress.utils;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.SeekableByteChannel;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes12.dex */
public class SeekableInMemoryByteChannel implements SeekableByteChannel {

    /* renamed from: i */
    public static final int f107335i = 1073741823;

    /* renamed from: e */
    public byte[] f107336e;

    /* renamed from: f */
    public final AtomicBoolean f107337f;

    /* renamed from: g */
    public int f107338g;

    /* renamed from: h */
    public int f107339h;

    public SeekableInMemoryByteChannel(byte[] bArr) {
        this.f107337f = new AtomicBoolean();
        this.f107336e = bArr;
        this.f107339h = bArr.length;
    }

    public byte[] array() {
        return this.f107336e;
    }

    @Override // java.nio.channels.Channel, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f107337f.set(true);
    }

    /* renamed from: f */
    public final void m67167f() throws ClosedChannelException {
        if (!isOpen()) {
            throw new ClosedChannelException();
        }
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.f107337f.get();
    }

    /* renamed from: j */
    public final void m67168j(int i) {
        int length = this.f107336e.length;
        if (length <= 0) {
            length = 1;
        }
        if (i < 1073741823) {
            while (length < i) {
                length <<= 1;
            }
            i = length;
        }
        this.f107336e = Arrays.copyOf(this.f107336e, i);
    }

    @Override // java.nio.channels.SeekableByteChannel
    public long position() {
        return this.f107338g;
    }

    @Override // java.nio.channels.SeekableByteChannel, java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) throws IOException {
        m67167f();
        int remaining = byteBuffer.remaining();
        int i = this.f107339h;
        int i2 = this.f107338g;
        int i3 = i - i2;
        if (i3 <= 0) {
            return -1;
        }
        if (remaining > i3) {
            remaining = i3;
        }
        byteBuffer.put(this.f107336e, i2, remaining);
        this.f107338g += remaining;
        return remaining;
    }

    @Override // java.nio.channels.SeekableByteChannel
    public long size() {
        return this.f107339h;
    }

    @Override // java.nio.channels.SeekableByteChannel
    public SeekableByteChannel truncate(long j) {
        if (j < 0 || j > 2147483647L) {
            throw new IllegalArgumentException("Size has to be in range 0.. 2147483647");
        }
        if (this.f107339h > j) {
            this.f107339h = (int) j;
        }
        if (this.f107338g > j) {
            this.f107338g = (int) j;
        }
        return this;
    }

    @Override // java.nio.channels.SeekableByteChannel, java.nio.channels.WritableByteChannel
    public int write(ByteBuffer byteBuffer) throws IOException {
        m67167f();
        int remaining = byteBuffer.remaining();
        int i = this.f107339h;
        int i2 = this.f107338g;
        if (remaining > i - i2) {
            int i3 = i2 + remaining;
            if (i3 < 0) {
                m67168j(Integer.MAX_VALUE);
                remaining = Integer.MAX_VALUE - this.f107338g;
            } else {
                m67168j(i3);
            }
        }
        byteBuffer.get(this.f107336e, this.f107338g, remaining);
        int i4 = this.f107338g + remaining;
        this.f107338g = i4;
        if (this.f107339h < i4) {
            this.f107339h = i4;
        }
        return remaining;
    }

    @Override // java.nio.channels.SeekableByteChannel
    public SeekableByteChannel position(long j) throws IOException {
        m67167f();
        if (j >= 0 && j <= 2147483647L) {
            this.f107338g = (int) j;
            return this;
        }
        throw new IOException("Position has to be in range 0.. 2147483647");
    }

    public SeekableInMemoryByteChannel() {
        this(ByteUtils.EMPTY_BYTE_ARRAY);
    }

    public SeekableInMemoryByteChannel(int i) {
        this(new byte[i]);
    }
}
