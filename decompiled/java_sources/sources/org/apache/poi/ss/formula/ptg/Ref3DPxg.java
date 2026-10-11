package org.apache.poi.ss.formula.ptg;

import com.sunia.HTREnginev2.gon;
import java.util.Map;
import java.util.function.Supplier;
import okhttp3.internal.publicsuffix.PublicSuffixDatabase;
import org.apache.poi.ss.formula.SheetIdentifier;
import org.apache.poi.ss.formula.SheetRangeAndWorkbookIndexFormatter;
import org.apache.poi.ss.formula.SheetRangeIdentifier;
import org.apache.poi.ss.formula.ptg.Ref3DPxg;
import org.apache.poi.ss.util.CellReference;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes13.dex */
public final class Ref3DPxg extends RefPtgBase implements Pxg3D {
    private int externalWorkbookNumber;
    private String firstSheetName;
    private String lastSheetName;

    public Ref3DPxg(Ref3DPxg ref3DPxg) {
        super(ref3DPxg);
        this.externalWorkbookNumber = -1;
        this.externalWorkbookNumber = ref3DPxg.externalWorkbookNumber;
        this.firstSheetName = ref3DPxg.firstSheetName;
        this.lastSheetName = ref3DPxg.lastSheetName;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$0() {
        return super.getGenericProperties();
    }

    public String format2DRefAsString() {
        return formatReferenceAsString();
    }

    @Override // org.apache.poi.ss.formula.ptg.Pxg
    public int getExternalWorkbookNumber() {
        return this.externalWorkbookNumber;
    }

    @Override // org.apache.poi.ss.formula.ptg.RefPtgBase, org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties(gon.f71271X, new Supplier() { // from class: com.sunia.HTREnginev2.uil
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = Ref3DPxg.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        }, "externalWorkbookNumber", new Supplier() { // from class: com.sunia.HTREnginev2.vil
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(Ref3DPxg.this.getExternalWorkbookNumber());
            }
        }, "firstSheetName", new Supplier() { // from class: com.sunia.HTREnginev2.wil
            @Override // java.util.function.Supplier
            public final Object get() {
                return Ref3DPxg.this.getSheetName();
            }
        }, "lastSheetName", new Supplier() { // from class: com.sunia.HTREnginev2.xil
            @Override // java.util.function.Supplier
            public final Object get() {
                return Ref3DPxg.this.getLastSheetName();
            }
        });
    }

    @Override // org.apache.poi.ss.formula.ptg.Pxg3D
    public String getLastSheetName() {
        return this.lastSheetName;
    }

    @Override // org.apache.poi.ss.formula.ptg.Pxg
    public String getSheetName() {
        return this.firstSheetName;
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public byte getSid() {
        return (byte) -1;
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public int getSize() {
        return 1;
    }

    @Override // org.apache.poi.ss.formula.ptg.Pxg3D
    public void setLastSheetName(String str) {
        this.lastSheetName = str;
    }

    @Override // org.apache.poi.ss.formula.ptg.Pxg
    public void setSheetName(String str) {
        this.firstSheetName = str;
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public String toFormulaString() {
        StringBuilder sb = new StringBuilder(64);
        SheetRangeAndWorkbookIndexFormatter.format(sb, this.externalWorkbookNumber, this.firstSheetName, this.lastSheetName);
        sb.append(PublicSuffixDatabase.f103895g);
        sb.append(formatReferenceAsString());
        return sb.toString();
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public void write(LittleEndianOutput littleEndianOutput) {
        throw new IllegalStateException("XSSF-only Ptg, should not be serialised");
    }

    @Override // org.apache.poi.ss.formula.ptg.OperandPtg, org.apache.poi.ss.formula.ptg.Ptg, org.apache.poi.common.Duplicatable
    public Ref3DPxg copy() {
        return new Ref3DPxg(this);
    }

    public Ref3DPxg(int i, SheetIdentifier sheetIdentifier, String str) {
        this(i, sheetIdentifier, new CellReference(str));
    }

    public Ref3DPxg(int i, SheetIdentifier sheetIdentifier, CellReference cellReference) {
        super(cellReference);
        this.externalWorkbookNumber = i;
        this.firstSheetName = sheetIdentifier.getSheetIdentifier().getName();
        if (sheetIdentifier instanceof SheetRangeIdentifier) {
            this.lastSheetName = ((SheetRangeIdentifier) sheetIdentifier).getLastSheetIdentifier().getName();
        } else {
            this.lastSheetName = null;
        }
    }

    public Ref3DPxg(SheetIdentifier sheetIdentifier, String str) {
        this(sheetIdentifier, new CellReference(str));
    }

    public Ref3DPxg(SheetIdentifier sheetIdentifier, CellReference cellReference) {
        this(-1, sheetIdentifier, cellReference);
    }
}
