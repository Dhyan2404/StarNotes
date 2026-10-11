package org.apache.poi.hwmf.usermodel;

import java.awt.Graphics2D;
import java.awt.geom.AffineTransform;
import java.awt.geom.Dimension2D;
import java.awt.geom.Rectangle2D;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Spliterator;
import java.util.function.Supplier;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.hwmf.draw.HwmfDrawProperties;
import org.apache.poi.hwmf.draw.HwmfGraphics;
import org.apache.poi.hwmf.draw.HwmfGraphicsState;
import org.apache.poi.hwmf.record.HwmfHeader;
import org.apache.poi.hwmf.record.HwmfPlaceableHeader;
import org.apache.poi.hwmf.record.HwmfRecord;
import org.apache.poi.hwmf.record.HwmfRecordType;
import org.apache.poi.hwmf.record.HwmfWindowing;
import org.apache.poi.hwmf.usermodel.HwmfPicture;
import org.apache.poi.util.Dimension2DDouble;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndianInputStream;
import org.apache.poi.util.LocaleUtil;
import org.apache.poi.util.RecordFormatException;
import org.apache.poi.util.Units;

/* loaded from: classes12.dex */
public class HwmfPicture implements Iterable<HwmfRecord>, GenericRecord {
    public static final int DEFAULT_MAX_RECORD_LENGTH = 100000000;
    private static final Logger LOG = LogManager.getLogger((Class<?>) HwmfPicture.class);
    public static int MAX_RECORD_LENGTH = 100000000;
    final HwmfHeader header;
    final HwmfPlaceableHeader placeableHeader;
    final List<HwmfRecord> records = new ArrayList();
    private Charset defaultCharset = LocaleUtil.CHARSET_1252;

    public HwmfPicture(InputStream inputStream) throws IOException {
        LittleEndianInputStream littleEndianInputStream = new LittleEndianInputStream(inputStream);
        try {
            this.placeableHeader = HwmfPlaceableHeader.readHeader(littleEndianInputStream);
            this.header = new HwmfHeader(littleEndianInputStream);
            while (true) {
                try {
                    long readUInt = littleEndianInputStream.readUInt() * 2;
                    if (readUInt > 2147483647L) {
                        throw new RecordFormatException("record size can't be > 2147483647");
                    }
                    if (readUInt < 0) {
                        throw new RecordFormatException("record size can't be < 0");
                    }
                    long j = (int) readUInt;
                    short readShort = littleEndianInputStream.readShort();
                    HwmfRecordType byId = HwmfRecordType.getById(readShort);
                    if (byId == null) {
                        throw new IOException("unexpected record type: " + ((int) readShort));
                    }
                    if (byId == HwmfRecordType.eof) {
                        break;
                    }
                    Supplier<? extends HwmfRecord> supplier = byId.constructor;
                    if (supplier == null) {
                        throw new IOException("unsupported record type: " + ((int) readShort));
                    }
                    HwmfRecord hwmfRecord = supplier.get();
                    this.records.add(hwmfRecord);
                    int init = hwmfRecord.init(littleEndianInputStream, j, readShort) + 6;
                    int i = (int) (j - init);
                    if (i < 0) {
                        throw new RecordFormatException("read too many bytes. record size: " + j + "; comsumed size: " + init);
                    }
                    if (i > 0) {
                        long j2 = i;
                        long skipFully = IOUtils.skipFully(littleEndianInputStream, j2);
                        if (skipFully != j2) {
                            throw new RecordFormatException("Tried to skip " + i + " but skipped: " + skipFully);
                        }
                    }
                    if (hwmfRecord instanceof HwmfCharsetAware) {
                        ((HwmfCharsetAware) hwmfRecord).setCharsetProvider(new Supplier() { // from class: com.sunia.HTREnginev2.x6i
                            @Override // java.util.function.Supplier
                            public final Object get() {
                                return HwmfPicture.this.getDefaultCharset();
                            }
                        });
                    }
                } catch (Exception unused) {
                    LOG.atError().log("unexpected eof - wmf file was truncated");
                }
            }
        } finally {
        }
        littleEndianInputStream.close();
    }

    public static int getMaxRecordLength() {
        return MAX_RECORD_LENGTH;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Iterator lambda$getEmbeddings$0() {
        return new HwmfEmbeddedIterator(this);
    }

    public static void setMaxRecordLength(int i) {
        MAX_RECORD_LENGTH = i;
    }

    public void draw(Graphics2D graphics2D) {
        Dimension2D size = getSize();
        draw(graphics2D, new Rectangle2D.Double(0.0d, 0.0d, Units.pointsToPixel(size.getWidth()), Units.pointsToPixel(size.getHeight())));
    }

    public Rectangle2D getBounds() {
        HwmfPlaceableHeader hwmfPlaceableHeader = this.placeableHeader;
        if (hwmfPlaceableHeader != null) {
            return hwmfPlaceableHeader.getBounds();
        }
        Rectangle2D innnerBounds = getInnnerBounds();
        if (innnerBounds != null) {
            return innnerBounds;
        }
        throw new IllegalStateException("invalid wmf file - window records are incomplete.");
    }

    public Rectangle2D getBoundsInPoints() {
        double unitsPerInch = 72.0d / (this.placeableHeader == null ? 1440.0d : r0.getUnitsPerInch());
        return AffineTransform.getScaleInstance(unitsPerInch, unitsPerInch).createTransformedShape(getBounds()).getBounds2D();
    }

    public Charset getDefaultCharset() {
        return this.defaultCharset;
    }

    public Iterable<HwmfEmbedded> getEmbeddings() {
        return new Iterable() { // from class: com.sunia.HTREnginev2.w6i
            @Override // java.lang.Iterable
            public final Iterator iterator() {
                Iterator lambda$getEmbeddings$0;
                lambda$getEmbeddings$0 = HwmfPicture.this.lambda$getEmbeddings$0();
                return lambda$getEmbeddings$0;
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

    public HwmfHeader getHeader() {
        return this.header;
    }

    public Rectangle2D getInnnerBounds() {
        HwmfWindowing.WmfSetWindowOrg wmfSetWindowOrg = null;
        HwmfWindowing.WmfSetWindowExt wmfSetWindowExt = null;
        for (HwmfRecord hwmfRecord : getRecords()) {
            if (hwmfRecord instanceof HwmfWindowing.WmfSetWindowOrg) {
                wmfSetWindowOrg = (HwmfWindowing.WmfSetWindowOrg) hwmfRecord;
            } else if (hwmfRecord instanceof HwmfWindowing.WmfSetWindowExt) {
                wmfSetWindowExt = (HwmfWindowing.WmfSetWindowExt) hwmfRecord;
            }
            if (wmfSetWindowOrg != null && wmfSetWindowExt != null) {
                return new Rectangle2D.Double(wmfSetWindowOrg.getX(), wmfSetWindowOrg.getY(), wmfSetWindowExt.getSize().getWidth(), wmfSetWindowExt.getSize().getHeight());
            }
        }
        return null;
    }

    public HwmfPlaceableHeader getPlaceableHeader() {
        return this.placeableHeader;
    }

    public List<HwmfRecord> getRecords() {
        return Collections.unmodifiableList(this.records);
    }

    public Dimension2D getSize() {
        Rectangle2D boundsInPoints = getBoundsInPoints();
        return new Dimension2DDouble(boundsInPoints.getWidth(), boundsInPoints.getHeight());
    }

    @Override // java.lang.Iterable
    public Iterator<HwmfRecord> iterator() {
        return getRecords().iterator();
    }

    public void setDefaultCharset(Charset charset) {
        this.defaultCharset = charset;
    }

    @Override // java.lang.Iterable
    public Spliterator<HwmfRecord> spliterator() {
        return getRecords().spliterator();
    }

    public void draw(Graphics2D graphics2D, Rectangle2D rectangle2D) {
        HwmfGraphicsState hwmfGraphicsState = new HwmfGraphicsState();
        hwmfGraphicsState.backup(graphics2D);
        try {
            Rectangle2D bounds = getBounds();
            Rectangle2D innnerBounds = getInnnerBounds();
            if (innnerBounds != null) {
                bounds = innnerBounds;
            }
            graphics2D.translate(rectangle2D.getCenterX(), rectangle2D.getCenterY());
            graphics2D.scale(rectangle2D.getWidth() / bounds.getWidth(), rectangle2D.getHeight() / bounds.getHeight());
            graphics2D.translate(-bounds.getCenterX(), -bounds.getCenterY());
            HwmfGraphics hwmfGraphics = new HwmfGraphics(graphics2D, bounds);
            HwmfDrawProperties properties = hwmfGraphics.getProperties();
            properties.setViewportOrg(bounds.getX(), bounds.getY());
            properties.setViewportExt(bounds.getWidth(), bounds.getHeight());
            for (HwmfRecord hwmfRecord : this.records) {
                Objects.equals(hwmfGraphics.getProperties().getClip(), graphics2D.getClip());
                hwmfRecord.draw(hwmfGraphics);
            }
        } finally {
            hwmfGraphicsState.restore(graphics2D);
        }
    }
}
