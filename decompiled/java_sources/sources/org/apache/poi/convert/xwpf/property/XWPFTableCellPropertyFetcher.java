package org.apache.poi.convert.xwpf.property;

import java.util.function.Function;
import org.apache.poi.ooxml.util.POIXMLUnits;
import org.apache.poi.util.Units;
import org.apache.poi.xwpf.usermodel.XWPFTable;
import org.apache.poi.xwpf.usermodel.XWPFTableCell;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTBorder;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblWidth;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTc;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTcBorders;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTcMar;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTcPr;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STMerge;

/* loaded from: classes12.dex */
public class XWPFTableCellPropertyFetcher extends AbstractTblPropertyFetcher {
    private int gridSpan;
    private XWPFTableRowPropertyFetcher rowPropertyFetcher;
    private XWPFTableCell tableCell;

    /* renamed from: org.apache.poi.convert.xwpf.property.XWPFTableCellPropertyFetcher$1 */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C194321 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$xwpf$usermodel$XWPFTable$Border;

        static {
            int[] iArr = new int[XWPFTable.Border.values().length];
            $SwitchMap$org$apache$poi$xwpf$usermodel$XWPFTable$Border = iArr;
            try {
                iArr[XWPFTable.Border.INSIDE_V.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$xwpf$usermodel$XWPFTable$Border[XWPFTable.Border.INSIDE_H.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$xwpf$usermodel$XWPFTable$Border[XWPFTable.Border.LEFT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$poi$xwpf$usermodel$XWPFTable$Border[XWPFTable.Border.TOP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$apache$poi$xwpf$usermodel$XWPFTable$Border[XWPFTable.Border.RIGHT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$apache$poi$xwpf$usermodel$XWPFTable$Border[XWPFTable.Border.BOTTOM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public XWPFTableCellPropertyFetcher(XWPFTableRowPropertyFetcher xWPFTableRowPropertyFetcher, XWPFTableCell xWPFTableCell) {
        this.rowPropertyFetcher = xWPFTableRowPropertyFetcher;
        this.tableCell = xWPFTableCell;
        xWPFTableCell.readDocument();
        this.gridSpan = readGridSpan();
        initBorders();
        initMargin();
    }

    private CTTcBorders getCTTcBorders() {
        CTTcPr tcPr = getTcPr();
        if (tcPr == null) {
            return null;
        }
        return tcPr.getTcBorders();
    }

    private CTTcMar getCTTcMar() {
        CTTcPr tcPr = getTcPr();
        if (tcPr == null) {
            return null;
        }
        return tcPr.getTcMar();
    }

    private int readGridSpan() {
        CTTcPr tcPr = getTcPr();
        if (tcPr == null || !tcPr.isSetGridSpan()) {
            return 1;
        }
        return Math.max(1, tcPr.getGridSpan().getVal().intValue());
    }

    @Override // org.apache.poi.convert.xwpf.property.ITblPropertyFetcher
    public CTBorder getCTBorder(XWPFTable.Border border) {
        Function function;
        Function function2;
        switch (C194321.$SwitchMap$org$apache$poi$xwpf$usermodel$XWPFTable$Border[border.ordinal()]) {
            case 1:
                function = new Function() { // from class: com.sunia.HTREnginev2.kuo
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return Boolean.valueOf(((CTTcBorders) obj).isSetInsideV());
                    }
                };
                function2 = new Function() { // from class: com.sunia.HTREnginev2.puo
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return ((CTTcBorders) obj).getInsideV();
                    }
                };
                break;
            case 2:
                function = new Function() { // from class: com.sunia.HTREnginev2.quo
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return Boolean.valueOf(((CTTcBorders) obj).isSetInsideH());
                    }
                };
                function2 = new Function() { // from class: com.sunia.HTREnginev2.ruo
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return ((CTTcBorders) obj).getInsideH();
                    }
                };
                break;
            case 3:
                function = new Function() { // from class: com.sunia.HTREnginev2.suo
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return Boolean.valueOf(((CTTcBorders) obj).isSetLeft());
                    }
                };
                function2 = new Function() { // from class: com.sunia.HTREnginev2.tuo
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return ((CTTcBorders) obj).getLeft();
                    }
                };
                break;
            case 4:
                function = new Function() { // from class: com.sunia.HTREnginev2.uuo
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return Boolean.valueOf(((CTTcBorders) obj).isSetTop());
                    }
                };
                function2 = new Function() { // from class: com.sunia.HTREnginev2.vuo
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return ((CTTcBorders) obj).getTop();
                    }
                };
                break;
            case 5:
                function = new Function() { // from class: com.sunia.HTREnginev2.luo
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return Boolean.valueOf(((CTTcBorders) obj).isSetRight());
                    }
                };
                function2 = new Function() { // from class: com.sunia.HTREnginev2.muo
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return ((CTTcBorders) obj).getRight();
                    }
                };
                break;
            case 6:
                function = new Function() { // from class: com.sunia.HTREnginev2.nuo
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return Boolean.valueOf(((CTTcBorders) obj).isSetBottom());
                    }
                };
                function2 = new Function() { // from class: com.sunia.HTREnginev2.ouo
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return ((CTTcBorders) obj).getBottom();
                    }
                };
                break;
            default:
                return null;
        }
        CTTcBorders cTTcBorders = getCTTcBorders();
        if (cTTcBorders != null && ((Boolean) function.apply(cTTcBorders)).booleanValue()) {
            return (CTBorder) function2.apply(cTTcBorders);
        }
        return null;
    }

    public CTTc getCTTc() {
        return this.tableCell.getCTTc();
    }

    @Override // org.apache.poi.convert.xwpf.property.ITblPropertyFetcher
    public double getCellMargin(int i) {
        return getCellMargin(getTcMarginFunction(i));
    }

    public int getGridSpan() {
        return this.gridSpan;
    }

    public XWPFTableRowPropertyFetcher getRowPropertyFetcher() {
        return this.rowPropertyFetcher;
    }

    public XWPFTableCell getTableCell() {
        return this.tableCell;
    }

    public XWPFTablePropertyFetcher getTablePropertyFetcher() {
        return this.rowPropertyFetcher.getTablePropertyFetcher();
    }

    public CTTcPr getTcPr() {
        CTTc cTTc = getCTTc();
        return cTTc.isSetTcPr() ? cTTc.getTcPr() : cTTc.addNewTcPr();
    }

    public STMerge.Enum getVMerge() {
        CTTcPr tcPr = getTcPr();
        if (tcPr == null || !tcPr.isSetVMerge()) {
            return null;
        }
        STMerge.Enum val = tcPr.getVMerge().getVal();
        return val == null ? STMerge.CONTINUE : val;
    }

    @Override // org.apache.poi.convert.xwpf.property.ITblPropertyFetcher
    public boolean isSetTcBorders() {
        CTTcPr tcPr = getTcPr();
        return tcPr != null && tcPr.isSetTcBorders();
    }

    @Override // org.apache.poi.convert.xwpf.property.ITblPropertyFetcher
    public boolean isSetTcMar() {
        CTTcPr tcPr = getTcPr();
        return tcPr != null && tcPr.isSetTcMar();
    }

    private double getCellMargin(Function<CTTcMar, CTTblWidth> function) {
        CTTblWidth apply;
        CTTcMar cTTcMar = getCTTcMar();
        if (cTTcMar == null || (apply = function.apply(cTTcMar)) == null) {
            return 0.0d;
        }
        return Units.toDXA(POIXMLUnits.parseLength(apply.xgetW()));
    }
}
