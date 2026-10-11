package com.google.common.io;

import com.google.android.material.motion.MotionUtils;
import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Ascii;
import com.google.common.base.Optional;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.hash.Funnels;
import com.google.common.hash.HashCode;
import com.google.common.hash.HashFunction;
import com.google.common.hash.Hasher;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.onyx.galaxy.note.editor.action.audio.RemoveAudioAction;
import com.sunia.HTREnginev2.dwk;
import com.sunia.HTREnginev2.xpj;
import com.sunia.HTREnginev2.ynf;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.Reader;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;

@GwtIncompatible
@ynf
/* loaded from: classes6.dex */
public abstract class ByteSource {

    /* renamed from: com.google.common.io.ByteSource$a */
    /* loaded from: classes6.dex */
    public class C6204a extends CharSource {

        /* renamed from: a */
        public final Charset f34867a;

        public C6204a(Charset charset) {
            this.f34867a = (Charset) Preconditions.checkNotNull(charset);
        }

        @Override // com.google.common.io.CharSource
        public ByteSource asByteSource(Charset charset) {
            return charset.equals(this.f34867a) ? ByteSource.this : super.asByteSource(charset);
        }

        @Override // com.google.common.io.CharSource
        public Reader openStream() throws IOException {
            return new InputStreamReader(ByteSource.this.openStream(), this.f34867a);
        }

        @Override // com.google.common.io.CharSource
        public String read() throws IOException {
            return new String(ByteSource.this.read(), this.f34867a);
        }

        public String toString() {
            String obj = ByteSource.this.toString();
            String valueOf = String.valueOf(this.f34867a);
            StringBuilder sb = new StringBuilder(String.valueOf(obj).length() + 15 + valueOf.length());
            sb.append(obj);
            sb.append(".asCharSource(");
            sb.append(valueOf);
            sb.append(MotionUtils.f31762d);
            return sb.toString();
        }
    }

    /* renamed from: com.google.common.io.ByteSource$b */
    /* loaded from: classes6.dex */
    public static class C6205b extends ByteSource {

        /* renamed from: a */
        public final byte[] f34869a;

        /* renamed from: b */
        public final int f34870b;

        /* renamed from: c */
        public final int f34871c;

        public C6205b(byte[] bArr) {
            this(bArr, 0, bArr.length);
        }

        @Override // com.google.common.io.ByteSource
        public long copyTo(OutputStream outputStream) throws IOException {
            outputStream.write(this.f34869a, this.f34870b, this.f34871c);
            return this.f34871c;
        }

        @Override // com.google.common.io.ByteSource
        public HashCode hash(HashFunction hashFunction) throws IOException {
            return hashFunction.hashBytes(this.f34869a, this.f34870b, this.f34871c);
        }

        @Override // com.google.common.io.ByteSource
        public boolean isEmpty() {
            return this.f34871c == 0;
        }

        @Override // com.google.common.io.ByteSource
        public InputStream openBufferedStream() throws IOException {
            return openStream();
        }

        @Override // com.google.common.io.ByteSource
        public InputStream openStream() {
            return new ByteArrayInputStream(this.f34869a, this.f34870b, this.f34871c);
        }

        @Override // com.google.common.io.ByteSource
        public byte[] read() {
            byte[] bArr = this.f34869a;
            int i = this.f34870b;
            return Arrays.copyOfRange(bArr, i, this.f34871c + i);
        }

        @Override // com.google.common.io.ByteSource
        public long size() {
            return this.f34871c;
        }

        @Override // com.google.common.io.ByteSource
        public Optional<Long> sizeIfKnown() {
            return Optional.m25808of(Long.valueOf(this.f34871c));
        }

        @Override // com.google.common.io.ByteSource
        public ByteSource slice(long j, long j2) {
            Preconditions.checkArgument(j >= 0, "offset (%s) may not be negative", j);
            Preconditions.checkArgument(j2 >= 0, "length (%s) may not be negative", j2);
            long min = Math.min(j, this.f34871c);
            return new C6205b(this.f34869a, this.f34870b + ((int) min), (int) Math.min(j2, this.f34871c - min));
        }

        public String toString() {
            String truncate = Ascii.truncate(BaseEncoding.base16().encode(this.f34869a, this.f34870b, this.f34871c), 30, RemoveAudioAction.f58149k);
            StringBuilder sb = new StringBuilder(String.valueOf(truncate).length() + 17);
            sb.append("ByteSource.wrap(");
            sb.append(truncate);
            sb.append(MotionUtils.f31762d);
            return sb.toString();
        }

        public C6205b(byte[] bArr, int i, int i2) {
            this.f34869a = bArr;
            this.f34870b = i;
            this.f34871c = i2;
        }

        @Override // com.google.common.io.ByteSource
        @dwk
        public <T> T read(ByteProcessor<T> byteProcessor) throws IOException {
            byteProcessor.processBytes(this.f34869a, this.f34870b, this.f34871c);
            return byteProcessor.getResult();
        }
    }

    /* renamed from: com.google.common.io.ByteSource$c */
    /* loaded from: classes6.dex */
    public static final class C6206c extends ByteSource {

        /* renamed from: a */
        public final Iterable<? extends ByteSource> f34872a;

        public C6206c(Iterable<? extends ByteSource> iterable) {
            this.f34872a = (Iterable) Preconditions.checkNotNull(iterable);
        }

        @Override // com.google.common.io.ByteSource
        public boolean isEmpty() throws IOException {
            Iterator<? extends ByteSource> it2 = this.f34872a.iterator();
            while (it2.hasNext()) {
                if (!it2.next().isEmpty()) {
                    return false;
                }
            }
            return true;
        }

        @Override // com.google.common.io.ByteSource
        public InputStream openStream() throws IOException {
            return new xpj(this.f34872a.iterator());
        }

        @Override // com.google.common.io.ByteSource
        public long size() throws IOException {
            Iterator<? extends ByteSource> it2 = this.f34872a.iterator();
            long j = 0;
            while (it2.hasNext()) {
                j += it2.next().size();
                if (j < 0) {
                    return Long.MAX_VALUE;
                }
            }
            return j;
        }

        @Override // com.google.common.io.ByteSource
        public Optional<Long> sizeIfKnown() {
            Iterable<? extends ByteSource> iterable = this.f34872a;
            if (!(iterable instanceof Collection)) {
                return Optional.absent();
            }
            Iterator<? extends ByteSource> it2 = iterable.iterator();
            long j = 0;
            while (it2.hasNext()) {
                Optional<Long> sizeIfKnown = it2.next().sizeIfKnown();
                if (!sizeIfKnown.isPresent()) {
                    return Optional.absent();
                }
                j += sizeIfKnown.get().longValue();
                if (j < 0) {
                    return Optional.m25808of(Long.MAX_VALUE);
                }
            }
            return Optional.m25808of(Long.valueOf(j));
        }

        public String toString() {
            String valueOf = String.valueOf(this.f34872a);
            StringBuilder sb = new StringBuilder(valueOf.length() + 19);
            sb.append("ByteSource.concat(");
            sb.append(valueOf);
            sb.append(MotionUtils.f31762d);
            return sb.toString();
        }
    }

    /* renamed from: com.google.common.io.ByteSource$d */
    /* loaded from: classes6.dex */
    public static final class C6207d extends C6205b {

        /* renamed from: d */
        public static final C6207d f34873d = new C6207d();

        public C6207d() {
            super(new byte[0]);
        }

        @Override // com.google.common.io.ByteSource
        public CharSource asCharSource(Charset charset) {
            Preconditions.checkNotNull(charset);
            return CharSource.empty();
        }

        @Override // com.google.common.io.ByteSource.C6205b, com.google.common.io.ByteSource
        public byte[] read() {
            return this.f34869a;
        }

        @Override // com.google.common.io.ByteSource.C6205b
        public String toString() {
            return "ByteSource.empty()";
        }
    }

    /* renamed from: com.google.common.io.ByteSource$e */
    /* loaded from: classes6.dex */
    public final class C6208e extends ByteSource {

        /* renamed from: a */
        public final long f34874a;

        /* renamed from: b */
        public final long f34875b;

        public C6208e(long j, long j2) {
            Preconditions.checkArgument(j >= 0, "offset (%s) may not be negative", j);
            Preconditions.checkArgument(j2 >= 0, "length (%s) may not be negative", j2);
            this.f34874a = j;
            this.f34875b = j2;
        }

        /* renamed from: b */
        public final InputStream m27192b(InputStream inputStream) throws IOException {
            long j = this.f34874a;
            if (j > 0) {
                try {
                    if (ByteStreams.m27196d(inputStream, j) < this.f34874a) {
                        inputStream.close();
                        return new ByteArrayInputStream(new byte[0]);
                    }
                } finally {
                }
            }
            return ByteStreams.limit(inputStream, this.f34875b);
        }

        @Override // com.google.common.io.ByteSource
        public boolean isEmpty() throws IOException {
            return this.f34875b == 0 || super.isEmpty();
        }

        @Override // com.google.common.io.ByteSource
        public InputStream openBufferedStream() throws IOException {
            return m27192b(ByteSource.this.openBufferedStream());
        }

        @Override // com.google.common.io.ByteSource
        public InputStream openStream() throws IOException {
            return m27192b(ByteSource.this.openStream());
        }

        @Override // com.google.common.io.ByteSource
        public Optional<Long> sizeIfKnown() {
            Optional<Long> sizeIfKnown = ByteSource.this.sizeIfKnown();
            if (!sizeIfKnown.isPresent()) {
                return Optional.absent();
            }
            long longValue = sizeIfKnown.get().longValue();
            return Optional.m25808of(Long.valueOf(Math.min(this.f34875b, longValue - Math.min(this.f34874a, longValue))));
        }

        @Override // com.google.common.io.ByteSource
        public ByteSource slice(long j, long j2) {
            Preconditions.checkArgument(j >= 0, "offset (%s) may not be negative", j);
            Preconditions.checkArgument(j2 >= 0, "length (%s) may not be negative", j2);
            long j3 = this.f34875b - j;
            return j3 <= 0 ? ByteSource.empty() : ByteSource.this.slice(this.f34874a + j, Math.min(j2, j3));
        }

        public String toString() {
            String obj = ByteSource.this.toString();
            long j = this.f34874a;
            long j2 = this.f34875b;
            StringBuilder sb = new StringBuilder(String.valueOf(obj).length() + 50);
            sb.append(obj);
            sb.append(".slice(");
            sb.append(j);
            sb.append(", ");
            sb.append(j2);
            sb.append(MotionUtils.f31762d);
            return sb.toString();
        }
    }

    public static ByteSource concat(Iterable<? extends ByteSource> iterable) {
        return new C6206c(iterable);
    }

    public static ByteSource empty() {
        return C6207d.f34873d;
    }

    public static ByteSource wrap(byte[] bArr) {
        return new C6205b(bArr);
    }

    /* renamed from: a */
    public final long m27191a(InputStream inputStream) throws IOException {
        long j = 0;
        while (true) {
            long m27196d = ByteStreams.m27196d(inputStream, 2147483647L);
            if (m27196d <= 0) {
                return j;
            }
            j += m27196d;
        }
    }

    public CharSource asCharSource(Charset charset) {
        return new C6204a(charset);
    }

    public boolean contentEquals(ByteSource byteSource) throws IOException {
        int read;
        Preconditions.checkNotNull(byteSource);
        byte[] m27194b = ByteStreams.m27194b();
        byte[] m27194b2 = ByteStreams.m27194b();
        Closer create = Closer.create();
        try {
            InputStream inputStream = (InputStream) create.register(openStream());
            InputStream inputStream2 = (InputStream) create.register(byteSource.openStream());
            do {
                read = ByteStreams.read(inputStream, m27194b, 0, m27194b.length);
                if (read == ByteStreams.read(inputStream2, m27194b2, 0, m27194b2.length) && Arrays.equals(m27194b, m27194b2)) {
                }
                return false;
            } while (read == m27194b.length);
            create.close();
            return true;
        } finally {
        }
    }

    @CanIgnoreReturnValue
    public long copyTo(OutputStream outputStream) throws IOException {
        Preconditions.checkNotNull(outputStream);
        try {
            return ByteStreams.copy((InputStream) Closer.create().register(openStream()), outputStream);
        } finally {
        }
    }

    public HashCode hash(HashFunction hashFunction) throws IOException {
        Hasher newHasher = hashFunction.newHasher();
        copyTo(Funnels.asOutputStream(newHasher));
        return newHasher.hash();
    }

    public boolean isEmpty() throws IOException {
        Optional<Long> sizeIfKnown = sizeIfKnown();
        if (sizeIfKnown.isPresent()) {
            return sizeIfKnown.get().longValue() == 0;
        }
        Closer create = Closer.create();
        try {
            return ((InputStream) create.register(openStream())).read() == -1;
        } catch (Throwable th) {
            try {
                throw create.rethrow(th);
            } finally {
                create.close();
            }
        }
    }

    public InputStream openBufferedStream() throws IOException {
        InputStream openStream = openStream();
        return openStream instanceof BufferedInputStream ? (BufferedInputStream) openStream : new BufferedInputStream(openStream);
    }

    public abstract InputStream openStream() throws IOException;

    public byte[] read() throws IOException {
        byte[] byteArray;
        Closer create = Closer.create();
        try {
            InputStream inputStream = (InputStream) create.register(openStream());
            Optional<Long> sizeIfKnown = sizeIfKnown();
            if (sizeIfKnown.isPresent()) {
                byteArray = ByteStreams.m27197e(inputStream, sizeIfKnown.get().longValue());
            } else {
                byteArray = ByteStreams.toByteArray(inputStream);
            }
            return byteArray;
        } catch (Throwable th) {
            try {
                throw create.rethrow(th);
            } finally {
                create.close();
            }
        }
    }

    public long size() throws IOException {
        Optional<Long> sizeIfKnown = sizeIfKnown();
        if (sizeIfKnown.isPresent()) {
            return sizeIfKnown.get().longValue();
        }
        Closer create = Closer.create();
        try {
            return m27191a((InputStream) create.register(openStream()));
        } catch (IOException unused) {
            create.close();
            try {
                return ByteStreams.exhaust((InputStream) Closer.create().register(openStream()));
            } finally {
            }
        } finally {
        }
    }

    @Beta
    public Optional<Long> sizeIfKnown() {
        return Optional.absent();
    }

    public ByteSource slice(long j, long j2) {
        return new C6208e(j, j2);
    }

    public static ByteSource concat(Iterator<? extends ByteSource> it2) {
        return concat(ImmutableList.copyOf(it2));
    }

    public static ByteSource concat(ByteSource... byteSourceArr) {
        return concat(ImmutableList.copyOf(byteSourceArr));
    }

    @CanIgnoreReturnValue
    public long copyTo(ByteSink byteSink) throws IOException {
        Preconditions.checkNotNull(byteSink);
        Closer create = Closer.create();
        try {
            return ByteStreams.copy((InputStream) create.register(openStream()), (OutputStream) create.register(byteSink.openStream()));
        } finally {
        }
    }

    @CanIgnoreReturnValue
    @Beta
    public <T> T read(ByteProcessor<T> byteProcessor) throws IOException {
        Preconditions.checkNotNull(byteProcessor);
        try {
            return (T) ByteStreams.readBytes((InputStream) Closer.create().register(openStream()), byteProcessor);
        } finally {
        }
    }
}
