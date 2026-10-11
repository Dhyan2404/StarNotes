package onyx.org.apache.commons.io.input;

import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.attribute.FileTime;
import java.time.Duration;
import java.util.Arrays;
import java.util.Objects;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import onyx.org.apache.commons.io.IOUtils;
import onyx.org.apache.commons.io.ThreadUtils;
import onyx.org.apache.commons.io.build.AbstractOrigin;
import onyx.org.apache.commons.io.build.AbstractOriginSupplier;
import onyx.org.apache.commons.io.build.AbstractStreamBuilder;
import onyx.org.apache.commons.io.file.PathUtils;
import onyx.org.apache.commons.io.file.attribute.FileTimes;
import onyx.org.apache.commons.io.input.Tailer;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes11.dex */
public class Tailer implements Runnable, AutoCloseable {

    /* renamed from: m */
    public static final int f104394m = 1000;

    /* renamed from: n */
    public static final String f104395n = "r";

    /* renamed from: o */
    public static final Charset f104396o = Charset.defaultCharset();

    /* renamed from: e */
    public final byte[] f104397e;

    /* renamed from: f */
    public final Tailable f104398f;

    /* renamed from: g */
    public final Charset f104399g;

    /* renamed from: h */
    public final Duration f104400h;

    /* renamed from: i */
    public final boolean f104401i;

    /* renamed from: j */
    public final TailerListener f104402j;

    /* renamed from: k */
    public final boolean f104403k;

    /* renamed from: l */
    public volatile boolean f104404l;

    /* loaded from: classes11.dex */
    public static class Builder extends AbstractStreamBuilder<Tailer, Builder> {

        /* renamed from: s */
        public static final Duration f104405s = Duration.ofMillis(1000);

        /* renamed from: l */
        public Tailable f104406l;

        /* renamed from: m */
        public TailerListener f104407m;

        /* renamed from: o */
        public boolean f104409o;

        /* renamed from: p */
        public boolean f104410p;

        /* renamed from: n */
        public Duration f104408n = f104405s;

        /* renamed from: q */
        public boolean f104411q = true;

        /* renamed from: r */
        public ExecutorService f104412r = Executors.newSingleThreadExecutor(new ThreadFactory() { // from class: com.sunia.HTREnginev2.e9n
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                Thread m65501h;
                m65501h = Tailer.Builder.m65501h(runnable);
                return m65501h;
            }
        });

        /* renamed from: h */
        public static Thread m65501h(Runnable runnable) {
            Thread thread = new Thread(runnable, "commons-io-tailer");
            thread.setDaemon(true);
            return thread;
        }

        public Builder setDelayDuration(Duration duration) {
            if (duration == null) {
                duration = f104405s;
            }
            this.f104408n = duration;
            return this;
        }

        public Builder setExecutorService(ExecutorService executorService) {
            Objects.requireNonNull(executorService, "executorService");
            this.f104412r = executorService;
            return this;
        }

        @Override // onyx.org.apache.commons.io.build.AbstractOriginSupplier
        public /* bridge */ /* synthetic */ AbstractOriginSupplier setOrigin(AbstractOrigin abstractOrigin) {
            return setOrigin((AbstractOrigin<?, ?>) abstractOrigin);
        }

        public Builder setReOpen(boolean z) {
            this.f104410p = z;
            return this;
        }

        public Builder setStartThread(boolean z) {
            this.f104411q = z;
            return this;
        }

        public Builder setTailFromEnd(boolean z) {
            this.f104409o = z;
            return this;
        }

        public Builder setTailable(Tailable tailable) {
            Objects.requireNonNull(tailable, "tailable");
            this.f104406l = tailable;
            return this;
        }

        public Builder setTailerListener(TailerListener tailerListener) {
            Objects.requireNonNull(tailerListener, "tailerListener");
            this.f104407m = tailerListener;
            return this;
        }

        @Override // onyx.org.apache.commons.io.function.IOSupplier
        public Tailer get() {
            Tailer tailer = new Tailer(this.f104406l, getCharset(), this.f104407m, this.f104408n, this.f104409o, this.f104410p, getBufferSize());
            if (this.f104411q) {
                this.f104412r.submit(tailer);
            }
            return tailer;
        }

        @Override // onyx.org.apache.commons.io.build.AbstractOriginSupplier
        public Builder setOrigin(AbstractOrigin<?, ?> abstractOrigin) {
            setTailable(new C18651c(abstractOrigin.getPath(), new LinkOption[0]));
            return (Builder) super.setOrigin(abstractOrigin);
        }
    }

    /* loaded from: classes11.dex */
    public interface RandomAccessResourceBridge extends Closeable {
        long getPointer() throws IOException;

        int read(byte[] bArr) throws IOException;

        void seek(long j) throws IOException;
    }

    /* loaded from: classes11.dex */
    public interface Tailable {
        RandomAccessResourceBridge getRandomAccess(String str) throws FileNotFoundException;

        boolean isNewer(FileTime fileTime) throws IOException;

        FileTime lastModifiedFileTime() throws IOException;

        long size() throws IOException;
    }

    /* renamed from: onyx.org.apache.commons.io.input.Tailer$b */
    /* loaded from: classes11.dex */
    public static final class C18650b implements RandomAccessResourceBridge {

        /* renamed from: e */
        public final RandomAccessFile f104413e;

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.f104413e.close();
        }

        @Override // onyx.org.apache.commons.io.input.Tailer.RandomAccessResourceBridge
        public long getPointer() throws IOException {
            return this.f104413e.getFilePointer();
        }

        @Override // onyx.org.apache.commons.io.input.Tailer.RandomAccessResourceBridge
        public int read(byte[] bArr) throws IOException {
            return this.f104413e.read(bArr);
        }

        @Override // onyx.org.apache.commons.io.input.Tailer.RandomAccessResourceBridge
        public void seek(long j) throws IOException {
            this.f104413e.seek(j);
        }

        public C18650b(File file, String str) throws FileNotFoundException {
            this.f104413e = new RandomAccessFile(file, str);
        }
    }

    /* renamed from: onyx.org.apache.commons.io.input.Tailer$c */
    /* loaded from: classes11.dex */
    public static final class C18651c implements Tailable {

        /* renamed from: a */
        public final Path f104414a;

        /* renamed from: b */
        public final LinkOption[] f104415b;

        /* renamed from: a */
        public Path m65502a() {
            return this.f104414a;
        }

        @Override // onyx.org.apache.commons.io.input.Tailer.Tailable
        public RandomAccessResourceBridge getRandomAccess(String str) throws FileNotFoundException {
            return new C18650b(this.f104414a.toFile(), str);
        }

        @Override // onyx.org.apache.commons.io.input.Tailer.Tailable
        public boolean isNewer(FileTime fileTime) throws IOException {
            return PathUtils.isNewer(this.f104414a, fileTime, this.f104415b);
        }

        @Override // onyx.org.apache.commons.io.input.Tailer.Tailable
        public FileTime lastModifiedFileTime() throws IOException {
            return Files.getLastModifiedTime(this.f104414a, this.f104415b);
        }

        @Override // onyx.org.apache.commons.io.input.Tailer.Tailable
        public long size() throws IOException {
            return Files.size(this.f104414a);
        }

        public String toString() {
            return "TailablePath [file=" + this.f104414a + ", linkOptions=" + Arrays.toString(this.f104415b) + IteratorUtils.f104924b;
        }

        public C18651c(Path path, LinkOption... linkOptionArr) {
            Objects.requireNonNull(path, "path");
            this.f104414a = path;
            this.f104415b = linkOptionArr;
        }
    }

    public static Builder builder() {
        return new Builder();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Deprecated
    public static Tailer create(File file, Charset charset, TailerListener tailerListener, long j, boolean z, boolean z2, int i) {
        return ((Builder) builder().setFile(file)).setTailerListener(tailerListener).setCharset(charset).setDelayDuration(Duration.ofMillis(j)).setTailFromEnd(z).setReOpen(z2).setBufferSize(i).get();
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        this.f104404l = false;
    }

    /* renamed from: f */
    public final long m65499f(RandomAccessResourceBridge randomAccessResourceBridge) throws IOException {
        int read;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(64);
        try {
            long pointer = randomAccessResourceBridge.getPointer();
            long j = pointer;
            boolean z = false;
            while (getRun() && (read = randomAccessResourceBridge.read(this.f104397e)) != -1) {
                for (int i = 0; i < read; i++) {
                    byte b = this.f104397e[i];
                    if (b == 10) {
                        this.f104402j.handle(new String(byteArrayOutputStream.toByteArray(), this.f104399g));
                        byteArrayOutputStream.reset();
                        pointer = i + j + 1;
                        z = false;
                    } else if (b != 13) {
                        if (z) {
                            this.f104402j.handle(new String(byteArrayOutputStream.toByteArray(), this.f104399g));
                            byteArrayOutputStream.reset();
                            pointer = i + j + 1;
                            z = false;
                        }
                        byteArrayOutputStream.write(b);
                    } else {
                        if (z) {
                            byteArrayOutputStream.write(13);
                        }
                        z = true;
                    }
                }
                j = randomAccessResourceBridge.getPointer();
            }
            randomAccessResourceBridge.seek(pointer);
            TailerListener tailerListener = this.f104402j;
            if (tailerListener instanceof TailerListenerAdapter) {
                ((TailerListenerAdapter) tailerListener).endOfFileReached();
            }
            byteArrayOutputStream.close();
            return pointer;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    @Deprecated
    public long getDelay() {
        return this.f104400h.toMillis();
    }

    public Duration getDelayDuration() {
        return this.f104400h;
    }

    public File getFile() {
        Tailable tailable = this.f104398f;
        if (tailable instanceof C18651c) {
            return ((C18651c) tailable).m65502a().toFile();
        }
        throw new IllegalStateException("Cannot extract java.io.File from " + this.f104398f.getClass().getName());
    }

    public boolean getRun() {
        return this.f104404l;
    }

    public Tailable getTailable() {
        return this.f104398f;
    }

    @Override // java.lang.Runnable
    public void run() {
        RandomAccessResourceBridge randomAccessResourceBridge;
        RandomAccessResourceBridge randomAccessResourceBridge2 = null;
        try {
            try {
                FileTime fileTime = FileTimes.EPOCH;
                long j = 0;
                while (getRun() && randomAccessResourceBridge2 == null) {
                    try {
                        randomAccessResourceBridge2 = this.f104398f.getRandomAccess("r");
                    } catch (FileNotFoundException unused) {
                        this.f104402j.fileNotFound();
                    }
                    if (randomAccessResourceBridge2 == null) {
                        ThreadUtils.sleep(this.f104400h);
                    } else {
                        j = this.f104401i ? this.f104398f.size() : 0L;
                        fileTime = this.f104398f.lastModifiedFileTime();
                        randomAccessResourceBridge2.seek(j);
                    }
                }
                while (getRun()) {
                    boolean isNewer = this.f104398f.isNewer(fileTime);
                    long size = this.f104398f.size();
                    if (size < j) {
                        this.f104402j.fileRotated();
                        try {
                            randomAccessResourceBridge = this.f104398f.getRandomAccess("r");
                        } catch (Throwable th) {
                            th = th;
                            randomAccessResourceBridge = randomAccessResourceBridge2;
                        }
                        try {
                            try {
                                m65499f(randomAccessResourceBridge2);
                            } catch (IOException e) {
                                this.f104402j.handle(e);
                            }
                            if (randomAccessResourceBridge2 != null) {
                                try {
                                    try {
                                        randomAccessResourceBridge2.close();
                                    } catch (FileNotFoundException unused2) {
                                        j = 0;
                                        randomAccessResourceBridge2 = randomAccessResourceBridge;
                                        this.f104402j.fileNotFound();
                                        ThreadUtils.sleep(this.f104400h);
                                    }
                                } catch (InterruptedException e2) {
                                    e = e2;
                                    randomAccessResourceBridge2 = randomAccessResourceBridge;
                                    Thread.currentThread().interrupt();
                                    this.f104402j.handle(e);
                                    try {
                                        IOUtils.close(randomAccessResourceBridge2);
                                    } catch (IOException e3) {
                                        e = e3;
                                        this.f104402j.handle(e);
                                        close();
                                    }
                                    close();
                                } catch (Exception e4) {
                                    e = e4;
                                    randomAccessResourceBridge2 = randomAccessResourceBridge;
                                    this.f104402j.handle(e);
                                    try {
                                        IOUtils.close(randomAccessResourceBridge2);
                                    } catch (IOException e5) {
                                        e = e5;
                                        this.f104402j.handle(e);
                                        close();
                                    }
                                    close();
                                } catch (Throwable th2) {
                                    th = th2;
                                    randomAccessResourceBridge2 = randomAccessResourceBridge;
                                    try {
                                        IOUtils.close(randomAccessResourceBridge2);
                                    } catch (IOException e6) {
                                        this.f104402j.handle(e6);
                                    }
                                    close();
                                    throw th;
                                }
                            }
                            j = 0;
                            randomAccessResourceBridge2 = randomAccessResourceBridge;
                        } catch (Throwable th3) {
                            th = th3;
                            try {
                                throw th;
                            } catch (Throwable th4) {
                                if (randomAccessResourceBridge2 != null) {
                                    try {
                                        randomAccessResourceBridge2.close();
                                    } catch (Throwable th5) {
                                        try {
                                            th.addSuppressed(th5);
                                        } catch (FileNotFoundException unused3) {
                                            randomAccessResourceBridge2 = randomAccessResourceBridge;
                                            this.f104402j.fileNotFound();
                                            ThreadUtils.sleep(this.f104400h);
                                        }
                                    }
                                }
                                throw th4;
                                break;
                            }
                        }
                    } else {
                        if (size > j) {
                            j = m65499f(randomAccessResourceBridge2);
                            fileTime = this.f104398f.lastModifiedFileTime();
                        } else if (isNewer) {
                            randomAccessResourceBridge2.seek(0L);
                            j = m65499f(randomAccessResourceBridge2);
                            fileTime = this.f104398f.lastModifiedFileTime();
                        }
                        if (this.f104403k && randomAccessResourceBridge2 != null) {
                            randomAccessResourceBridge2.close();
                        }
                        ThreadUtils.sleep(this.f104400h);
                        if (getRun() && this.f104403k) {
                            randomAccessResourceBridge2 = this.f104398f.getRandomAccess("r");
                            randomAccessResourceBridge2.seek(j);
                        }
                    }
                }
                try {
                    IOUtils.close(randomAccessResourceBridge2);
                } catch (IOException e7) {
                    e = e7;
                    this.f104402j.handle(e);
                    close();
                }
            } catch (Throwable th6) {
                th = th6;
            }
        } catch (InterruptedException e8) {
            e = e8;
        } catch (Exception e9) {
            e = e9;
        }
        close();
    }

    @Deprecated
    public void stop() {
        close();
    }

    @Deprecated
    public Tailer(File file, Charset charset, TailerListener tailerListener, long j, boolean z, boolean z2, int i) {
        this(new C18651c(file.toPath(), new LinkOption[0]), charset, tailerListener, Duration.ofMillis(j), z, z2, i);
    }

    @Deprecated
    public Tailer(File file, TailerListener tailerListener) {
        this(file, tailerListener, 1000L);
    }

    @Deprecated
    public Tailer(File file, TailerListener tailerListener, long j) {
        this(file, tailerListener, j, false);
    }

    @Deprecated
    public Tailer(File file, TailerListener tailerListener, long j, boolean z) {
        this(file, tailerListener, j, z, 8192);
    }

    @Deprecated
    public Tailer(File file, TailerListener tailerListener, long j, boolean z, boolean z2) {
        this(file, tailerListener, j, z, z2, 8192);
    }

    @Deprecated
    public Tailer(File file, TailerListener tailerListener, long j, boolean z, boolean z2, int i) {
        this(file, f104396o, tailerListener, j, z, z2, i);
    }

    @Deprecated
    public Tailer(File file, TailerListener tailerListener, long j, boolean z, int i) {
        this(file, tailerListener, j, z, false, i);
    }

    public Tailer(Tailable tailable, Charset charset, TailerListener tailerListener, Duration duration, boolean z, boolean z2, int i) {
        this.f104404l = true;
        Objects.requireNonNull(tailable, "tailable");
        this.f104398f = tailable;
        Objects.requireNonNull(tailerListener, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
        this.f104402j = tailerListener;
        this.f104400h = duration;
        this.f104401i = z;
        this.f104397e = IOUtils.byteArray(i);
        tailerListener.init(this);
        this.f104403k = z2;
        this.f104399g = charset;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Deprecated
    public static Tailer create(File file, TailerListener tailerListener) {
        return ((Builder) builder().setFile(file)).setTailerListener(tailerListener).get();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Deprecated
    public static Tailer create(File file, TailerListener tailerListener, long j) {
        return ((Builder) builder().setFile(file)).setTailerListener(tailerListener).setDelayDuration(Duration.ofMillis(j)).get();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Deprecated
    public static Tailer create(File file, TailerListener tailerListener, long j, boolean z) {
        return ((Builder) builder().setFile(file)).setTailerListener(tailerListener).setDelayDuration(Duration.ofMillis(j)).setTailFromEnd(z).get();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Deprecated
    public static Tailer create(File file, TailerListener tailerListener, long j, boolean z, boolean z2) {
        return ((Builder) builder().setFile(file)).setTailerListener(tailerListener).setDelayDuration(Duration.ofMillis(j)).setTailFromEnd(z).setReOpen(z2).get();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Deprecated
    public static Tailer create(File file, TailerListener tailerListener, long j, boolean z, boolean z2, int i) {
        return ((Builder) builder().setFile(file)).setTailerListener(tailerListener).setDelayDuration(Duration.ofMillis(j)).setTailFromEnd(z).setReOpen(z2).setBufferSize(i).get();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Deprecated
    public static Tailer create(File file, TailerListener tailerListener, long j, boolean z, int i) {
        return ((Builder) builder().setFile(file)).setTailerListener(tailerListener).setDelayDuration(Duration.ofMillis(j)).setTailFromEnd(z).setBufferSize(i).get();
    }
}
