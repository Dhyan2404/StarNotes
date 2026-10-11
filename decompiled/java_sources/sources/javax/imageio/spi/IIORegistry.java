package javax.imageio.spi;

import com.sun.imageio.plugins.bmp.BMPImageReaderSpi;
import com.sun.imageio.plugins.bmp.BMPImageWriterSpi;
import com.sun.imageio.plugins.gif.GIFImageReaderSpi;
import com.sun.imageio.plugins.gif.GIFImageWriterSpi;
import com.sun.imageio.plugins.jpeg.JPEGImageReaderSpi;
import com.sun.imageio.plugins.jpeg.JPEGImageWriterSpi;
import com.sun.imageio.plugins.png.PNGImageReaderSpi;
import com.sun.imageio.plugins.png.PNGImageWriterSpi;
import com.sun.imageio.plugins.tiff.TIFFImageReaderSpi;
import com.sun.imageio.plugins.tiff.TIFFImageWriterSpi;
import com.sun.imageio.plugins.wbmp.WBMPImageReaderSpi;
import com.sun.imageio.plugins.wbmp.WBMPImageWriterSpi;
import com.sun.imageio.spi.FileImageInputStreamSpi;
import com.sun.imageio.spi.FileImageOutputStreamSpi;
import com.sun.imageio.spi.InputStreamImageInputStreamSpi;
import com.sun.imageio.spi.OutputStreamImageOutputStreamSpi;
import com.sun.imageio.spi.RAFImageInputStreamSpi;
import com.sun.imageio.spi.RAFImageOutputStreamSpi;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.Iterator;
import java.util.ServiceConfigurationError;
import java.util.ServiceLoader;
import java.util.Vector;
import sun.awt.AppContext;

/* loaded from: classes5.dex */
public final class IIORegistry extends ServiceRegistry {

    /* renamed from: b */
    public static final Vector<Class<?>> f97956b;

    /* renamed from: javax.imageio.spi.IIORegistry$a */
    /* loaded from: classes5.dex */
    public class C17882a implements PrivilegedAction<Object> {
        public C17882a() {
        }

        @Override // java.security.PrivilegedAction
        public Object run() {
            Iterator<Class<?>> categories = IIORegistry.this.getCategories();
            while (categories.hasNext()) {
                Iterator it2 = ServiceLoader.loadInstalled(categories.next()).iterator();
                while (it2.hasNext()) {
                    IIORegistry.this.registerServiceProvider((IIOServiceProvider) it2.next());
                }
            }
            return this;
        }
    }

    static {
        Vector<Class<?>> vector = new Vector<>(5);
        f97956b = vector;
        vector.add(ImageReaderSpi.class);
        vector.add(ImageWriterSpi.class);
        vector.add(ImageTranscoderSpi.class);
        vector.add(ImageInputStreamSpi.class);
        vector.add(ImageOutputStreamSpi.class);
    }

    private IIORegistry() {
        super(f97956b.iterator());
        m61487d();
        registerApplicationClasspathSpis();
    }

    public static IIORegistry getDefaultInstance() {
        AppContext appContext = AppContext.getAppContext();
        IIORegistry iIORegistry = (IIORegistry) appContext.get(IIORegistry.class);
        if (iIORegistry != null) {
            return iIORegistry;
        }
        IIORegistry iIORegistry2 = new IIORegistry();
        appContext.put(IIORegistry.class, iIORegistry2);
        return iIORegistry2;
    }

    /* renamed from: c */
    public final void m61486c() {
        AccessController.doPrivileged(new C17882a());
    }

    /* renamed from: d */
    public final void m61487d() {
        registerServiceProvider(new GIFImageReaderSpi());
        registerServiceProvider(new GIFImageWriterSpi());
        registerServiceProvider(new BMPImageReaderSpi());
        registerServiceProvider(new BMPImageWriterSpi());
        registerServiceProvider(new WBMPImageReaderSpi());
        registerServiceProvider(new WBMPImageWriterSpi());
        registerServiceProvider(new TIFFImageReaderSpi());
        registerServiceProvider(new TIFFImageWriterSpi());
        registerServiceProvider(new PNGImageReaderSpi());
        registerServiceProvider(new PNGImageWriterSpi());
        registerServiceProvider(new JPEGImageReaderSpi());
        registerServiceProvider(new JPEGImageWriterSpi());
        registerServiceProvider(new FileImageInputStreamSpi());
        registerServiceProvider(new FileImageOutputStreamSpi());
        registerServiceProvider(new InputStreamImageInputStreamSpi());
        registerServiceProvider(new OutputStreamImageOutputStreamSpi());
        registerServiceProvider(new RAFImageInputStreamSpi());
        registerServiceProvider(new RAFImageOutputStreamSpi());
        m61486c();
    }

    public void registerApplicationClasspathSpis() {
        ClassLoader contextClassLoader = Thread.currentThread().getContextClassLoader();
        Iterator<Class<?>> categories = getCategories();
        while (categories.hasNext()) {
            Iterator it2 = ServiceLoader.load(categories.next(), contextClassLoader).iterator();
            while (it2.hasNext()) {
                try {
                    registerServiceProvider((IIOServiceProvider) it2.next());
                } catch (ServiceConfigurationError e) {
                    if (System.getSecurityManager() == null) {
                        throw e;
                    }
                    e.printStackTrace();
                }
            }
        }
    }
}
