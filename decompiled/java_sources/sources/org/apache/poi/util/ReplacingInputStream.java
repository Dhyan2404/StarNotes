package org.apache.poi.util;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;

@Internal
/* loaded from: classes13.dex */
public class ReplacingInputStream extends FilterInputStream {
    final int[] buf;
    private int matchedIndex;
    private final byte[] pattern;
    private int replacedIndex;
    private final byte[] replacement;
    private State state;
    private int unbufferIndex;

    /* renamed from: org.apache.poi.util.ReplacingInputStream$1 */
    /* loaded from: classes13.dex */
    public static /* synthetic */ class C198621 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$util$ReplacingInputStream$State;

        static {
            int[] iArr = new int[State.values().length];
            $SwitchMap$org$apache$poi$util$ReplacingInputStream$State = iArr;
            try {
                iArr[State.NOT_MATCHED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$util$ReplacingInputStream$State[State.MATCHING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$util$ReplacingInputStream$State[State.REPLACING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$poi$util$ReplacingInputStream$State[State.UNBUFFER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* loaded from: classes13.dex */
    public enum State {
        NOT_MATCHED,
        MATCHING,
        REPLACING,
        UNBUFFER
    }

    public ReplacingInputStream(InputStream inputStream, String str, String str2) {
        this(inputStream, str.getBytes(StandardCharsets.UTF_8), str2 == null ? null : str2.getBytes(StandardCharsets.UTF_8));
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        bArr.getClass();
        if (i < 0 || i2 < 0 || i2 > bArr.length - i) {
            throw new IndexOutOfBoundsException();
        }
        if (i2 == 0) {
            return 0;
        }
        int read = read();
        if (read == -1) {
            return -1;
        }
        bArr[i] = (byte) read;
        int i3 = 1;
        while (i3 < i2) {
            int read2 = read();
            if (read2 == -1) {
                break;
            }
            bArr[i + i3] = (byte) read2;
            i3++;
        }
        return i3;
    }

    public String toString() {
        return this.state.name() + " " + this.matchedIndex + " " + this.replacedIndex + " " + this.unbufferIndex;
    }

    public ReplacingInputStream(InputStream inputStream, byte[] bArr, byte[] bArr2) {
        super(inputStream);
        this.state = State.NOT_MATCHED;
        if (bArr != null && bArr.length != 0) {
            this.pattern = bArr;
            this.replacement = bArr2;
            this.buf = new int[bArr.length];
            return;
        }
        throw new IllegalArgumentException("pattern length should be > 0");
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int i = C198621.$SwitchMap$org$apache$poi$util$ReplacingInputStream$State[this.state.ordinal()];
        if (i == 2) {
            int read = super.read();
            byte[] bArr = this.pattern;
            int i2 = this.matchedIndex;
            if (bArr[i2] == read) {
                int[] iArr = this.buf;
                int i3 = i2 + 1;
                this.matchedIndex = i3;
                iArr[i2] = read;
                if (i3 == bArr.length) {
                    byte[] bArr2 = this.replacement;
                    if (bArr2 != null && bArr2.length != 0) {
                        this.state = State.REPLACING;
                        this.replacedIndex = 0;
                    } else {
                        this.state = State.NOT_MATCHED;
                        this.matchedIndex = 0;
                    }
                }
            } else {
                int[] iArr2 = this.buf;
                this.matchedIndex = i2 + 1;
                iArr2[i2] = read;
                this.state = State.UNBUFFER;
                this.unbufferIndex = 0;
            }
            return read();
        }
        if (i == 3) {
            byte[] bArr3 = this.replacement;
            int i4 = this.replacedIndex;
            int i5 = i4 + 1;
            this.replacedIndex = i5;
            byte b = bArr3[i4];
            if (i5 == bArr3.length) {
                this.state = State.NOT_MATCHED;
                this.replacedIndex = 0;
            }
            return b;
        }
        if (i != 4) {
            int read2 = super.read();
            if (this.pattern[0] != read2) {
                return read2;
            }
            Arrays.fill(this.buf, 0);
            int[] iArr3 = this.buf;
            this.matchedIndex = 0 + 1;
            iArr3[0] = read2;
            if (this.pattern.length == 1) {
                this.state = State.REPLACING;
                this.replacedIndex = 0;
            } else {
                this.state = State.MATCHING;
            }
            return read();
        }
        int[] iArr4 = this.buf;
        int i6 = this.unbufferIndex;
        int i7 = i6 + 1;
        this.unbufferIndex = i7;
        int i8 = iArr4[i6];
        if (i7 == this.matchedIndex) {
            this.state = State.NOT_MATCHED;
            this.matchedIndex = 0;
        }
        return i8;
    }
}
