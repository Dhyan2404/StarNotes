package sun.font;

import java.io.File;
import java.io.OutputStream;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;
import sun.awt.AppContext;
import sun.awt.util.ThreadGroupUtils;
import sun.font.CreatedFontTracker;

/* loaded from: classes16.dex */
public class CreatedFontTracker {
    public static final int MAX_FILE_SIZE = 33554432;
    public static final int MAX_TOTAL_BYTES = 335544320;
    static CreatedFontTracker tracker;
    int numBytes = 0;

    /* loaded from: classes16.dex */
    public static class TempFileDeletionHook {
        private static HashMap<File, OutputStream> files = new HashMap<>();

        /* renamed from: t */
        private static Thread f116337t = null;

        private TempFileDeletionHook() {
        }

        public static synchronized void add(File file) {
            synchronized (TempFileDeletionHook.class) {
                init();
                files.put(file, null);
            }
        }

        public static void init() {
            if (f116337t == null) {
                AccessController.doPrivileged(new PrivilegedAction() { // from class: sun.font.b
                    @Override // java.security.PrivilegedAction
                    public final Object run() {
                        Void lambda$init$0;
                        lambda$init$0 = CreatedFontTracker.TempFileDeletionHook.lambda$init$0();
                        return lambda$init$0;
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ Void lambda$init$0() {
            Thread thread = new Thread(ThreadGroupUtils.getRootThreadGroup(), new Runnable() { // from class: sun.font.a
                @Override // java.lang.Runnable
                public final void run() {
                    CreatedFontTracker.TempFileDeletionHook.runHooks();
                }
            }, "TempFontFileDeleter", 0L);
            f116337t = thread;
            thread.setContextClassLoader(null);
            Runtime.getRuntime().addShutdownHook(f116337t);
            return null;
        }

        public static synchronized void remove(File file) {
            synchronized (TempFileDeletionHook.class) {
                files.remove(file);
            }
        }

        public static synchronized void runHooks() {
            synchronized (TempFileDeletionHook.class) {
                if (files.isEmpty()) {
                    return;
                }
                for (Map.Entry<File, OutputStream> entry : files.entrySet()) {
                    try {
                        if (entry.getValue() != null) {
                            entry.getValue().close();
                        }
                    } catch (Exception unused) {
                    }
                    entry.getKey().delete();
                }
            }
        }

        public static synchronized void set(File file, OutputStream outputStream) {
            synchronized (TempFileDeletionHook.class) {
                files.put(file, outputStream);
            }
        }
    }

    private CreatedFontTracker() {
    }

    private static synchronized Semaphore getCS() {
        Semaphore semaphore;
        synchronized (CreatedFontTracker.class) {
            AppContext appContext = AppContext.getAppContext();
            semaphore = (Semaphore) appContext.get(CreatedFontTracker.class);
            if (semaphore == null) {
                semaphore = new Semaphore(5, true);
                appContext.put(CreatedFontTracker.class, semaphore);
            }
        }
        return semaphore;
    }

    public static synchronized CreatedFontTracker getTracker() {
        CreatedFontTracker createdFontTracker;
        synchronized (CreatedFontTracker.class) {
            if (tracker == null) {
                tracker = new CreatedFontTracker();
            }
            createdFontTracker = tracker;
        }
        return createdFontTracker;
    }

    public boolean acquirePermit() throws InterruptedException {
        return getCS().tryAcquire(120L, TimeUnit.SECONDS);
    }

    public void add(File file) {
        TempFileDeletionHook.add(file);
    }

    public synchronized void addBytes(int i) {
        this.numBytes += i;
    }

    public synchronized int getNumBytes() {
        return this.numBytes;
    }

    public void releasePermit() {
        getCS().release();
    }

    public void remove(File file) {
        TempFileDeletionHook.remove(file);
    }

    public void set(File file, OutputStream outputStream) {
        TempFileDeletionHook.set(file, outputStream);
    }

    public synchronized void subBytes(int i) {
        this.numBytes -= i;
    }
}
