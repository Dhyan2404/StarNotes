package com.google.common.io;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.sunia.HTREnginev2.hri;
import com.sunia.HTREnginev2.jyi;
import com.sunia.HTREnginev2.ynf;
import java.io.IOException;
import java.io.Reader;
import java.nio.CharBuffer;
import java.util.ArrayDeque;
import java.util.Queue;
import javax.annotation.CheckForNull;

@Beta
@GwtIncompatible
@ynf
/* loaded from: classes6.dex */
public final class LineReader {

    /* renamed from: a */
    public final Readable f34923a;

    /* renamed from: b */
    @CheckForNull
    public final Reader f34924b;

    /* renamed from: c */
    public final CharBuffer f34925c;

    /* renamed from: d */
    public final char[] f34926d;

    /* renamed from: e */
    public final Queue<String> f34927e;

    /* renamed from: f */
    public final jyi f34928f;

    /* renamed from: com.google.common.io.LineReader$a */
    /* loaded from: classes6.dex */
    public class C6231a extends jyi {
        public C6231a() {
        }

        @Override // com.sunia.HTREnginev2.jyi
        /* renamed from: d */
        public void mo27225d(String str, String str2) {
            LineReader.this.f34927e.add(str);
        }
    }

    public LineReader(Readable readable) {
        CharBuffer m27209c = CharStreams.m27209c();
        this.f34925c = m27209c;
        this.f34926d = m27209c.array();
        this.f34927e = new ArrayDeque();
        this.f34928f = new C6231a();
        this.f34923a = (Readable) Preconditions.checkNotNull(readable);
        this.f34924b = readable instanceof Reader ? (Reader) readable : null;
    }

    @CanIgnoreReturnValue
    @CheckForNull
    public String readLine() throws IOException {
        int read;
        while (true) {
            if (this.f34927e.peek() != null) {
                break;
            }
            hri.m54615a(this.f34925c);
            Reader reader = this.f34924b;
            if (reader != null) {
                char[] cArr = this.f34926d;
                read = reader.read(cArr, 0, cArr.length);
            } else {
                read = this.f34923a.read(this.f34925c);
            }
            if (read == -1) {
                this.f34928f.m55072b();
                break;
            }
            this.f34928f.m55071a(this.f34926d, 0, read);
        }
        return this.f34927e.poll();
    }
}
