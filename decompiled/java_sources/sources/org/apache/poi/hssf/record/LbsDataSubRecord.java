package org.apache.poi.hssf.record;

import com.sun.org.apache.xalan.internal.extensions.ExtensionNamespaceContext;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.common.Duplicatable;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.hssf.record.LbsDataSubRecord;
import org.apache.poi.hssf.record.SubRecord;
import org.apache.poi.ss.formula.ptg.Ptg;
import org.apache.poi.util.GenericRecordJsonWriter;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianInput;
import org.apache.poi.util.LittleEndianOutput;
import org.apache.poi.util.RecordFormatException;
import org.apache.poi.util.StringUtil;

/* loaded from: classes12.dex */
public class LbsDataSubRecord extends SubRecord {
    public static final int sid = 19;
    private boolean[] _bsels;
    private int _cLines;
    private int _cbFContinued;
    private LbsDropData _dropData;
    private int _flags;
    private int _iSel;
    private int _idEdit;
    private Ptg _linkPtg;
    private String[] _rgLines;
    private Byte _unknownPostFormulaByte;
    private int _unknownPreFormulaInt;

    /* loaded from: classes12.dex */
    public static class LbsDropData implements Duplicatable, GenericRecord {
        public static final int STYLE_COMBO_DROPDOWN = 0;
        public static final int STYLE_COMBO_EDIT_DROPDOWN = 1;
        public static final int STYLE_COMBO_SIMPLE_DROPDOWN = 2;
        private int _cLine;
        private int _dxMin;
        private final String _str;
        private Byte _unused;
        private int _wStyle;

        public LbsDropData() {
            this._str = "";
            this._unused = (byte) 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$0() {
            return Integer.valueOf(this._wStyle);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$1() {
            return Integer.valueOf(this._cLine);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$2() {
            return Integer.valueOf(this._dxMin);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$3() {
            return this._str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$4() {
            return this._unused;
        }

        public int getDataSize() {
            int encodedSize = StringUtil.getEncodedSize(this._str) + 6;
            return this._unused != null ? encodedSize + 1 : encodedSize;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("wStyle", new Supplier() { // from class: com.sunia.HTREnginev2.hxi
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$0;
                    lambda$getGenericProperties$0 = LbsDataSubRecord.LbsDropData.this.lambda$getGenericProperties$0();
                    return lambda$getGenericProperties$0;
                }
            }, "cLine", new Supplier() { // from class: com.sunia.HTREnginev2.ixi
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$1;
                    lambda$getGenericProperties$1 = LbsDataSubRecord.LbsDropData.this.lambda$getGenericProperties$1();
                    return lambda$getGenericProperties$1;
                }
            }, "dxMin", new Supplier() { // from class: com.sunia.HTREnginev2.jxi
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$2;
                    lambda$getGenericProperties$2 = LbsDataSubRecord.LbsDropData.this.lambda$getGenericProperties$2();
                    return lambda$getGenericProperties$2;
                }
            }, ExtensionNamespaceContext.EXSLT_STRING_PREFIX, new Supplier() { // from class: com.sunia.HTREnginev2.kxi
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$3;
                    lambda$getGenericProperties$3 = LbsDataSubRecord.LbsDropData.this.lambda$getGenericProperties$3();
                    return lambda$getGenericProperties$3;
                }
            }, "unused", new Supplier() { // from class: com.sunia.HTREnginev2.lxi
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$4;
                    lambda$getGenericProperties$4 = LbsDataSubRecord.LbsDropData.this.lambda$getGenericProperties$4();
                    return lambda$getGenericProperties$4;
                }
            });
        }

        public void serialize(LittleEndianOutput littleEndianOutput) {
            littleEndianOutput.writeShort(this._wStyle);
            littleEndianOutput.writeShort(this._cLine);
            littleEndianOutput.writeShort(this._dxMin);
            StringUtil.writeUnicodeString(littleEndianOutput, this._str);
            Byte b = this._unused;
            if (b != null) {
                littleEndianOutput.writeByte(b.byteValue());
            }
        }

        public void setNumLines(int i) {
            this._cLine = i;
        }

        public void setStyle(int i) {
            this._wStyle = i;
        }

        public String toString() {
            return GenericRecordJsonWriter.marshal(this);
        }

        @Override // org.apache.poi.common.Duplicatable
        public LbsDropData copy() {
            return new LbsDropData(this);
        }

        public LbsDropData(LbsDropData lbsDropData) {
            this._wStyle = lbsDropData._wStyle;
            this._cLine = lbsDropData._cLine;
            this._dxMin = lbsDropData._dxMin;
            this._str = lbsDropData._str;
            this._unused = lbsDropData._unused;
        }

        public LbsDropData(LittleEndianInput littleEndianInput) {
            this._wStyle = littleEndianInput.readUShort();
            this._cLine = littleEndianInput.readUShort();
            this._dxMin = littleEndianInput.readUShort();
            String readUnicodeString = StringUtil.readUnicodeString(littleEndianInput);
            this._str = readUnicodeString;
            if (StringUtil.getEncodedSize(readUnicodeString) % 2 != 0) {
                this._unused = Byte.valueOf(littleEndianInput.readByte());
            }
        }
    }

    public LbsDataSubRecord() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$0() {
        return Integer.valueOf(this._cbFContinued);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$1() {
        return Integer.valueOf(this._unknownPreFormulaInt);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$2() {
        return this._unknownPostFormulaByte;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$3() {
        return Integer.valueOf(this._iSel);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$4() {
        return Integer.valueOf(this._flags);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$5() {
        return Integer.valueOf(this._idEdit);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$6() {
        return this._dropData;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$7() {
        return this._rgLines;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$8() {
        return this._bsels;
    }

    public static LbsDataSubRecord newAutoFilterInstance() {
        LbsDataSubRecord lbsDataSubRecord = new LbsDataSubRecord();
        lbsDataSubRecord._cbFContinued = 8174;
        lbsDataSubRecord._iSel = 0;
        lbsDataSubRecord._flags = 769;
        LbsDropData lbsDropData = new LbsDropData();
        lbsDataSubRecord._dropData = lbsDropData;
        lbsDropData._wStyle = 2;
        lbsDataSubRecord._dropData._cLine = 8;
        return lbsDataSubRecord;
    }

    @Override // org.apache.poi.hssf.record.SubRecord
    public int getDataSize() {
        int i;
        Ptg ptg = this._linkPtg;
        if (ptg != null) {
            i = ptg.getSize() + 8;
            if (this._unknownPostFormulaByte != null) {
                i++;
            }
        } else {
            i = 2;
        }
        int i2 = i + 8;
        LbsDropData lbsDropData = this._dropData;
        if (lbsDropData != null) {
            i2 += lbsDropData.getDataSize();
        }
        String[] strArr = this._rgLines;
        if (strArr != null) {
            for (String str : strArr) {
                i2 += StringUtil.getEncodedSize(str);
            }
        }
        boolean[] zArr = this._bsels;
        return zArr != null ? i2 + zArr.length : i2;
    }

    public Ptg getFormula() {
        return this._linkPtg;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("unknownShort1", new Supplier() { // from class: com.sunia.HTREnginev2.wwi
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = LbsDataSubRecord.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        });
        linkedHashMap.put("unknownPreFormulaInt", new Supplier() { // from class: com.sunia.HTREnginev2.zwi
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$1;
                lambda$getGenericProperties$1 = LbsDataSubRecord.this.lambda$getGenericProperties$1();
                return lambda$getGenericProperties$1;
            }
        });
        linkedHashMap.put("formula", new Supplier() { // from class: com.sunia.HTREnginev2.axi
            @Override // java.util.function.Supplier
            public final Object get() {
                return LbsDataSubRecord.this.getFormula();
            }
        });
        linkedHashMap.put("unknownPostFormulaByte", new Supplier() { // from class: com.sunia.HTREnginev2.bxi
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$2;
                lambda$getGenericProperties$2 = LbsDataSubRecord.this.lambda$getGenericProperties$2();
                return lambda$getGenericProperties$2;
            }
        });
        linkedHashMap.put("numberOfItems", new Supplier() { // from class: com.sunia.HTREnginev2.cxi
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(LbsDataSubRecord.this.getNumberOfItems());
            }
        });
        linkedHashMap.put("selEntryIx", new Supplier() { // from class: com.sunia.HTREnginev2.dxi
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$3;
                lambda$getGenericProperties$3 = LbsDataSubRecord.this.lambda$getGenericProperties$3();
                return lambda$getGenericProperties$3;
            }
        });
        linkedHashMap.put("style", new Supplier() { // from class: com.sunia.HTREnginev2.exi
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$4;
                lambda$getGenericProperties$4 = LbsDataSubRecord.this.lambda$getGenericProperties$4();
                return lambda$getGenericProperties$4;
            }
        });
        linkedHashMap.put("unknownShort10", new Supplier() { // from class: com.sunia.HTREnginev2.fxi
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$5;
                lambda$getGenericProperties$5 = LbsDataSubRecord.this.lambda$getGenericProperties$5();
                return lambda$getGenericProperties$5;
            }
        });
        linkedHashMap.put("dropData", new Supplier() { // from class: com.sunia.HTREnginev2.gxi
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$6;
                lambda$getGenericProperties$6 = LbsDataSubRecord.this.lambda$getGenericProperties$6();
                return lambda$getGenericProperties$6;
            }
        });
        linkedHashMap.put("rgLines", new Supplier() { // from class: com.sunia.HTREnginev2.xwi
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$7;
                lambda$getGenericProperties$7 = LbsDataSubRecord.this.lambda$getGenericProperties$7();
                return lambda$getGenericProperties$7;
            }
        });
        linkedHashMap.put("bsels", new Supplier() { // from class: com.sunia.HTREnginev2.ywi
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$8;
                lambda$getGenericProperties$8 = LbsDataSubRecord.this.lambda$getGenericProperties$8();
                return lambda$getGenericProperties$8;
            }
        });
        return Collections.unmodifiableMap(linkedHashMap);
    }

    public int getNumberOfItems() {
        return this._cLines;
    }

    @Override // org.apache.poi.hssf.record.SubRecord
    public boolean isTerminating() {
        return true;
    }

    @Override // org.apache.poi.hssf.record.SubRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeShort(19);
        littleEndianOutput.writeShort(this._cbFContinued);
        Ptg ptg = this._linkPtg;
        if (ptg == null) {
            littleEndianOutput.writeShort(0);
        } else {
            int size = ptg.getSize();
            int i = size + 6;
            if (this._unknownPostFormulaByte != null) {
                i++;
            }
            littleEndianOutput.writeShort(i);
            littleEndianOutput.writeShort(size);
            littleEndianOutput.writeInt(this._unknownPreFormulaInt);
            this._linkPtg.write(littleEndianOutput);
            Byte b = this._unknownPostFormulaByte;
            if (b != null) {
                littleEndianOutput.writeByte(b.intValue());
            }
        }
        littleEndianOutput.writeShort(this._cLines);
        littleEndianOutput.writeShort(this._iSel);
        littleEndianOutput.writeShort(this._flags);
        littleEndianOutput.writeShort(this._idEdit);
        LbsDropData lbsDropData = this._dropData;
        if (lbsDropData != null) {
            lbsDropData.serialize(littleEndianOutput);
        }
        String[] strArr = this._rgLines;
        if (strArr != null) {
            for (String str : strArr) {
                StringUtil.writeUnicodeString(littleEndianOutput, str);
            }
        }
        boolean[] zArr = this._bsels;
        if (zArr != null) {
            for (boolean z : zArr) {
                littleEndianOutput.writeByte(z ? 1 : 0);
            }
        }
    }

    public LbsDataSubRecord(LbsDataSubRecord lbsDataSubRecord) {
        super(lbsDataSubRecord);
        this._cbFContinued = lbsDataSubRecord._cbFContinued;
        this._unknownPreFormulaInt = lbsDataSubRecord._unknownPreFormulaInt;
        Ptg ptg = lbsDataSubRecord._linkPtg;
        this._linkPtg = ptg == null ? null : ptg.copy();
        this._unknownPostFormulaByte = lbsDataSubRecord._unknownPostFormulaByte;
        this._cLines = lbsDataSubRecord._cLines;
        this._iSel = lbsDataSubRecord._iSel;
        this._flags = lbsDataSubRecord._flags;
        this._idEdit = lbsDataSubRecord._idEdit;
        LbsDropData lbsDropData = lbsDataSubRecord._dropData;
        this._dropData = lbsDropData == null ? null : lbsDropData.copy();
        String[] strArr = lbsDataSubRecord._rgLines;
        this._rgLines = strArr == null ? null : (String[]) strArr.clone();
        boolean[] zArr = lbsDataSubRecord._bsels;
        this._bsels = zArr != null ? (boolean[]) zArr.clone() : null;
    }

    @Override // org.apache.poi.hssf.record.SubRecord, org.apache.poi.common.usermodel.GenericRecord
    public SubRecord.SubRecordTypes getGenericRecordType() {
        return SubRecord.SubRecordTypes.LBS_DATA;
    }

    @Override // org.apache.poi.hssf.record.SubRecord, org.apache.poi.common.Duplicatable
    public LbsDataSubRecord copy() {
        return new LbsDataSubRecord(this);
    }

    public LbsDataSubRecord(LittleEndianInput littleEndianInput, int i, int i2) {
        this._cbFContinued = i;
        int readUShort = littleEndianInput.readUShort();
        if (readUShort > 0) {
            int readUShort2 = littleEndianInput.readUShort();
            this._unknownPreFormulaInt = littleEndianInput.readInt();
            Ptg[] readTokens = Ptg.readTokens(readUShort2, littleEndianInput);
            if (readTokens.length == 1) {
                this._linkPtg = readTokens[0];
                int i3 = (readUShort - readUShort2) - 6;
                if (i3 == 0) {
                    this._unknownPostFormulaByte = null;
                } else if (i3 == 1) {
                    this._unknownPostFormulaByte = Byte.valueOf(littleEndianInput.readByte());
                } else {
                    throw new RecordFormatException("Unexpected leftover bytes");
                }
            } else {
                throw new RecordFormatException("Read " + readTokens.length + " tokens but expected exactly 1");
            }
        }
        this._cLines = littleEndianInput.readUShort();
        this._iSel = littleEndianInput.readUShort();
        this._flags = littleEndianInput.readUShort();
        this._idEdit = littleEndianInput.readUShort();
        if (i2 == 20) {
            this._dropData = new LbsDropData(littleEndianInput);
        }
        if ((this._flags & 2) != 0) {
            this._rgLines = new String[this._cLines];
            for (int i4 = 0; i4 < this._cLines; i4++) {
                this._rgLines[i4] = StringUtil.readUnicodeString(littleEndianInput);
            }
        }
        int i5 = this._flags;
        if (((i5 >> 4) & 1) + ((i5 >> 5) & 1) != 0) {
            this._bsels = new boolean[this._cLines];
            for (int i6 = 0; i6 < this._cLines; i6++) {
                this._bsels[i6] = littleEndianInput.readByte() == 1;
            }
        }
    }
}
