package org.apache.poi.hemf.record.emf;

import java.awt.geom.Rectangle2D;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.function.Consumer;
import java.util.function.Supplier;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.util.Unbox;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.hemf.draw.HemfGraphics;
import org.apache.poi.hemf.record.emf.HemfComment;
import org.apache.poi.hemf.record.emf.HemfRecord;
import org.apache.poi.hemf.record.emfplus.HemfPlusRecord;
import org.apache.poi.hemf.record.emfplus.HemfPlusRecordIterator;
import org.apache.poi.hwmf.usermodel.HwmfCharsetAware;
import org.apache.poi.hwmf.usermodel.HwmfPicture;
import org.apache.poi.util.GenericRecordJsonWriter;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndianInputStream;
import org.apache.poi.util.LocaleUtil;
import org.apache.poi.util.RecordFormatException;

@Internal
/* loaded from: classes12.dex */
public class HemfComment {
    private static final Logger LOG = LogManager.getLogger((Class<?>) HemfComment.class);

    /* loaded from: classes12.dex */
    public static class EmfComment implements HemfRecord, HwmfCharsetAware {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private EmfCommentData data;

        public static void validateCommentType(LittleEndianInputStream littleEndianInputStream, HemfCommentRecordType hemfCommentRecordType) {
            if (((int) littleEndianInputStream.readUInt()) == HemfCommentRecordType.emfPublic.f111338id) {
                littleEndianInputStream.readUInt();
            }
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public void calcBounds(HemfRecord.RenderBounds renderBounds) {
            this.data.calcBounds(renderBounds);
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public void draw(HemfGraphics hemfGraphics) {
            this.data.draw(hemfGraphics);
        }

        public EmfCommentData getCommentData() {
            return this.data;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.comment;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("data", new Supplier() { // from class: com.sunia.HTREnginev2.yfh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HemfComment.EmfComment.this.getCommentData();
                }
            });
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2) throws IOException {
            long readIndex = littleEndianInputStream.getReadIndex();
            this.data = new EmfCommentDataIterator(littleEndianInputStream, (int) j, true).next();
            return littleEndianInputStream.getReadIndex() - readIndex;
        }

        @Override // org.apache.poi.hwmf.usermodel.HwmfCharsetAware
        public void setCharsetProvider(Supplier<Charset> supplier) {
            EmfCommentData emfCommentData = this.data;
            if (emfCommentData instanceof HwmfCharsetAware) {
                ((HwmfCharsetAware) emfCommentData).setCharsetProvider(supplier);
            }
        }

        public String toString() {
            return GenericRecordJsonWriter.marshal(this);
        }
    }

    /* loaded from: classes12.dex */
    public interface EmfCommentData extends GenericRecord {
        default void calcBounds(HemfRecord.RenderBounds renderBounds) {
        }

        default void draw(HemfGraphics hemfGraphics) {
        }

        HemfCommentRecordType getCommentRecordType();

        long init(LittleEndianInputStream littleEndianInputStream, long j) throws IOException;

        @Override // org.apache.poi.common.usermodel.GenericRecord
        default HemfCommentRecordType getGenericRecordType() {
            return getCommentRecordType();
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfCommentDataBeginGroup implements EmfCommentData {
        private final Rectangle2D bounds = new Rectangle2D.Double();
        private String description;

        public Rectangle2D getBounds() {
            return this.bounds;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfComment.EmfCommentData
        public HemfCommentRecordType getCommentRecordType() {
            return HemfCommentRecordType.emfBeginGroup;
        }

        public String getDescription() {
            return this.description;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("bounds", new Supplier() { // from class: com.sunia.HTREnginev2.zfh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HemfComment.EmfCommentDataBeginGroup.this.getBounds();
                }
            }, "description", new Supplier() { // from class: com.sunia.HTREnginev2.agh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HemfComment.EmfCommentDataBeginGroup.this.getDescription();
                }
            });
        }

        @Override // org.apache.poi.hemf.record.emf.HemfComment.EmfCommentData
        public long init(LittleEndianInputStream littleEndianInputStream, long j) throws IOException {
            long readIndex = littleEndianInputStream.getReadIndex();
            EmfComment.validateCommentType(littleEndianInputStream, HemfCommentRecordType.emfBeginGroup);
            HemfDraw.readRectL(littleEndianInputStream, this.bounds);
            byte[] safelyAllocate = IOUtils.safelyAllocate(((int) littleEndianInputStream.readUInt()) * 2, HwmfPicture.getMaxRecordLength());
            littleEndianInputStream.readFully(safelyAllocate);
            this.description = new String(safelyAllocate, StandardCharsets.UTF_16LE);
            return littleEndianInputStream.getReadIndex() - readIndex;
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfCommentDataEndGroup implements EmfCommentData {
        @Override // org.apache.poi.hemf.record.emf.HemfComment.EmfCommentData
        public HemfCommentRecordType getCommentRecordType() {
            return HemfCommentRecordType.emfEndGroup;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return null;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfComment.EmfCommentData
        public long init(LittleEndianInputStream littleEndianInputStream, long j) throws IOException {
            long readIndex = littleEndianInputStream.getReadIndex();
            EmfComment.validateCommentType(littleEndianInputStream, HemfCommentRecordType.emfEndGroup);
            return littleEndianInputStream.getReadIndex() - readIndex;
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfCommentDataFormat implements GenericRecord {
        private int offData;
        private byte[] rawData;
        private EmfFormatSignature signature;
        private int sizeData;
        private int version;

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$0() {
            return Integer.valueOf(this.version);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$1() {
            return Integer.valueOf(this.sizeData);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$2() {
            return Integer.valueOf(this.offData);
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("signature", new Supplier() { // from class: com.sunia.HTREnginev2.bgh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HemfComment.EmfCommentDataFormat.this.getSignature();
                }
            }, "version", new Supplier() { // from class: com.sunia.HTREnginev2.cgh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$0;
                    lambda$getGenericProperties$0 = HemfComment.EmfCommentDataFormat.this.lambda$getGenericProperties$0();
                    return lambda$getGenericProperties$0;
                }
            }, "sizeData", new Supplier() { // from class: com.sunia.HTREnginev2.dgh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$1;
                    lambda$getGenericProperties$1 = HemfComment.EmfCommentDataFormat.this.lambda$getGenericProperties$1();
                    return lambda$getGenericProperties$1;
                }
            }, "offData", new Supplier() { // from class: com.sunia.HTREnginev2.egh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$2;
                    lambda$getGenericProperties$2 = HemfComment.EmfCommentDataFormat.this.lambda$getGenericProperties$2();
                    return lambda$getGenericProperties$2;
                }
            });
        }

        public byte[] getRawData() {
            return this.rawData;
        }

        public EmfFormatSignature getSignature() {
            return this.signature;
        }

        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2) throws IOException {
            this.signature = EmfFormatSignature.getById(littleEndianInputStream.readInt());
            this.version = littleEndianInputStream.readInt();
            this.sizeData = littleEndianInputStream.readInt();
            int readInt = littleEndianInputStream.readInt();
            this.offData = readInt;
            if (this.sizeData < 0) {
                throw new RecordFormatException("size for emrformat must be > 0");
            }
            if (readInt >= 0) {
                return 16L;
            }
            throw new RecordFormatException("offset for emrformat must be > 0");
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfCommentDataGeneric implements EmfCommentData, HwmfCharsetAware {
        private Supplier<Charset> charsetProvider = new Supplier() { // from class: com.sunia.HTREnginev2.hgh
            @Override // java.util.function.Supplier
            public final Object get() {
                Charset charset;
                charset = LocaleUtil.CHARSET_1252;
                return charset;
            }
        };
        private byte[] privateData;

        @Override // org.apache.poi.hemf.record.emf.HemfComment.EmfCommentData
        public HemfCommentRecordType getCommentRecordType() {
            return HemfCommentRecordType.emfGeneric;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("privateData", new Supplier() { // from class: com.sunia.HTREnginev2.fgh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HemfComment.EmfCommentDataGeneric.this.getPrivateData();
                }
            }, "privateDataAsString", new Supplier() { // from class: com.sunia.HTREnginev2.ggh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HemfComment.EmfCommentDataGeneric.this.getPrivateDataAsString();
                }
            });
        }

        public byte[] getPrivateData() {
            return this.privateData;
        }

        public String getPrivateDataAsString() {
            return new String(this.privateData, this.charsetProvider.get());
        }

        @Override // org.apache.poi.hemf.record.emf.HemfComment.EmfCommentData
        public long init(LittleEndianInputStream littleEndianInputStream, long j) throws IOException {
            byte[] safelyAllocate = IOUtils.safelyAllocate(j, HwmfPicture.getMaxRecordLength());
            this.privateData = safelyAllocate;
            littleEndianInputStream.readFully(safelyAllocate);
            return this.privateData.length;
        }

        @Override // org.apache.poi.hwmf.usermodel.HwmfCharsetAware
        public void setCharsetProvider(Supplier<Charset> supplier) {
            this.charsetProvider = supplier;
        }

        public String toString() {
            return GenericRecordJsonWriter.marshal(this);
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfCommentDataIterator implements Iterator<EmfCommentData> {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private EmfCommentData currentRecord = _next();
        private final boolean emfParent;
        private final LittleEndianInputStream leis;
        private final int limit;
        private final int startIdx;

        public EmfCommentDataIterator(LittleEndianInputStream littleEndianInputStream, int i, boolean z) {
            this.leis = littleEndianInputStream;
            this.limit = i;
            this.emfParent = z;
            this.startIdx = littleEndianInputStream.getReadIndex();
        }

        private EmfCommentData _next() {
            long readUInt;
            if (this.currentRecord == null && this.emfParent) {
                readUInt = this.limit;
            } else {
                try {
                    this.leis.readUInt();
                    readUInt = this.leis.readUInt();
                } catch (RuntimeException unused) {
                    return null;
                }
            }
            long readUInt2 = this.leis.readUInt();
            try {
                this.leis.mark(8);
                int readUInt3 = (int) this.leis.readUInt();
                int readUInt4 = (int) this.leis.readUInt();
                long j = readUInt3;
                boolean z = j == HemfCommentRecordType.emfPublic.f111338id;
                this.leis.reset();
                if (z) {
                    j = readUInt4;
                }
                EmfCommentData emfCommentData = HemfCommentRecordType.getById(j, z).constructor.get();
                this.leis.skipFully((int) ((readUInt - 4) - emfCommentData.init(this.leis, readUInt2)));
                return emfCommentData;
            } catch (IOException e) {
                throw new RecordFormatException(e);
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.currentRecord != null;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Remove not supported");
        }

        @Override // java.util.Iterator
        public EmfCommentData next() {
            if (hasNext()) {
                EmfCommentData emfCommentData = this.currentRecord;
                this.currentRecord = this.limit == -1 || this.leis.getReadIndex() >= this.startIdx + this.limit ? null : _next();
                return emfCommentData;
            }
            throw new NoSuchElementException();
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfCommentDataMultiformats implements EmfCommentData {
        private final Rectangle2D bounds = new Rectangle2D.Double();
        private final List<EmfCommentDataFormat> formats = new ArrayList();

        public Rectangle2D getBounds() {
            return this.bounds;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfComment.EmfCommentData
        public HemfCommentRecordType getCommentRecordType() {
            return HemfCommentRecordType.emfMultiFormats;
        }

        public List<EmfCommentDataFormat> getFormats() {
            return Collections.unmodifiableList(this.formats);
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public List<EmfCommentDataFormat> getGenericChildren() {
            return getFormats();
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("bounds", new Supplier() { // from class: com.sunia.HTREnginev2.igh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HemfComment.EmfCommentDataMultiformats.this.getBounds();
                }
            });
        }

        @Override // org.apache.poi.hemf.record.emf.HemfComment.EmfCommentData
        public long init(LittleEndianInputStream littleEndianInputStream, long j) throws IOException {
            int readIndex = littleEndianInputStream.getReadIndex();
            EmfComment.validateCommentType(littleEndianInputStream, HemfCommentRecordType.emfMultiFormats);
            HemfDraw.readRectL(littleEndianInputStream, this.bounds);
            int readUInt = (int) littleEndianInputStream.readUInt();
            for (int i = 0; i < readUInt; i++) {
                EmfCommentDataFormat emfCommentDataFormat = new EmfCommentDataFormat();
                long init = emfCommentDataFormat.init(littleEndianInputStream, j, readIndex);
                this.formats.add(emfCommentDataFormat);
                if (init == 0) {
                    break;
                }
            }
            for (EmfCommentDataFormat emfCommentDataFormat2 : this.formats) {
                littleEndianInputStream.skipFully(emfCommentDataFormat2.offData - (littleEndianInputStream.getReadIndex() - readIndex));
                emfCommentDataFormat2.rawData = IOUtils.safelyAllocate(emfCommentDataFormat2.sizeData, HwmfPicture.getMaxRecordLength());
                if (littleEndianInputStream.read(emfCommentDataFormat2.rawData) < emfCommentDataFormat2.sizeData) {
                    break;
                }
            }
            return littleEndianInputStream.getReadIndex() - readIndex;
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfCommentDataPlus implements EmfCommentData {
        private final List<HemfPlusRecord> records = new ArrayList();

        @Override // org.apache.poi.hemf.record.emf.HemfComment.EmfCommentData
        public void calcBounds(HemfRecord.RenderBounds renderBounds) {
            renderBounds.setState(HemfGraphics.EmfRenderState.EMFPLUS_ONLY);
            Iterator<HemfPlusRecord> it2 = this.records.iterator();
            while (it2.hasNext()) {
                it2.next().calcBounds(renderBounds);
                if (!renderBounds.getWindow().isEmpty() && !renderBounds.getViewport().isEmpty()) {
                    break;
                }
            }
            renderBounds.setState(HemfGraphics.EmfRenderState.EMF_ONLY);
        }

        @Override // org.apache.poi.hemf.record.emf.HemfComment.EmfCommentData
        public void draw(final HemfGraphics hemfGraphics) {
            hemfGraphics.setRenderState(HemfGraphics.EmfRenderState.EMFPLUS_ONLY);
            this.records.forEach(new Consumer() { // from class: com.sunia.HTREnginev2.kgh
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    HemfGraphics.this.draw((HemfPlusRecord) obj);
                }
            });
            hemfGraphics.setRenderState(HemfGraphics.EmfRenderState.EMF_ONLY);
        }

        @Override // org.apache.poi.hemf.record.emf.HemfComment.EmfCommentData
        public HemfCommentRecordType getCommentRecordType() {
            return HemfCommentRecordType.emfPlus;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public List<HemfPlusRecord> getGenericChildren() {
            return getRecords();
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return null;
        }

        public List<HemfPlusRecord> getRecords() {
            return Collections.unmodifiableList(this.records);
        }

        @Override // org.apache.poi.hemf.record.emf.HemfComment.EmfCommentData
        public long init(LittleEndianInputStream littleEndianInputStream, long j) throws IOException {
            long readIndex = littleEndianInputStream.getReadIndex();
            EmfComment.validateCommentType(littleEndianInputStream, HemfCommentRecordType.emfPlus);
            HemfPlusRecordIterator hemfPlusRecordIterator = new HemfPlusRecordIterator(littleEndianInputStream, ((int) j) - 4);
            final List<HemfPlusRecord> list = this.records;
            list.getClass();
            hemfPlusRecordIterator.forEachRemaining(new Consumer() { // from class: com.sunia.HTREnginev2.jgh
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    list.add((HemfPlusRecord) obj);
                }
            });
            return littleEndianInputStream.getReadIndex() - readIndex;
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfCommentDataUnicode implements EmfCommentData {
        @Override // org.apache.poi.hemf.record.emf.HemfComment.EmfCommentData
        public HemfCommentRecordType getCommentRecordType() {
            return HemfCommentRecordType.emfUnicodeString;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return null;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfComment.EmfCommentData
        public long init(LittleEndianInputStream littleEndianInputStream, long j) throws IOException {
            throw new RecordFormatException("UNICODE_STRING/UNICODE_END values are reserved in CommentPublic records");
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfCommentDataWMF implements EmfCommentData {
        private final Rectangle2D bounds = new Rectangle2D.Double();
        private byte[] wmfData;

        public Rectangle2D getBounds() {
            return this.bounds;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfComment.EmfCommentData
        public HemfCommentRecordType getCommentRecordType() {
            return HemfCommentRecordType.emfWMF;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("bounds", new Supplier() { // from class: com.sunia.HTREnginev2.lgh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HemfComment.EmfCommentDataWMF.this.getBounds();
                }
            }, "wmfData", new Supplier() { // from class: com.sunia.HTREnginev2.mgh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HemfComment.EmfCommentDataWMF.this.getWMFData();
                }
            });
        }

        public byte[] getWMFData() {
            return this.wmfData;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfComment.EmfCommentData
        public long init(LittleEndianInputStream littleEndianInputStream, long j) throws IOException {
            long readIndex = littleEndianInputStream.getReadIndex();
            EmfComment.validateCommentType(littleEndianInputStream, HemfCommentRecordType.emfWMF);
            littleEndianInputStream.readUShort();
            littleEndianInputStream.skipFully(2);
            littleEndianInputStream.readInt();
            littleEndianInputStream.readInt();
            byte[] safelyAllocate = IOUtils.safelyAllocate((int) littleEndianInputStream.readUInt(), HwmfPicture.getMaxRecordLength());
            this.wmfData = safelyAllocate;
            int read = littleEndianInputStream.read(safelyAllocate);
            if (read < this.wmfData.length) {
                HemfComment.LOG.atInfo().log("Emf comment with WMF: expected {} bytes - received only {} bytes.", Unbox.box(this.wmfData.length), Unbox.box(read));
            }
            return littleEndianInputStream.getReadIndex() - readIndex;
        }
    }

    /* loaded from: classes12.dex */
    public enum EmfFormatSignature {
        ENHMETA_SIGNATURE(1179469088),
        EPS_SIGNATURE(1179865157);


        /* renamed from: id */
        int f111337id;

        EmfFormatSignature(int i) {
            this.f111337id = i;
        }

        public static EmfFormatSignature getById(int i) {
            for (EmfFormatSignature emfFormatSignature : values()) {
                if (emfFormatSignature.f111337id == i) {
                    return emfFormatSignature;
                }
            }
            return null;
        }
    }

    /* loaded from: classes12.dex */
    public enum HemfCommentRecordType {
        emfGeneric(-1, new Supplier() { // from class: com.sunia.HTREnginev2.ngh
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HemfComment.EmfCommentDataGeneric();
            }
        }, false),
        emfSpool(0, new Supplier() { // from class: com.sunia.HTREnginev2.ngh
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HemfComment.EmfCommentDataGeneric();
            }
        }, false),
        emfPlus(726027589, new Supplier() { // from class: com.sunia.HTREnginev2.ogh
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HemfComment.EmfCommentDataPlus();
            }
        }, false),
        emfPublic(1128875079, null, false),
        emfBeginGroup(2, new Supplier() { // from class: com.sunia.HTREnginev2.pgh
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HemfComment.EmfCommentDataBeginGroup();
            }
        }, true),
        emfEndGroup(3, new Supplier() { // from class: com.sunia.HTREnginev2.qgh
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HemfComment.EmfCommentDataEndGroup();
            }
        }, true),
        emfMultiFormats(1073741828, new Supplier() { // from class: com.sunia.HTREnginev2.rgh
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HemfComment.EmfCommentDataMultiformats();
            }
        }, true),
        emfWMF(-2147483647L, new Supplier() { // from class: com.sunia.HTREnginev2.sgh
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HemfComment.EmfCommentDataWMF();
            }
        }, true),
        emfUnicodeString(64, new Supplier() { // from class: com.sunia.HTREnginev2.tgh
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HemfComment.EmfCommentDataUnicode();
            }
        }, true),
        emfUnicodeEnd(128, new Supplier() { // from class: com.sunia.HTREnginev2.tgh
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HemfComment.EmfCommentDataUnicode();
            }
        }, true);

        public final Supplier<? extends EmfCommentData> constructor;

        /* renamed from: id */
        public final long f111338id;
        public final boolean isEmfPublic;

        HemfCommentRecordType(long j, Supplier supplier, boolean z) {
            this.f111338id = j;
            this.constructor = supplier;
            this.isEmfPublic = z;
        }

        public static HemfCommentRecordType getById(long j, boolean z) {
            for (HemfCommentRecordType hemfCommentRecordType : values()) {
                if (hemfCommentRecordType.f111338id == j && hemfCommentRecordType.isEmfPublic == z) {
                    return hemfCommentRecordType;
                }
            }
            return emfGeneric;
        }
    }
}
