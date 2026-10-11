package org.apache.poi.picture;

import java.awt.Dimension;
import java.awt.Image;
import java.io.Closeable;
import java.io.InputStream;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicBoolean;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.p114wp.usermodel.IPicture;
import org.apache.poi.picture.PicturesManager;
import org.apache.poi.util.CloseUtils;

/* loaded from: classes12.dex */
public abstract class PicturesManager<IMAGE extends Image> implements Closeable {
    protected final Logger LOG;
    private boolean async;
    private final AtomicBoolean closed;
    private ExecutorService executor;
    private final Map<String, Future<?>> futureMap;
    private final Map<Integer, String> identifiers;
    private int index;
    private final PicturesCache<IMAGE> picturesCache;

    public PicturesManager(PicturesCache<IMAGE> picturesCache) {
        this(picturesCache, false);
    }

    private PictureTask<IMAGE> createTask(IPicture iPicture, String str) {
        return new PictureTask<>(iPicture, this.picturesCache, str);
    }

    private void initExecutor() {
        if (this.async && this.executor == null) {
            this.executor = Executors.newSingleThreadExecutor();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$finished$0(Runnable runnable) {
        runnable.run();
        shutdownExecutor();
        this.identifiers.clear();
    }

    private void shutdownExecutor() {
        ExecutorService executorService = this.executor;
        if (executorService != null) {
            executorService.shutdown();
            this.executor = null;
        }
    }

    private void waitPictureCacheFinished(String str) {
        if (this.async) {
            try {
                Future<?> remove = this.futureMap.remove(str);
                if (remove == null || remove.isDone()) {
                    return;
                }
                remove.get();
            } catch (Exception e) {
                this.LOG.atError().withThrowable(e).log();
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.closed.set(true);
        CloseUtils.close(this.picturesCache);
    }

    public boolean existCache(String str) {
        return this.picturesCache.existCache(str);
    }

    public void finished(final Runnable runnable) {
        if (this.async) {
            this.executor.submit(new Runnable() { // from class: com.sunia.HTREnginev2.b4l
                @Override // java.lang.Runnable
                public final void run() {
                    PicturesManager.this.lambda$finished$0(runnable);
                }
            });
        } else {
            runnable.run();
            this.identifiers.clear();
        }
    }

    public Dimension getImageSize(String str) {
        waitPictureCacheFinished(str);
        return this.picturesCache.getImageSize(str);
    }

    public PicturesCache<?> getPicturesCache() {
        return this.picturesCache;
    }

    public InputStream getStream(String str) {
        waitPictureCacheFinished(str);
        return this.picturesCache.getStream(str);
    }

    public String processPicture(IPicture iPicture) {
        if (this.closed.get()) {
            return "";
        }
        int identifier = iPicture.identifier();
        String str = this.identifiers.get(Integer.valueOf(identifier));
        if (str != null) {
            return str;
        }
        this.index++;
        String filename = this.picturesCache.getFilename(iPicture.getName(), this.index);
        if (existCache(filename)) {
            iPicture.getAnchor(this.picturesCache);
            this.identifiers.put(Integer.valueOf(identifier), filename);
            return filename;
        }
        PictureTask<IMAGE> createTask = createTask(iPicture, filename);
        if (this.async) {
            Future<?> submit = this.executor.submit(createTask);
            this.identifiers.put(Integer.valueOf(identifier), filename);
            this.futureMap.put(filename, submit);
        } else {
            createTask.run();
            this.identifiers.put(Integer.valueOf(identifier), filename);
        }
        return filename;
    }

    public PicturesManager(PicturesCache<IMAGE> picturesCache, boolean z) {
        this.LOG = LogManager.getLogger(getClass().getSimpleName());
        this.futureMap = new ConcurrentHashMap();
        this.identifiers = new ConcurrentHashMap();
        this.picturesCache = picturesCache;
        this.async = z;
        this.closed = new AtomicBoolean();
        initExecutor();
    }
}
