package com.onyx.harfbuzz.unicode;

import androidx.annotation.NonNull;
import com.onyx.harfbuzz.collections.IntList;
import com.onyx.harfbuzz.internal.JniBridge;
import com.onyx.harfbuzz.internal.collections.JByteArrayIntList;
import com.onyx.harfbuzz.utils.Preconditions;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes9.dex */
public class ScriptClassifier {

    /* renamed from: a */
    @NonNull
    public final String f62903a;

    /* renamed from: b */
    @NonNull
    public final byte[] f62904b;

    /* renamed from: com.onyx.harfbuzz.unicode.ScriptClassifier$a */
    /* loaded from: classes9.dex */
    public static class C13017a implements Iterable<ScriptRun> {

        /* renamed from: e */
        public final byte[] f62905e;

        /* renamed from: f */
        public final int f62906f;

        /* renamed from: g */
        public final int f62907g;

        public C13017a(byte[] bArr, int i, int i2) {
            this.f62905e = bArr;
            this.f62906f = i;
            this.f62907g = i2;
        }

        @Override // java.lang.Iterable
        @NonNull
        public Iterator<ScriptRun> iterator() {
            return new C13018b(this.f62905e, this.f62906f, this.f62907g);
        }
    }

    /* renamed from: com.onyx.harfbuzz.unicode.ScriptClassifier$b */
    /* loaded from: classes9.dex */
    public static class C13018b implements Iterator<ScriptRun> {

        /* renamed from: e */
        public final byte[] f62908e;

        /* renamed from: f */
        public final int f62909f;

        /* renamed from: g */
        public int f62910g;

        public C13018b(byte[] bArr, int i, int i2) {
            this.f62908e = bArr;
            this.f62909f = i2;
            this.f62910g = i;
        }

        @Override // java.util.Iterator
        @NonNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ScriptRun next() {
            int i;
            int i2 = this.f62910g;
            if (i2 == this.f62909f) {
                throw new NoSuchElementException();
            }
            byte b = this.f62908e[i2];
            int i3 = i2 + 1;
            while (true) {
                this.f62910g = i3;
                i = this.f62910g;
                if (i >= this.f62909f || this.f62908e[i] != b) {
                    break;
                }
                i3 = i + 1;
            }
            return new ScriptRun(i2, i, b);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f62910g != this.f62909f;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    static {
        JniBridge.loadLibrary();
    }

    public ScriptClassifier(@NonNull String str) {
        Preconditions.checkNotNull(str, "text");
        this.f62903a = str;
        byte[] bArr = new byte[str.length()];
        this.f62904b = bArr;
        nClassify(str, bArr);
    }

    private static native void nClassify(String str, byte[] bArr);

    /* renamed from: a */
    public final void m52113a(int i, int i2) {
        Preconditions.checkArgument(i >= 0, "Char Start: " + i);
        Preconditions.checkArgument(i2 <= this.f62903a.length(), "Char End: " + i2 + ", Text Length: " + this.f62903a.length());
        Preconditions.checkArgument(i2 > i, "Bad Range: [" + i + ", " + i2 + ')');
    }

    @NonNull
    public IntList getCharScripts() {
        byte[] bArr = this.f62904b;
        return new JByteArrayIntList(bArr, 0, bArr.length);
    }

    @NonNull
    public Iterable<ScriptRun> getScriptRuns() {
        return getScriptRuns(0, this.f62904b.length);
    }

    @NonNull
    public String getText() {
        return this.f62903a;
    }

    @NonNull
    public Iterable<ScriptRun> getScriptRuns(int i, int i2) {
        m52113a(i, i2);
        return new C13017a(this.f62904b, i, i2);
    }
}
