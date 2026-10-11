package com.google.common.io;

import com.google.android.material.motion.MotionUtils;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.google.common.collect.Lists;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.sunia.HTREnginev2.dwk;
import com.sunia.HTREnginev2.ynf;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.List;

@GwtIncompatible
@ynf
/* loaded from: classes6.dex */
public final class Resources {

    /* renamed from: com.google.common.io.Resources$a */
    /* loaded from: classes6.dex */
    public class C6237a implements LineProcessor<List<String>> {

        /* renamed from: a */
        public final List<String> f34941a = Lists.newArrayList();

        @Override // com.google.common.io.LineProcessor
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public List<String> getResult() {
            return this.f34941a;
        }

        @Override // com.google.common.io.LineProcessor
        public boolean processLine(String str) {
            this.f34941a.add(str);
            return true;
        }
    }

    /* renamed from: com.google.common.io.Resources$b */
    /* loaded from: classes6.dex */
    public static final class C6238b extends ByteSource {

        /* renamed from: a */
        public final URL f34942a;

        public /* synthetic */ C6238b(URL url, C6237a c6237a) {
            this(url);
        }

        @Override // com.google.common.io.ByteSource
        public InputStream openStream() throws IOException {
            return this.f34942a.openStream();
        }

        public String toString() {
            String valueOf = String.valueOf(this.f34942a);
            StringBuilder sb = new StringBuilder(valueOf.length() + 24);
            sb.append("Resources.asByteSource(");
            sb.append(valueOf);
            sb.append(MotionUtils.f31762d);
            return sb.toString();
        }

        public C6238b(URL url) {
            this.f34942a = (URL) Preconditions.checkNotNull(url);
        }
    }

    public static ByteSource asByteSource(URL url) {
        return new C6238b(url, null);
    }

    public static CharSource asCharSource(URL url, Charset charset) {
        return asByteSource(url).asCharSource(charset);
    }

    public static void copy(URL url, OutputStream outputStream) throws IOException {
        asByteSource(url).copyTo(outputStream);
    }

    @CanIgnoreReturnValue
    public static URL getResource(String str) {
        URL resource = ((ClassLoader) MoreObjects.firstNonNull(Thread.currentThread().getContextClassLoader(), Resources.class.getClassLoader())).getResource(str);
        Preconditions.checkArgument(resource != null, "resource %s not found.", str);
        return resource;
    }

    @CanIgnoreReturnValue
    @dwk
    public static <T> T readLines(URL url, Charset charset, LineProcessor<T> lineProcessor) throws IOException {
        return (T) asCharSource(url, charset).readLines(lineProcessor);
    }

    public static byte[] toByteArray(URL url) throws IOException {
        return asByteSource(url).read();
    }

    public static String toString(URL url, Charset charset) throws IOException {
        return asCharSource(url, charset).read();
    }

    public static List<String> readLines(URL url, Charset charset) throws IOException {
        return (List) readLines(url, charset, new C6237a());
    }

    @CanIgnoreReturnValue
    public static URL getResource(Class<?> cls, String str) {
        URL resource = cls.getResource(str);
        Preconditions.checkArgument(resource != null, "resource %s relative to %s not found.", str, cls.getName());
        return resource;
    }
}
