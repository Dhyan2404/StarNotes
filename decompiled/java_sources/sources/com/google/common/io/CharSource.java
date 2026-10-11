package com.google.common.io;

import com.google.android.material.motion.MotionUtils;
import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Ascii;
import com.google.common.base.Optional;
import com.google.common.base.Preconditions;
import com.google.common.base.Splitter;
import com.google.common.collect.AbstractIterator;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Lists;
import com.google.common.collect.Streams;
import com.google.common.io.CharSource;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.MustBeClosed;
import com.onyx.galaxy.note.editor.action.audio.RemoveAudioAction;
import com.sunia.HTREnginev2.cqj;
import com.sunia.HTREnginev2.dwk;
import com.sunia.HTREnginev2.fdl;
import com.sunia.HTREnginev2.ynf;
import com.sunia.HTREnginev2.yqd;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.io.StringReader;
import java.io.UncheckedIOException;
import java.io.Writer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.function.Consumer;
import java.util.stream.Stream;
import javax.annotation.CheckForNull;

@GwtIncompatible
@ynf
/* loaded from: classes6.dex */
public abstract class CharSource {

    /* renamed from: com.google.common.io.CharSource$a */
    /* loaded from: classes6.dex */
    public final class C6213a extends ByteSource {

        /* renamed from: a */
        public final Charset f34887a;

        public C6213a(Charset charset) {
            this.f34887a = (Charset) Preconditions.checkNotNull(charset);
        }

        @Override // com.google.common.io.ByteSource
        public CharSource asCharSource(Charset charset) {
            return charset.equals(this.f34887a) ? CharSource.this : super.asCharSource(charset);
        }

        @Override // com.google.common.io.ByteSource
        public InputStream openStream() throws IOException {
            return new fdl(CharSource.this.openStream(), this.f34887a, 8192);
        }

        public String toString() {
            String obj = CharSource.this.toString();
            String valueOf = String.valueOf(this.f34887a);
            StringBuilder sb = new StringBuilder(String.valueOf(obj).length() + 15 + valueOf.length());
            sb.append(obj);
            sb.append(".asByteSource(");
            sb.append(valueOf);
            sb.append(MotionUtils.f31762d);
            return sb.toString();
        }
    }

    /* renamed from: com.google.common.io.CharSource$b */
    /* loaded from: classes6.dex */
    public static class C6214b extends CharSource {

        /* renamed from: b */
        public static final Splitter f34889b = Splitter.onPattern("\r\n|\n|\r");

        /* renamed from: a */
        public final CharSequence f34890a;

        /* renamed from: com.google.common.io.CharSource$b$a */
        /* loaded from: classes6.dex */
        public class a extends AbstractIterator<String> {

            /* renamed from: g */
            public Iterator<String> f34891g;

            public a() {
                this.f34891g = C6214b.f34889b.split(C6214b.this.f34890a).iterator();
            }

            @Override // com.google.common.collect.AbstractIterator
            @CheckForNull
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public String computeNext() {
                if (this.f34891g.hasNext()) {
                    String next = this.f34891g.next();
                    if (this.f34891g.hasNext() || !next.isEmpty()) {
                        return next;
                    }
                }
                return endOfData();
            }
        }

        public C6214b(CharSequence charSequence) {
            this.f34890a = (CharSequence) Preconditions.checkNotNull(charSequence);
        }

        /* renamed from: e */
        public final Iterator<String> m27204e() {
            return new a();
        }

        @Override // com.google.common.io.CharSource
        public boolean isEmpty() {
            return this.f34890a.length() == 0;
        }

        @Override // com.google.common.io.CharSource
        public long length() {
            return this.f34890a.length();
        }

        @Override // com.google.common.io.CharSource
        public Optional<Long> lengthIfKnown() {
            return Optional.m25808of(Long.valueOf(this.f34890a.length()));
        }

        @Override // com.google.common.io.CharSource
        public Stream<String> lines() {
            return Streams.stream(m27204e());
        }

        @Override // com.google.common.io.CharSource
        public Reader openStream() {
            return new yqd(this.f34890a);
        }

        @Override // com.google.common.io.CharSource
        public String read() {
            return this.f34890a.toString();
        }

        @Override // com.google.common.io.CharSource
        @CheckForNull
        public String readFirstLine() {
            Iterator<String> m27204e = m27204e();
            if (m27204e.hasNext()) {
                return m27204e.next();
            }
            return null;
        }

        @Override // com.google.common.io.CharSource
        public ImmutableList<String> readLines() {
            return ImmutableList.copyOf(m27204e());
        }

        public String toString() {
            String truncate = Ascii.truncate(this.f34890a, 30, RemoveAudioAction.f58149k);
            StringBuilder sb = new StringBuilder(String.valueOf(truncate).length() + 17);
            sb.append("CharSource.wrap(");
            sb.append(truncate);
            sb.append(MotionUtils.f31762d);
            return sb.toString();
        }

        @Override // com.google.common.io.CharSource
        @dwk
        public <T> T readLines(LineProcessor<T> lineProcessor) throws IOException {
            Iterator<String> m27204e = m27204e();
            while (m27204e.hasNext() && lineProcessor.processLine(m27204e.next())) {
            }
            return lineProcessor.getResult();
        }
    }

    /* renamed from: com.google.common.io.CharSource$c */
    /* loaded from: classes6.dex */
    public static final class C6215c extends CharSource {

        /* renamed from: a */
        public final Iterable<? extends CharSource> f34893a;

        public C6215c(Iterable<? extends CharSource> iterable) {
            this.f34893a = (Iterable) Preconditions.checkNotNull(iterable);
        }

        @Override // com.google.common.io.CharSource
        public boolean isEmpty() throws IOException {
            Iterator<? extends CharSource> it2 = this.f34893a.iterator();
            while (it2.hasNext()) {
                if (!it2.next().isEmpty()) {
                    return false;
                }
            }
            return true;
        }

        @Override // com.google.common.io.CharSource
        public long length() throws IOException {
            Iterator<? extends CharSource> it2 = this.f34893a.iterator();
            long j = 0;
            while (it2.hasNext()) {
                j += it2.next().length();
            }
            return j;
        }

        @Override // com.google.common.io.CharSource
        public Optional<Long> lengthIfKnown() {
            Iterator<? extends CharSource> it2 = this.f34893a.iterator();
            long j = 0;
            while (it2.hasNext()) {
                Optional<Long> lengthIfKnown = it2.next().lengthIfKnown();
                if (!lengthIfKnown.isPresent()) {
                    return Optional.absent();
                }
                j += lengthIfKnown.get().longValue();
            }
            return Optional.m25808of(Long.valueOf(j));
        }

        @Override // com.google.common.io.CharSource
        public Reader openStream() throws IOException {
            return new cqj(this.f34893a.iterator());
        }

        public String toString() {
            String valueOf = String.valueOf(this.f34893a);
            StringBuilder sb = new StringBuilder(valueOf.length() + 19);
            sb.append("CharSource.concat(");
            sb.append(valueOf);
            sb.append(MotionUtils.f31762d);
            return sb.toString();
        }
    }

    /* renamed from: com.google.common.io.CharSource$d */
    /* loaded from: classes6.dex */
    public static final class C6216d extends C6217e {

        /* renamed from: c */
        public static final C6216d f34894c = new C6216d();

        public C6216d() {
            super("");
        }

        @Override // com.google.common.io.CharSource.C6214b
        public String toString() {
            return "CharSource.empty()";
        }
    }

    /* renamed from: c */
    public static /* synthetic */ void m27201c(BufferedReader bufferedReader) {
        try {
            bufferedReader.close();
        } catch (IOException e) {
            throw new UncheckedIOException(e);
        }
    }

    public static CharSource concat(Iterable<? extends CharSource> iterable) {
        return new C6215c(iterable);
    }

    public static CharSource empty() {
        return C6216d.f34894c;
    }

    public static CharSource wrap(CharSequence charSequence) {
        return charSequence instanceof String ? new C6217e((String) charSequence) : new C6214b(charSequence);
    }

    @Beta
    public ByteSource asByteSource(Charset charset) {
        return new C6213a(charset);
    }

    /* renamed from: b */
    public final long m27202b(Reader reader) throws IOException {
        long j = 0;
        while (true) {
            long skip = reader.skip(Long.MAX_VALUE);
            if (skip == 0) {
                return j;
            }
            j += skip;
        }
    }

    @CanIgnoreReturnValue
    public long copyTo(Appendable appendable) throws IOException {
        Preconditions.checkNotNull(appendable);
        try {
            return CharStreams.copy((Reader) Closer.create().register(openStream()), appendable);
        } finally {
        }
    }

    @Beta
    public void forEachLine(Consumer<? super String> consumer) throws IOException {
        try {
            Stream<String> lines = lines();
            try {
                lines.forEachOrdered(consumer);
                lines.close();
            } finally {
            }
        } catch (UncheckedIOException e) {
            throw e.getCause();
        }
    }

    public boolean isEmpty() throws IOException {
        Optional<Long> lengthIfKnown = lengthIfKnown();
        if (lengthIfKnown.isPresent()) {
            return lengthIfKnown.get().longValue() == 0;
        }
        Closer create = Closer.create();
        try {
            return ((Reader) create.register(openStream())).read() == -1;
        } catch (Throwable th) {
            try {
                throw create.rethrow(th);
            } finally {
                create.close();
            }
        }
    }

    @Beta
    public long length() throws IOException {
        Optional<Long> lengthIfKnown = lengthIfKnown();
        if (lengthIfKnown.isPresent()) {
            return lengthIfKnown.get().longValue();
        }
        try {
            return m27202b((Reader) Closer.create().register(openStream()));
        } finally {
        }
    }

    @Beta
    public Optional<Long> lengthIfKnown() {
        return Optional.absent();
    }

    @Beta
    @MustBeClosed
    public Stream<String> lines() throws IOException {
        final BufferedReader openBufferedStream = openBufferedStream();
        return (Stream) openBufferedStream.lines().onClose(new Runnable() { // from class: com.sunia.HTREnginev2.zqd
            @Override // java.lang.Runnable
            public final void run() {
                CharSource.m27201c(openBufferedStream);
            }
        });
    }

    public BufferedReader openBufferedStream() throws IOException {
        Reader openStream = openStream();
        return openStream instanceof BufferedReader ? (BufferedReader) openStream : new BufferedReader(openStream);
    }

    public abstract Reader openStream() throws IOException;

    public String read() throws IOException {
        try {
            return CharStreams.toString((Reader) Closer.create().register(openStream()));
        } finally {
        }
    }

    @CheckForNull
    public String readFirstLine() throws IOException {
        try {
            return ((BufferedReader) Closer.create().register(openBufferedStream())).readLine();
        } finally {
        }
    }

    public ImmutableList<String> readLines() throws IOException {
        try {
            BufferedReader bufferedReader = (BufferedReader) Closer.create().register(openBufferedStream());
            ArrayList newArrayList = Lists.newArrayList();
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine != null) {
                    newArrayList.add(readLine);
                } else {
                    return ImmutableList.copyOf((Collection) newArrayList);
                }
            }
        } finally {
        }
    }

    /* renamed from: com.google.common.io.CharSource$e */
    /* loaded from: classes6.dex */
    public static class C6217e extends C6214b {
        public C6217e(String str) {
            super(str);
        }

        @Override // com.google.common.io.CharSource
        public long copyTo(Appendable appendable) throws IOException {
            appendable.append(this.f34890a);
            return this.f34890a.length();
        }

        @Override // com.google.common.io.CharSource.C6214b, com.google.common.io.CharSource
        public Reader openStream() {
            return new StringReader((String) this.f34890a);
        }

        @Override // com.google.common.io.CharSource
        public long copyTo(CharSink charSink) throws IOException {
            Preconditions.checkNotNull(charSink);
            try {
                ((Writer) Closer.create().register(charSink.openStream())).write((String) this.f34890a);
                return this.f34890a.length();
            } finally {
            }
        }
    }

    public static CharSource concat(Iterator<? extends CharSource> it2) {
        return concat(ImmutableList.copyOf(it2));
    }

    public static CharSource concat(CharSource... charSourceArr) {
        return concat(ImmutableList.copyOf(charSourceArr));
    }

    @CanIgnoreReturnValue
    public long copyTo(CharSink charSink) throws IOException {
        Preconditions.checkNotNull(charSink);
        Closer create = Closer.create();
        try {
            return CharStreams.copy((Reader) create.register(openStream()), (Writer) create.register(charSink.openStream()));
        } finally {
        }
    }

    @Beta
    @CanIgnoreReturnValue
    @dwk
    public <T> T readLines(LineProcessor<T> lineProcessor) throws IOException {
        Preconditions.checkNotNull(lineProcessor);
        try {
            return (T) CharStreams.readLines((Reader) Closer.create().register(openStream()), lineProcessor);
        } finally {
        }
    }
}
