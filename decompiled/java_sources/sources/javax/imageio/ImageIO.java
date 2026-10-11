package javax.imageio;

import java.awt.image.BufferedImage;
import java.awt.image.RenderedImage;
import java.io.File;
import java.io.FilePermission;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.Method;
import java.net.URL;
import java.security.AccessController;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import javax.imageio.spi.IIORegistry;
import javax.imageio.spi.ImageInputStreamSpi;
import javax.imageio.spi.ImageOutputStreamSpi;
import javax.imageio.spi.ImageReaderSpi;
import javax.imageio.spi.ImageReaderWriterSpi;
import javax.imageio.spi.ImageTranscoderSpi;
import javax.imageio.spi.ImageWriterSpi;
import javax.imageio.spi.ServiceRegistry;
import javax.imageio.stream.ImageInputStream;
import javax.imageio.stream.ImageOutputStream;
import sun.awt.AppContext;
import sun.security.action.GetPropertyAction;

/* loaded from: classes5.dex */
public final class ImageIO {

    /* renamed from: a */
    public static final IIORegistry f97810a = IIORegistry.getDefaultInstance();

    /* renamed from: b */
    public static Method f97811b;

    /* renamed from: c */
    public static Method f97812c;

    /* renamed from: d */
    public static Method f97813d;

    /* renamed from: e */
    public static Method f97814e;

    /* renamed from: f */
    public static Method f97815f;

    /* renamed from: g */
    public static Method f97816g;

    /* loaded from: classes5.dex */
    public enum SpiInfo {
        FORMAT_NAMES { // from class: javax.imageio.ImageIO.SpiInfo.1
            @Override // javax.imageio.ImageIO.SpiInfo
            public String[] info(ImageReaderWriterSpi imageReaderWriterSpi) {
                return imageReaderWriterSpi.getFormatNames();
            }
        },
        MIME_TYPES { // from class: javax.imageio.ImageIO.SpiInfo.2
            @Override // javax.imageio.ImageIO.SpiInfo
            public String[] info(ImageReaderWriterSpi imageReaderWriterSpi) {
                return imageReaderWriterSpi.getMIMETypes();
            }
        },
        FILE_SUFFIXES { // from class: javax.imageio.ImageIO.SpiInfo.3
            @Override // javax.imageio.ImageIO.SpiInfo
            public String[] info(ImageReaderWriterSpi imageReaderWriterSpi) {
                return imageReaderWriterSpi.getFileSuffixes();
            }
        };

        public abstract String[] info(ImageReaderWriterSpi imageReaderWriterSpi);
    }

    /* renamed from: javax.imageio.ImageIO$b */
    /* loaded from: classes5.dex */
    public static class C17685b {

        /* renamed from: a */
        public boolean f97817a = true;

        /* renamed from: b */
        public File f97818b = null;

        /* renamed from: c */
        public Boolean f97819c = null;

        /* renamed from: a */
        public File m61451a() {
            return this.f97818b;
        }

        /* renamed from: b */
        public Boolean m61452b() {
            return this.f97819c;
        }

        /* renamed from: c */
        public boolean m61453c() {
            return this.f97817a;
        }

        /* renamed from: d */
        public void m61454d(File file) {
            this.f97818b = file;
        }

        /* renamed from: e */
        public void m61455e(Boolean bool) {
            this.f97819c = bool;
        }

        /* renamed from: f */
        public void m61456f(boolean z) {
            this.f97817a = z;
        }
    }

    /* renamed from: javax.imageio.ImageIO$c */
    /* loaded from: classes5.dex */
    public static class C17686c implements ServiceRegistry.Filter {

        /* renamed from: a */
        public Object f97820a;

        public C17686c(Object obj) {
            this.f97820a = obj;
        }

        @Override // javax.imageio.spi.ServiceRegistry.Filter
        public boolean filter(Object obj) {
            try {
                ImageReaderSpi imageReaderSpi = (ImageReaderSpi) obj;
                Object obj2 = this.f97820a;
                ImageInputStream imageInputStream = obj2 instanceof ImageInputStream ? (ImageInputStream) obj2 : null;
                if (imageInputStream != null) {
                    imageInputStream.mark();
                }
                try {
                    return imageReaderSpi.canDecodeInput(this.f97820a);
                } finally {
                    if (imageInputStream != null) {
                        imageInputStream.reset();
                    }
                }
            } catch (IOException unused) {
                return false;
            }
        }
    }

    /* renamed from: javax.imageio.ImageIO$d */
    /* loaded from: classes5.dex */
    public static class C17687d implements ServiceRegistry.Filter {

        /* renamed from: a */
        public ImageTypeSpecifier f97821a;

        /* renamed from: b */
        public String f97822b;

        public C17687d(ImageTypeSpecifier imageTypeSpecifier, String str) {
            this.f97821a = imageTypeSpecifier;
            this.f97822b = str;
        }

        @Override // javax.imageio.spi.ServiceRegistry.Filter
        public boolean filter(Object obj) {
            ImageWriterSpi imageWriterSpi = (ImageWriterSpi) obj;
            return Arrays.asList(imageWriterSpi.getFormatNames()).contains(this.f97822b) && imageWriterSpi.canEncodeImage(this.f97821a);
        }
    }

    /* renamed from: javax.imageio.ImageIO$e */
    /* loaded from: classes5.dex */
    public static class C17688e implements ServiceRegistry.Filter {

        /* renamed from: a */
        public Method f97823a;

        /* renamed from: b */
        public String f97824b;

        public C17688e(Method method, String str) {
            this.f97823a = method;
            this.f97824b = str;
        }

        @Override // javax.imageio.spi.ServiceRegistry.Filter
        public boolean filter(Object obj) {
            try {
                return ImageIO.m61444c((String[]) this.f97823a.invoke(obj, new Object[0]), this.f97824b);
            } catch (Exception unused) {
                return false;
            }
        }
    }

    /* renamed from: javax.imageio.ImageIO$f */
    /* loaded from: classes5.dex */
    public static class C17689f implements Iterator<ImageReader> {

        /* renamed from: e */
        public Iterator<ImageReaderSpi> f97825e;

        public C17689f(Iterator<ImageReaderSpi> it2) {
            this.f97825e = it2;
        }

        @Override // java.util.Iterator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ImageReader next() {
            ImageReaderSpi imageReaderSpi;
            try {
                imageReaderSpi = this.f97825e.next();
                try {
                    return imageReaderSpi.createReaderInstance();
                } catch (IOException unused) {
                    ImageIO.f97810a.deregisterServiceProvider(imageReaderSpi, ImageReaderSpi.class);
                    return null;
                }
            } catch (IOException unused2) {
                imageReaderSpi = null;
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f97825e.hasNext();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: javax.imageio.ImageIO$g */
    /* loaded from: classes5.dex */
    public static class C17690g implements Iterator<ImageTranscoder> {

        /* renamed from: e */
        public Iterator<ImageTranscoderSpi> f97826e;

        public C17690g(Iterator<ImageTranscoderSpi> it2) {
            this.f97826e = it2;
        }

        @Override // java.util.Iterator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ImageTranscoder next() {
            return this.f97826e.next().createTranscoderInstance();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f97826e.hasNext();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: javax.imageio.ImageIO$h */
    /* loaded from: classes5.dex */
    public static class C17691h implements Iterator<ImageWriter> {

        /* renamed from: e */
        public Iterator<ImageWriterSpi> f97827e;

        public C17691h(Iterator<ImageWriterSpi> it2) {
            this.f97827e = it2;
        }

        @Override // java.util.Iterator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ImageWriter next() {
            ImageWriterSpi imageWriterSpi;
            try {
                imageWriterSpi = this.f97827e.next();
                try {
                    return imageWriterSpi.createWriterInstance();
                } catch (IOException unused) {
                    ImageIO.f97810a.deregisterServiceProvider(imageWriterSpi, ImageWriterSpi.class);
                    return null;
                }
            } catch (IOException unused2) {
                imageWriterSpi = null;
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f97827e.hasNext();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: javax.imageio.ImageIO$i */
    /* loaded from: classes5.dex */
    public static class C17692i implements ServiceRegistry.Filter {

        /* renamed from: a */
        public String f97828a;

        /* renamed from: b */
        public String f97829b;

        public C17692i(ImageReaderSpi imageReaderSpi, ImageWriterSpi imageWriterSpi) {
            this.f97828a = imageReaderSpi.getClass().getName();
            this.f97829b = imageWriterSpi.getClass().getName();
        }

        @Override // javax.imageio.spi.ServiceRegistry.Filter
        public boolean filter(Object obj) {
            ImageTranscoderSpi imageTranscoderSpi = (ImageTranscoderSpi) obj;
            return imageTranscoderSpi.getReaderServiceProviderName().equals(this.f97828a) && imageTranscoderSpi.getWriterServiceProviderName().equals(this.f97829b);
        }
    }

    static {
        try {
            f97811b = ImageReaderSpi.class.getMethod("getFormatNames", new Class[0]);
            f97812c = ImageReaderSpi.class.getMethod("getFileSuffixes", new Class[0]);
            f97813d = ImageReaderSpi.class.getMethod("getMIMETypes", new Class[0]);
            f97814e = ImageWriterSpi.class.getMethod("getFormatNames", new Class[0]);
            f97815f = ImageWriterSpi.class.getMethod("getFileSuffixes", new Class[0]);
            f97816g = ImageWriterSpi.class.getMethod("getMIMETypes", new Class[0]);
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
        }
    }

    private ImageIO() {
    }

    /* renamed from: c */
    public static boolean m61444c(String[] strArr, String str) {
        for (String str2 : strArr) {
            if (str.equalsIgnoreCase(str2)) {
                return true;
            }
        }
        return false;
    }

    public static ImageInputStream createImageInputStream(Object obj) throws IOException {
        if (obj == null) {
            throw new IllegalArgumentException("input == null!");
        }
        try {
            Iterator serviceProviders = f97810a.getServiceProviders(ImageInputStreamSpi.class, true);
            boolean z = getUseCache() && m61450i();
            while (serviceProviders.hasNext()) {
                ImageInputStreamSpi imageInputStreamSpi = (ImageInputStreamSpi) serviceProviders.next();
                if (imageInputStreamSpi.getInputClass().isInstance(obj)) {
                    try {
                        return imageInputStreamSpi.createInputStreamInstance(obj, z, getCacheDirectory());
                    } catch (IOException e) {
                        throw new IIOException("Can't create cache file!", e);
                    }
                }
            }
        } catch (IllegalArgumentException unused) {
        }
        return null;
    }

    public static ImageOutputStream createImageOutputStream(Object obj) throws IOException {
        if (obj == null) {
            throw new IllegalArgumentException("output == null!");
        }
        try {
            Iterator serviceProviders = f97810a.getServiceProviders(ImageOutputStreamSpi.class, true);
            boolean z = getUseCache() && m61450i();
            while (serviceProviders.hasNext()) {
                ImageOutputStreamSpi imageOutputStreamSpi = (ImageOutputStreamSpi) serviceProviders.next();
                if (imageOutputStreamSpi.getOutputClass().isInstance(obj)) {
                    try {
                        return imageOutputStreamSpi.createOutputStreamInstance(obj, z, getCacheDirectory());
                    } catch (IOException e) {
                        throw new IIOException("Can't create cache file!", e);
                    }
                }
            }
        } catch (IllegalArgumentException unused) {
        }
        return null;
    }

    /* renamed from: d */
    public static boolean m61445d(RenderedImage renderedImage, ImageWriter imageWriter, ImageOutputStream imageOutputStream) throws IOException {
        if (imageWriter == null) {
            return false;
        }
        imageWriter.setOutput(imageOutputStream);
        try {
            imageWriter.write(renderedImage);
            imageWriter.dispose();
            imageOutputStream.flush();
            return true;
        } catch (Throwable th) {
            imageWriter.dispose();
            imageOutputStream.flush();
            throw th;
        }
    }

    /* renamed from: e */
    public static synchronized C17685b m61446e() {
        C17685b c17685b;
        synchronized (ImageIO.class) {
            AppContext appContext = AppContext.getAppContext();
            c17685b = (C17685b) appContext.get(C17685b.class);
            if (c17685b == null) {
                c17685b = new C17685b();
                appContext.put(C17685b.class, c17685b);
            }
        }
        return c17685b;
    }

    /* renamed from: f */
    public static <S extends ImageReaderWriterSpi> String[] m61447f(Class<S> cls, SpiInfo spiInfo) {
        try {
            Iterator serviceProviders = f97810a.getServiceProviders(cls, true);
            HashSet hashSet = new HashSet();
            while (serviceProviders.hasNext()) {
                String[] info = spiInfo.info((ImageReaderWriterSpi) serviceProviders.next());
                if (info != null) {
                    Collections.addAll(hashSet, info);
                }
            }
            return (String[]) hashSet.toArray(new String[hashSet.size()]);
        } catch (IllegalArgumentException unused) {
            return new String[0];
        }
    }

    /* renamed from: g */
    public static String m61448g() {
        return (String) AccessController.doPrivileged(new GetPropertyAction("java.io.tmpdir"));
    }

    public static File getCacheDirectory() {
        return m61446e().m61451a();
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0025, code lost:
    
        if (r0 == null) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static javax.imageio.ImageReader getImageReader(javax.imageio.ImageWriter r6) {
        /*
            if (r6 == 0) goto L52
            javax.imageio.spi.ImageWriterSpi r0 = r6.getOriginatingProvider()
            r1 = 0
            r2 = 0
            if (r0 != 0) goto L28
            javax.imageio.spi.IIORegistry r3 = javax.imageio.ImageIO.f97810a     // Catch: java.lang.IllegalArgumentException -> L27
            java.lang.Class<javax.imageio.spi.ImageWriterSpi> r4 = javax.imageio.spi.ImageWriterSpi.class
            java.util.Iterator r3 = r3.getServiceProviders(r4, r1)     // Catch: java.lang.IllegalArgumentException -> L27
        L12:
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L25
            java.lang.Object r4 = r3.next()
            javax.imageio.spi.ImageWriterSpi r4 = (javax.imageio.spi.ImageWriterSpi) r4
            boolean r5 = r4.isOwnWriter(r6)
            if (r5 == 0) goto L12
            r0 = r4
        L25:
            if (r0 != 0) goto L28
        L27:
            return r2
        L28:
            java.lang.String[] r6 = r0.getImageReaderSpiNames()
            if (r6 != 0) goto L2f
            return r2
        L2f:
            r6 = r6[r1]     // Catch: java.lang.ClassNotFoundException -> L51
            java.lang.ClassLoader r0 = java.lang.ClassLoader.getSystemClassLoader()     // Catch: java.lang.ClassNotFoundException -> L51
            r1 = 1
            java.lang.Class r6 = java.lang.Class.forName(r6, r1, r0)     // Catch: java.lang.ClassNotFoundException -> L51
            javax.imageio.spi.IIORegistry r0 = javax.imageio.ImageIO.f97810a
            java.lang.Object r6 = r0.getServiceProviderByClass(r6)
            javax.imageio.spi.ImageReaderSpi r6 = (javax.imageio.spi.ImageReaderSpi) r6
            if (r6 != 0) goto L45
            return r2
        L45:
            javax.imageio.ImageReader r6 = r6.createReaderInstance()     // Catch: java.io.IOException -> L4a
            return r6
        L4a:
            javax.imageio.spi.IIORegistry r0 = javax.imageio.ImageIO.f97810a
            java.lang.Class<javax.imageio.spi.ImageReaderSpi> r1 = javax.imageio.spi.ImageReaderSpi.class
            r0.deregisterServiceProvider(r6, r1)
        L51:
            return r2
        L52:
            java.lang.IllegalArgumentException r6 = new java.lang.IllegalArgumentException
            java.lang.String r0 = "writer == null!"
            r6.<init>(r0)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: javax.imageio.ImageIO.getImageReader(javax.imageio.ImageWriter):javax.imageio.ImageReader");
    }

    public static Iterator<ImageReader> getImageReaders(Object obj) {
        if (obj == null) {
            throw new IllegalArgumentException("input == null!");
        }
        try {
            return new C17689f(f97810a.getServiceProviders(ImageReaderSpi.class, new C17686c(obj), true));
        } catch (IllegalArgumentException unused) {
            return Collections.emptyIterator();
        }
    }

    public static Iterator<ImageReader> getImageReadersByFormatName(String str) {
        if (str == null) {
            throw new IllegalArgumentException("formatName == null!");
        }
        try {
            return new C17689f(f97810a.getServiceProviders(ImageReaderSpi.class, new C17688e(f97811b, str), true));
        } catch (IllegalArgumentException unused) {
            return Collections.emptyIterator();
        }
    }

    public static Iterator<ImageReader> getImageReadersByMIMEType(String str) {
        if (str == null) {
            throw new IllegalArgumentException("MIMEType == null!");
        }
        try {
            return new C17689f(f97810a.getServiceProviders(ImageReaderSpi.class, new C17688e(f97813d, str), true));
        } catch (IllegalArgumentException unused) {
            return Collections.emptyIterator();
        }
    }

    public static Iterator<ImageReader> getImageReadersBySuffix(String str) {
        if (str == null) {
            throw new IllegalArgumentException("fileSuffix == null!");
        }
        try {
            return new C17689f(f97810a.getServiceProviders(ImageReaderSpi.class, new C17688e(f97812c, str), true));
        } catch (IllegalArgumentException unused) {
            return Collections.emptyIterator();
        }
    }

    public static Iterator<ImageTranscoder> getImageTranscoders(ImageReader imageReader, ImageWriter imageWriter) {
        if (imageReader == null) {
            throw new IllegalArgumentException("reader == null!");
        }
        if (imageWriter == null) {
            throw new IllegalArgumentException("writer == null!");
        }
        try {
            return new C17690g(f97810a.getServiceProviders(ImageTranscoderSpi.class, new C17692i(imageReader.getOriginatingProvider(), imageWriter.getOriginatingProvider()), true));
        } catch (IllegalArgumentException unused) {
            return Collections.emptyIterator();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0025, code lost:
    
        if (r0 == null) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static javax.imageio.ImageWriter getImageWriter(javax.imageio.ImageReader r6) {
        /*
            if (r6 == 0) goto L52
            javax.imageio.spi.ImageReaderSpi r0 = r6.getOriginatingProvider()
            r1 = 0
            r2 = 0
            if (r0 != 0) goto L28
            javax.imageio.spi.IIORegistry r3 = javax.imageio.ImageIO.f97810a     // Catch: java.lang.IllegalArgumentException -> L27
            java.lang.Class<javax.imageio.spi.ImageReaderSpi> r4 = javax.imageio.spi.ImageReaderSpi.class
            java.util.Iterator r3 = r3.getServiceProviders(r4, r1)     // Catch: java.lang.IllegalArgumentException -> L27
        L12:
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L25
            java.lang.Object r4 = r3.next()
            javax.imageio.spi.ImageReaderSpi r4 = (javax.imageio.spi.ImageReaderSpi) r4
            boolean r5 = r4.isOwnReader(r6)
            if (r5 == 0) goto L12
            r0 = r4
        L25:
            if (r0 != 0) goto L28
        L27:
            return r2
        L28:
            java.lang.String[] r6 = r0.getImageWriterSpiNames()
            if (r6 != 0) goto L2f
            return r2
        L2f:
            r6 = r6[r1]     // Catch: java.lang.ClassNotFoundException -> L51
            java.lang.ClassLoader r0 = java.lang.ClassLoader.getSystemClassLoader()     // Catch: java.lang.ClassNotFoundException -> L51
            r1 = 1
            java.lang.Class r6 = java.lang.Class.forName(r6, r1, r0)     // Catch: java.lang.ClassNotFoundException -> L51
            javax.imageio.spi.IIORegistry r0 = javax.imageio.ImageIO.f97810a
            java.lang.Object r6 = r0.getServiceProviderByClass(r6)
            javax.imageio.spi.ImageWriterSpi r6 = (javax.imageio.spi.ImageWriterSpi) r6
            if (r6 != 0) goto L45
            return r2
        L45:
            javax.imageio.ImageWriter r6 = r6.createWriterInstance()     // Catch: java.io.IOException -> L4a
            return r6
        L4a:
            javax.imageio.spi.IIORegistry r0 = javax.imageio.ImageIO.f97810a
            java.lang.Class<javax.imageio.spi.ImageWriterSpi> r1 = javax.imageio.spi.ImageWriterSpi.class
            r0.deregisterServiceProvider(r6, r1)
        L51:
            return r2
        L52:
            java.lang.IllegalArgumentException r6 = new java.lang.IllegalArgumentException
            java.lang.String r0 = "reader == null!"
            r6.<init>(r0)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: javax.imageio.ImageIO.getImageWriter(javax.imageio.ImageReader):javax.imageio.ImageWriter");
    }

    public static Iterator<ImageWriter> getImageWriters(ImageTypeSpecifier imageTypeSpecifier, String str) {
        if (imageTypeSpecifier == null) {
            throw new IllegalArgumentException("type == null!");
        }
        if (str == null) {
            throw new IllegalArgumentException("formatName == null!");
        }
        try {
            return new C17691h(f97810a.getServiceProviders(ImageWriterSpi.class, new C17687d(imageTypeSpecifier, str), true));
        } catch (IllegalArgumentException unused) {
            return Collections.emptyIterator();
        }
    }

    public static Iterator<ImageWriter> getImageWritersByFormatName(String str) {
        if (str == null) {
            throw new IllegalArgumentException("formatName == null!");
        }
        try {
            return new C17691h(f97810a.getServiceProviders(ImageWriterSpi.class, new C17688e(f97814e, str), true));
        } catch (IllegalArgumentException unused) {
            return Collections.emptyIterator();
        }
    }

    public static Iterator<ImageWriter> getImageWritersByMIMEType(String str) {
        if (str == null) {
            throw new IllegalArgumentException("MIMEType == null!");
        }
        try {
            return new C17691h(f97810a.getServiceProviders(ImageWriterSpi.class, new C17688e(f97816g, str), true));
        } catch (IllegalArgumentException unused) {
            return Collections.emptyIterator();
        }
    }

    public static Iterator<ImageWriter> getImageWritersBySuffix(String str) {
        if (str == null) {
            throw new IllegalArgumentException("fileSuffix == null!");
        }
        try {
            return new C17691h(f97810a.getServiceProviders(ImageWriterSpi.class, new C17688e(f97815f, str), true));
        } catch (IllegalArgumentException unused) {
            return Collections.emptyIterator();
        }
    }

    public static String[] getReaderFileSuffixes() {
        return m61447f(ImageReaderSpi.class, SpiInfo.FILE_SUFFIXES);
    }

    public static String[] getReaderFormatNames() {
        return m61447f(ImageReaderSpi.class, SpiInfo.FORMAT_NAMES);
    }

    public static String[] getReaderMIMETypes() {
        return m61447f(ImageReaderSpi.class, SpiInfo.MIME_TYPES);
    }

    public static boolean getUseCache() {
        return m61446e().m61453c();
    }

    public static String[] getWriterFileSuffixes() {
        return m61447f(ImageWriterSpi.class, SpiInfo.FILE_SUFFIXES);
    }

    public static String[] getWriterFormatNames() {
        return m61447f(ImageWriterSpi.class, SpiInfo.FORMAT_NAMES);
    }

    public static String[] getWriterMIMETypes() {
        return m61447f(ImageWriterSpi.class, SpiInfo.MIME_TYPES);
    }

    /* renamed from: h */
    public static ImageWriter m61449h(RenderedImage renderedImage, String str) {
        Iterator<ImageWriter> imageWriters = getImageWriters(ImageTypeSpecifier.createFromRenderedImage(renderedImage), str);
        if (imageWriters.hasNext()) {
            return imageWriters.next();
        }
        return null;
    }

    /* renamed from: i */
    public static boolean m61450i() {
        String m61448g;
        Boolean m61452b = m61446e().m61452b();
        if (m61452b != null) {
            return m61452b.booleanValue();
        }
        try {
            SecurityManager securityManager = System.getSecurityManager();
            if (securityManager != null) {
                File cacheDirectory = getCacheDirectory();
                if (cacheDirectory == null) {
                    m61448g = m61448g();
                    if (m61448g != null) {
                        if (m61448g.isEmpty()) {
                        }
                    }
                    m61446e().m61455e(Boolean.FALSE);
                    return false;
                }
                m61448g = cacheDirectory.getPath();
                String str = File.separator;
                if (!m61448g.endsWith(str)) {
                    m61448g = m61448g + str;
                }
                securityManager.checkPermission(new FilePermission(m61448g + "*", "read, write, delete"));
            }
            m61446e().m61455e(Boolean.TRUE);
            return true;
        } catch (SecurityException unused) {
            m61446e().m61455e(Boolean.FALSE);
            return false;
        }
    }

    public static BufferedImage read(File file) throws IOException {
        if (file != null) {
            if (file.canRead()) {
                ImageInputStream createImageInputStream = createImageInputStream(file);
                if (createImageInputStream != null) {
                    BufferedImage read = read(createImageInputStream);
                    if (read == null) {
                        createImageInputStream.close();
                    }
                    return read;
                }
                throw new IIOException("Can't create an ImageInputStream!");
            }
            throw new IIOException("Can't read input file!");
        }
        throw new IllegalArgumentException("input == null!");
    }

    public static void scanForPlugins() {
        f97810a.registerApplicationClasspathSpis();
    }

    public static void setCacheDirectory(File file) {
        if (file != null && !file.isDirectory()) {
            throw new IllegalArgumentException("Not a directory!");
        }
        m61446e().m61454d(file);
        m61446e().m61455e(null);
    }

    public static void setUseCache(boolean z) {
        m61446e().m61456f(z);
    }

    public static boolean write(RenderedImage renderedImage, String str, ImageOutputStream imageOutputStream) throws IOException {
        if (renderedImage == null) {
            throw new IllegalArgumentException("im == null!");
        }
        if (str == null) {
            throw new IllegalArgumentException("formatName == null!");
        }
        if (imageOutputStream != null) {
            return m61445d(renderedImage, m61449h(renderedImage, str), imageOutputStream);
        }
        throw new IllegalArgumentException("output == null!");
    }

    public static boolean write(RenderedImage renderedImage, String str, File file) throws IOException {
        if (file != null) {
            ImageWriter m61449h = m61449h(renderedImage, str);
            if (m61449h == null) {
                return false;
            }
            file.delete();
            ImageOutputStream createImageOutputStream = createImageOutputStream(file);
            if (createImageOutputStream != null) {
                try {
                    return m61445d(renderedImage, m61449h, createImageOutputStream);
                } finally {
                    createImageOutputStream.close();
                }
            }
            throw new IIOException("Can't create an ImageOutputStream!");
        }
        throw new IllegalArgumentException("output == null!");
    }

    public static BufferedImage read(InputStream inputStream) throws IOException {
        if (inputStream != null) {
            ImageInputStream createImageInputStream = createImageInputStream(inputStream);
            if (createImageInputStream != null) {
                BufferedImage read = read(createImageInputStream);
                if (read == null) {
                    createImageInputStream.close();
                }
                return read;
            }
            throw new IIOException("Can't create an ImageInputStream!");
        }
        throw new IllegalArgumentException("input == null!");
    }

    public static BufferedImage read(URL url) throws IOException {
        if (url != null) {
            try {
                InputStream openStream = url.openStream();
                ImageInputStream createImageInputStream = createImageInputStream(openStream);
                if (createImageInputStream != null) {
                    try {
                        BufferedImage read = read(createImageInputStream);
                        if (read == null) {
                            createImageInputStream.close();
                        }
                        return read;
                    } finally {
                        openStream.close();
                    }
                }
                openStream.close();
                throw new IIOException("Can't create an ImageInputStream!");
            } catch (IOException e) {
                throw new IIOException("Can't get input stream from URL!", e);
            }
        }
        throw new IllegalArgumentException("input == null!");
    }

    public static boolean write(RenderedImage renderedImage, String str, OutputStream outputStream) throws IOException {
        if (outputStream != null) {
            ImageOutputStream createImageOutputStream = createImageOutputStream(outputStream);
            if (createImageOutputStream != null) {
                try {
                    return m61445d(renderedImage, m61449h(renderedImage, str), createImageOutputStream);
                } finally {
                    createImageOutputStream.close();
                }
            }
            throw new IIOException("Can't create an ImageOutputStream!");
        }
        throw new IllegalArgumentException("output == null!");
    }

    public static BufferedImage read(ImageInputStream imageInputStream) throws IOException {
        if (imageInputStream != null) {
            Iterator<ImageReader> imageReaders = getImageReaders(imageInputStream);
            if (!imageReaders.hasNext()) {
                return null;
            }
            ImageReader next = imageReaders.next();
            ImageReadParam defaultReadParam = next.getDefaultReadParam();
            next.setInput(imageInputStream, true, true);
            try {
                return next.read(0, defaultReadParam);
            } finally {
                next.dispose();
                imageInputStream.close();
            }
        }
        throw new IllegalArgumentException("stream == null!");
    }
}
