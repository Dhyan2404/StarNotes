package org.apache.commons.compress.compressors;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.Collections;
import java.util.Locale;
import java.util.ServiceLoader;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;
import java.util.function.Consumer;
import org.apache.commons.compress.compressors.CompressorStreamFactory;
import org.apache.commons.compress.compressors.CompressorStreamProvider;
import org.apache.commons.compress.compressors.brotli.BrotliCompressorInputStream;
import org.apache.commons.compress.compressors.brotli.BrotliUtils;
import org.apache.commons.compress.compressors.bzip2.BZip2CompressorInputStream;
import org.apache.commons.compress.compressors.bzip2.BZip2CompressorOutputStream;
import org.apache.commons.compress.compressors.deflate.DeflateCompressorInputStream;
import org.apache.commons.compress.compressors.deflate.DeflateCompressorOutputStream;
import org.apache.commons.compress.compressors.deflate64.Deflate64CompressorInputStream;
import org.apache.commons.compress.compressors.gzip.GzipCompressorInputStream;
import org.apache.commons.compress.compressors.gzip.GzipCompressorOutputStream;
import org.apache.commons.compress.compressors.lz4.BlockLZ4CompressorInputStream;
import org.apache.commons.compress.compressors.lz4.BlockLZ4CompressorOutputStream;
import org.apache.commons.compress.compressors.lz4.FramedLZ4CompressorInputStream;
import org.apache.commons.compress.compressors.lz4.FramedLZ4CompressorOutputStream;
import org.apache.commons.compress.compressors.lzma.LZMACompressorInputStream;
import org.apache.commons.compress.compressors.lzma.LZMACompressorOutputStream;
import org.apache.commons.compress.compressors.lzma.LZMAUtils;
import org.apache.commons.compress.compressors.p112xz.XZCompressorInputStream;
import org.apache.commons.compress.compressors.p112xz.XZCompressorOutputStream;
import org.apache.commons.compress.compressors.p112xz.XZUtils;
import org.apache.commons.compress.compressors.p113z.ZCompressorInputStream;
import org.apache.commons.compress.compressors.pack200.Pack200CompressorInputStream;
import org.apache.commons.compress.compressors.pack200.Pack200CompressorOutputStream;
import org.apache.commons.compress.compressors.snappy.FramedSnappyCompressorInputStream;
import org.apache.commons.compress.compressors.snappy.FramedSnappyCompressorOutputStream;
import org.apache.commons.compress.compressors.snappy.SnappyCompressorInputStream;
import org.apache.commons.compress.compressors.zstandard.ZstdCompressorInputStream;
import org.apache.commons.compress.compressors.zstandard.ZstdCompressorOutputStream;
import org.apache.commons.compress.compressors.zstandard.ZstdUtils;
import org.apache.commons.compress.utils.IOUtils;
import org.apache.commons.compress.utils.Sets;

/* loaded from: classes12.dex */
public class CompressorStreamFactory implements CompressorStreamProvider {
    public static final String BROTLI = "br";
    public static final String BZIP2 = "bzip2";
    public static final String DEFLATE = "deflate";
    public static final String DEFLATE64 = "deflate64";
    public static final String GZIP = "gz";
    public static final String LZ4_BLOCK = "lz4-block";
    public static final String LZ4_FRAMED = "lz4-framed";
    public static final String LZMA = "lzma";
    public static final String PACK200 = "pack200";
    public static final String SNAPPY_FRAMED = "snappy-framed";
    public static final String SNAPPY_RAW = "snappy-raw";

    /* renamed from: XZ */
    public static final String f105965XZ = "xz";

    /* renamed from: Z */
    public static final String f105966Z = "z";
    public static final String ZSTANDARD = "zstd";

    /* renamed from: f */
    public static final CompressorStreamFactory f105967f = new CompressorStreamFactory();

    /* renamed from: g */
    public static final String f105968g = m66604o("Google Brotli Dec", "https://github.com/google/brotli/");

    /* renamed from: h */
    public static final String f105969h = m66604o("XZ for Java", "https://tukaani.org/xz/java.html");

    /* renamed from: i */
    public static final String f105970i = m66604o("Zstd JNI", "https://github.com/luben/zstd-jni");

    /* renamed from: a */
    public final Boolean f105971a;

    /* renamed from: b */
    public SortedMap<String, CompressorStreamProvider> f105972b;

    /* renamed from: c */
    public SortedMap<String, CompressorStreamProvider> f105973c;

    /* renamed from: d */
    public volatile boolean f105974d;

    /* renamed from: e */
    public final int f105975e;

    public CompressorStreamFactory() {
        this.f105971a = null;
        this.f105975e = -1;
    }

    public static String detect(InputStream inputStream) throws CompressorException {
        if (inputStream == null) {
            throw new IllegalArgumentException("Stream must not be null.");
        }
        if (!inputStream.markSupported()) {
            throw new IllegalArgumentException("Mark is not supported.");
        }
        byte[] bArr = new byte[12];
        inputStream.mark(12);
        try {
            int readFully = IOUtils.readFully(inputStream, bArr);
            inputStream.reset();
            if (BZip2CompressorInputStream.matches(bArr, readFully)) {
                return BZIP2;
            }
            if (GzipCompressorInputStream.matches(bArr, readFully)) {
                return GZIP;
            }
            if (Pack200CompressorInputStream.matches(bArr, readFully)) {
                return PACK200;
            }
            if (FramedSnappyCompressorInputStream.matches(bArr, readFully)) {
                return SNAPPY_FRAMED;
            }
            if (ZCompressorInputStream.matches(bArr, readFully)) {
                return "z";
            }
            if (DeflateCompressorInputStream.matches(bArr, readFully)) {
                return DEFLATE;
            }
            if (XZUtils.matches(bArr, readFully)) {
                return f105965XZ;
            }
            if (LZMAUtils.matches(bArr, readFully)) {
                return LZMA;
            }
            if (FramedLZ4CompressorInputStream.matches(bArr, readFully)) {
                return LZ4_FRAMED;
            }
            if (ZstdUtils.matches(bArr, readFully)) {
                return ZSTANDARD;
            }
            throw new CompressorException("No Compressor found for the stream signature.");
        } catch (IOException e) {
            throw new CompressorException("IOException while reading signature.", e);
        }
    }

    /* renamed from: f */
    public static Iterable<CompressorStreamProvider> m66596f() {
        return ServiceLoader.load(CompressorStreamProvider.class, ClassLoader.getSystemClassLoader());
    }

    public static SortedMap<String, CompressorStreamProvider> findAvailableCompressorInputStreamProviders() {
        return (SortedMap) AccessController.doPrivileged(new PrivilegedAction() { // from class: com.sunia.HTREnginev2.r7e
            @Override // java.security.PrivilegedAction
            public final Object run() {
                SortedMap m66597h;
                m66597h = CompressorStreamFactory.m66597h();
                return m66597h;
            }
        });
    }

    public static SortedMap<String, CompressorStreamProvider> findAvailableCompressorOutputStreamProviders() {
        return (SortedMap) AccessController.doPrivileged(new PrivilegedAction() { // from class: com.sunia.HTREnginev2.s7e
            @Override // java.security.PrivilegedAction
            public final Object run() {
                SortedMap m66598i;
                m66598i = CompressorStreamFactory.m66598i();
                return m66598i;
            }
        });
    }

    public static String getBrotli() {
        return "br";
    }

    public static String getBzip2() {
        return BZIP2;
    }

    public static String getDeflate() {
        return DEFLATE;
    }

    public static String getDeflate64() {
        return DEFLATE64;
    }

    public static String getGzip() {
        return GZIP;
    }

    public static String getLZ4Block() {
        return LZ4_BLOCK;
    }

    public static String getLZ4Framed() {
        return LZ4_FRAMED;
    }

    public static String getLzma() {
        return LZMA;
    }

    public static String getPack200() {
        return PACK200;
    }

    public static CompressorStreamFactory getSingleton() {
        return f105967f;
    }

    public static String getSnappyFramed() {
        return SNAPPY_FRAMED;
    }

    public static String getSnappyRaw() {
        return SNAPPY_RAW;
    }

    public static String getXz() {
        return f105965XZ;
    }

    public static String getZ() {
        return "z";
    }

    public static String getZstandard() {
        return ZSTANDARD;
    }

    /* renamed from: h */
    public static /* synthetic */ SortedMap m66597h() {
        final TreeMap treeMap = new TreeMap();
        CompressorStreamFactory compressorStreamFactory = f105967f;
        m66602m(compressorStreamFactory.getInputStreamCompressorNames(), compressorStreamFactory, treeMap);
        m66596f().forEach(new Consumer() { // from class: com.sunia.HTREnginev2.u7e
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                CompressorStreamFactory.m66599j(treeMap, (CompressorStreamProvider) obj);
            }
        });
        return treeMap;
    }

    /* renamed from: i */
    public static /* synthetic */ SortedMap m66598i() {
        final TreeMap treeMap = new TreeMap();
        CompressorStreamFactory compressorStreamFactory = f105967f;
        m66602m(compressorStreamFactory.getOutputStreamCompressorNames(), compressorStreamFactory, treeMap);
        m66596f().forEach(new Consumer() { // from class: com.sunia.HTREnginev2.t7e
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                CompressorStreamFactory.m66600k(treeMap, (CompressorStreamProvider) obj);
            }
        });
        return treeMap;
    }

    /* renamed from: j */
    public static /* synthetic */ void m66599j(TreeMap treeMap, CompressorStreamProvider compressorStreamProvider) {
        m66602m(compressorStreamProvider.getInputStreamCompressorNames(), compressorStreamProvider, treeMap);
    }

    /* renamed from: k */
    public static /* synthetic */ void m66600k(TreeMap treeMap, CompressorStreamProvider compressorStreamProvider) {
        m66602m(compressorStreamProvider.getOutputStreamCompressorNames(), compressorStreamProvider, treeMap);
    }

    /* renamed from: l */
    public static /* synthetic */ void m66601l(TreeMap treeMap, CompressorStreamProvider compressorStreamProvider, String str) {
    }

    /* renamed from: m */
    public static void m66602m(Set<String> set, final CompressorStreamProvider compressorStreamProvider, final TreeMap<String, CompressorStreamProvider> treeMap) {
        set.forEach(new Consumer() { // from class: com.sunia.HTREnginev2.q7e
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                CompressorStreamFactory.m66601l(treeMap, compressorStreamProvider, (String) obj);
            }
        });
    }

    /* renamed from: n */
    public static String m66603n(String str) {
        return str.toUpperCase(Locale.ROOT);
    }

    /* renamed from: o */
    public static String m66604o(String str, String str2) {
        return " In addition to Apache Commons Compress you need the " + str + " library - see " + str2;
    }

    public CompressorInputStream createCompressorInputStream(InputStream inputStream) throws CompressorException {
        return createCompressorInputStream(detect(inputStream), inputStream);
    }

    @Override // org.apache.commons.compress.compressors.CompressorStreamProvider
    public CompressorOutputStream createCompressorOutputStream(String str, OutputStream outputStream) throws CompressorException {
        if (str == null || outputStream == null) {
            throw new IllegalArgumentException("Compressor name and stream must not be null.");
        }
        try {
            if (GZIP.equalsIgnoreCase(str)) {
                return new GzipCompressorOutputStream(outputStream);
            }
            if (BZIP2.equalsIgnoreCase(str)) {
                return new BZip2CompressorOutputStream(outputStream);
            }
            if (f105965XZ.equalsIgnoreCase(str)) {
                return new XZCompressorOutputStream(outputStream);
            }
            if (PACK200.equalsIgnoreCase(str)) {
                return new Pack200CompressorOutputStream(outputStream);
            }
            if (LZMA.equalsIgnoreCase(str)) {
                return new LZMACompressorOutputStream(outputStream);
            }
            if (DEFLATE.equalsIgnoreCase(str)) {
                return new DeflateCompressorOutputStream(outputStream);
            }
            if (SNAPPY_FRAMED.equalsIgnoreCase(str)) {
                return new FramedSnappyCompressorOutputStream(outputStream);
            }
            if (LZ4_BLOCK.equalsIgnoreCase(str)) {
                return new BlockLZ4CompressorOutputStream(outputStream);
            }
            if (LZ4_FRAMED.equalsIgnoreCase(str)) {
                return new FramedLZ4CompressorOutputStream(outputStream);
            }
            if (ZSTANDARD.equalsIgnoreCase(str)) {
                return new ZstdCompressorOutputStream(outputStream);
            }
            CompressorStreamProvider compressorStreamProvider = getCompressorOutputStreamProviders().get(m66603n(str));
            if (compressorStreamProvider != null) {
                return compressorStreamProvider.createCompressorOutputStream(str, outputStream);
            }
            throw new CompressorException("Compressor: " + str + " not found.");
        } catch (IOException e) {
            throw new CompressorException("Could not create CompressorOutputStream", e);
        }
    }

    /* renamed from: g */
    public boolean m66605g() {
        return this.f105974d;
    }

    public SortedMap<String, CompressorStreamProvider> getCompressorInputStreamProviders() {
        if (this.f105972b == null) {
            this.f105972b = Collections.unmodifiableSortedMap(findAvailableCompressorInputStreamProviders());
        }
        return this.f105972b;
    }

    public SortedMap<String, CompressorStreamProvider> getCompressorOutputStreamProviders() {
        if (this.f105973c == null) {
            this.f105973c = Collections.unmodifiableSortedMap(findAvailableCompressorOutputStreamProviders());
        }
        return this.f105973c;
    }

    public Boolean getDecompressUntilEOF() {
        return this.f105971a;
    }

    @Override // org.apache.commons.compress.compressors.CompressorStreamProvider
    public Set<String> getInputStreamCompressorNames() {
        return Sets.newHashSet(GZIP, "br", BZIP2, f105965XZ, LZMA, PACK200, DEFLATE, SNAPPY_RAW, SNAPPY_FRAMED, "z", LZ4_BLOCK, LZ4_FRAMED, ZSTANDARD, DEFLATE64);
    }

    @Override // org.apache.commons.compress.compressors.CompressorStreamProvider
    public Set<String> getOutputStreamCompressorNames() {
        return Sets.newHashSet(GZIP, BZIP2, f105965XZ, LZMA, PACK200, DEFLATE, SNAPPY_FRAMED, LZ4_BLOCK, LZ4_FRAMED, ZSTANDARD);
    }

    @Deprecated
    public void setDecompressConcatenated(boolean z) {
        if (this.f105971a != null) {
            throw new IllegalStateException("Cannot override the setting defined by the constructor");
        }
        this.f105974d = z;
    }

    public CompressorInputStream createCompressorInputStream(String str, InputStream inputStream) throws CompressorException {
        return createCompressorInputStream(str, inputStream, this.f105974d);
    }

    @Override // org.apache.commons.compress.compressors.CompressorStreamProvider
    public CompressorInputStream createCompressorInputStream(String str, InputStream inputStream, boolean z) throws CompressorException {
        if (str != null && inputStream != null) {
            try {
                if (GZIP.equalsIgnoreCase(str)) {
                    return new GzipCompressorInputStream(inputStream, z);
                }
                if (BZIP2.equalsIgnoreCase(str)) {
                    return new BZip2CompressorInputStream(inputStream, z);
                }
                if ("br".equalsIgnoreCase(str)) {
                    if (BrotliUtils.isBrotliCompressionAvailable()) {
                        return new BrotliCompressorInputStream(inputStream);
                    }
                    throw new CompressorException("Brotli compression is not available." + f105968g);
                }
                if (f105965XZ.equalsIgnoreCase(str)) {
                    if (XZUtils.isXZCompressionAvailable()) {
                        return new XZCompressorInputStream(inputStream, z, this.f105975e);
                    }
                    throw new CompressorException("XZ compression is not available." + f105969h);
                }
                if (ZSTANDARD.equalsIgnoreCase(str)) {
                    if (ZstdUtils.isZstdCompressionAvailable()) {
                        return new ZstdCompressorInputStream(inputStream);
                    }
                    throw new CompressorException("Zstandard compression is not available." + f105970i);
                }
                if (LZMA.equalsIgnoreCase(str)) {
                    if (LZMAUtils.isLZMACompressionAvailable()) {
                        return new LZMACompressorInputStream(inputStream, this.f105975e);
                    }
                    throw new CompressorException("LZMA compression is not available" + f105969h);
                }
                if (PACK200.equalsIgnoreCase(str)) {
                    return new Pack200CompressorInputStream(inputStream);
                }
                if (SNAPPY_RAW.equalsIgnoreCase(str)) {
                    return new SnappyCompressorInputStream(inputStream);
                }
                if (SNAPPY_FRAMED.equalsIgnoreCase(str)) {
                    return new FramedSnappyCompressorInputStream(inputStream);
                }
                if ("z".equalsIgnoreCase(str)) {
                    return new ZCompressorInputStream(inputStream, this.f105975e);
                }
                if (DEFLATE.equalsIgnoreCase(str)) {
                    return new DeflateCompressorInputStream(inputStream);
                }
                if (DEFLATE64.equalsIgnoreCase(str)) {
                    return new Deflate64CompressorInputStream(inputStream);
                }
                if (LZ4_BLOCK.equalsIgnoreCase(str)) {
                    return new BlockLZ4CompressorInputStream(inputStream);
                }
                if (LZ4_FRAMED.equalsIgnoreCase(str)) {
                    return new FramedLZ4CompressorInputStream(inputStream, z);
                }
                CompressorStreamProvider compressorStreamProvider = getCompressorInputStreamProviders().get(m66603n(str));
                if (compressorStreamProvider != null) {
                    return compressorStreamProvider.createCompressorInputStream(str, inputStream, z);
                }
                throw new CompressorException("Compressor: " + str + " not found.");
            } catch (IOException e) {
                throw new CompressorException("Could not create CompressorInputStream.", e);
            }
        }
        throw new IllegalArgumentException("Compressor name and stream must not be null.");
    }

    public CompressorStreamFactory(boolean z, int i) {
        this.f105971a = Boolean.valueOf(z);
        this.f105974d = z;
        this.f105975e = i;
    }

    public CompressorStreamFactory(boolean z) {
        this(z, -1);
    }
}
