package org.apache.poi.convert.xwpf.property;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.function.Function;
import org.apache.poi.convert.WordToHtmlUtils;
import org.apache.poi.convert.xwpf.property.ITblPropertyFetcher;
import org.apache.poi.xwpf.usermodel.XWPFTable;
import org.apache.poi.xwpf.usermodel.XWPFTableCell;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTBorder;

/* loaded from: classes12.dex */
public class TableCellPropertyListFetcher implements ITblPropertyFetcher {
    private List<Double> colWidthList;
    private XWPFTableCellPropertyFetcher fetcher;
    private List<ITblPropertyFetcher> list;
    private XWPFTableCell tableCell;

    public TableCellPropertyListFetcher(XWPFTableCellPropertyFetcher xWPFTableCellPropertyFetcher) {
        ArrayList arrayList = new ArrayList();
        this.list = arrayList;
        this.fetcher = xWPFTableCellPropertyFetcher;
        arrayList.add(xWPFTableCellPropertyFetcher);
        this.colWidthList = xWPFTableCellPropertyFetcher.getTablePropertyFetcher().getColWidthList();
        this.tableCell = xWPFTableCellPropertyFetcher.getTableCell();
    }

    private <R> R findFirst(Function<ITblPropertyFetcher, R> function) {
        Iterator<ITblPropertyFetcher> it2 = this.list.iterator();
        while (it2.hasNext()) {
            R apply = function.apply(it2.next());
            if (!WordToHtmlUtils.isNull(apply)) {
                return apply;
            }
        }
        return null;
    }

    public void addFetcher(ITblPropertyFetcher iTblPropertyFetcher) {
        this.list.add(iTblPropertyFetcher);
    }

    @Override // org.apache.poi.convert.xwpf.property.ITblPropertyFetcher
    public CTBorder getCTBorder(XWPFTable.Border border) {
        return null;
    }

    @Override // org.apache.poi.convert.xwpf.property.ITblPropertyFetcher, org.apache.poi.convert.xwpf.property.BordersFetcher
    public CTBorder[] getCTBorders() {
        return (CTBorder[]) findFirst(new Function() { // from class: com.sunia.HTREnginev2.y7n
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((ITblPropertyFetcher) obj).getCTBorders();
            }
        });
    }

    @Override // org.apache.poi.convert.xwpf.property.ITblPropertyFetcher
    public double getCellMargin(int i) {
        return 0.0d;
    }

    public List<Double> getColWidthList() {
        return this.colWidthList;
    }

    public String getColor() {
        return this.tableCell.getColor();
    }

    public XWPFTableCellPropertyFetcher getFetcher() {
        return this.fetcher;
    }

    public XWPFTableCell getTableCell() {
        return this.tableCell;
    }

    public XWPFTableCell.XWPFVertAlign getVerticalAlignment() {
        return this.tableCell.getVerticalAlignment();
    }

    @Override // org.apache.poi.convert.xwpf.property.ITblPropertyFetcher
    public boolean isSetTcBorders() {
        return false;
    }

    @Override // org.apache.poi.convert.xwpf.property.ITblPropertyFetcher
    public boolean isSetTcMar() {
        return false;
    }

    @Override // org.apache.poi.convert.xwpf.property.ITblPropertyFetcher
    public double[] getCellMargin() {
        return (double[]) findFirst(new Function() { // from class: com.sunia.HTREnginev2.x7n
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((ITblPropertyFetcher) obj).getCellMargin();
            }
        });
    }
}
