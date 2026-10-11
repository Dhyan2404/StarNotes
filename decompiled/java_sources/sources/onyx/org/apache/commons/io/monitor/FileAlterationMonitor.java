package onyx.org.apache.commons.io.monitor;

import java.time.Duration;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ThreadFactory;
import java.util.function.Consumer;
import java.util.function.Predicate;
import java.util.stream.Stream;
import onyx.org.apache.commons.io.ThreadUtils;
import onyx.org.apache.commons.io.monitor.FileAlterationMonitor;
import onyx.org.apache.commons.io.monitor.FileAlterationObserver;

/* loaded from: classes11.dex */
public final class FileAlterationMonitor implements Runnable {

    /* renamed from: j */
    public static final FileAlterationObserver[] f104472j = new FileAlterationObserver[0];

    /* renamed from: e */
    public final long f104473e;

    /* renamed from: f */
    public final List<FileAlterationObserver> f104474f;

    /* renamed from: g */
    public Thread f104475g;

    /* renamed from: h */
    public ThreadFactory f104476h;

    /* renamed from: i */
    public volatile boolean f104477i;

    public FileAlterationMonitor() {
        this(10000L);
    }

    public void addObserver(FileAlterationObserver fileAlterationObserver) {
        if (fileAlterationObserver != null) {
            this.f104474f.add(fileAlterationObserver);
        }
    }

    public long getInterval() {
        return this.f104473e;
    }

    public Iterable<FileAlterationObserver> getObservers() {
        return new ArrayList(this.f104474f);
    }

    public void removeObserver(final FileAlterationObserver fileAlterationObserver) {
        if (fileAlterationObserver != null) {
            this.f104474f.removeIf(new Predicate() { // from class: com.sunia.HTREnginev2.ggg
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return FileAlterationObserver.this.equals((FileAlterationObserver) obj);
                }
            });
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        while (this.f104477i) {
            this.f104474f.forEach(new Consumer() { // from class: com.sunia.HTREnginev2.fgg
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((FileAlterationObserver) obj).checkAndNotify();
                }
            });
            if (!this.f104477i) {
                return;
            } else {
                try {
                    ThreadUtils.sleep(Duration.ofMillis(this.f104473e));
                } catch (InterruptedException unused) {
                }
            }
        }
    }

    public synchronized void setThreadFactory(ThreadFactory threadFactory) {
        this.f104476h = threadFactory;
    }

    public synchronized void start() throws Exception {
        if (this.f104477i) {
            throw new IllegalStateException("Monitor is already running");
        }
        Iterator<FileAlterationObserver> it2 = this.f104474f.iterator();
        while (it2.hasNext()) {
            it2.next().initialize();
        }
        this.f104477i = true;
        ThreadFactory threadFactory = this.f104476h;
        if (threadFactory != null) {
            this.f104475g = threadFactory.newThread(this);
        } else {
            this.f104475g = new Thread(this);
        }
        this.f104475g.start();
    }

    public synchronized void stop() throws Exception {
        stop(this.f104473e);
    }

    public FileAlterationMonitor(long j) {
        this.f104474f = new CopyOnWriteArrayList();
        this.f104473e = j;
    }

    public synchronized void stop(long j) throws Exception {
        if (this.f104477i) {
            this.f104477i = false;
            try {
                this.f104475g.interrupt();
                this.f104475g.join(j);
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
            Iterator<FileAlterationObserver> it2 = this.f104474f.iterator();
            while (it2.hasNext()) {
                it2.next().destroy();
            }
        } else {
            throw new IllegalStateException("Monitor is not running");
        }
    }

    public FileAlterationMonitor(long j, Collection<FileAlterationObserver> collection) {
        this(j, (FileAlterationObserver[]) ((Collection) Optional.ofNullable(collection).orElse(Collections.emptyList())).toArray(f104472j));
    }

    public FileAlterationMonitor(long j, FileAlterationObserver... fileAlterationObserverArr) {
        this(j);
        if (fileAlterationObserverArr != null) {
            Stream.of((Object[]) fileAlterationObserverArr).forEach(new Consumer() { // from class: com.sunia.HTREnginev2.egg
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    FileAlterationMonitor.this.addObserver((FileAlterationObserver) obj);
                }
            });
        }
    }
}
