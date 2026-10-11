package com.sun.org.apache.bcel.internal.util;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;

/* loaded from: classes10.dex */
public final class ByteSequence extends DataInputStream {
    private ByteArrayStream byte_stream;

    /* loaded from: classes10.dex */
    public static final class ByteArrayStream extends ByteArrayInputStream {
        public ByteArrayStream(byte[] bArr) {
            super(bArr);
        }

        public final int getPosition() {
            return ((ByteArrayInputStream) this).pos;
        }

        public final void unreadByte() {
            int i = ((ByteArrayInputStream) this).pos;
            if (i > 0) {
                ((ByteArrayInputStream) this).pos = i - 1;
            }
        }
    }

    public ByteSequence(byte[] bArr) {
        super(new ByteArrayStream(bArr));
        this.byte_stream = (ByteArrayStream) ((DataInputStream) this).in;
    }

    public final int getIndex() {
        return this.byte_stream.getPosition();
    }

    public final void unreadByte() {
        this.byte_stream.unreadByte();
    }
}
