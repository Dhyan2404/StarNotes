package net.p110sf.saxon.str;

import net.p110sf.saxon.p111z.IntIterator;

/* loaded from: classes11.dex */
public interface TwineConsumer {
    void append(IntIterator intIterator);

    void append16(char[] cArr, int i, int i2);

    void append24(byte[] bArr, int i, int i2);

    void append8(byte[] bArr, int i, int i2);
}
