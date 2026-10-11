package org.apache.poi.ss.formula.ptg;

import java.util.Map;
import java.util.function.Supplier;
import okhttp3.internal.publicsuffix.PublicSuffixDatabase;
import org.apache.poi.ss.formula.SheetNameFormatter;
import org.apache.poi.ss.formula.ptg.NameXPxg;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes13.dex */
public final class NameXPxg extends OperandPtg implements Pxg {
    private int externalWorkbookNumber;
    private String nameName;
    private String sheetName;

    public NameXPxg(int i, String str, String str2) {
        this.externalWorkbookNumber = i;
        this.sheetName = str;
        this.nameName = str2;
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public byte getDefaultOperandClass() {
        return (byte) 32;
    }

    @Override // org.apache.poi.ss.formula.ptg.Pxg
    public int getExternalWorkbookNumber() {
        return this.externalWorkbookNumber;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("externalWorkbookNumber", new Supplier() { // from class: com.sunia.HTREnginev2.jsj
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(NameXPxg.this.getExternalWorkbookNumber());
            }
        }, "sheetName", new Supplier() { // from class: com.sunia.HTREnginev2.ksj
            @Override // java.util.function.Supplier
            public final Object get() {
                return NameXPxg.this.getSheetName();
            }
        }, "nameName", new Supplier() { // from class: com.sunia.HTREnginev2.lsj
            @Override // java.util.function.Supplier
            public final Object get() {
                return NameXPxg.this.getNameName();
            }
        });
    }

    public String getNameName() {
        return this.nameName;
    }

    @Override // org.apache.poi.ss.formula.ptg.Pxg
    public String getSheetName() {
        return this.sheetName;
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public byte getSid() {
        return (byte) -1;
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public int getSize() {
        return 1;
    }

    @Override // org.apache.poi.ss.formula.ptg.Pxg
    public void setSheetName(String str) {
        this.sheetName = str;
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public String toFormulaString() {
        boolean z;
        StringBuilder sb = new StringBuilder(64);
        boolean z2 = true;
        if (this.externalWorkbookNumber >= 0) {
            sb.append('[');
            sb.append(this.externalWorkbookNumber);
            sb.append(']');
            z = true;
        } else {
            z = false;
        }
        String str = this.sheetName;
        if (str != null) {
            SheetNameFormatter.appendFormat(sb, str);
        } else {
            z2 = z;
        }
        if (z2) {
            sb.append(PublicSuffixDatabase.f103895g);
        }
        sb.append(this.nameName);
        return sb.toString();
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public void write(LittleEndianOutput littleEndianOutput) {
        throw new IllegalStateException("XSSF-only Ptg, should not be serialised");
    }

    @Override // org.apache.poi.ss.formula.ptg.OperandPtg, org.apache.poi.ss.formula.ptg.Ptg, org.apache.poi.common.Duplicatable
    public NameXPxg copy() {
        return new NameXPxg(this);
    }

    public NameXPxg(NameXPxg nameXPxg) {
        super(nameXPxg);
        this.externalWorkbookNumber = -1;
        this.externalWorkbookNumber = nameXPxg.externalWorkbookNumber;
        this.sheetName = nameXPxg.sheetName;
        this.nameName = nameXPxg.nameName;
    }

    public NameXPxg(String str, String str2) {
        this(-1, str, str2);
    }

    public NameXPxg(String str) {
        this(-1, null, str);
    }
}
