package org.apache.poi.convert.xwpf.property;

import com.sunia.HTREnginev2.C13471a5;
import com.sunia.HTREnginev2.C13513b5;
import com.sunia.HTREnginev2.C13551c5;
import com.sunia.HTREnginev2.C14742z4;
import java.util.function.Function;
import org.apache.poi.xwpf.usermodel.XWPFTable;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTBorder;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblCellMar;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblWidth;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTcMar;

/* loaded from: classes12.dex */
public abstract class AbstractTblPropertyFetcher implements ITblPropertyFetcher {
    private CTBorder[] borders;
    private double[] margin;

    @Override // org.apache.poi.convert.xwpf.property.ITblPropertyFetcher, org.apache.poi.convert.xwpf.property.BordersFetcher
    public CTBorder[] getCTBorders() {
        return this.borders;
    }

    @Override // org.apache.poi.convert.xwpf.property.ITblPropertyFetcher
    public double[] getCellMargin() {
        return this.margin;
    }

    public Function<CTTblCellMar, CTTblWidth> getCellMarginFunction(int i) {
        return i != 0 ? i != 1 ? i != 2 ? new C13551c5() : new C13513b5() : new C13471a5() : new C14742z4();
    }

    public Function<CTTcMar, CTTblWidth> getTcMarginFunction(int i) {
        return i != 0 ? i != 1 ? i != 2 ? new Function() { // from class: com.sunia.HTREnginev2.g5
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((CTTcMar) obj).getLeft();
            }
        } : new Function() { // from class: com.sunia.HTREnginev2.f5
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((CTTcMar) obj).getBottom();
            }
        } : new Function() { // from class: com.sunia.HTREnginev2.e5
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((CTTcMar) obj).getRight();
            }
        } : new Function() { // from class: com.sunia.HTREnginev2.d5
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((CTTcMar) obj).getTop();
            }
        };
    }

    public void initBorders() {
        if (isSetTcBorders()) {
            CTBorder[] cTBorderArr = new CTBorder[4];
            this.borders = cTBorderArr;
            cTBorderArr[0] = getCTBorder(XWPFTable.Border.TOP);
            this.borders[1] = getCTBorder(XWPFTable.Border.RIGHT);
            this.borders[2] = getCTBorder(XWPFTable.Border.BOTTOM);
            this.borders[3] = getCTBorder(XWPFTable.Border.LEFT);
        }
    }

    public void initMargin() {
        if (!isSetTcMar()) {
            return;
        }
        this.margin = new double[4];
        int i = 0;
        while (true) {
            double[] dArr = this.margin;
            if (i >= dArr.length) {
                return;
            }
            dArr[i] = getCellMargin(i);
            i++;
        }
    }
}
