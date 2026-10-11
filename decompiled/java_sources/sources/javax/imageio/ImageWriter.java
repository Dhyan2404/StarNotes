package javax.imageio;

import java.awt.Dimension;
import java.awt.Rectangle;
import java.awt.image.BufferedImage;
import java.awt.image.Raster;
import java.awt.image.RenderedImage;
import java.io.IOException;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.List;
import java.util.Locale;
import java.util.MissingResourceException;
import java.util.ResourceBundle;
import javax.imageio.event.IIOWriteProgressListener;
import javax.imageio.event.IIOWriteWarningListener;
import javax.imageio.metadata.IIOMetadata;
import javax.imageio.spi.ImageWriterSpi;

/* loaded from: classes5.dex */
public abstract class ImageWriter implements ImageTranscoder {
    protected ImageWriterSpi originatingProvider;
    protected Object output = null;
    protected Locale[] availableLocales = null;
    protected Locale locale = null;
    protected List<IIOWriteWarningListener> warningListeners = null;
    protected List<Locale> warningLocales = null;
    protected List<IIOWriteProgressListener> progressListeners = null;
    private boolean abortFlag = false;

    /* renamed from: javax.imageio.ImageWriter$a */
    /* loaded from: classes5.dex */
    public class C17700a implements PrivilegedAction {
        public C17700a() {
        }

        @Override // java.security.PrivilegedAction
        public Object run() {
            return Thread.currentThread().getContextClassLoader();
        }
    }

    public ImageWriter(ImageWriterSpi imageWriterSpi) {
        this.originatingProvider = imageWriterSpi;
    }

    /* renamed from: a */
    public final void m61465a() {
        if (getOutput() != null) {
            throw new UnsupportedOperationException("Unsupported write variant!");
        }
        throw new IllegalStateException("getOutput() == null!");
    }

    public synchronized void abort() {
        this.abortFlag = true;
    }

    public synchronized boolean abortRequested() {
        return this.abortFlag;
    }

    public void addIIOWriteProgressListener(IIOWriteProgressListener iIOWriteProgressListener) {
        if (iIOWriteProgressListener == null) {
            return;
        }
        this.progressListeners = ImageReader.addToList(this.progressListeners, iIOWriteProgressListener);
    }

    public void addIIOWriteWarningListener(IIOWriteWarningListener iIOWriteWarningListener) {
        if (iIOWriteWarningListener == null) {
            return;
        }
        this.warningListeners = ImageReader.addToList(this.warningListeners, iIOWriteWarningListener);
        this.warningLocales = ImageReader.addToList(this.warningLocales, getLocale());
    }

    public boolean canInsertEmpty(int i) throws IOException {
        if (getOutput() != null) {
            return false;
        }
        throw new IllegalStateException("getOutput() == null!");
    }

    public boolean canInsertImage(int i) throws IOException {
        if (getOutput() != null) {
            return false;
        }
        throw new IllegalStateException("getOutput() == null!");
    }

    public boolean canRemoveImage(int i) throws IOException {
        if (getOutput() != null) {
            return false;
        }
        throw new IllegalStateException("getOutput() == null!");
    }

    public boolean canReplaceImageMetadata(int i) throws IOException {
        if (getOutput() != null) {
            return false;
        }
        throw new IllegalStateException("getOutput() == null!");
    }

    public boolean canReplacePixels(int i) throws IOException {
        if (getOutput() != null) {
            return false;
        }
        throw new IllegalStateException("getOutput() == null!");
    }

    public boolean canReplaceStreamMetadata() throws IOException {
        if (getOutput() != null) {
            return false;
        }
        throw new IllegalStateException("getOutput() == null!");
    }

    public boolean canWriteEmpty() throws IOException {
        if (getOutput() != null) {
            return false;
        }
        throw new IllegalStateException("getOutput() == null!");
    }

    public boolean canWriteRasters() {
        return false;
    }

    public boolean canWriteSequence() {
        return false;
    }

    public synchronized void clearAbortRequest() {
        this.abortFlag = false;
    }

    @Override // javax.imageio.ImageTranscoder
    public abstract IIOMetadata convertImageMetadata(IIOMetadata iIOMetadata, ImageTypeSpecifier imageTypeSpecifier, ImageWriteParam imageWriteParam);

    @Override // javax.imageio.ImageTranscoder
    public abstract IIOMetadata convertStreamMetadata(IIOMetadata iIOMetadata, ImageWriteParam imageWriteParam);

    public void dispose() {
    }

    public void endInsertEmpty() throws IOException {
        m61465a();
    }

    public void endReplacePixels() throws IOException {
        m61465a();
    }

    public void endWriteEmpty() throws IOException {
        if (getOutput() != null) {
            throw new IllegalStateException("No call to prepareWriteEmpty!");
        }
        throw new IllegalStateException("getOutput() == null!");
    }

    public void endWriteSequence() throws IOException {
        m61465a();
    }

    public Locale[] getAvailableLocales() {
        Locale[] localeArr = this.availableLocales;
        if (localeArr == null) {
            return null;
        }
        return (Locale[]) localeArr.clone();
    }

    public abstract IIOMetadata getDefaultImageMetadata(ImageTypeSpecifier imageTypeSpecifier, ImageWriteParam imageWriteParam);

    public abstract IIOMetadata getDefaultStreamMetadata(ImageWriteParam imageWriteParam);

    public ImageWriteParam getDefaultWriteParam() {
        return new ImageWriteParam(getLocale());
    }

    public Locale getLocale() {
        return this.locale;
    }

    public int getNumThumbnailsSupported(ImageTypeSpecifier imageTypeSpecifier, ImageWriteParam imageWriteParam, IIOMetadata iIOMetadata, IIOMetadata iIOMetadata2) {
        return 0;
    }

    public ImageWriterSpi getOriginatingProvider() {
        return this.originatingProvider;
    }

    public Object getOutput() {
        return this.output;
    }

    public Dimension[] getPreferredThumbnailSizes(ImageTypeSpecifier imageTypeSpecifier, ImageWriteParam imageWriteParam, IIOMetadata iIOMetadata, IIOMetadata iIOMetadata2) {
        return null;
    }

    public void prepareInsertEmpty(int i, ImageTypeSpecifier imageTypeSpecifier, int i2, int i3, IIOMetadata iIOMetadata, List<? extends BufferedImage> list, ImageWriteParam imageWriteParam) throws IOException {
        m61465a();
    }

    public void prepareReplacePixels(int i, Rectangle rectangle) throws IOException {
        m61465a();
    }

    public void prepareWriteEmpty(IIOMetadata iIOMetadata, ImageTypeSpecifier imageTypeSpecifier, int i, int i2, IIOMetadata iIOMetadata2, List<? extends BufferedImage> list, ImageWriteParam imageWriteParam) throws IOException {
        m61465a();
    }

    public void prepareWriteSequence(IIOMetadata iIOMetadata) throws IOException {
        m61465a();
    }

    public void processImageComplete() {
        List<IIOWriteProgressListener> list = this.progressListeners;
        if (list == null) {
            return;
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            this.progressListeners.get(i).imageComplete(this);
        }
    }

    public void processImageProgress(float f) {
        List<IIOWriteProgressListener> list = this.progressListeners;
        if (list == null) {
            return;
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            this.progressListeners.get(i).imageProgress(this, f);
        }
    }

    public void processImageStarted(int i) {
        List<IIOWriteProgressListener> list = this.progressListeners;
        if (list == null) {
            return;
        }
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.progressListeners.get(i2).imageStarted(this, i);
        }
    }

    public void processThumbnailComplete() {
        List<IIOWriteProgressListener> list = this.progressListeners;
        if (list == null) {
            return;
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            this.progressListeners.get(i).thumbnailComplete(this);
        }
    }

    public void processThumbnailProgress(float f) {
        List<IIOWriteProgressListener> list = this.progressListeners;
        if (list == null) {
            return;
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            this.progressListeners.get(i).thumbnailProgress(this, f);
        }
    }

    public void processThumbnailStarted(int i, int i2) {
        List<IIOWriteProgressListener> list = this.progressListeners;
        if (list == null) {
            return;
        }
        int size = list.size();
        for (int i3 = 0; i3 < size; i3++) {
            this.progressListeners.get(i3).thumbnailStarted(this, i, i2);
        }
    }

    public void processWarningOccurred(int i, String str) {
        List<IIOWriteWarningListener> list = this.warningListeners;
        if (list == null) {
            return;
        }
        if (str != null) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.warningListeners.get(i2).warningOccurred(this, i, str);
            }
            return;
        }
        throw new IllegalArgumentException("warning == null!");
    }

    public void processWriteAborted() {
        List<IIOWriteProgressListener> list = this.progressListeners;
        if (list == null) {
            return;
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            this.progressListeners.get(i).writeAborted(this);
        }
    }

    public void removeAllIIOWriteProgressListeners() {
        this.progressListeners = null;
    }

    public void removeAllIIOWriteWarningListeners() {
        this.warningListeners = null;
        this.warningLocales = null;
    }

    public void removeIIOWriteProgressListener(IIOWriteProgressListener iIOWriteProgressListener) {
        List<IIOWriteProgressListener> list;
        if (iIOWriteProgressListener == null || (list = this.progressListeners) == null) {
            return;
        }
        this.progressListeners = ImageReader.removeFromList(list, iIOWriteProgressListener);
    }

    public void removeIIOWriteWarningListener(IIOWriteWarningListener iIOWriteWarningListener) {
        List<IIOWriteWarningListener> list;
        int indexOf;
        if (iIOWriteWarningListener == null || (list = this.warningListeners) == null || (indexOf = list.indexOf(iIOWriteWarningListener)) == -1) {
            return;
        }
        this.warningListeners.remove(indexOf);
        this.warningLocales.remove(indexOf);
        if (this.warningListeners.size() == 0) {
            this.warningListeners = null;
            this.warningLocales = null;
        }
    }

    public void removeImage(int i) throws IOException {
        m61465a();
    }

    public void replaceImageMetadata(int i, IIOMetadata iIOMetadata) throws IOException {
        m61465a();
    }

    public void replacePixels(RenderedImage renderedImage, ImageWriteParam imageWriteParam) throws IOException {
        m61465a();
    }

    public void replaceStreamMetadata(IIOMetadata iIOMetadata) throws IOException {
        m61465a();
    }

    public void reset() {
        setOutput(null);
        setLocale(null);
        removeAllIIOWriteWarningListeners();
        removeAllIIOWriteProgressListeners();
        clearAbortRequest();
    }

    public void setLocale(Locale locale) {
        if (locale != null) {
            Locale[] availableLocales = getAvailableLocales();
            boolean z = false;
            if (availableLocales != null) {
                int i = 0;
                while (true) {
                    if (i >= availableLocales.length) {
                        break;
                    }
                    if (locale.equals(availableLocales[i])) {
                        z = true;
                        break;
                    }
                    i++;
                }
            }
            if (!z) {
                throw new IllegalArgumentException("Invalid locale!");
            }
        }
        this.locale = locale;
    }

    public void setOutput(Object obj) {
        ImageWriterSpi originatingProvider;
        if (obj != null && (originatingProvider = getOriginatingProvider()) != null) {
            Class<?>[] outputTypes = originatingProvider.getOutputTypes();
            boolean z = false;
            int i = 0;
            while (true) {
                if (i >= outputTypes.length) {
                    break;
                }
                if (outputTypes[i].isInstance(obj)) {
                    z = true;
                    break;
                }
                i++;
            }
            if (!z) {
                throw new IllegalArgumentException("Illegal output type!");
            }
        }
        this.output = obj;
    }

    public void write(IIOImage iIOImage) throws IOException {
        write(null, iIOImage, null);
    }

    public abstract void write(IIOMetadata iIOMetadata, IIOImage iIOImage, ImageWriteParam imageWriteParam) throws IOException;

    public void writeInsert(int i, IIOImage iIOImage, ImageWriteParam imageWriteParam) throws IOException {
        m61465a();
    }

    public void writeToSequence(IIOImage iIOImage, ImageWriteParam imageWriteParam) throws IOException {
        m61465a();
    }

    public void replacePixels(Raster raster, ImageWriteParam imageWriteParam) throws IOException {
        m61465a();
    }

    public void write(RenderedImage renderedImage) throws IOException {
        write(null, new IIOImage(renderedImage, (List<? extends BufferedImage>) null, (IIOMetadata) null), null);
    }

    public void processWarningOccurred(int i, String str, String str2) {
        List<IIOWriteWarningListener> list = this.warningListeners;
        if (list == null) {
            return;
        }
        if (str == null) {
            throw new IllegalArgumentException("baseName == null!");
        }
        if (str2 != null) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                IIOWriteWarningListener iIOWriteWarningListener = this.warningListeners.get(i2);
                Locale locale = this.warningLocales.get(i2);
                if (locale == null) {
                    locale = Locale.getDefault();
                }
                try {
                    try {
                        iIOWriteWarningListener.warningOccurred(this, i, ResourceBundle.getBundle(str, locale, (ClassLoader) AccessController.doPrivileged(new C17700a())).getString(str2));
                    } catch (ClassCastException e) {
                        throw new IllegalArgumentException("Resource is not a String!", e);
                    } catch (MissingResourceException e2) {
                        throw new IllegalArgumentException("Resource is missing!", e2);
                    }
                } catch (MissingResourceException e3) {
                    throw new IllegalArgumentException("Bundle not found!", e3);
                }
            }
            return;
        }
        throw new IllegalArgumentException("keyword == null!");
    }
}
