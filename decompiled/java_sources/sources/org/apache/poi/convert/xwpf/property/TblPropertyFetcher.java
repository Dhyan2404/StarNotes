package org.apache.poi.convert.xwpf.property;

import com.sunia.HTREnginev2.aan;
import com.sunia.HTREnginev2.ban;
import com.sunia.HTREnginev2.can;
import com.sunia.HTREnginev2.dan;
import com.sunia.HTREnginev2.ean;
import com.sunia.HTREnginev2.fan;
import com.sunia.HTREnginev2.gan;
import com.sunia.HTREnginev2.han;
import com.sunia.HTREnginev2.ian;
import com.sunia.HTREnginev2.jan;
import com.sunia.HTREnginev2.kan;
import com.sunia.HTREnginev2.lan;
import com.sunia.HTREnginev2.man;
import com.sunia.HTREnginev2.nan;
import com.sunia.HTREnginev2.w9n;
import com.sunia.HTREnginev2.x9n;
import com.sunia.HTREnginev2.y9n;
import com.sunia.HTREnginev2.z9n;
import java.util.function.Function;
import org.apache.poi.ooxml.util.POIXMLUnits;
import org.apache.poi.util.Units;
import org.apache.poi.xwpf.usermodel.XWPFTable;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTBorder;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblBorders;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblCellMar;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblPrBase;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblWidth;

/* loaded from: classes12.dex */
public class TblPropertyFetcher extends AbstractTblPropertyFetcher {
    private CTTblPrBase tblPr;

    /* renamed from: org.apache.poi.convert.xwpf.property.TblPropertyFetcher$1 */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C194311 {
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

    public TblPropertyFetcher(CTTblPrBase cTTblPrBase) {
        this.tblPr = cTTblPrBase;
        initBorders();
        initMargin();
    }

    private CTTblBorders getTblBorders(boolean z) {
        if (this.tblPr.isSetTblBorders()) {
            return this.tblPr.getTblBorders();
        }
        if (z) {
            return this.tblPr.addNewTblBorders();
        }
        return null;
    }

    @Override // org.apache.poi.convert.xwpf.property.ITblPropertyFetcher
    public CTBorder getCTBorder(XWPFTable.Border border) {
        return getCTBorder(getTblBorders(false), false, border);
    }

    @Override // org.apache.poi.convert.xwpf.property.ITblPropertyFetcher
    public double getCellMargin(int i) {
        return getCellMargin(getCellMarginFunction(i));
    }

    @Override // org.apache.poi.convert.xwpf.property.ITblPropertyFetcher
    public boolean isSetTcBorders() {
        if (!this.tblPr.isSetTblBorders()) {
            return false;
        }
        CTTblBorders tblBorders = this.tblPr.getTblBorders();
        return tblBorders.isSetLeft() || tblBorders.isSetRight() || tblBorders.isSetTop() || tblBorders.isSetBottom();
    }

    @Override // org.apache.poi.convert.xwpf.property.ITblPropertyFetcher
    public boolean isSetTcMar() {
        return this.tblPr.isSetTblCellMar();
    }

    private double getCellMargin(Function<CTTblCellMar, CTTblWidth> function) {
        CTTblWidth apply;
        CTTblCellMar tblCellMar = this.tblPr.getTblCellMar();
        if (tblCellMar == null || (apply = function.apply(tblCellMar)) == null) {
            return 0.0d;
        }
        return Units.toDXA(POIXMLUnits.parseLength(apply.xgetW()));
    }

    public static CTBorder getCTBorder(CTTblBorders cTTblBorders, boolean z, XWPFTable.Border border) {
        Function w9nVar;
        Function nanVar;
        Function x9nVar;
        switch (C194311.$SwitchMap$org$apache$poi$xwpf$usermodel$XWPFTable$Border[border.ordinal()]) {
            case 1:
                w9nVar = new w9n();
                nanVar = new nan();
                x9nVar = new x9n();
                break;
            case 2:
                w9nVar = new y9n();
                nanVar = new z9n();
                x9nVar = new aan();
                break;
            case 3:
                w9nVar = new ban();
                nanVar = new can();
                x9nVar = new dan();
                break;
            case 4:
                w9nVar = new ean();
                nanVar = new fan();
                x9nVar = new gan();
                break;
            case 5:
                w9nVar = new han();
                nanVar = new ian();
                x9nVar = new jan();
                break;
            case 6:
                w9nVar = new kan();
                nanVar = new lan();
                x9nVar = new man();
                break;
            default:
                return null;
        }
        if (cTTblBorders == null) {
            return null;
        }
        if (((Boolean) w9nVar.apply(cTTblBorders)).booleanValue()) {
            return (CTBorder) nanVar.apply(cTTblBorders);
        }
        if (z) {
            return (CTBorder) x9nVar.apply(cTTblBorders);
        }
        return null;
    }
}
