package com.onyx.harfbuzz.unicode;

import androidx.annotation.NonNull;
import com.onyx.harfbuzz.Disposable;
import com.onyx.harfbuzz.collections.ByteList;
import com.onyx.harfbuzz.internal.Constants;
import com.onyx.harfbuzz.internal.Description;
import com.onyx.harfbuzz.internal.JniBridge;
import com.onyx.harfbuzz.internal.collections.Int8BufferByteList;
import com.onyx.harfbuzz.utils.Preconditions;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes9.dex */
public class BidiParagraph implements Disposable {

    /* renamed from: a */
    public long f62898a;

    /* renamed from: b */
    public long f62899b;

    /* renamed from: com.onyx.harfbuzz.unicode.BidiParagraph$b */
    /* loaded from: classes9.dex */
    public static final class C13014b extends BidiParagraph {
        public C13014b(@NonNull BidiParagraph bidiParagraph) {
            super(bidiParagraph);
        }

        @Override // com.onyx.harfbuzz.unicode.BidiParagraph, com.onyx.harfbuzz.Disposable
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

    /* renamed from: com.onyx.harfbuzz.unicode.BidiParagraph$c */
    /* loaded from: classes9.dex */
    public class C13015c implements Iterable<BidiRun> {
        public C13015c() {
        }

        @Override // java.lang.Iterable
        @NonNull
        public Iterator<BidiRun> iterator() {
            return new C13016d();
        }
    }

    /* renamed from: com.onyx.harfbuzz.unicode.BidiParagraph$d */
    /* loaded from: classes9.dex */
    public class C13016d implements Iterator<BidiRun> {

        /* renamed from: e */
        public BidiRun f62901e;

        public C13016d() {
            this.f62901e = BidiParagraph.nGetOnwardRun(BidiParagraph.this.f62899b, BidiParagraph.this.getCharStart());
        }

        @Override // java.util.Iterator
        @NonNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public BidiRun next() {
            BidiRun bidiRun = this.f62901e;
            if (bidiRun == null) {
                throw new NoSuchElementException();
            }
            this.f62901e = BidiParagraph.nGetOnwardRun(BidiParagraph.this.f62899b, bidiRun.charEnd);
            return bidiRun;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f62901e != null;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    static {
        JniBridge.loadLibrary();
    }

    public BidiParagraph(long j, long j2) {
        this.f62898a = BidiBuffer.retain(j);
        this.f62899b = j2;
    }

    @NonNull
    public static BidiParagraph finalizable(@NonNull BidiParagraph bidiParagraph) {
        if (bidiParagraph.getClass() == BidiParagraph.class) {
            return new C13014b(bidiParagraph);
        }
        if (bidiParagraph.getClass() == C13014b.class) {
            return bidiParagraph;
        }
        throw new IllegalArgumentException(Constants.EXCEPTION_SUBCLASS_NOT_SUPPORTED);
    }

    public static boolean isFinalizable(@NonNull BidiParagraph bidiParagraph) {
        return bidiParagraph.getClass() == C13014b.class;
    }

    private static native long nCreateLine(long j, int i, int i2);

    private static native void nDispose(long j);

    private static native byte nGetBaseLevel(long j);

    private static native int nGetCharCount(long j);

    private static native int nGetCharEnd(long j);

    private static native int nGetCharStart(long j);

    private static native long nGetLevelsPtr(long j);

    /* JADX INFO: Access modifiers changed from: private */
    public static native BidiRun nGetOnwardRun(long j, int i);

    /* renamed from: b */
    public final void m52111b(int i, int i2) {
        int charStart = getCharStart();
        int charEnd = getCharEnd();
        Preconditions.checkArgument(i >= charStart, "Char Start: " + i + ", Paragraph Range: [" + charStart + ", " + charEnd + ')');
        Preconditions.checkArgument(i2 <= charEnd, "Char End: " + i2 + ", Paragraph Range: [" + charStart + ", " + charEnd + ')');
        Preconditions.checkArgument(i2 > i, "Bad Range: [" + i + ", " + i2 + ')');
    }

    @NonNull
    public BidiLine createLine(int i, int i2) {
        m52111b(i, i2);
        return new BidiLine(this.f62898a, nCreateLine(this.f62899b, i, i2));
    }

    @Override // com.onyx.harfbuzz.Disposable
    public void dispose() {
        nDispose(this.f62899b);
        BidiBuffer.release(this.f62898a);
    }

    public byte getBaseLevel() {
        return nGetBaseLevel(this.f62899b);
    }

    public int getCharEnd() {
        return nGetCharEnd(this.f62899b);
    }

    @NonNull
    public ByteList getCharLevels() {
        return new Int8BufferByteList(this, nGetLevelsPtr(this.f62899b), nGetCharCount(this.f62899b));
    }

    public int getCharStart() {
        return nGetCharStart(this.f62899b);
    }

    @NonNull
    public Iterable<BidiRun> getLogicalRuns() {
        return new C13015c();
    }

    public String toString() {
        return "BidiParagraph{charStart=" + getCharStart() + ", charEnd=" + getCharEnd() + ", baseLevel=" + ((int) getBaseLevel()) + ", charLevels=" + Description.forByteList(getCharLevels()) + ", logicalRuns=" + Description.forIterable(getLogicalRuns()) + "}";
    }

    public BidiParagraph(@NonNull BidiParagraph bidiParagraph) {
        this.f62898a = bidiParagraph.f62898a;
        this.f62899b = bidiParagraph.f62899b;
    }
}
