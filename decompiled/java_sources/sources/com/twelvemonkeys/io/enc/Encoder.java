package com.twelvemonkeys.io.enc;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;

/* loaded from: classes10.dex */
public interface Encoder {
    void encode(OutputStream outputStream, ByteBuffer byteBuffer) throws IOException;
}
