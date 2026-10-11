package com.google.common.io;

import com.google.android.material.motion.MotionUtils;
import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Joiner;
import com.google.common.base.Optional;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.base.Splitter;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Lists;
import com.google.common.graph.SuccessorsFunction;
import com.google.common.graph.Traverser;
import com.google.common.hash.HashCode;
import com.google.common.hash.HashFunction;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.InlineMe;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.dwk;
import com.sunia.HTREnginev2.ynf;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.RandomAccessFile;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import javax.annotation.CheckForNull;

@GwtIncompatible
@ynf
/* loaded from: classes6.dex */
public final class Files {

    /* renamed from: a */
    public static final int f34916a = 10000;

    /* renamed from: b */
    public static final SuccessorsFunction<File> f34917b = new C6228b();

    /* loaded from: classes6.dex */
    public enum FilePredicate implements Predicate<File> {
        IS_DIRECTORY { // from class: com.google.common.io.Files.FilePredicate.1
            @Override // java.lang.Enum
            public String toString() {
                return "Files.isDirectory()";
            }

            @Override // com.google.common.base.Predicate
            public boolean apply(File file) {
                return file.isDirectory();
            }
        },
        IS_FILE { // from class: com.google.common.io.Files.FilePredicate.2
            @Override // java.lang.Enum
            public String toString() {
                return "Files.isFile()";
            }

            @Override // com.google.common.base.Predicate
            public boolean apply(File file) {
                return file.isFile();
            }
        };

        /* synthetic */ FilePredicate(C6227a c6227a) {
            this();
        }
    }

    /* renamed from: com.google.common.io.Files$a */
    /* loaded from: classes6.dex */
    public class C6227a implements LineProcessor<List<String>> {

        /* renamed from: a */
        public final List<String> f34918a = Lists.newArrayList();

        @Override // com.google.common.io.LineProcessor
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public List<String> getResult() {
            return this.f34918a;
        }

        @Override // com.google.common.io.LineProcessor
        public boolean processLine(String str) {
            this.f34918a.add(str);
            return true;
        }
    }

    /* renamed from: com.google.common.io.Files$b */
    /* loaded from: classes6.dex */
    public class C6228b implements SuccessorsFunction<File> {
        @Override // com.google.common.graph.SuccessorsFunction, com.google.common.graph.Graph
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Iterable<File> successors(File file) {
            File[] listFiles;
            return (!file.isDirectory() || (listFiles = file.listFiles()) == null) ? ImmutableList.m26161of() : Collections.unmodifiableList(Arrays.asList(listFiles));
        }
    }

    /* renamed from: com.google.common.io.Files$c */
    /* loaded from: classes6.dex */
    public static final class C6229c extends ByteSink {

        /* renamed from: a */
        public final File f34919a;

        /* renamed from: b */
        public final ImmutableSet<FileWriteMode> f34920b;

        public /* synthetic */ C6229c(File file, FileWriteMode[] fileWriteModeArr, C6227a c6227a) {
            this(file, fileWriteModeArr);
        }

        @Override // com.google.common.io.ByteSink
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public FileOutputStream openStream() throws IOException {
            return new FileOutputStream(this.f34919a, this.f34920b.contains(FileWriteMode.APPEND));
        }

        public String toString() {
            String valueOf = String.valueOf(this.f34919a);
            String valueOf2 = String.valueOf(this.f34920b);
            StringBuilder sb = new StringBuilder(valueOf.length() + 20 + valueOf2.length());
            sb.append("Files.asByteSink(");
            sb.append(valueOf);
            sb.append(", ");
            sb.append(valueOf2);
            sb.append(MotionUtils.f31762d);
            return sb.toString();
        }

        public C6229c(File file, FileWriteMode... fileWriteModeArr) {
            this.f34919a = (File) Preconditions.checkNotNull(file);
            this.f34920b = ImmutableSet.copyOf(fileWriteModeArr);
        }
    }

    /* renamed from: com.google.common.io.Files$d */
    /* loaded from: classes6.dex */
    public static final class C6230d extends ByteSource {

        /* renamed from: a */
        public final File f34921a;

        public /* synthetic */ C6230d(File file, C6227a c6227a) {
            this(file);
        }

        @Override // com.google.common.io.ByteSource
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public FileInputStream openStream() throws IOException {
            return new FileInputStream(this.f34921a);
        }

        @Override // com.google.common.io.ByteSource
        public byte[] read() throws IOException {
            try {
                FileInputStream fileInputStream = (FileInputStream) Closer.create().register(openStream());
                return ByteStreams.m27197e(fileInputStream, fileInputStream.getChannel().size());
            } finally {
            }
        }

        @Override // com.google.common.io.ByteSource
        public long size() throws IOException {
            if (this.f34921a.isFile()) {
                return this.f34921a.length();
            }
            throw new FileNotFoundException(this.f34921a.toString());
        }

        @Override // com.google.common.io.ByteSource
        public Optional<Long> sizeIfKnown() {
            return this.f34921a.isFile() ? Optional.m25808of(Long.valueOf(this.f34921a.length())) : Optional.absent();
        }

        public String toString() {
            String valueOf = String.valueOf(this.f34921a);
            StringBuilder sb = new StringBuilder(valueOf.length() + 20);
            sb.append("Files.asByteSource(");
            sb.append(valueOf);
            sb.append(MotionUtils.f31762d);
            return sb.toString();
        }

        public C6230d(File file) {
            this.f34921a = (File) Preconditions.checkNotNull(file);
        }
    }

    /* renamed from: a */
    public static MappedByteBuffer m27219a(File file, FileChannel.MapMode mapMode, long j) throws IOException {
        Preconditions.checkNotNull(file);
        Preconditions.checkNotNull(mapMode);
        Closer create = Closer.create();
        try {
            FileChannel fileChannel = (FileChannel) create.register(((RandomAccessFile) create.register(new RandomAccessFile(file, mapMode == FileChannel.MapMode.READ_ONLY ? "r" : "rw"))).getChannel());
            if (j == -1) {
                j = fileChannel.size();
            }
            return fileChannel.map(mapMode, 0L, j);
        } finally {
        }
    }

    @InlineMe(imports = {"com.google.common.io.FileWriteMode", "com.google.common.io.Files"}, replacement = "Files.asCharSink(to, charset, FileWriteMode.APPEND).write(from)")
    @Deprecated
    public static void append(CharSequence charSequence, File file, Charset charset) throws IOException {
        asCharSink(file, charset, FileWriteMode.APPEND).write(charSequence);
    }

    public static ByteSink asByteSink(File file, FileWriteMode... fileWriteModeArr) {
        return new C6229c(file, fileWriteModeArr, null);
    }

    public static ByteSource asByteSource(File file) {
        return new C6230d(file, null);
    }

    public static CharSink asCharSink(File file, Charset charset, FileWriteMode... fileWriteModeArr) {
        return asByteSink(file, fileWriteModeArr).asCharSink(charset);
    }

    public static CharSource asCharSource(File file, Charset charset) {
        return asByteSource(file).asCharSource(charset);
    }

    public static void copy(File file, OutputStream outputStream) throws IOException {
        asByteSource(file).copyTo(outputStream);
    }

    public static void createParentDirs(File file) throws IOException {
        Preconditions.checkNotNull(file);
        File parentFile = file.getCanonicalFile().getParentFile();
        if (parentFile == null) {
            return;
        }
        parentFile.mkdirs();
        if (parentFile.isDirectory()) {
            return;
        }
        String valueOf = String.valueOf(file);
        StringBuilder sb = new StringBuilder(valueOf.length() + 39);
        sb.append("Unable to create parent directories of ");
        sb.append(valueOf);
        throw new IOException(sb.toString());
    }

    @Beta
    @Deprecated
    public static File createTempDir() {
        File file = new File(System.getProperty("java.io.tmpdir"));
        long currentTimeMillis = System.currentTimeMillis();
        StringBuilder sb = new StringBuilder(21);
        sb.append(currentTimeMillis);
        sb.append("-");
        String sb2 = sb.toString();
        for (int i = 0; i < 10000; i++) {
            StringBuilder sb3 = new StringBuilder(String.valueOf(sb2).length() + 11);
            sb3.append(sb2);
            sb3.append(i);
            File file2 = new File(file, sb3.toString());
            if (file2.mkdir()) {
                return file2;
            }
        }
        StringBuilder sb4 = new StringBuilder(String.valueOf(sb2).length() + 66 + String.valueOf(sb2).length());
        sb4.append("Failed to create directory within 10000 attempts (tried ");
        sb4.append(sb2);
        sb4.append("0 to ");
        sb4.append(sb2);
        sb4.append(9999);
        sb4.append(')');
        throw new IllegalStateException(sb4.toString());
    }

    public static boolean equal(File file, File file2) throws IOException {
        Preconditions.checkNotNull(file);
        Preconditions.checkNotNull(file2);
        if (file == file2 || file.equals(file2)) {
            return true;
        }
        long length = file.length();
        long length2 = file2.length();
        if (length == 0 || length2 == 0 || length == length2) {
            return asByteSource(file).contentEquals(asByteSource(file2));
        }
        return false;
    }

    @Beta
    public static Traverser<File> fileTraverser() {
        return Traverser.forTree(f34917b);
    }

    public static String getFileExtension(String str) {
        Preconditions.checkNotNull(str);
        String name = new File(str).getName();
        int lastIndexOf = name.lastIndexOf(46);
        return lastIndexOf == -1 ? "" : name.substring(lastIndexOf + 1);
    }

    public static String getNameWithoutExtension(String str) {
        Preconditions.checkNotNull(str);
        String name = new File(str).getName();
        int lastIndexOf = name.lastIndexOf(46);
        return lastIndexOf == -1 ? name : name.substring(0, lastIndexOf);
    }

    @InlineMe(imports = {"com.google.common.io.Files"}, replacement = "Files.asByteSource(file).hash(hashFunction)")
    @Deprecated
    public static HashCode hash(File file, HashFunction hashFunction) throws IOException {
        return asByteSource(file).hash(hashFunction);
    }

    public static Predicate<File> isDirectory() {
        return FilePredicate.IS_DIRECTORY;
    }

    public static Predicate<File> isFile() {
        return FilePredicate.IS_FILE;
    }

    public static MappedByteBuffer map(File file) throws IOException {
        Preconditions.checkNotNull(file);
        return map(file, FileChannel.MapMode.READ_ONLY);
    }

    public static void move(File file, File file2) throws IOException {
        Preconditions.checkNotNull(file);
        Preconditions.checkNotNull(file2);
        Preconditions.checkArgument(!file.equals(file2), "Source %s and destination %s must be different", file, file2);
        if (file.renameTo(file2)) {
            return;
        }
        copy(file, file2);
        if (file.delete()) {
            return;
        }
        if (file2.delete()) {
            String valueOf = String.valueOf(file);
            StringBuilder sb = new StringBuilder(valueOf.length() + 17);
            sb.append("Unable to delete ");
            sb.append(valueOf);
            throw new IOException(sb.toString());
        }
        String valueOf2 = String.valueOf(file2);
        StringBuilder sb2 = new StringBuilder(valueOf2.length() + 17);
        sb2.append("Unable to delete ");
        sb2.append(valueOf2);
        throw new IOException(sb2.toString());
    }

    public static BufferedReader newReader(File file, Charset charset) throws FileNotFoundException {
        Preconditions.checkNotNull(file);
        Preconditions.checkNotNull(charset);
        return new BufferedReader(new InputStreamReader(new FileInputStream(file), charset));
    }

    public static BufferedWriter newWriter(File file, Charset charset) throws FileNotFoundException {
        Preconditions.checkNotNull(file);
        Preconditions.checkNotNull(charset);
        return new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file), charset));
    }

    @Deprecated
    @CanIgnoreReturnValue
    @InlineMe(imports = {"com.google.common.io.Files"}, replacement = "Files.asByteSource(file).read(processor)")
    @dwk
    public static <T> T readBytes(File file, ByteProcessor<T> byteProcessor) throws IOException {
        return (T) asByteSource(file).read(byteProcessor);
    }

    @InlineMe(imports = {"com.google.common.io.Files"}, replacement = "Files.asCharSource(file, charset).readFirstLine()")
    @CheckForNull
    @Deprecated
    public static String readFirstLine(File file, Charset charset) throws IOException {
        return asCharSource(file, charset).readFirstLine();
    }

    public static List<String> readLines(File file, Charset charset) throws IOException {
        return (List) asCharSource(file, charset).readLines(new C6227a());
    }

    public static String simplifyPath(String str) {
        Preconditions.checkNotNull(str);
        if (str.length() == 0) {
            return ".";
        }
        Iterable<String> split = Splitter.m25826on('/').omitEmptyStrings().split(str);
        ArrayList arrayList = new ArrayList();
        for (String str2 : split) {
            str2.hashCode();
            if (!str2.equals(".")) {
                if (!str2.equals(Constants.ATTRVAL_PARENT)) {
                    arrayList.add(str2);
                } else if (arrayList.size() <= 0 || ((String) arrayList.get(arrayList.size() - 1)).equals(Constants.ATTRVAL_PARENT)) {
                    arrayList.add(Constants.ATTRVAL_PARENT);
                } else {
                    arrayList.remove(arrayList.size() - 1);
                }
            }
        }
        String join = Joiner.m25798on('/').join(arrayList);
        if (str.charAt(0) == '/') {
            String valueOf = String.valueOf(join);
            join = valueOf.length() != 0 ? "/".concat(valueOf) : new String("/");
        }
        while (join.startsWith("/../")) {
            join = join.substring(3);
        }
        return join.equals("/..") ? "/" : "".equals(join) ? "." : join;
    }

    public static byte[] toByteArray(File file) throws IOException {
        return asByteSource(file).read();
    }

    @InlineMe(imports = {"com.google.common.io.Files"}, replacement = "Files.asCharSource(file, charset).read()")
    @Deprecated
    public static String toString(File file, Charset charset) throws IOException {
        return asCharSource(file, charset).read();
    }

    public static void touch(File file) throws IOException {
        Preconditions.checkNotNull(file);
        if (file.createNewFile() || file.setLastModified(System.currentTimeMillis())) {
            return;
        }
        String valueOf = String.valueOf(file);
        StringBuilder sb = new StringBuilder(valueOf.length() + 38);
        sb.append("Unable to update modification time of ");
        sb.append(valueOf);
        throw new IOException(sb.toString());
    }

    public static void write(byte[] bArr, File file) throws IOException {
        asByteSink(file, new FileWriteMode[0]).write(bArr);
    }

    public static void copy(File file, File file2) throws IOException {
        Preconditions.checkArgument(!file.equals(file2), "Source %s and destination %s must be different", file, file2);
        asByteSource(file).copyTo(asByteSink(file2, new FileWriteMode[0]));
    }

    @InlineMe(imports = {"com.google.common.io.Files"}, replacement = "Files.asCharSink(to, charset).write(from)")
    @Deprecated
    public static void write(CharSequence charSequence, File file, Charset charset) throws IOException {
        asCharSink(file, charset, new FileWriteMode[0]).write(charSequence);
    }

    public static MappedByteBuffer map(File file, FileChannel.MapMode mapMode) throws IOException {
        return m27219a(file, mapMode, -1L);
    }

    @Deprecated
    @CanIgnoreReturnValue
    @InlineMe(imports = {"com.google.common.io.Files"}, replacement = "Files.asCharSource(file, charset).readLines(callback)")
    @dwk
    public static <T> T readLines(File file, Charset charset, LineProcessor<T> lineProcessor) throws IOException {
        return (T) asCharSource(file, charset).readLines(lineProcessor);
    }

    @InlineMe(imports = {"com.google.common.io.Files"}, replacement = "Files.asCharSource(from, charset).copyTo(to)")
    @Deprecated
    public static void copy(File file, Charset charset, Appendable appendable) throws IOException {
        asCharSource(file, charset).copyTo(appendable);
    }

    public static MappedByteBuffer map(File file, FileChannel.MapMode mapMode, long j) throws IOException {
        Preconditions.checkArgument(j >= 0, "size (%s) may not be negative", j);
        return m27219a(file, mapMode, j);
    }
}
