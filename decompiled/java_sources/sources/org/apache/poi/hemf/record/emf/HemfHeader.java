package org.apache.poi.hemf.record.emf;

import java.awt.geom.Dimension2D;
import java.awt.geom.Rectangle2D;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hemf.record.emf.HemfHeader;
import org.apache.poi.util.Dimension2DDouble;
import org.apache.poi.util.GenericRecordJsonWriter;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndianInputStream;
import org.mortbay.jetty.HttpHeaderValues;

@Internal
/* loaded from: classes12.dex */
public class HemfHeader implements HemfRecord {
    private long bOpenGL;
    private long bytes;
    private long cbPixelFormat;
    private String description;
    private int handles;
    private boolean hasExtension1;
    private boolean hasExtension2;
    private long nPalEntries;
    private long offPixelFormat;
    private long records;
    private final Rectangle2D boundsRectangle = new Rectangle2D.Double();
    private final Rectangle2D frameRectangle = new Rectangle2D.Double();
    private final Dimension2D deviceDimension = new Dimension2DDouble();
    private final Dimension2D milliDimension = new Dimension2DDouble();
    private final Dimension2D microDimension = new Dimension2DDouble();

    public Rectangle2D getBoundsRectangle() {
        return this.boundsRectangle;
    }

    public long getBytes() {
        return this.bytes;
    }

    public long getCbPixelFormat() {
        return this.cbPixelFormat;
    }

    public String getDescription() {
        return this.description;
    }

    public Dimension2D getDeviceDimension() {
        return this.deviceDimension;
    }

    @Override // org.apache.poi.hemf.record.emf.HemfRecord
    public HemfRecordType getEmfRecordType() {
        return HemfRecordType.header;
    }

    public Rectangle2D getFrameRectangle() {
        return this.frameRectangle;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("boundsRectangle", new Supplier() { // from class: com.sunia.HTREnginev2.xjh
            @Override // java.util.function.Supplier
            public final Object get() {
                return HemfHeader.this.getBoundsRectangle();
            }
        });
        linkedHashMap.put("frameRectangle", new Supplier() { // from class: com.sunia.HTREnginev2.ikh
            @Override // java.util.function.Supplier
            public final Object get() {
                return HemfHeader.this.getFrameRectangle();
            }
        });
        linkedHashMap.put(HttpHeaderValues.BYTES, new Supplier() { // from class: com.sunia.HTREnginev2.jkh
            @Override // java.util.function.Supplier
            public final Object get() {
                return Long.valueOf(HemfHeader.this.getBytes());
            }
        });
        linkedHashMap.put("records", new Supplier() { // from class: com.sunia.HTREnginev2.kkh
            @Override // java.util.function.Supplier
            public final Object get() {
                return Long.valueOf(HemfHeader.this.getRecords());
            }
        });
        linkedHashMap.put("handles", new Supplier() { // from class: com.sunia.HTREnginev2.lkh
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(HemfHeader.this.getHandles());
            }
        });
        linkedHashMap.put("description", new Supplier() { // from class: com.sunia.HTREnginev2.yjh
            @Override // java.util.function.Supplier
            public final Object get() {
                return HemfHeader.this.getDescription();
            }
        });
        linkedHashMap.put("nPalEntries", new Supplier() { // from class: com.sunia.HTREnginev2.zjh
            @Override // java.util.function.Supplier
            public final Object get() {
                return Long.valueOf(HemfHeader.this.getNPalEntries());
            }
        });
        linkedHashMap.put("hasExtension1", new Supplier() { // from class: com.sunia.HTREnginev2.akh
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(HemfHeader.this.isHasExtension1());
            }
        });
        linkedHashMap.put("cbPixelFormat", new Supplier() { // from class: com.sunia.HTREnginev2.bkh
            @Override // java.util.function.Supplier
            public final Object get() {
                return Long.valueOf(HemfHeader.this.getCbPixelFormat());
            }
        });
        linkedHashMap.put("offPixelFormat", new Supplier() { // from class: com.sunia.HTREnginev2.ckh
            @Override // java.util.function.Supplier
            public final Object get() {
                return Long.valueOf(HemfHeader.this.getOffPixelFormat());
            }
        });
        linkedHashMap.put("bOpenGL", new Supplier() { // from class: com.sunia.HTREnginev2.dkh
            @Override // java.util.function.Supplier
            public final Object get() {
                return Long.valueOf(HemfHeader.this.getbOpenGL());
            }
        });
        linkedHashMap.put("hasExtension2", new Supplier() { // from class: com.sunia.HTREnginev2.ekh
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(HemfHeader.this.isHasExtension2());
            }
        });
        linkedHashMap.put("deviceDimension", new Supplier() { // from class: com.sunia.HTREnginev2.fkh
            @Override // java.util.function.Supplier
            public final Object get() {
                return HemfHeader.this.getDeviceDimension();
            }
        });
        linkedHashMap.put("milliDimension", new Supplier() { // from class: com.sunia.HTREnginev2.gkh
            @Override // java.util.function.Supplier
            public final Object get() {
                return HemfHeader.this.getMilliDimension();
            }
        });
        linkedHashMap.put("microDimension", new Supplier() { // from class: com.sunia.HTREnginev2.hkh
            @Override // java.util.function.Supplier
            public final Object get() {
                return HemfHeader.this.getMicroDimension();
            }
        });
        return Collections.unmodifiableMap(linkedHashMap);
    }

    public int getHandles() {
        return this.handles;
    }

    public Dimension2D getMicroDimension() {
        return this.microDimension;
    }

    public Dimension2D getMilliDimension() {
        return this.milliDimension;
    }

    public long getNPalEntries() {
        return this.nPalEntries;
    }

    public long getOffPixelFormat() {
        return this.offPixelFormat;
    }

    public long getRecords() {
        return this.records;
    }

    public long getbOpenGL() {
        return this.bOpenGL;
    }

    @Override // org.apache.poi.hemf.record.emf.HemfRecord
    public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2) throws IOException {
        if (j2 != HemfRecordType.header.f111342id) {
            throw new IOException("Not a valid EMF header. Record type:" + j2);
        }
        littleEndianInputStream.getReadIndex();
        long readRectL = HemfDraw.readRectL(littleEndianInputStream, this.boundsRectangle) + HemfDraw.readRectL(littleEndianInputStream, this.frameRectangle);
        int readInt = littleEndianInputStream.readInt();
        if (readInt != 1179469088) {
            throw new IOException("bad record signature: " + readInt);
        }
        littleEndianInputStream.readInt();
        this.bytes = littleEndianInputStream.readUInt();
        this.records = littleEndianInputStream.readUInt();
        this.handles = littleEndianInputStream.readUShort();
        littleEndianInputStream.skipFully(2);
        int readUInt = (int) littleEndianInputStream.readUInt();
        int readUInt2 = (int) littleEndianInputStream.readUInt();
        this.nPalEntries = littleEndianInputStream.readUInt();
        long readDimensionInt = readRectL + 32 + HemfDraw.readDimensionInt(littleEndianInputStream, this.deviceDimension) + HemfDraw.readDimensionInt(littleEndianInputStream, this.milliDimension);
        if (readUInt > 0 && readUInt2 > 0) {
            int i = (int) (readUInt2 - (readDimensionInt + 8));
            littleEndianInputStream.mark((readUInt * 2) + i);
            littleEndianInputStream.skipFully(i);
            byte[] bArr = new byte[(readUInt - 1) * 2];
            littleEndianInputStream.readFully(bArr);
            this.description = new String(bArr, StandardCharsets.UTF_16LE).replace((char) 0, ' ').trim();
            littleEndianInputStream.reset();
        }
        long j3 = 12 + readDimensionInt;
        if (j3 <= j) {
            this.hasExtension1 = true;
            this.cbPixelFormat = littleEndianInputStream.readUInt();
            this.offPixelFormat = littleEndianInputStream.readUInt();
            this.bOpenGL = littleEndianInputStream.readUInt();
            readDimensionInt = j3;
        }
        if (8 + readDimensionInt > j) {
            return readDimensionInt;
        }
        this.hasExtension2 = true;
        return readDimensionInt + HemfDraw.readDimensionInt(littleEndianInputStream, this.microDimension);
    }

    public boolean isHasExtension1() {
        return this.hasExtension1;
    }

    public boolean isHasExtension2() {
        return this.hasExtension2;
    }

    public String toString() {
        return GenericRecordJsonWriter.marshal(this);
    }
}
