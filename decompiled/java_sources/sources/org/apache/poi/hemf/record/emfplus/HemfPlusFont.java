package org.apache.poi.hemf.record.emfplus;

import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hemf.draw.HemfDrawProperties;
import org.apache.poi.hemf.draw.HemfGraphics;
import org.apache.poi.hemf.record.emf.HemfFont;
import org.apache.poi.hemf.record.emfplus.HemfPlusDraw;
import org.apache.poi.hemf.record.emfplus.HemfPlusFont;
import org.apache.poi.hemf.record.emfplus.HemfPlusHeader;
import org.apache.poi.hemf.record.emfplus.HemfPlusObject;
import org.apache.poi.util.BitField;
import org.apache.poi.util.BitFieldFactory;
import org.apache.poi.util.GenericRecordJsonWriter;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianInputStream;
import org.apache.poi.util.StringUtil;

/* loaded from: classes12.dex */
public class HemfPlusFont {

    /* loaded from: classes12.dex */
    public static class EmfPlusFont implements HemfPlusObject.EmfPlusObjectData {
        private double emSize;
        private String family;
        private final HemfPlusHeader.EmfPlusGraphicsVersion graphicsVersion = new HemfPlusHeader.EmfPlusGraphicsVersion();
        private HemfPlusDraw.EmfPlusUnitType sizeUnit;
        private int styleFlags;
        private static final BitField BOLD = BitFieldFactory.getInstance(1);
        private static final BitField ITALIC = BitFieldFactory.getInstance(2);
        private static final BitField UNDERLINE = BitFieldFactory.getInstance(4);
        private static final BitField STRIKEOUT = BitFieldFactory.getInstance(8);

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$0() {
            return this.graphicsVersion;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$1() {
            return Double.valueOf(this.emSize);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$2() {
            return this.sizeUnit;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$3() {
            return Integer.valueOf(this.styleFlags);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$4() {
            return this.family;
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusObject.EmfPlusObjectData
        public void applyObject(HemfGraphics hemfGraphics, List<? extends HemfPlusObject.EmfPlusObjectData> list) {
            HemfDrawProperties properties = hemfGraphics.getProperties();
            HemfFont hemfFont = new HemfFont();
            hemfFont.initDefaults();
            hemfFont.setTypeface(this.family);
            hemfFont.setHeight(this.emSize);
            hemfFont.setStrikeOut(STRIKEOUT.isSet(this.styleFlags));
            hemfFont.setUnderline(UNDERLINE.isSet(this.styleFlags));
            hemfFont.setWeight(BOLD.isSet(this.styleFlags) ? 700 : 400);
            hemfFont.setItalic(ITALIC.isSet(this.styleFlags));
            properties.setFont(hemfFont);
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("graphicsVersion", new Supplier() { // from class: com.sunia.HTREnginev2.mph
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$0;
                    lambda$getGenericProperties$0 = HemfPlusFont.EmfPlusFont.this.lambda$getGenericProperties$0();
                    return lambda$getGenericProperties$0;
                }
            }, "emSize", new Supplier() { // from class: com.sunia.HTREnginev2.nph
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$1;
                    lambda$getGenericProperties$1 = HemfPlusFont.EmfPlusFont.this.lambda$getGenericProperties$1();
                    return lambda$getGenericProperties$1;
                }
            }, "sizeUnit", new Supplier() { // from class: com.sunia.HTREnginev2.oph
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$2;
                    lambda$getGenericProperties$2 = HemfPlusFont.EmfPlusFont.this.lambda$getGenericProperties$2();
                    return lambda$getGenericProperties$2;
                }
            }, "styleFlags", new Supplier() { // from class: com.sunia.HTREnginev2.pph
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$3;
                    lambda$getGenericProperties$3 = HemfPlusFont.EmfPlusFont.this.lambda$getGenericProperties$3();
                    return lambda$getGenericProperties$3;
                }
            }, "family", new Supplier() { // from class: com.sunia.HTREnginev2.qph
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$4;
                    lambda$getGenericProperties$4 = HemfPlusFont.EmfPlusFont.this.lambda$getGenericProperties$4();
                    return lambda$getGenericProperties$4;
                }
            });
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusObject.EmfPlusObjectData
        public HemfPlusHeader.EmfPlusGraphicsVersion getGraphicsVersion() {
            return this.graphicsVersion;
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusObject.EmfPlusObjectData
        public long init(LittleEndianInputStream littleEndianInputStream, long j, HemfPlusObject.EmfPlusObjectType emfPlusObjectType, int i) throws IOException {
            long init = this.graphicsVersion.init(littleEndianInputStream);
            this.emSize = littleEndianInputStream.readFloat();
            this.sizeUnit = HemfPlusDraw.EmfPlusUnitType.valueOf(littleEndianInputStream.readInt());
            this.styleFlags = littleEndianInputStream.readInt();
            littleEndianInputStream.skipFully(4);
            int readInt = littleEndianInputStream.readInt();
            this.family = StringUtil.readUnicodeLE(littleEndianInputStream, readInt);
            return init + 20 + (readInt * 2);
        }

        public String toString() {
            return GenericRecordJsonWriter.marshal(this);
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public HemfPlusObject.EmfPlusObjectType getGenericRecordType() {
            return HemfPlusObject.EmfPlusObjectType.FONT;
        }
    }
}
