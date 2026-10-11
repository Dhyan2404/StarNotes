package org.apache.poi.hssf.record.pivottable;

import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.HSSFRecordTypes;
import org.apache.poi.hssf.record.RecordInputStream;
import org.apache.poi.hssf.record.StandardRecord;
import org.apache.poi.hssf.record.pivottable.ViewDefinitionRecord;
import org.apache.poi.util.LittleEndianOutput;
import org.apache.poi.util.StringUtil;

/* loaded from: classes12.dex */
public final class ViewDefinitionRecord extends StandardRecord {
    public static final short sid = 176;
    private int cCol;
    private int cDim;
    private int cDimCol;
    private int cDimData;
    private int cDimPg;
    private int cDimRw;
    private int cRw;
    private int colFirst;
    private int colFirstData;
    private int colLast;
    private String dataField;
    private int grbit;
    private int iCache;
    private int ipos4Data;
    private int itblAutoFmt;
    private String name;
    private int reserved;
    private int rwFirst;
    private int rwFirstData;
    private int rwFirstHead;
    private int rwLast;
    private int sxaxis4Data;

    public ViewDefinitionRecord(ViewDefinitionRecord viewDefinitionRecord) {
        super(viewDefinitionRecord);
        this.rwFirst = viewDefinitionRecord.rwFirst;
        this.rwLast = viewDefinitionRecord.rwLast;
        this.colFirst = viewDefinitionRecord.colFirst;
        this.colLast = viewDefinitionRecord.colLast;
        this.rwFirstHead = viewDefinitionRecord.rwFirstHead;
        this.rwFirstData = viewDefinitionRecord.rwFirstData;
        this.colFirstData = viewDefinitionRecord.colFirstData;
        this.iCache = viewDefinitionRecord.iCache;
        this.reserved = viewDefinitionRecord.reserved;
        this.sxaxis4Data = viewDefinitionRecord.sxaxis4Data;
        this.ipos4Data = viewDefinitionRecord.ipos4Data;
        this.cDim = viewDefinitionRecord.cDim;
        this.cDimRw = viewDefinitionRecord.cDimRw;
        this.cDimCol = viewDefinitionRecord.cDimCol;
        this.cDimPg = viewDefinitionRecord.cDimPg;
        this.cDimData = viewDefinitionRecord.cDimData;
        this.cRw = viewDefinitionRecord.cRw;
        this.cCol = viewDefinitionRecord.cCol;
        this.grbit = viewDefinitionRecord.grbit;
        this.itblAutoFmt = viewDefinitionRecord.itblAutoFmt;
        this.name = viewDefinitionRecord.name;
        this.dataField = viewDefinitionRecord.dataField;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$0() {
        return Integer.valueOf(this.rwFirst);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$1() {
        return Integer.valueOf(this.rwLast);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$10() {
        return Integer.valueOf(this.ipos4Data);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$11() {
        return Integer.valueOf(this.cDim);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$12() {
        return Integer.valueOf(this.cDimRw);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$13() {
        return Integer.valueOf(this.cDimCol);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$14() {
        return Integer.valueOf(this.cDimPg);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$15() {
        return Integer.valueOf(this.cDimData);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$16() {
        return Integer.valueOf(this.cRw);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$17() {
        return Integer.valueOf(this.cCol);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$18() {
        return Integer.valueOf(this.grbit);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$19() {
        return Integer.valueOf(this.itblAutoFmt);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$2() {
        return Integer.valueOf(this.colFirst);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$20() {
        return this.name;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$21() {
        return this.dataField;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$3() {
        return Integer.valueOf(this.colLast);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$4() {
        return Integer.valueOf(this.rwFirstHead);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$5() {
        return Integer.valueOf(this.rwFirstData);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$6() {
        return Integer.valueOf(this.colFirstData);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$7() {
        return Integer.valueOf(this.iCache);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$8() {
        return Integer.valueOf(this.reserved);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$9() {
        return Integer.valueOf(this.sxaxis4Data);
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        return StringUtil.getEncodedSize(this.name) + 40 + StringUtil.getEncodedSize(this.dataField);
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("rwFirst", new Supplier() { // from class: com.sunia.HTREnginev2.e2o
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = ViewDefinitionRecord.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        });
        linkedHashMap.put("rwLast", new Supplier() { // from class: com.sunia.HTREnginev2.g2o
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$1;
                lambda$getGenericProperties$1 = ViewDefinitionRecord.this.lambda$getGenericProperties$1();
                return lambda$getGenericProperties$1;
            }
        });
        linkedHashMap.put("colFirst", new Supplier() { // from class: com.sunia.HTREnginev2.j2o
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$2;
                lambda$getGenericProperties$2 = ViewDefinitionRecord.this.lambda$getGenericProperties$2();
                return lambda$getGenericProperties$2;
            }
        });
        linkedHashMap.put("colLast", new Supplier() { // from class: com.sunia.HTREnginev2.k2o
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$3;
                lambda$getGenericProperties$3 = ViewDefinitionRecord.this.lambda$getGenericProperties$3();
                return lambda$getGenericProperties$3;
            }
        });
        linkedHashMap.put("rwFirstHead", new Supplier() { // from class: com.sunia.HTREnginev2.l2o
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$4;
                lambda$getGenericProperties$4 = ViewDefinitionRecord.this.lambda$getGenericProperties$4();
                return lambda$getGenericProperties$4;
            }
        });
        linkedHashMap.put("rwFirstData", new Supplier() { // from class: com.sunia.HTREnginev2.m2o
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$5;
                lambda$getGenericProperties$5 = ViewDefinitionRecord.this.lambda$getGenericProperties$5();
                return lambda$getGenericProperties$5;
            }
        });
        linkedHashMap.put("colFirstData", new Supplier() { // from class: com.sunia.HTREnginev2.n2o
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$6;
                lambda$getGenericProperties$6 = ViewDefinitionRecord.this.lambda$getGenericProperties$6();
                return lambda$getGenericProperties$6;
            }
        });
        linkedHashMap.put("iCache", new Supplier() { // from class: com.sunia.HTREnginev2.o2o
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$7;
                lambda$getGenericProperties$7 = ViewDefinitionRecord.this.lambda$getGenericProperties$7();
                return lambda$getGenericProperties$7;
            }
        });
        linkedHashMap.put("reserved", new Supplier() { // from class: com.sunia.HTREnginev2.q2o
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$8;
                lambda$getGenericProperties$8 = ViewDefinitionRecord.this.lambda$getGenericProperties$8();
                return lambda$getGenericProperties$8;
            }
        });
        linkedHashMap.put("sxaxis4Data", new Supplier() { // from class: com.sunia.HTREnginev2.r2o
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$9;
                lambda$getGenericProperties$9 = ViewDefinitionRecord.this.lambda$getGenericProperties$9();
                return lambda$getGenericProperties$9;
            }
        });
        linkedHashMap.put("ipos4Data", new Supplier() { // from class: com.sunia.HTREnginev2.p2o
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$10;
                lambda$getGenericProperties$10 = ViewDefinitionRecord.this.lambda$getGenericProperties$10();
                return lambda$getGenericProperties$10;
            }
        });
        linkedHashMap.put("cDim", new Supplier() { // from class: com.sunia.HTREnginev2.s2o
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$11;
                lambda$getGenericProperties$11 = ViewDefinitionRecord.this.lambda$getGenericProperties$11();
                return lambda$getGenericProperties$11;
            }
        });
        linkedHashMap.put("cDimRw", new Supplier() { // from class: com.sunia.HTREnginev2.t2o
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$12;
                lambda$getGenericProperties$12 = ViewDefinitionRecord.this.lambda$getGenericProperties$12();
                return lambda$getGenericProperties$12;
            }
        });
        linkedHashMap.put("cDimCol", new Supplier() { // from class: com.sunia.HTREnginev2.u2o
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$13;
                lambda$getGenericProperties$13 = ViewDefinitionRecord.this.lambda$getGenericProperties$13();
                return lambda$getGenericProperties$13;
            }
        });
        linkedHashMap.put("cDimPg", new Supplier() { // from class: com.sunia.HTREnginev2.v2o
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$14;
                lambda$getGenericProperties$14 = ViewDefinitionRecord.this.lambda$getGenericProperties$14();
                return lambda$getGenericProperties$14;
            }
        });
        linkedHashMap.put("cDimData", new Supplier() { // from class: com.sunia.HTREnginev2.w2o
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$15;
                lambda$getGenericProperties$15 = ViewDefinitionRecord.this.lambda$getGenericProperties$15();
                return lambda$getGenericProperties$15;
            }
        });
        linkedHashMap.put("cRw", new Supplier() { // from class: com.sunia.HTREnginev2.x2o
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$16;
                lambda$getGenericProperties$16 = ViewDefinitionRecord.this.lambda$getGenericProperties$16();
                return lambda$getGenericProperties$16;
            }
        });
        linkedHashMap.put("cCol", new Supplier() { // from class: com.sunia.HTREnginev2.y2o
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$17;
                lambda$getGenericProperties$17 = ViewDefinitionRecord.this.lambda$getGenericProperties$17();
                return lambda$getGenericProperties$17;
            }
        });
        linkedHashMap.put("grbit", new Supplier() { // from class: com.sunia.HTREnginev2.z2o
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$18;
                lambda$getGenericProperties$18 = ViewDefinitionRecord.this.lambda$getGenericProperties$18();
                return lambda$getGenericProperties$18;
            }
        });
        linkedHashMap.put("itblAutoFmt", new Supplier() { // from class: com.sunia.HTREnginev2.f2o
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$19;
                lambda$getGenericProperties$19 = ViewDefinitionRecord.this.lambda$getGenericProperties$19();
                return lambda$getGenericProperties$19;
            }
        });
        linkedHashMap.put("name", new Supplier() { // from class: com.sunia.HTREnginev2.h2o
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$20;
                lambda$getGenericProperties$20 = ViewDefinitionRecord.this.lambda$getGenericProperties$20();
                return lambda$getGenericProperties$20;
            }
        });
        linkedHashMap.put("dataField", new Supplier() { // from class: com.sunia.HTREnginev2.i2o
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$21;
                lambda$getGenericProperties$21 = ViewDefinitionRecord.this.lambda$getGenericProperties$21();
                return lambda$getGenericProperties$21;
            }
        });
        return Collections.unmodifiableMap(linkedHashMap);
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return (short) 176;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeShort(this.rwFirst);
        littleEndianOutput.writeShort(this.rwLast);
        littleEndianOutput.writeShort(this.colFirst);
        littleEndianOutput.writeShort(this.colLast);
        littleEndianOutput.writeShort(this.rwFirstHead);
        littleEndianOutput.writeShort(this.rwFirstData);
        littleEndianOutput.writeShort(this.colFirstData);
        littleEndianOutput.writeShort(this.iCache);
        littleEndianOutput.writeShort(this.reserved);
        littleEndianOutput.writeShort(this.sxaxis4Data);
        littleEndianOutput.writeShort(this.ipos4Data);
        littleEndianOutput.writeShort(this.cDim);
        littleEndianOutput.writeShort(this.cDimRw);
        littleEndianOutput.writeShort(this.cDimCol);
        littleEndianOutput.writeShort(this.cDimPg);
        littleEndianOutput.writeShort(this.cDimData);
        littleEndianOutput.writeShort(this.cRw);
        littleEndianOutput.writeShort(this.cCol);
        littleEndianOutput.writeShort(this.grbit);
        littleEndianOutput.writeShort(this.itblAutoFmt);
        littleEndianOutput.writeShort(this.name.length());
        littleEndianOutput.writeShort(this.dataField.length());
        StringUtil.writeUnicodeStringFlagAndData(littleEndianOutput, this.name);
        StringUtil.writeUnicodeStringFlagAndData(littleEndianOutput, this.dataField);
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.VIEW_DEFINITION;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public ViewDefinitionRecord copy() {
        return new ViewDefinitionRecord(this);
    }

    public ViewDefinitionRecord(RecordInputStream recordInputStream) {
        this.rwFirst = recordInputStream.readUShort();
        this.rwLast = recordInputStream.readUShort();
        this.colFirst = recordInputStream.readUShort();
        this.colLast = recordInputStream.readUShort();
        this.rwFirstHead = recordInputStream.readUShort();
        this.rwFirstData = recordInputStream.readUShort();
        this.colFirstData = recordInputStream.readUShort();
        this.iCache = recordInputStream.readUShort();
        this.reserved = recordInputStream.readUShort();
        this.sxaxis4Data = recordInputStream.readUShort();
        this.ipos4Data = recordInputStream.readUShort();
        this.cDim = recordInputStream.readUShort();
        this.cDimRw = recordInputStream.readUShort();
        this.cDimCol = recordInputStream.readUShort();
        this.cDimPg = recordInputStream.readUShort();
        this.cDimData = recordInputStream.readUShort();
        this.cRw = recordInputStream.readUShort();
        this.cCol = recordInputStream.readUShort();
        this.grbit = recordInputStream.readUShort();
        this.itblAutoFmt = recordInputStream.readUShort();
        int readUShort = recordInputStream.readUShort();
        int readUShort2 = recordInputStream.readUShort();
        this.name = StringUtil.readUnicodeString(recordInputStream, readUShort);
        this.dataField = StringUtil.readUnicodeString(recordInputStream, readUShort2);
    }
}
