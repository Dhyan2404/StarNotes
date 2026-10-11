package javax.imageio;

import java.awt.Rectangle;
import java.awt.image.BufferedImage;
import java.awt.image.Raster;
import java.awt.image.RenderedImage;
import java.io.IOException;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.MissingResourceException;
import java.util.ResourceBundle;
import java.util.Set;
import javax.imageio.event.IIOReadProgressListener;
import javax.imageio.event.IIOReadUpdateListener;
import javax.imageio.event.IIOReadWarningListener;
import javax.imageio.metadata.IIOMetadata;
import javax.imageio.metadata.IIOMetadataFormatImpl;
import javax.imageio.spi.ImageReaderSpi;

/* loaded from: classes5.dex */
public abstract class ImageReader {
    protected ImageReaderSpi originatingProvider;
    protected Object input = null;
    protected boolean seekForwardOnly = false;
    protected boolean ignoreMetadata = false;
    protected int minIndex = 0;
    protected Locale[] availableLocales = null;
    protected Locale locale = null;
    protected List<IIOReadWarningListener> warningListeners = null;
    protected List<Locale> warningLocales = null;
    protected List<IIOReadProgressListener> progressListeners = null;
    protected List<IIOReadUpdateListener> updateListeners = null;
    private boolean abortFlag = false;

    /* renamed from: javax.imageio.ImageReader$a */
    /* loaded from: classes5.dex */
    public class C17693a implements PrivilegedAction {
        public C17693a() {
        }

        @Override // java.security.PrivilegedAction
        public Object run() {
            return Thread.currentThread().getContextClassLoader();
        }
    }

    public ImageReader(ImageReaderSpi imageReaderSpi) {
        this.originatingProvider = imageReaderSpi;
    }

    public static <T> List<T> addToList(List<T> list, T t) {
        if (list == null) {
            list = new ArrayList<>();
        }
        list.add(t);
        return list;
    }

    public static void checkReadParamBandSettings(ImageReadParam imageReadParam, int i, int i2) {
        int[] iArr;
        int[] iArr2;
        if (imageReadParam != null) {
            iArr = imageReadParam.getSourceBands();
            iArr2 = imageReadParam.getDestinationBands();
        } else {
            iArr = null;
            iArr2 = null;
        }
        if ((iArr == null ? i : iArr.length) != (iArr2 == null ? i2 : iArr2.length)) {
            throw new IllegalArgumentException("ImageReadParam num source & dest bands differ!");
        }
        if (iArr != null) {
            for (int i3 : iArr) {
                if (i3 >= i) {
                    throw new IllegalArgumentException("ImageReadParam source bands contains a value >= the number of source bands!");
                }
            }
        }
        if (iArr2 != null) {
            for (int i4 : iArr2) {
                if (i4 >= i2) {
                    throw new IllegalArgumentException("ImageReadParam dest bands contains a value >= the number of dest bands!");
                }
            }
        }
    }

    public static void computeRegions(ImageReadParam imageReadParam, int i, int i2, BufferedImage bufferedImage, Rectangle rectangle, Rectangle rectangle2) {
        int i3;
        int i4;
        if (rectangle == null) {
            throw new IllegalArgumentException("srcRegion == null!");
        }
        if (rectangle2 == null) {
            throw new IllegalArgumentException("destRegion == null!");
        }
        rectangle.setBounds(0, 0, i, i2);
        rectangle2.setBounds(0, 0, i, i2);
        if (imageReadParam != null) {
            Rectangle sourceRegion = imageReadParam.getSourceRegion();
            if (sourceRegion != null) {
                rectangle.setBounds(rectangle.intersection(sourceRegion));
            }
            i3 = imageReadParam.getSourceXSubsampling();
            i4 = imageReadParam.getSourceYSubsampling();
            int subsamplingXOffset = imageReadParam.getSubsamplingXOffset();
            int subsamplingYOffset = imageReadParam.getSubsamplingYOffset();
            rectangle.translate(subsamplingXOffset, subsamplingYOffset);
            rectangle.width -= subsamplingXOffset;
            rectangle.height -= subsamplingYOffset;
            rectangle2.setLocation(imageReadParam.getDestinationOffset());
        } else {
            i3 = 1;
            i4 = 1;
        }
        int i5 = rectangle2.f97732x;
        if (i5 < 0) {
            int i6 = (-i5) * i3;
            rectangle.f97732x += i6;
            rectangle.width -= i6;
            rectangle2.f97732x = 0;
        }
        int i7 = rectangle2.f97733y;
        if (i7 < 0) {
            int i8 = (-i7) * i4;
            rectangle.f97733y += i8;
            rectangle.height -= i8;
            rectangle2.f97733y = 0;
        }
        int i9 = ((rectangle.width + i3) - 1) / i3;
        int i10 = ((rectangle.height + i4) - 1) / i4;
        rectangle2.width = i9;
        rectangle2.height = i10;
        if (bufferedImage != null) {
            rectangle2.setBounds(rectangle2.intersection(new Rectangle(0, 0, bufferedImage.getWidth(), bufferedImage.getHeight())));
            if (rectangle2.isEmpty()) {
                throw new IllegalArgumentException("Empty destination region!");
            }
            int width = (rectangle2.f97732x + i9) - bufferedImage.getWidth();
            if (width > 0) {
                rectangle.width -= width * i3;
            }
            int height = (rectangle2.f97733y + i10) - bufferedImage.getHeight();
            if (height > 0) {
                rectangle.height -= height * i4;
            }
        }
        if (rectangle.isEmpty() || rectangle2.isEmpty()) {
            throw new IllegalArgumentException("Empty region!");
        }
    }

    public static BufferedImage getDestination(ImageReadParam imageReadParam, Iterator<ImageTypeSpecifier> it2, int i, int i2) throws IIOException {
        ImageTypeSpecifier imageTypeSpecifier;
        boolean z;
        if (it2 == null || !it2.hasNext()) {
            throw new IllegalArgumentException("imageTypes null or empty!");
        }
        if (i * i2 > 2147483647L) {
            throw new IllegalArgumentException("width*height > Integer.MAX_VALUE!");
        }
        if (imageReadParam != null) {
            BufferedImage destination = imageReadParam.getDestination();
            if (destination != null) {
                return destination;
            }
            imageTypeSpecifier = imageReadParam.getDestinationType();
        } else {
            imageTypeSpecifier = null;
        }
        if (imageTypeSpecifier == null) {
            ImageTypeSpecifier next = it2.next();
            if (!(next instanceof ImageTypeSpecifier)) {
                throw new IllegalArgumentException("Non-ImageTypeSpecifier retrieved from imageTypes!");
            }
            imageTypeSpecifier = next;
            Rectangle rectangle = new Rectangle(0, 0, 0, 0);
            Rectangle rectangle2 = new Rectangle(0, 0, 0, 0);
            computeRegions(imageReadParam, i, i2, null, rectangle, rectangle2);
            return imageTypeSpecifier.createBufferedImage(rectangle2.f97732x + rectangle2.width, rectangle2.f97733y + rectangle2.height);
        }
        while (true) {
            if (!it2.hasNext()) {
                z = false;
                break;
            }
            if (it2.next().equals(imageTypeSpecifier)) {
                z = true;
                break;
            }
        }
        if (!z) {
            throw new IIOException("Destination type from ImageReadParam does not match!");
        }
        Rectangle rectangle3 = new Rectangle(0, 0, 0, 0);
        Rectangle rectangle22 = new Rectangle(0, 0, 0, 0);
        computeRegions(imageReadParam, i, i2, null, rectangle3, rectangle22);
        return imageTypeSpecifier.createBufferedImage(rectangle22.f97732x + rectangle22.width, rectangle22.f97733y + rectangle22.height);
    }

    public static Rectangle getSourceRegion(ImageReadParam imageReadParam, int i, int i2) {
        Rectangle rectangle = new Rectangle(0, 0, i, i2);
        if (imageReadParam != null) {
            Rectangle sourceRegion = imageReadParam.getSourceRegion();
            if (sourceRegion != null) {
                rectangle = rectangle.intersection(sourceRegion);
            }
            int subsamplingXOffset = imageReadParam.getSubsamplingXOffset();
            int subsamplingYOffset = imageReadParam.getSubsamplingYOffset();
            rectangle.f97732x += subsamplingXOffset;
            rectangle.f97733y += subsamplingYOffset;
            rectangle.width -= subsamplingXOffset;
            rectangle.height -= subsamplingYOffset;
        }
        return rectangle;
    }

    public static <T> List<T> removeFromList(List<T> list, T t) {
        if (list == null) {
            return list;
        }
        list.remove(t);
        if (list.size() == 0) {
            return null;
        }
        return list;
    }

    /* renamed from: a */
    public final IIOMetadata m61460a(String str, Set<String> set, boolean z, int i) throws IOException {
        if (str == null) {
            throw new IllegalArgumentException("formatName == null!");
        }
        if (set == null) {
            throw new IllegalArgumentException("nodeNames == null!");
        }
        IIOMetadata streamMetadata = z ? getStreamMetadata() : getImageMetadata(i);
        if (streamMetadata == null) {
            return null;
        }
        if (streamMetadata.isStandardMetadataFormatSupported() && str.equals(IIOMetadataFormatImpl.standardMetadataFormatName)) {
            return streamMetadata;
        }
        String nativeMetadataFormatName = streamMetadata.getNativeMetadataFormatName();
        if (nativeMetadataFormatName != null && str.equals(nativeMetadataFormatName)) {
            return streamMetadata;
        }
        String[] extraMetadataFormatNames = streamMetadata.getExtraMetadataFormatNames();
        if (extraMetadataFormatNames == null) {
            return null;
        }
        for (String str2 : extraMetadataFormatNames) {
            if (str.equals(str2)) {
                return streamMetadata;
            }
        }
        return null;
    }

    public synchronized void abort() {
        this.abortFlag = true;
    }

    public synchronized boolean abortRequested() {
        return this.abortFlag;
    }

    public void addIIOReadProgressListener(IIOReadProgressListener iIOReadProgressListener) {
        if (iIOReadProgressListener == null) {
            return;
        }
        this.progressListeners = addToList(this.progressListeners, iIOReadProgressListener);
    }

    public void addIIOReadUpdateListener(IIOReadUpdateListener iIOReadUpdateListener) {
        if (iIOReadUpdateListener == null) {
            return;
        }
        this.updateListeners = addToList(this.updateListeners, iIOReadUpdateListener);
    }

    public void addIIOReadWarningListener(IIOReadWarningListener iIOReadWarningListener) {
        if (iIOReadWarningListener == null) {
            return;
        }
        this.warningListeners = addToList(this.warningListeners, iIOReadWarningListener);
        this.warningLocales = addToList(this.warningLocales, getLocale());
    }

    public boolean canReadRaster() {
        return false;
    }

    public synchronized void clearAbortRequest() {
        this.abortFlag = false;
    }

    public void dispose() {
    }

    public float getAspectRatio(int i) throws IOException {
        return getWidth(i) / getHeight(i);
    }

    public Locale[] getAvailableLocales() {
        Locale[] localeArr = this.availableLocales;
        if (localeArr == null) {
            return null;
        }
        return (Locale[]) localeArr.clone();
    }

    public ImageReadParam getDefaultReadParam() {
        return new ImageReadParam();
    }

    public String getFormatName() throws IOException {
        return this.originatingProvider.getFormatNames()[0];
    }

    public abstract int getHeight(int i) throws IOException;

    public abstract IIOMetadata getImageMetadata(int i) throws IOException;

    public IIOMetadata getImageMetadata(int i, String str, Set<String> set) throws IOException {
        return m61460a(str, set, false, i);
    }

    public abstract Iterator<ImageTypeSpecifier> getImageTypes(int i) throws IOException;

    public Object getInput() {
        return this.input;
    }

    public Locale getLocale() {
        return this.locale;
    }

    public int getMinIndex() {
        return this.minIndex;
    }

    public abstract int getNumImages(boolean z) throws IOException;

    public int getNumThumbnails(int i) throws IOException {
        return 0;
    }

    public ImageReaderSpi getOriginatingProvider() {
        return this.originatingProvider;
    }

    public ImageTypeSpecifier getRawImageType(int i) throws IOException {
        return getImageTypes(i).next();
    }

    public abstract IIOMetadata getStreamMetadata() throws IOException;

    public IIOMetadata getStreamMetadata(String str, Set<String> set) throws IOException {
        return m61460a(str, set, true, 0);
    }

    public int getThumbnailHeight(int i, int i2) throws IOException {
        return readThumbnail(i, i2).getHeight();
    }

    public int getThumbnailWidth(int i, int i2) throws IOException {
        return readThumbnail(i, i2).getWidth();
    }

    public int getTileGridXOffset(int i) throws IOException {
        return 0;
    }

    public int getTileGridYOffset(int i) throws IOException {
        return 0;
    }

    public int getTileHeight(int i) throws IOException {
        return getHeight(i);
    }

    public int getTileWidth(int i) throws IOException {
        return getWidth(i);
    }

    public abstract int getWidth(int i) throws IOException;

    public boolean hasThumbnails(int i) throws IOException {
        return getNumThumbnails(i) > 0;
    }

    public boolean isIgnoringMetadata() {
        return this.ignoreMetadata;
    }

    public boolean isImageTiled(int i) throws IOException {
        return false;
    }

    public boolean isRandomAccessEasy(int i) throws IOException {
        return false;
    }

    public boolean isSeekForwardOnly() {
        return this.seekForwardOnly;
    }

    public void processImageComplete() {
        List<IIOReadProgressListener> list = this.progressListeners;
        if (list == null) {
            return;
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            this.progressListeners.get(i).imageComplete(this);
        }
    }

    public void processImageProgress(float f) {
        List<IIOReadProgressListener> list = this.progressListeners;
        if (list == null) {
            return;
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            this.progressListeners.get(i).imageProgress(this, f);
        }
    }

    public void processImageStarted(int i) {
        List<IIOReadProgressListener> list = this.progressListeners;
        if (list == null) {
            return;
        }
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.progressListeners.get(i2).imageStarted(this, i);
        }
    }

    public void processImageUpdate(BufferedImage bufferedImage, int i, int i2, int i3, int i4, int i5, int i6, int[] iArr) {
        List<IIOReadUpdateListener> list = this.updateListeners;
        if (list == null) {
            return;
        }
        int size = list.size();
        for (int i7 = 0; i7 < size; i7++) {
            this.updateListeners.get(i7).imageUpdate(this, bufferedImage, i, i2, i3, i4, i5, i6, iArr);
        }
    }

    public void processPassComplete(BufferedImage bufferedImage) {
        List<IIOReadUpdateListener> list = this.updateListeners;
        if (list == null) {
            return;
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            this.updateListeners.get(i).passComplete(this, bufferedImage);
        }
    }

    public void processPassStarted(BufferedImage bufferedImage, int i, int i2, int i3, int i4, int i5, int i6, int i7, int[] iArr) {
        List<IIOReadUpdateListener> list = this.updateListeners;
        if (list == null) {
            return;
        }
        int size = list.size();
        for (int i8 = 0; i8 < size; i8++) {
            this.updateListeners.get(i8).passStarted(this, bufferedImage, i, i2, i3, i4, i5, i6, i7, iArr);
        }
    }

    public void processReadAborted() {
        List<IIOReadProgressListener> list = this.progressListeners;
        if (list == null) {
            return;
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            this.progressListeners.get(i).readAborted(this);
        }
    }

    public void processSequenceComplete() {
        List<IIOReadProgressListener> list = this.progressListeners;
        if (list == null) {
            return;
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            this.progressListeners.get(i).sequenceComplete(this);
        }
    }

    public void processSequenceStarted(int i) {
        List<IIOReadProgressListener> list = this.progressListeners;
        if (list == null) {
            return;
        }
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.progressListeners.get(i2).sequenceStarted(this, i);
        }
    }

    public void processThumbnailComplete() {
        List<IIOReadProgressListener> list = this.progressListeners;
        if (list == null) {
            return;
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            this.progressListeners.get(i).thumbnailComplete(this);
        }
    }

    public void processThumbnailPassComplete(BufferedImage bufferedImage) {
        List<IIOReadUpdateListener> list = this.updateListeners;
        if (list == null) {
            return;
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            this.updateListeners.get(i).thumbnailPassComplete(this, bufferedImage);
        }
    }

    public void processThumbnailPassStarted(BufferedImage bufferedImage, int i, int i2, int i3, int i4, int i5, int i6, int i7, int[] iArr) {
        List<IIOReadUpdateListener> list = this.updateListeners;
        if (list == null) {
            return;
        }
        int size = list.size();
        for (int i8 = 0; i8 < size; i8++) {
            this.updateListeners.get(i8).thumbnailPassStarted(this, bufferedImage, i, i2, i3, i4, i5, i6, i7, iArr);
        }
    }

    public void processThumbnailProgress(float f) {
        List<IIOReadProgressListener> list = this.progressListeners;
        if (list == null) {
            return;
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            this.progressListeners.get(i).thumbnailProgress(this, f);
        }
    }

    public void processThumbnailStarted(int i, int i2) {
        List<IIOReadProgressListener> list = this.progressListeners;
        if (list == null) {
            return;
        }
        int size = list.size();
        for (int i3 = 0; i3 < size; i3++) {
            this.progressListeners.get(i3).thumbnailStarted(this, i, i2);
        }
    }

    public void processThumbnailUpdate(BufferedImage bufferedImage, int i, int i2, int i3, int i4, int i5, int i6, int[] iArr) {
        List<IIOReadUpdateListener> list = this.updateListeners;
        if (list == null) {
            return;
        }
        int size = list.size();
        for (int i7 = 0; i7 < size; i7++) {
            this.updateListeners.get(i7).thumbnailUpdate(this, bufferedImage, i, i2, i3, i4, i5, i6, iArr);
        }
    }

    public void processWarningOccurred(String str) {
        List<IIOReadWarningListener> list = this.warningListeners;
        if (list == null) {
            return;
        }
        if (str != null) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                this.warningListeners.get(i).warningOccurred(this, str);
            }
            return;
        }
        throw new IllegalArgumentException("warning == null!");
    }

    public BufferedImage read(int i) throws IOException {
        return read(i, null);
    }

    public abstract BufferedImage read(int i, ImageReadParam imageReadParam) throws IOException;

    public IIOImage readAll(int i, ImageReadParam imageReadParam) throws IOException {
        ArrayList arrayList;
        if (i >= getMinIndex()) {
            BufferedImage read = read(i, imageReadParam);
            int numThumbnails = getNumThumbnails(i);
            if (numThumbnails > 0) {
                arrayList = new ArrayList();
                for (int i2 = 0; i2 < numThumbnails; i2++) {
                    arrayList.add(readThumbnail(i, i2));
                }
            } else {
                arrayList = null;
            }
            return new IIOImage(read, arrayList, getImageMetadata(i));
        }
        throw new IndexOutOfBoundsException("imageIndex < getMinIndex()!");
    }

    public RenderedImage readAsRenderedImage(int i, ImageReadParam imageReadParam) throws IOException {
        return read(i, imageReadParam);
    }

    public Raster readRaster(int i, ImageReadParam imageReadParam) throws IOException {
        throw new UnsupportedOperationException("readRaster not supported!");
    }

    public BufferedImage readThumbnail(int i, int i2) throws IOException {
        throw new UnsupportedOperationException("Thumbnails not supported!");
    }

    public BufferedImage readTile(int i, int i2, int i3) throws IOException {
        if (i2 == 0 && i3 == 0) {
            return read(i);
        }
        throw new IllegalArgumentException("Invalid tile indices");
    }

    public Raster readTileRaster(int i, int i2, int i3) throws IOException {
        if (!canReadRaster()) {
            throw new UnsupportedOperationException("readTileRaster not supported!");
        }
        if (i2 == 0 && i3 == 0) {
            return readRaster(i, null);
        }
        throw new IllegalArgumentException("Invalid tile indices");
    }

    public boolean readerSupportsThumbnails() {
        return false;
    }

    public void removeAllIIOReadProgressListeners() {
        this.progressListeners = null;
    }

    public void removeAllIIOReadUpdateListeners() {
        this.updateListeners = null;
    }

    public void removeAllIIOReadWarningListeners() {
        this.warningListeners = null;
        this.warningLocales = null;
    }

    public void removeIIOReadProgressListener(IIOReadProgressListener iIOReadProgressListener) {
        List<IIOReadProgressListener> list;
        if (iIOReadProgressListener == null || (list = this.progressListeners) == null) {
            return;
        }
        this.progressListeners = removeFromList(list, iIOReadProgressListener);
    }

    public void removeIIOReadUpdateListener(IIOReadUpdateListener iIOReadUpdateListener) {
        List<IIOReadUpdateListener> list;
        if (iIOReadUpdateListener == null || (list = this.updateListeners) == null) {
            return;
        }
        this.updateListeners = removeFromList(list, iIOReadUpdateListener);
    }

    public void removeIIOReadWarningListener(IIOReadWarningListener iIOReadWarningListener) {
        List<IIOReadWarningListener> list;
        int indexOf;
        if (iIOReadWarningListener == null || (list = this.warningListeners) == null || (indexOf = list.indexOf(iIOReadWarningListener)) == -1) {
            return;
        }
        this.warningListeners.remove(indexOf);
        this.warningLocales.remove(indexOf);
        if (this.warningListeners.size() == 0) {
            this.warningListeners = null;
            this.warningLocales = null;
        }
    }

    public void reset() {
        setInput(null, false, false);
        setLocale(null);
        removeAllIIOReadUpdateListeners();
        removeAllIIOReadProgressListeners();
        removeAllIIOReadWarningListeners();
        clearAbortRequest();
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x001e, code lost:
    
        if ((r6 instanceof javax.imageio.stream.ImageInputStream) != false) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setInput(java.lang.Object r6, boolean r7, boolean r8) {
        /*
            r5 = this;
            if (r6 == 0) goto L33
            javax.imageio.spi.ImageReaderSpi r0 = r5.originatingProvider
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L1c
            java.lang.Class[] r0 = r0.getInputTypes()
            r3 = r2
        Ld:
            int r4 = r0.length
            if (r3 >= r4) goto L21
            r4 = r0[r3]
            boolean r4 = r4.isInstance(r6)
            if (r4 == 0) goto L19
            goto L22
        L19:
            int r3 = r3 + 1
            goto Ld
        L1c:
            boolean r0 = r6 instanceof javax.imageio.stream.ImageInputStream
            if (r0 == 0) goto L21
            goto L22
        L21:
            r1 = r2
        L22:
            if (r1 == 0) goto L2b
            r5.seekForwardOnly = r7
            r5.ignoreMetadata = r8
            r5.minIndex = r2
            goto L33
        L2b:
            java.lang.IllegalArgumentException r5 = new java.lang.IllegalArgumentException
            java.lang.String r6 = "Incorrect input type!"
            r5.<init>(r6)
            throw r5
        L33:
            r5.input = r6
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: javax.imageio.ImageReader.setInput(java.lang.Object, boolean, boolean):void");
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

    public void processWarningOccurred(String str, String str2) {
        List<IIOReadWarningListener> list = this.warningListeners;
        if (list == null) {
            return;
        }
        if (str == null) {
            throw new IllegalArgumentException("baseName == null!");
        }
        if (str2 != null) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                IIOReadWarningListener iIOReadWarningListener = this.warningListeners.get(i);
                Locale locale = this.warningLocales.get(i);
                if (locale == null) {
                    locale = Locale.getDefault();
                }
                try {
                    try {
                        iIOReadWarningListener.warningOccurred(this, ResourceBundle.getBundle(str, locale, (ClassLoader) AccessController.doPrivileged(new C17693a())).getString(str2));
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

    public Iterator<IIOImage> readAll(Iterator<? extends ImageReadParam> it2) throws IOException {
        ImageReadParam imageReadParam;
        ImageReadParam next;
        ArrayList arrayList = new ArrayList();
        int minIndex = getMinIndex();
        processSequenceStarted(minIndex);
        while (true) {
            ArrayList arrayList2 = null;
            if (it2 == null || !it2.hasNext() || (next = it2.next()) == null) {
                imageReadParam = null;
            } else {
                if (!(next instanceof ImageReadParam)) {
                    break;
                }
                imageReadParam = next;
            }
            try {
                BufferedImage read = read(minIndex, imageReadParam);
                int numThumbnails = getNumThumbnails(minIndex);
                if (numThumbnails > 0) {
                    arrayList2 = new ArrayList();
                    for (int i = 0; i < numThumbnails; i++) {
                        arrayList2.add(readThumbnail(minIndex, i));
                    }
                }
                arrayList.add(new IIOImage(read, arrayList2, getImageMetadata(minIndex)));
                minIndex++;
            } catch (IndexOutOfBoundsException unused) {
                processSequenceComplete();
                return arrayList.iterator();
            }
        }
        throw new IllegalArgumentException("Non-ImageReadParam supplied as part of params!");
    }

    public void setInput(Object obj, boolean z) {
        setInput(obj, z, false);
    }

    public void setInput(Object obj) {
        setInput(obj, false, false);
    }
}
