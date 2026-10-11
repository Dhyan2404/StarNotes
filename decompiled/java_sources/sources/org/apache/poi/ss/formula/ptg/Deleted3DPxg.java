package org.apache.poi.ss.formula.ptg;

import java.util.Map;
import java.util.function.Supplier;
import okhttp3.internal.publicsuffix.PublicSuffixDatabase;
import org.apache.poi.ss.formula.SheetNameFormatter;
import org.apache.poi.ss.formula.ptg.Deleted3DPxg;
import org.apache.poi.ss.usermodel.FormulaError;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes13.dex */
public final class Deleted3DPxg extends OperandPtg implements Pxg {
    private int externalWorkbookNumber;
    private String sheetName;

    public Deleted3DPxg(int i, String str) {
        this.externalWorkbookNumber = i;
        this.sheetName = str;
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
        return GenericRecordUtil.getGenericProperties("externalWorkbookNumber", new Supplier() { // from class: com.sunia.HTREnginev2.p3f
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(Deleted3DPxg.this.getExternalWorkbookNumber());
            }
        }, "sheetName", new Supplier() { // from class: com.sunia.HTREnginev2.q3f
            @Override // java.util.function.Supplier
            public final Object get() {
                return Deleted3DPxg.this.getSheetName();
            }
        }, "formulaError", new Supplier() { // from class: com.sunia.HTREnginev2.r3f
            @Override // java.util.function.Supplier
            public final Object get() {
                Object obj;
                obj = FormulaError.REF;
                return obj;
            }
        });
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
        StringBuilder sb = new StringBuilder(64);
        if (this.externalWorkbookNumber >= 0) {
            sb.append('[');
            sb.append(this.externalWorkbookNumber);
            sb.append(']');
        }
        String str = this.sheetName;
        if (str != null) {
            SheetNameFormatter.appendFormat(sb, str);
        }
        sb.append(PublicSuffixDatabase.f103895g);
        sb.append(FormulaError.REF.getString());
        return sb.toString();
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public void write(LittleEndianOutput littleEndianOutput) {
        throw new IllegalStateException("XSSF-only Ptg, should not be serialised");
    }

    public Deleted3DPxg(Deleted3DPxg deleted3DPxg) {
        super(deleted3DPxg);
        this.externalWorkbookNumber = -1;
        this.externalWorkbookNumber = deleted3DPxg.externalWorkbookNumber;
        this.sheetName = deleted3DPxg.sheetName;
    }

    @Override // org.apache.poi.ss.formula.ptg.OperandPtg, org.apache.poi.ss.formula.ptg.Ptg, org.apache.poi.common.Duplicatable
    public Deleted3DPxg copy() {
        return new Deleted3DPxg(this);
    }

    public Deleted3DPxg(String str) {
        this(-1, str);
    }
}
