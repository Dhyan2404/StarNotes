package org.apache.poi.hemf.usermodel;

import java.awt.Graphics2D;
import java.awt.Shape;
import java.awt.geom.AffineTransform;
import java.awt.geom.Dimension2D;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.function.ToDoubleFunction;
import java.util.stream.Stream;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.hemf.draw.HemfGraphics;
import org.apache.poi.hemf.record.emf.HemfComment;
import org.apache.poi.hemf.record.emf.HemfHeader;
import org.apache.poi.hemf.record.emf.HemfRecord;
import org.apache.poi.hemf.record.emf.HemfRecordIterator;
import org.apache.poi.hemf.usermodel.HemfPicture;
import org.apache.poi.hwmf.usermodel.HwmfCharsetAware;
import org.apache.poi.hwmf.usermodel.HwmfEmbedded;
import org.apache.poi.sl.draw.Drawable;
import org.apache.poi.util.Dimension2DDouble;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndianInputStream;
import org.apache.poi.util.LocaleUtil;
import org.apache.poi.util.RecordFormatException;
import org.apache.poi.util.Units;

@Internal
/* loaded from: classes12.dex */
public class HemfPicture implements Iterable<HemfRecord>, GenericRecord {
    private Charset defaultCharset;
    private boolean isParsed;
    private final List<HemfRecord> records;
    private final LittleEndianInputStream stream;

    /* loaded from: classes12.dex */
    public static class ReluctantRectangle2D extends Rectangle2D.Double {
        private boolean offsetSet;
        private boolean rangeSet;

        public ReluctantRectangle2D() {
            super(-1.0d, -1.0d, 0.0d, 0.0d);
            this.offsetSet = false;
            this.rangeSet = false;
        }

        @Override // java.awt.geom.Rectangle2D.Double, java.awt.geom.RectangularShape
        public boolean isEmpty() {
            return isEmpty(this);
        }

        @Override // java.awt.geom.Rectangle2D.Double, java.awt.geom.Rectangle2D
        public void setRect(double d, double d2, double d3, double d4) {
            boolean z = this.offsetSet;
            if (z && this.rangeSet) {
                return;
            }
            double d5 = z ? this.f97791x : d;
            double d6 = z ? this.f97792y : d2;
            boolean z2 = this.rangeSet;
            super.setRect(d5, d6, z2 ? this.width : d3, z2 ? this.height : d4);
            this.offsetSet |= (d == -1.0d && d2 == -1.0d) ? false : true;
            this.rangeSet |= (d3 == 0.0d && d4 == 0.0d) ? false : true;
        }

        public static boolean isEmpty(Rectangle2D rectangle2D) {
            double rint = Math.rint(rectangle2D.getWidth());
            double rint2 = Math.rint(rectangle2D.getHeight());
            return rint <= 0.0d || rint2 <= 0.0d || (rectangle2D.getX() == -1.0d && rectangle2D.getY() == -1.0d) || (rint == 1.0d && rint2 == 1.0d);
        }
    }

    public HemfPicture(InputStream inputStream) {
        this(new LittleEndianInputStream(inputStream));
    }

    private static double diff(Rectangle2D rectangle2D, Rectangle2D rectangle2D2) {
        double d = 0.0d;
        int i = 0;
        while (i < 4) {
            Function function = i < 2 ? new Function() { // from class: com.sunia.HTREnginev2.nlh
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return Double.valueOf(((Rectangle2D) obj).getMinX());
                }
            } : new Function() { // from class: com.sunia.HTREnginev2.olh
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return Double.valueOf(((Rectangle2D) obj).getMaxX());
                }
            };
            Function function2 = i % 2 == 0 ? new Function() { // from class: com.sunia.HTREnginev2.plh
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return Double.valueOf(((Rectangle2D) obj).getMinY());
                }
            } : new Function() { // from class: com.sunia.HTREnginev2.qlh
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return Double.valueOf(((Rectangle2D) obj).getMaxY());
                }
            };
            d += Point2D.distanceSq(((Double) function.apply(rectangle2D)).doubleValue(), ((Double) function2.apply(rectangle2D)).doubleValue(), ((Double) function.apply(rectangle2D2)).doubleValue(), ((Double) function2.apply(rectangle2D2)).doubleValue());
            i++;
        }
        return d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$draw$1(Rectangle2D rectangle2D) {
        return !rectangle2D.isEmpty();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ double lambda$draw$2(Rectangle2D rectangle2D, Rectangle2D rectangle2D2) {
        return diff(rectangle2D2, rectangle2D);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Rectangle2D lambda$draw$3(Rectangle2D rectangle2D, Rectangle2D rectangle2D2) {
        return transform(rectangle2D2, rectangle2D);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Iterator lambda$getEmbeddings$4() {
        return new HemfEmbeddedIterator(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getRecords$0(HemfHeader[] hemfHeaderArr, HemfRecord hemfRecord) {
        if (hemfRecord instanceof HemfHeader) {
            hemfHeaderArr[0] = (HemfHeader) hemfRecord;
        }
        hemfRecord.setHeader(hemfHeaderArr[0]);
        if (hemfRecord instanceof HwmfCharsetAware) {
            ((HwmfCharsetAware) hemfRecord).setCharsetProvider(new Supplier() { // from class: com.sunia.HTREnginev2.vlh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HemfPicture.this.getDefaultCharset();
                }
            });
        }
        this.records.add(hemfRecord);
    }

    private static Rectangle2D transform(Rectangle2D rectangle2D, Rectangle2D rectangle2D2) {
        double width = rectangle2D.getWidth() / rectangle2D.getHeight();
        double width2 = rectangle2D2.getWidth() / rectangle2D2.getHeight();
        double d = width - width2;
        if (d > 0.2d) {
            rectangle2D.setRect(rectangle2D.getX(), rectangle2D.getY(), rectangle2D.getWidth(), rectangle2D.getWidth() / width2);
        } else if (d < -0.2d) {
            rectangle2D.setRect(rectangle2D.getX(), rectangle2D.getY(), rectangle2D.getHeight() * width2, rectangle2D.getHeight());
        }
        return rectangle2D;
    }

    public void draw(Graphics2D graphics2D, Rectangle2D rectangle2D) {
        Shape clip = graphics2D.getClip();
        AffineTransform transform = graphics2D.getTransform();
        try {
            Rectangle2D boundsRectangle = getHeader().getBoundsRectangle();
            final ReluctantRectangle2D reluctantRectangle2D = new ReluctantRectangle2D();
            ReluctantRectangle2D reluctantRectangle2D2 = new ReluctantRectangle2D();
            final Rectangle2D.Double r5 = new Rectangle2D.Double();
            getInnerBounds(reluctantRectangle2D, reluctantRectangle2D2, r5);
            Boolean bool = (Boolean) graphics2D.getRenderingHint(Drawable.EMF_FORCE_HEADER_BOUNDS);
            if (bool == null) {
                bool = Boolean.FALSE;
            }
            if (!bool.booleanValue()) {
                if (!r5.isEmpty()) {
                    Optional map = Stream.of((Object[]) new Rectangle2D[]{boundsRectangle, reluctantRectangle2D, reluctantRectangle2D2}).filter(new Predicate() { // from class: com.sunia.HTREnginev2.rlh
                        @Override // java.util.function.Predicate
                        public final boolean test(Object obj) {
                            boolean lambda$draw$1;
                            lambda$draw$1 = HemfPicture.lambda$draw$1((Rectangle2D) obj);
                            return lambda$draw$1;
                        }
                    }).min(Comparator.comparingDouble(new ToDoubleFunction() { // from class: com.sunia.HTREnginev2.slh
                        @Override // java.util.function.ToDoubleFunction
                        public final double applyAsDouble(Object obj) {
                            double lambda$draw$2;
                            lambda$draw$2 = HemfPicture.lambda$draw$2(Rectangle2D.this, (Rectangle2D) obj);
                            return lambda$draw$2;
                        }
                    })).map(new Function() { // from class: com.sunia.HTREnginev2.tlh
                        @Override // java.util.function.Function
                        public final Object apply(Object obj) {
                            Rectangle2D lambda$draw$3;
                            lambda$draw$3 = HemfPicture.lambda$draw$3(Rectangle2D.this, (Rectangle2D) obj);
                            return lambda$draw$3;
                        }
                    });
                    if (!map.isPresent()) {
                        throw new IllegalStateException("Failed to create Rectangle2D for drawing");
                    }
                    boundsRectangle = (Rectangle2D) map.get();
                } else if (!reluctantRectangle2D2.isEmpty()) {
                    boundsRectangle = reluctantRectangle2D2;
                } else if (!reluctantRectangle2D.isEmpty()) {
                    boundsRectangle = reluctantRectangle2D;
                }
            }
            graphics2D.translate(rectangle2D.getCenterX(), rectangle2D.getCenterY());
            graphics2D.scale(rectangle2D.getWidth() / boundsRectangle.getWidth(), rectangle2D.getHeight() / boundsRectangle.getHeight());
            graphics2D.translate(-boundsRectangle.getCenterX(), -boundsRectangle.getCenterY());
            HemfGraphics hemfGraphics = new HemfGraphics(graphics2D, boundsRectangle);
            Iterator<HemfRecord> it2 = getRecords().iterator();
            while (it2.hasNext()) {
                try {
                    hemfGraphics.draw(it2.next());
                } catch (RuntimeException unused) {
                }
            }
        } finally {
            graphics2D.setTransform(transform);
            graphics2D.setClip(clip);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Iterable
    public void forEach(Consumer<? super HemfRecord> consumer) {
        getRecords().forEach(consumer);
    }

    public Rectangle2D getBounds() {
        Rectangle2D frameRectangle = getHeader().getFrameRectangle();
        if (ReluctantRectangle2D.isEmpty(frameRectangle)) {
            ReluctantRectangle2D reluctantRectangle2D = new ReluctantRectangle2D();
            getInnerBounds(reluctantRectangle2D, new Rectangle2D.Double(), new Rectangle2D.Double());
            if (!reluctantRectangle2D.isEmpty()) {
                return reluctantRectangle2D;
            }
        }
        return frameRectangle;
    }

    public Rectangle2D getBoundsInPoints() {
        return Units.pixelToPoints(getHeader().getBoundsRectangle());
    }

    public Charset getDefaultCharset() {
        return this.defaultCharset;
    }

    public Iterable<HwmfEmbedded> getEmbeddings() {
        return new Iterable() { // from class: com.sunia.HTREnginev2.ulh
            @Override // java.lang.Iterable
            public final Iterator iterator() {
                Iterator lambda$getEmbeddings$4;
                lambda$getEmbeddings$4 = HemfPicture.this.lambda$getEmbeddings$4();
                return lambda$getEmbeddings$4;
            }
        };
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public List<? extends GenericRecord> getGenericChildren() {
        return getRecords();
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return null;
    }

    public HemfHeader getHeader() {
        List<HemfRecord> records = getRecords();
        if (records.isEmpty()) {
            throw new RecordFormatException("No records could be parsed - your .emf file is invalid");
        }
        return (HemfHeader) records.get(0);
    }

    public void getInnerBounds(final Rectangle2D rectangle2D, final Rectangle2D rectangle2D2, final Rectangle2D rectangle2D3) {
        HemfRecord.RenderBounds renderBounds = new HemfRecord.RenderBounds() { // from class: org.apache.poi.hemf.usermodel.HemfPicture.1
            private HemfGraphics.EmfRenderState state = HemfGraphics.EmfRenderState.INITIAL;

            @Override // org.apache.poi.hemf.record.emf.HemfRecord.RenderBounds
            public Rectangle2D getBounds() {
                return rectangle2D3;
            }

            @Override // org.apache.poi.hemf.record.emf.HemfRecord.RenderBounds
            public HemfGraphics.EmfRenderState getState() {
                return this.state;
            }

            @Override // org.apache.poi.hemf.record.emf.HemfRecord.RenderBounds
            public Rectangle2D getViewport() {
                return rectangle2D2;
            }

            @Override // org.apache.poi.hemf.record.emf.HemfRecord.RenderBounds
            public Rectangle2D getWindow() {
                return rectangle2D;
            }

            @Override // org.apache.poi.hemf.record.emf.HemfRecord.RenderBounds
            public void setState(HemfGraphics.EmfRenderState emfRenderState) {
                this.state = emfRenderState;
            }
        };
        for (HemfRecord hemfRecord : getRecords()) {
            if (renderBounds.getState() != HemfGraphics.EmfRenderState.EMF_ONLY || !(hemfRecord instanceof HemfComment.EmfComment)) {
                if (renderBounds.getState() != HemfGraphics.EmfRenderState.EMFPLUS_ONLY || (hemfRecord instanceof HemfComment.EmfComment)) {
                    try {
                        hemfRecord.calcBounds(renderBounds);
                    } catch (RuntimeException unused) {
                    }
                }
            }
        }
    }

    public List<HemfRecord> getRecords() {
        if (!this.isParsed) {
            this.isParsed = true;
            final HemfHeader[] hemfHeaderArr = new HemfHeader[1];
            new HemfRecordIterator(this.stream).forEachRemaining(new Consumer() { // from class: com.sunia.HTREnginev2.mlh
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    HemfPicture.this.lambda$getRecords$0(hemfHeaderArr, (HemfRecord) obj);
                }
            });
        }
        return this.records;
    }

    public Dimension2D getSize() {
        Rectangle2D boundsInPoints = getBoundsInPoints();
        return new Dimension2DDouble(Math.abs(boundsInPoints.getWidth()), Math.abs(boundsInPoints.getHeight()));
    }

    @Override // java.lang.Iterable
    public Iterator<HemfRecord> iterator() {
        return getRecords().iterator();
    }

    public void setDefaultCharset(Charset charset) {
        this.defaultCharset = charset;
    }

    @Override // java.lang.Iterable
    public Spliterator<HemfRecord> spliterator() {
        return getRecords().spliterator();
    }

    public HemfPicture(LittleEndianInputStream littleEndianInputStream) {
        this.records = new ArrayList();
        this.isParsed = false;
        this.defaultCharset = LocaleUtil.CHARSET_1252;
        this.stream = littleEndianInputStream;
    }
}
