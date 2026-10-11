package com.twelvemonkeys.io.enc;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* loaded from: classes10.dex */
public interface Decoder {
    int decode(InputStream inputStream, ByteBuffer byteBuffer) throws IOException;
}
