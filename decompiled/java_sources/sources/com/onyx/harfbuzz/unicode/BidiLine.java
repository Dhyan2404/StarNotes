package com.onyx.harfbuzz.unicode;

import androidx.annotation.NonNull;
import com.onyx.harfbuzz.Disposable;
import com.onyx.harfbuzz.internal.Constants;
import com.onyx.harfbuzz.internal.Description;
import com.onyx.harfbuzz.internal.JniBridge;
import com.onyx.harfbuzz.utils.Preconditions;
import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

/* loaded from: classes9.dex */
public class BidiLine implements Disposable {

    /* renamed from: a */
    public long f62888a;

    /* renamed from: b */
    public long f62889b;

    /* renamed from: com.onyx.harfbuzz.unicode.BidiLine$b */
    /* loaded from: classes9.dex */
    public static final class C13009b extends BidiLine {
        public C13009b(@NonNull BidiLine bidiLine) {
            super(bidiLine);
        }

        @Override // com.onyx.harfbuzz.unicode.BidiLine, com.onyx.harfbuzz.Disposable
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

    /* renamed from: com.onyx.harfbuzz.unicode.BidiLine$c */
    /* loaded from: classes9.dex */
    public class C13010c implements Iterable<BidiPair> {
        public C13010c() {
        }

        @Override // java.lang.Iterable
        @NonNull
        public Iterator<BidiPair> iterator() {
            return new C13011d();
        }
    }

    /* renamed from: com.onyx.harfbuzz.unicode.BidiLine$d */
    /* loaded from: classes9.dex */
    public class C13011d implements Iterator<BidiPair> {

        /* renamed from: e */
        public BidiMirrorLocator f62891e;

        /* renamed from: f */
        public BidiPair f62892f;

        public C13011d() {
            BidiMirrorLocator bidiMirrorLocator = new BidiMirrorLocator();
            this.f62891e = bidiMirrorLocator;
            bidiMirrorLocator.m52108a(BidiLine.this);
            this.f62892f = this.f62891e.m52109b();
        }

        @Override // java.util.Iterator
        @NonNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public BidiPair next() {
            BidiPair bidiPair = this.f62892f;
            if (bidiPair == null) {
                throw new NoSuchElementException();
            }
            this.f62892f = this.f62891e.m52109b();
            return bidiPair;
        }

        public void finalize() throws Throwable {
            try {
                this.f62891e.dispose();
            } finally {
                super.finalize();
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f62892f != null;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: com.onyx.harfbuzz.unicode.BidiLine$e */
    /* loaded from: classes9.dex */
    public class C13012e extends AbstractList<BidiRun> {

        /* renamed from: e */
        public int f62894e;

        public C13012e() {
            this.f62894e = BidiLine.nGetRunCount(BidiLine.this.f62889b);
        }

        @Override // java.util.AbstractList, java.util.List
        @NonNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public BidiRun get(int i) {
            Preconditions.checkElementIndex(i, this.f62894e);
            return BidiLine.nGetVisualRun(BidiLine.this.f62889b, i);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f62894e;
        }
    }

    static {
        JniBridge.loadLibrary();
    }

    public BidiLine(long j, long j2) {
        this.f62888a = BidiBuffer.retain(j);
        this.f62889b = j2;
    }

    @NonNull
    public static BidiLine finalizable(@NonNull BidiLine bidiLine) {
        if (bidiLine.getClass() == BidiLine.class) {
            return new C13009b(bidiLine);
        }
        if (bidiLine.getClass() == C13009b.class) {
            return bidiLine;
        }
        throw new IllegalArgumentException(Constants.EXCEPTION_SUBCLASS_NOT_SUPPORTED);
    }

    public static boolean isFinalizable(@NonNull BidiLine bidiLine) {
        return bidiLine.getClass() == C13009b.class;
    }

    private static native void nDispose(long j);

    private static native int nGetCharEnd(long j);

    private static native int nGetCharStart(long j);

    /* JADX INFO: Access modifiers changed from: private */
    public static native int nGetRunCount(long j);

    /* JADX INFO: Access modifiers changed from: private */
    public static native BidiRun nGetVisualRun(long j, int i);

    @Override // com.onyx.harfbuzz.Disposable
    public void dispose() {
        nDispose(this.f62889b);
        BidiBuffer.release(this.f62888a);
    }

    public int getCharEnd() {
        return nGetCharEnd(this.f62889b);
    }

    public int getCharStart() {
        return nGetCharStart(this.f62889b);
    }

    @NonNull
    public Iterable<BidiPair> getMirroringPairs() {
        return new C13010c();
    }

    @NonNull
    public List<BidiRun> getVisualRuns() {
        return new C13012e();
    }

    public String toString() {
        return "BidiLine{charStart=" + getCharStart() + ", charEnd=" + getCharEnd() + ", visualRuns=" + Description.forIterable(getVisualRuns()) + ", mirroringPairs=" + Description.forIterable(getMirroringPairs()) + "}";
    }

    public BidiLine(@NonNull BidiLine bidiLine) {
        this.f62888a = bidiLine.f62888a;
        this.f62889b = bidiLine.f62889b;
    }
}
