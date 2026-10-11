package sun.awt.image;

import java.awt.GraphicsConfiguration;
import java.awt.Image;
import java.awt.ImageCapabilities;
import java.awt.image.BufferedImage;
import java.awt.image.VolatileImage;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;
import sun.java2d.SurfaceData;
import sun.java2d.SurfaceDataProxy;

/* loaded from: classes16.dex */
public abstract class SurfaceManager {
    private static ImageAccessor imgaccessor;
    private ConcurrentHashMap<Object, Object> cacheMap;

    /* loaded from: classes16.dex */
    public interface FlushableCacheData {
        boolean flush(boolean z);
    }

    /* loaded from: classes16.dex */
    public static abstract class ImageAccessor {
        public abstract SurfaceManager getSurfaceManager(Image image);

        public abstract void setSurfaceManager(Image image, SurfaceManager surfaceManager);
    }

    /* loaded from: classes16.dex */
    public class ImageCapabilitiesGc extends ImageCapabilities {

        /* renamed from: gc */
        GraphicsConfiguration f116335gc;

        public ImageCapabilitiesGc(GraphicsConfiguration graphicsConfiguration) {
            super(false);
            this.f116335gc = graphicsConfiguration;
        }

        @Override // java.awt.ImageCapabilities
        public boolean isAccelerated() {
            Object proxyKey;
            SurfaceDataProxy surfaceDataProxy;
            Object obj = this.f116335gc;
            return (obj instanceof ProxiedGraphicsConfig) && (proxyKey = ((ProxiedGraphicsConfig) obj).getProxyKey()) != null && (surfaceDataProxy = (SurfaceDataProxy) SurfaceManager.this.getCacheData(proxyKey)) != null && surfaceDataProxy.isAccelerated();
        }
    }

    /* loaded from: classes16.dex */
    public interface ProxiedGraphicsConfig {
        Object getProxyKey();
    }

    public static int getImageScale(Image image) {
        if (image instanceof VolatileImage) {
            return getManager(image).getPrimarySurfaceData().getDefaultScale();
        }
        return 1;
    }

    public static SurfaceManager getManager(Image image) {
        SurfaceManager surfaceManager = imgaccessor.getSurfaceManager(image);
        if (surfaceManager == null) {
            try {
                setManager((BufferedImage) image, surfaceManager);
            } catch (ClassCastException unused) {
                throw new IllegalArgumentException("Invalid Image variant");
            }
        }
        return surfaceManager;
    }

    public static void setImageAccessor(ImageAccessor imageAccessor) {
        if (imgaccessor != null) {
            throw new InternalError("Attempt to set ImageAccessor twice");
        }
        imgaccessor = imageAccessor;
    }

    public static void setManager(Image image, SurfaceManager surfaceManager) {
        imgaccessor.setSurfaceManager(image, surfaceManager);
    }

    public void acceleratedSurfaceLost() {
    }

    public synchronized void flush() {
        flush(false);
    }

    public Object getCacheData(Object obj) {
        ConcurrentHashMap<Object, Object> concurrentHashMap = this.cacheMap;
        if (concurrentHashMap == null) {
            return null;
        }
        return concurrentHashMap.get(obj);
    }

    public ImageCapabilities getCapabilities(GraphicsConfiguration graphicsConfiguration) {
        return new ImageCapabilitiesGc(graphicsConfiguration);
    }

    public abstract SurfaceData getPrimarySurfaceData();

    public abstract SurfaceData restoreContents();

    public void setAccelerationPriority(float f) {
        if (f == 0.0f) {
            flush(true);
        }
    }

    public void setCacheData(Object obj, Object obj2) {
        if (this.cacheMap == null) {
            synchronized (this) {
                if (this.cacheMap == null) {
                    this.cacheMap = new ConcurrentHashMap<>(2);
                }
            }
        }
        this.cacheMap.put(obj, obj2);
    }

    public synchronized void flush(boolean z) {
        ConcurrentHashMap<Object, Object> concurrentHashMap = this.cacheMap;
        if (concurrentHashMap != null) {
            Iterator<Object> it2 = concurrentHashMap.values().iterator();
            while (it2.hasNext()) {
                Object next = it2.next();
                if ((next instanceof FlushableCacheData) && ((FlushableCacheData) next).flush(z)) {
                    it2.remove();
                }
            }
        }
    }
}
