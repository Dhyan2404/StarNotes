package org.apache.commons.compress.archivers.zip;

import com.google.android.gms.common.GoogleApiAvailabilityLight;
import java.io.IOException;
import java.io.UncheckedIOException;
import java.nio.file.Files;
import java.nio.file.attribute.FileAttribute;
import java.util.Deque;
import java.util.Iterator;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentLinkedDeque;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import org.apache.commons.compress.archivers.zip.ParallelScatterZipCreator;
import org.apache.commons.compress.archivers.zip.ScatterZipOutputStream;
import org.apache.commons.compress.parallel.FileBasedScatterGatherBackingStore;
import org.apache.commons.compress.parallel.InputStreamSupplier;
import org.apache.commons.compress.parallel.ScatterGatherBackingStore;
import org.apache.commons.compress.parallel.ScatterGatherBackingStoreSupplier;

/* loaded from: classes12.dex */
public class ParallelScatterZipCreator {

    /* renamed from: a */
    public final Deque<ScatterZipOutputStream> f105800a;

    /* renamed from: b */
    public final ExecutorService f105801b;

    /* renamed from: c */
    public final ScatterGatherBackingStoreSupplier f105802c;

    /* renamed from: d */
    public final Deque<Future<? extends ScatterZipOutputStream>> f105803d;

    /* renamed from: e */
    public final long f105804e;

    /* renamed from: f */
    public long f105805f;

    /* renamed from: g */
    public long f105806g;

    /* renamed from: h */
    public final int f105807h;

    /* renamed from: i */
    public final ThreadLocal<ScatterZipOutputStream> f105808i;

    /* renamed from: org.apache.commons.compress.archivers.zip.ParallelScatterZipCreator$a */
    /* loaded from: classes12.dex */
    public class C18851a extends ThreadLocal<ScatterZipOutputStream> {
        public C18851a() {
        }

        @Override // java.lang.ThreadLocal
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ScatterZipOutputStream initialValue() {
            try {
                ParallelScatterZipCreator parallelScatterZipCreator = ParallelScatterZipCreator.this;
                ScatterZipOutputStream m66408h = parallelScatterZipCreator.m66408h(parallelScatterZipCreator.f105802c);
                ParallelScatterZipCreator.this.f105800a.add(m66408h);
                return m66408h;
            } catch (IOException e) {
                throw new UncheckedIOException(e);
            }
        }
    }

    public ParallelScatterZipCreator() {
        this(Executors.newFixedThreadPool(Runtime.getRuntime().availableProcessors()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i */
    public /* synthetic */ ScatterZipOutputStream m66404i(ZipArchiveEntryRequest zipArchiveEntryRequest) throws Exception {
        ScatterZipOutputStream scatterZipOutputStream = this.f105808i.get();
        scatterZipOutputStream.addArchiveEntry(zipArchiveEntryRequest);
        return scatterZipOutputStream;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j */
    public /* synthetic */ ScatterZipOutputStream m66405j(ZipArchiveEntryRequestSupplier zipArchiveEntryRequestSupplier) throws Exception {
        ScatterZipOutputStream scatterZipOutputStream = this.f105808i.get();
        scatterZipOutputStream.addArchiveEntry(zipArchiveEntryRequestSupplier.get());
        return scatterZipOutputStream;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k */
    public /* synthetic */ ScatterZipOutputStream m66406k(Callable callable) throws Exception {
        callable.call();
        return this.f105808i.get();
    }

    public void addArchiveEntry(ZipArchiveEntry zipArchiveEntry, InputStreamSupplier inputStreamSupplier) {
        submitStreamAwareCallable(createCallable(zipArchiveEntry, inputStreamSupplier));
    }

    public final Callable<ScatterZipOutputStream> createCallable(ZipArchiveEntry zipArchiveEntry, InputStreamSupplier inputStreamSupplier) {
        if (zipArchiveEntry.getMethod() != -1) {
            final ZipArchiveEntryRequest createZipArchiveEntryRequest = ZipArchiveEntryRequest.createZipArchiveEntryRequest(zipArchiveEntry, inputStreamSupplier);
            return new Callable() { // from class: com.sunia.HTREnginev2.nvk
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    ScatterZipOutputStream m66404i;
                    m66404i = ParallelScatterZipCreator.this.m66404i(createZipArchiveEntryRequest);
                    return m66404i;
                }
            };
        }
        throw new IllegalArgumentException("Method must be set on zipArchiveEntry: " + zipArchiveEntry);
    }

    /* renamed from: g */
    public final void m66407g() {
        Iterator<ScatterZipOutputStream> it2 = this.f105800a.iterator();
        while (it2.hasNext()) {
            try {
                it2.next().close();
            } catch (IOException unused) {
            }
        }
    }

    public ScatterStatistics getStatisticsMessage() {
        long j = this.f105805f;
        return new ScatterStatistics(j - this.f105804e, this.f105806g - j);
    }

    /* renamed from: h */
    public final ScatterZipOutputStream m66408h(ScatterGatherBackingStoreSupplier scatterGatherBackingStoreSupplier) throws IOException {
        ScatterGatherBackingStore scatterGatherBackingStore = scatterGatherBackingStoreSupplier.get();
        return new ScatterZipOutputStream(scatterGatherBackingStore, StreamCompressor.create(this.f105807h, scatterGatherBackingStore));
    }

    public final void submit(final Callable<? extends Object> callable) {
        submitStreamAwareCallable(new Callable() { // from class: com.sunia.HTREnginev2.mvk
            @Override // java.util.concurrent.Callable
            public final Object call() {
                ScatterZipOutputStream m66406k;
                m66406k = ParallelScatterZipCreator.this.m66406k(callable);
                return m66406k;
            }
        });
    }

    public final void submitStreamAwareCallable(Callable<? extends ScatterZipOutputStream> callable) {
        this.f105803d.add(this.f105801b.submit(callable));
    }

    public void writeTo(ZipArchiveOutputStream zipArchiveOutputStream) throws IOException, InterruptedException, ExecutionException {
        try {
            try {
                Iterator<Future<? extends ScatterZipOutputStream>> it2 = this.f105803d.iterator();
                while (it2.hasNext()) {
                    it2.next().get();
                }
                this.f105801b.shutdown();
                this.f105801b.awaitTermination(60000L, TimeUnit.SECONDS);
                this.f105805f = System.currentTimeMillis();
                Iterator<Future<? extends ScatterZipOutputStream>> it3 = this.f105803d.iterator();
                while (it3.hasNext()) {
                    it3.next().get().zipEntryWriter().writeNextZipEntry(zipArchiveOutputStream);
                }
                Iterator<ScatterZipOutputStream> it4 = this.f105800a.iterator();
                while (it4.hasNext()) {
                    it4.next().close();
                }
                this.f105806g = System.currentTimeMillis();
            } catch (Throwable th) {
                this.f105801b.shutdown();
                throw th;
            }
        } finally {
            m66407g();
        }
    }

    /* renamed from: org.apache.commons.compress.archivers.zip.ParallelScatterZipCreator$b */
    /* loaded from: classes12.dex */
    public static class C18852b implements ScatterGatherBackingStoreSupplier {

        /* renamed from: a */
        public final AtomicInteger f105810a;

        public C18852b() {
            this.f105810a = new AtomicInteger(0);
        }

        @Override // org.apache.commons.compress.parallel.ScatterGatherBackingStoreSupplier
        public ScatterGatherBackingStore get() throws IOException {
            return new FileBasedScatterGatherBackingStore(Files.createTempFile("parallelscatter", GoogleApiAvailabilityLight.f29016b + this.f105810a.incrementAndGet(), new FileAttribute[0]));
        }

        public /* synthetic */ C18852b(C18851a c18851a) {
            this();
        }
    }

    public ParallelScatterZipCreator(ExecutorService executorService) {
        this(executorService, new C18852b(null));
    }

    public void addArchiveEntry(ZipArchiveEntryRequestSupplier zipArchiveEntryRequestSupplier) {
        submitStreamAwareCallable(createCallable(zipArchiveEntryRequestSupplier));
    }

    public ParallelScatterZipCreator(ExecutorService executorService, ScatterGatherBackingStoreSupplier scatterGatherBackingStoreSupplier) {
        this(executorService, scatterGatherBackingStoreSupplier, -1);
    }

    public ParallelScatterZipCreator(ExecutorService executorService, ScatterGatherBackingStoreSupplier scatterGatherBackingStoreSupplier, int i) throws IllegalArgumentException {
        this.f105800a = new ConcurrentLinkedDeque();
        this.f105803d = new ConcurrentLinkedDeque();
        this.f105804e = System.currentTimeMillis();
        this.f105808i = new C18851a();
        if ((i >= 0 && i <= 9) || i == -1) {
            this.f105802c = scatterGatherBackingStoreSupplier;
            this.f105801b = executorService;
            this.f105807h = i;
            return;
        }
        throw new IllegalArgumentException("Compression level is expected between -1~9");
    }

    public final Callable<ScatterZipOutputStream> createCallable(final ZipArchiveEntryRequestSupplier zipArchiveEntryRequestSupplier) {
        return new Callable() { // from class: com.sunia.HTREnginev2.lvk
            @Override // java.util.concurrent.Callable
            public final Object call() {
                ScatterZipOutputStream m66405j;
                m66405j = ParallelScatterZipCreator.this.m66405j(zipArchiveEntryRequestSupplier);
                return m66405j;
            }
        };
    }
}
