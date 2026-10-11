package com.onyx.harfbuzz.unicode;

import androidx.annotation.NonNull;
import com.onyx.harfbuzz.Disposable;
import com.onyx.harfbuzz.collections.IntList;
import com.onyx.harfbuzz.internal.Constants;
import com.onyx.harfbuzz.internal.JniBridge;
import com.onyx.harfbuzz.internal.collections.UInt8BufferIntList;
import com.onyx.harfbuzz.utils.Preconditions;

/* loaded from: classes9.dex */
public class BidiAlgorithm implements Disposable {
    public static final byte MAX_LEVEL = 125;

    /* renamed from: a */
    public long f62885a;

    /* renamed from: b */
    public long f62886b;

    /* renamed from: c */
    public final String f62887c;

    /* renamed from: com.onyx.harfbuzz.unicode.BidiAlgorithm$a */
    /* loaded from: classes9.dex */
    public static final class C13007a extends BidiAlgorithm {
        public C13007a(@NonNull BidiAlgorithm bidiAlgorithm) {
            super(bidiAlgorithm);
        }

        @Override // com.onyx.harfbuzz.unicode.BidiAlgorithm, com.onyx.harfbuzz.Disposable
        public void dispose() {
            throw new UnsupportedOperationException(Constants.EXCEPTION_FINALIZABLE_OBJECT);
        }

        public void finalize() throws Throwable {
            try {
                super.dispose();
            } finally {
                super.finalize();
            }
        }
    }

    static {
        JniBridge.loadLibrary();
    }

    public BidiAlgorithm(@NonNull String str) {
        Preconditions.checkNotNull(str, "text");
        Preconditions.checkArgument(str.length() > 0, "Text is empty");
        long create = BidiBuffer.create(str);
        this.f62885a = create;
        this.f62886b = nCreate(create);
        this.f62887c = str;
    }

    @NonNull
    public static BidiAlgorithm finalizable(@NonNull BidiAlgorithm bidiAlgorithm) {
        if (bidiAlgorithm.getClass() == BidiAlgorithm.class) {
            return new C13007a(bidiAlgorithm);
        }
        if (bidiAlgorithm.getClass() == C13007a.class) {
            return bidiAlgorithm;
        }
        throw new IllegalArgumentException(Constants.EXCEPTION_SUBCLASS_NOT_SUPPORTED);
    }

    public static boolean isFinalizable(@NonNull BidiAlgorithm bidiAlgorithm) {
        return bidiAlgorithm.getClass() == C13007a.class;
    }

    private static native long nCreate(long j);

    private static native long nCreateParagraph(long j, int i, int i2, int i3);

    private static native void nDispose(long j);

    private static native long nGetCharBidiClassesPtr(long j);

    private static native int nGetParagraphBoundary(long j, int i, int i2);

    /* renamed from: a */
    public final void m52103a(int i, int i2) {
        Preconditions.checkArgument(i >= 0, "Char Start: " + i);
        Preconditions.checkArgument(i2 <= this.f62887c.length(), "Char End: " + i2 + ", Text Length: " + this.f62887c.length());
        Preconditions.checkArgument(i2 > i, "Bad Range: [" + i + ", " + i2 + ')');
    }

    @NonNull
    public BidiParagraph createParagraph(int i, int i2, @NonNull BaseDirection baseDirection) {
        m52103a(i, i2);
        return new BidiParagraph(this.f62885a, nCreateParagraph(this.f62886b, i, i2, baseDirection.value));
    }

    @Override // com.onyx.harfbuzz.Disposable
    public void dispose() {
        nDispose(this.f62886b);
        BidiBuffer.release(this.f62885a);
    }

    @NonNull
    public IntList getCharBidiClasses() {
        return new UInt8BufferIntList(this, nGetCharBidiClassesPtr(this.f62886b), this.f62887c.length());
    }

    public int getParagraphBoundary(int i, int i2) {
        m52103a(i, i2);
        return nGetParagraphBoundary(this.f62886b, i, i2);
    }

    public String toString() {
        return "BidiAlgorithm{text=" + this.f62887c + ", charBidiClasses=" + getCharBidiClasses().toString() + "}";
    }

    @NonNull
    public BidiParagraph createParagraph(int i, int i2, byte b) {
        m52103a(i, i2);
        Preconditions.checkArgument(b >= 0 && b <= 125, "Base Level: " + ((int) b));
        return new BidiParagraph(this.f62885a, nCreateParagraph(this.f62886b, i, i2, b));
    }

    public BidiAlgorithm(@NonNull BidiAlgorithm bidiAlgorithm) {
        this.f62885a = bidiAlgorithm.f62885a;
        this.f62886b = bidiAlgorithm.f62886b;
        this.f62887c = bidiAlgorithm.f62887c;
    }
}
