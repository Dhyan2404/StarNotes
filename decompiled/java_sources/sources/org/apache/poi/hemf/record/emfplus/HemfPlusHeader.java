package org.apache.poi.hemf.record.emfplus;

import java.io.IOException;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.hemf.draw.HemfGraphics;
import org.apache.poi.hemf.record.emf.HemfRecord;
import org.apache.poi.hemf.record.emfplus.HemfPlusHeader;
import org.apache.poi.util.BitField;
import org.apache.poi.util.BitFieldFactory;
import org.apache.poi.util.GenericRecordJsonWriter;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndianInputStream;

@Internal
/* loaded from: classes12.dex */
public class HemfPlusHeader implements HemfPlusRecord {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private long emfPlusFlags;
    private int flags;
    private long logicalDpiX;
    private long logicalDpiY;
    private final EmfPlusGraphicsVersion version = new EmfPlusGraphicsVersion();
    private static final int[] FLAGS_MASK = {0, 1};
    private static final String[] FLAGS_NAMES = {"EMF_PLUS_MODE", "DUAL_MODE"};
    private static final int[] EMFFLAGS_MASK = {0, 1};
    private static final String[] EMFFLAGS_NAMES = {"CONTEXT_PRINTER", "CONTEXT_VIDEO"};

    /* loaded from: classes12.dex */
    public static class EmfPlusGraphicsVersion implements GenericRecord {
        private GraphicsVersion graphicsVersion;
        private int metafileSignature;
        private static final BitField METAFILE_SIGNATURE = BitFieldFactory.getInstance(-4096);
        private static final BitField GRAPHICS_VERSION = BitFieldFactory.getInstance(4095);

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("metafileSignature", new Supplier() { // from class: com.sunia.HTREnginev2.wph
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(HemfPlusHeader.EmfPlusGraphicsVersion.this.getMetafileSignature());
                }
            }, "graphicsVersion", new Supplier() { // from class: com.sunia.HTREnginev2.xph
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HemfPlusHeader.EmfPlusGraphicsVersion.this.getGraphicsVersion();
                }
            });
        }

        public GraphicsVersion getGraphicsVersion() {
            return this.graphicsVersion;
        }

        public int getMetafileSignature() {
            return this.metafileSignature;
        }

        public long init(LittleEndianInputStream littleEndianInputStream) throws IOException {
            int readInt = littleEndianInputStream.readInt();
            this.metafileSignature = METAFILE_SIGNATURE.getValue(readInt);
            this.graphicsVersion = GraphicsVersion.valueOf(GRAPHICS_VERSION.getValue(readInt));
            return 4L;
        }

        public String toString() {
            return GenericRecordJsonWriter.marshal(this);
        }
    }

    /* loaded from: classes12.dex */
    public enum GraphicsVersion {
        V1(1),
        V1_1(2);


        /* renamed from: id */
        public final int f111348id;

        GraphicsVersion(int i) {
            this.f111348id = i;
        }

        public static GraphicsVersion valueOf(int i) {
            for (GraphicsVersion graphicsVersion : values()) {
                if (graphicsVersion.f111348id == i) {
                    return graphicsVersion;
                }
            }
            return null;
        }
    }

    @Override // org.apache.poi.hemf.record.emfplus.HemfPlusRecord
    public void calcBounds(HemfRecord.RenderBounds renderBounds) {
        renderBounds.setState(HemfGraphics.EmfRenderState.EMF_DCONTEXT);
    }

    @Override // org.apache.poi.hemf.record.emfplus.HemfPlusRecord
    public void draw(HemfGraphics hemfGraphics) {
        hemfGraphics.setRenderState(HemfGraphics.EmfRenderState.EMF_DCONTEXT);
    }

    public long getEmfPlusFlags() {
        return this.emfPlusFlags;
    }

    @Override // org.apache.poi.hemf.record.emfplus.HemfPlusRecord
    public HemfPlusRecordType getEmfPlusRecordType() {
        return HemfPlusRecordType.header;
    }

    @Override // org.apache.poi.hemf.record.emfplus.HemfPlusRecord, org.apache.poi.hemf.record.emfplus.HemfPlusMisc.EmfPlusObjectId, org.apache.poi.hemf.record.emfplus.HemfPlusDraw.EmfPlusSolidColor
    public int getFlags() {
        return this.flags;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("flags", GenericRecordUtil.getEnumBitsAsString(new Supplier() { // from class: com.sunia.HTREnginev2.rph
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(HemfPlusHeader.this.getFlags());
            }
        }, FLAGS_MASK, FLAGS_NAMES), "version", new Supplier() { // from class: com.sunia.HTREnginev2.sph
            @Override // java.util.function.Supplier
            public final Object get() {
                return HemfPlusHeader.this.getVersion();
            }
        }, "emfPlusFlags", GenericRecordUtil.getEnumBitsAsString(new Supplier() { // from class: com.sunia.HTREnginev2.tph
            @Override // java.util.function.Supplier
            public final Object get() {
                return Long.valueOf(HemfPlusHeader.this.getEmfPlusFlags());
            }
        }, EMFFLAGS_MASK, EMFFLAGS_NAMES), "logicalDpiX", new Supplier() { // from class: com.sunia.HTREnginev2.uph
            @Override // java.util.function.Supplier
            public final Object get() {
                return Long.valueOf(HemfPlusHeader.this.getLogicalDpiX());
            }
        }, "logicalDpiY", new Supplier() { // from class: com.sunia.HTREnginev2.vph
            @Override // java.util.function.Supplier
            public final Object get() {
                return Long.valueOf(HemfPlusHeader.this.getLogicalDpiY());
            }
        });
    }

    public long getLogicalDpiX() {
        return this.logicalDpiX;
    }

    public long getLogicalDpiY() {
        return this.logicalDpiY;
    }

    public EmfPlusGraphicsVersion getVersion() {
        return this.version;
    }

    @Override // org.apache.poi.hemf.record.emfplus.HemfPlusRecord
    public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2, int i) throws IOException {
        this.flags = i;
        this.version.init(littleEndianInputStream);
        this.emfPlusFlags = littleEndianInputStream.readUInt();
        this.logicalDpiX = littleEndianInputStream.readUInt();
        this.logicalDpiY = littleEndianInputStream.readUInt();
        return 16L;
    }

    public boolean isEmfPlusDualMode() {
        return (this.flags & 1) == 1;
    }

    public String toString() {
        return GenericRecordJsonWriter.marshal(this);
    }
}
