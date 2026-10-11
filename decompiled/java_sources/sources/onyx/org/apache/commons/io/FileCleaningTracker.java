package onyx.org.apache.commons.io;

import java.io.File;
import java.lang.ref.PhantomReference;
import java.lang.ref.ReferenceQueue;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;

/* loaded from: classes11.dex */
public class FileCleaningTracker {

    /* renamed from: a */
    public ReferenceQueue<Object> f104166a = new ReferenceQueue<>();

    /* renamed from: b */
    public final Collection<C18626b> f104167b = Collections.synchronizedSet(new HashSet());

    /* renamed from: c */
    public final List<String> f104168c = Collections.synchronizedList(new ArrayList());

    /* renamed from: d */
    public volatile boolean f104169d;

    /* renamed from: e */
    public Thread f104170e;

    /* renamed from: onyx.org.apache.commons.io.FileCleaningTracker$a */
    /* loaded from: classes11.dex */
    public final class C18625a extends Thread {
        public C18625a() {
            super("File Reaper");
            setPriority(10);
            setDaemon(true);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            while (true) {
                if (FileCleaningTracker.this.f104169d && FileCleaningTracker.this.f104167b.isEmpty()) {
                    return;
                }
                try {
                    C18626b c18626b = (C18626b) FileCleaningTracker.this.f104166a.remove();
                    FileCleaningTracker.this.f104167b.remove(c18626b);
                    if (!c18626b.m65087a()) {
                        FileCleaningTracker.this.f104168c.add(c18626b.m65088b());
                    }
                    c18626b.clear();
                } catch (InterruptedException unused) {
                }
            }
        }
    }

    /* renamed from: onyx.org.apache.commons.io.FileCleaningTracker$b */
    /* loaded from: classes11.dex */
    public static final class C18626b extends PhantomReference<Object> {

        /* renamed from: a */
        public final String f104172a;

        /* renamed from: b */
        public final FileDeleteStrategy f104173b;

        public C18626b(String str, FileDeleteStrategy fileDeleteStrategy, Object obj, ReferenceQueue<? super Object> referenceQueue) {
            super(obj, referenceQueue);
            this.f104172a = str;
            this.f104173b = fileDeleteStrategy == null ? FileDeleteStrategy.NORMAL : fileDeleteStrategy;
        }

        /* renamed from: a */
        public boolean m65087a() {
            return this.f104173b.deleteQuietly(new File(this.f104172a));
        }

        /* renamed from: b */
        public String m65088b() {
            return this.f104172a;
        }
    }

    /* renamed from: a */
    public final synchronized void m65086a(String str, Object obj, FileDeleteStrategy fileDeleteStrategy) {
        if (this.f104169d) {
            throw new IllegalStateException("No new trackers can be added once exitWhenFinished() is called");
        }
        if (this.f104170e == null) {
            C18625a c18625a = new C18625a();
            this.f104170e = c18625a;
            c18625a.start();
        }
        this.f104167b.add(new C18626b(str, fileDeleteStrategy, obj, this.f104166a));
    }

    public synchronized void exitWhenFinished() {
        this.f104169d = true;
        Thread thread = this.f104170e;
        if (thread != null) {
            synchronized (thread) {
                this.f104170e.interrupt();
            }
        }
    }

    public List<String> getDeleteFailures() {
        return new ArrayList(this.f104168c);
    }

    public int getTrackCount() {
        return this.f104167b.size();
    }

    public void track(File file, Object obj) {
        track(file, obj, (FileDeleteStrategy) null);
    }

    public void track(File file, Object obj, FileDeleteStrategy fileDeleteStrategy) {
        Objects.requireNonNull(file, "file");
        m65086a(file.getPath(), obj, fileDeleteStrategy);
    }

    public void track(Path path, Object obj) {
        track(path, obj, (FileDeleteStrategy) null);
    }

    public void track(Path path, Object obj, FileDeleteStrategy fileDeleteStrategy) {
        Objects.requireNonNull(path, "file");
        m65086a(path.toAbsolutePath().toString(), obj, fileDeleteStrategy);
    }

    public void track(String str, Object obj) {
        track(str, obj, (FileDeleteStrategy) null);
    }

    public void track(String str, Object obj, FileDeleteStrategy fileDeleteStrategy) {
        Objects.requireNonNull(str, "path");
        m65086a(str, obj, fileDeleteStrategy);
    }
}
