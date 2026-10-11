package com.google.common.hash;

import com.google.errorprone.annotations.Immutable;
import com.sunia.HTREnginev2.bwk;
import com.sunia.HTREnginev2.wnf;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;

@Immutable
@wnf
/* loaded from: classes6.dex */
public interface HashFunction {
    int bits();

    HashCode hashBytes(ByteBuffer byteBuffer);

    HashCode hashBytes(byte[] bArr);

    HashCode hashBytes(byte[] bArr, int i, int i2);

    HashCode hashInt(int i);

    HashCode hashLong(long j);

    <T> HashCode hashObject(@bwk T t, Funnel<? super T> funnel);

    HashCode hashString(CharSequence charSequence, Charset charset);

    HashCode hashUnencodedChars(CharSequence charSequence);

    Hasher newHasher();

    Hasher newHasher(int i);
}
