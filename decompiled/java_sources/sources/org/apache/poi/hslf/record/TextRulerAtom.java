package org.apache.poi.hslf.record;

import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream;
import org.apache.poi.hslf.model.textproperties.HSLFTabStop;
import org.apache.poi.hslf.model.textproperties.HSLFTabStopPropCollection;
import org.apache.poi.hslf.record.TextRulerAtom;
import org.apache.poi.util.BitField;
import org.apache.poi.util.BitFieldFactory;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndian;
import org.apache.poi.util.LittleEndianByteArrayInputStream;
import org.apache.poi.util.LittleEndianOutputStream;

/* loaded from: classes12.dex */
public final class TextRulerAtom extends RecordAtom {
    private final byte[] _header;
    private Integer defaultTabSize;
    private final Integer[] indent;
    private final Integer[] leftMargin;
    private Integer numLevels;
    private final List<HSLFTabStop> tabStops;
    private static final BitField DEFAULT_TAB_SIZE = BitFieldFactory.getInstance(1);
    private static final BitField C_LEVELS = BitFieldFactory.getInstance(2);
    private static final BitField TAB_STOPS = BitFieldFactory.getInstance(4);
    private static final BitField[] LEFT_MARGIN_LVL_MASK = {BitFieldFactory.getInstance(8), BitFieldFactory.getInstance(16), BitFieldFactory.getInstance(32), BitFieldFactory.getInstance(64), BitFieldFactory.getInstance(128)};
    private static final BitField[] INDENT_LVL_MASK = {BitFieldFactory.getInstance(256), BitFieldFactory.getInstance(512), BitFieldFactory.getInstance(1024), BitFieldFactory.getInstance(2048), BitFieldFactory.getInstance(4096)};

    public TextRulerAtom() {
        byte[] bArr = new byte[8];
        this._header = bArr;
        this.tabStops = new ArrayList();
        this.leftMargin = new Integer[5];
        this.indent = new Integer[5];
        LittleEndian.putShort(bArr, 2, (short) getRecordType());
    }

    public static TextRulerAtom getParagraphInstance() {
        TextRulerAtom textRulerAtom = new TextRulerAtom();
        textRulerAtom.indent[0] = 249;
        Integer[] numArr = textRulerAtom.indent;
        textRulerAtom.leftMargin[1] = 321;
        numArr[1] = 321;
        return textRulerAtom;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$0() {
        return this.leftMargin;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$1() {
        return this.indent;
    }

    private void read(LittleEndianByteArrayInputStream littleEndianByteArrayInputStream) {
        int readInt = littleEndianByteArrayInputStream.readInt();
        this.numLevels = readIf(littleEndianByteArrayInputStream, readInt, C_LEVELS);
        this.defaultTabSize = readIf(littleEndianByteArrayInputStream, readInt, DEFAULT_TAB_SIZE);
        if (TAB_STOPS.isSet(readInt)) {
            this.tabStops.addAll(HSLFTabStopPropCollection.readTabStops(littleEndianByteArrayInputStream));
        }
        for (int i = 0; i < 5; i++) {
            this.leftMargin[i] = readIf(littleEndianByteArrayInputStream, readInt, LEFT_MARGIN_LVL_MASK[i]);
            this.indent[i] = readIf(littleEndianByteArrayInputStream, readInt, INDENT_LVL_MASK[i]);
        }
    }

    private static Integer readIf(LittleEndianByteArrayInputStream littleEndianByteArrayInputStream, int i, BitField bitField) {
        if (bitField.isSet(i)) {
            return Integer.valueOf(littleEndianByteArrayInputStream.readShort());
        }
        return null;
    }

    private static int writeIf(LittleEndianOutputStream littleEndianOutputStream, Integer num, BitField bitField) {
        boolean z;
        if (num != null) {
            littleEndianOutputStream.writeShort(num.intValue());
            z = true;
        } else {
            z = false;
        }
        return bitField.setBoolean(0, z);
    }

    public Integer[] getBulletOffsets() {
        return this.indent;
    }

    public int getDefaultTabSize() {
        Integer num = this.defaultTabSize;
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("defaultTabSize", new Supplier() { // from class: com.sunia.HTREnginev2.afn
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(TextRulerAtom.this.getDefaultTabSize());
            }
        }, "numLevels", new Supplier() { // from class: com.sunia.HTREnginev2.bfn
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(TextRulerAtom.this.getNumberOfLevels());
            }
        }, HSLFTabStopPropCollection.NAME, new Supplier() { // from class: com.sunia.HTREnginev2.cfn
            @Override // java.util.function.Supplier
            public final Object get() {
                return TextRulerAtom.this.getTabStops();
            }
        }, "leftMargins", new Supplier() { // from class: com.sunia.HTREnginev2.dfn
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = TextRulerAtom.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        }, "indents", new Supplier() { // from class: com.sunia.HTREnginev2.efn
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$1;
                lambda$getGenericProperties$1 = TextRulerAtom.this.lambda$getGenericProperties$1();
                return lambda$getGenericProperties$1;
            }
        });
    }

    public int getNumberOfLevels() {
        Integer num = this.numLevels;
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    @Override // org.apache.poi.hslf.record.Record
    public long getRecordType() {
        return RecordTypes.TextRulerAtom.typeID;
    }

    public List<HSLFTabStop> getTabStops() {
        return this.tabStops;
    }

    public Integer[] getTextOffsets() {
        return this.leftMargin;
    }

    public void setParagraphIndent(short s, short s2) {
        Arrays.fill(this.leftMargin, (Object) null);
        Arrays.fill(this.indent, (Object) null);
        this.leftMargin[0] = Integer.valueOf(s);
        this.indent[0] = Integer.valueOf(s2);
        this.indent[1] = Integer.valueOf(s2);
    }

    @Override // org.apache.poi.hslf.record.Record
    public void writeOut(OutputStream outputStream) throws IOException {
        UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream = new UnsynchronizedByteArrayOutputStream(200);
        LittleEndianOutputStream littleEndianOutputStream = new LittleEndianOutputStream(unsynchronizedByteArrayOutputStream);
        int writeIf = writeIf(littleEndianOutputStream, this.numLevels, C_LEVELS) | 0 | writeIf(littleEndianOutputStream, this.defaultTabSize, DEFAULT_TAB_SIZE) | writeIf(littleEndianOutputStream, this.tabStops, TAB_STOPS);
        for (int i = 0; i < 5; i++) {
            writeIf = writeIf | writeIf(littleEndianOutputStream, this.leftMargin[i], LEFT_MARGIN_LVL_MASK[i]) | writeIf(littleEndianOutputStream, this.indent[i], INDENT_LVL_MASK[i]);
        }
        LittleEndian.putInt(this._header, 4, unsynchronizedByteArrayOutputStream.size() + 4);
        outputStream.write(this._header);
        LittleEndian.putUShort(writeIf, outputStream);
        LittleEndian.putUShort(0, outputStream);
        unsynchronizedByteArrayOutputStream.writeTo(outputStream);
    }

    private static int writeIf(LittleEndianOutputStream littleEndianOutputStream, List<HSLFTabStop> list, BitField bitField) {
        boolean z;
        if (list == null || list.isEmpty()) {
            z = false;
        } else {
            HSLFTabStopPropCollection.writeTabStops(littleEndianOutputStream, list);
            z = true;
        }
        return bitField.setBoolean(0, z);
    }

    public TextRulerAtom(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[8];
        this._header = bArr2;
        this.tabStops = new ArrayList();
        this.leftMargin = new Integer[5];
        this.indent = new Integer[5];
        LittleEndianByteArrayInputStream littleEndianByteArrayInputStream = new LittleEndianByteArrayInputStream(bArr, i, Math.min(i2, RecordAtom.getMaxRecordLength()));
        try {
            IOUtils.readFully(littleEndianByteArrayInputStream, bArr2);
            read(littleEndianByteArrayInputStream);
        } catch (IOException e) {
            Record.LOG.atError().withThrowable(e).log("Failed to parse TextRulerAtom");
        }
    }
}
