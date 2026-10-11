package org.apache.poi.style;

import java.util.List;
import org.apache.poi.convert.WordToHtmlUtils;
import org.apache.poi.convert.xwpf.XWPFWordToHtmlUtils;
import org.apache.poi.convert.xwpf.property.TableCellPropertyListFetcher;
import org.apache.poi.xwpf.usermodel.XWPFTableCell;

/* loaded from: classes13.dex */
public class TableCellStyles implements Styles {
    private String backgroundColor;
    private int cellIndex;
    private TableCellPropertyListFetcher fetcher;
    private UnitValue width;
    private BordersStyles bordersStyles = new BordersStyles();
    private MarginStyles marginStyles = new MarginStyles();
    private TextVerAlign verAlign = TextVerAlign.NONE;

    /* renamed from: org.apache.poi.style.TableCellStyles$1 */
    /* loaded from: classes13.dex */
    public static /* synthetic */ class C198561 {

        /* renamed from: $SwitchMap$org$apache$poi$xwpf$usermodel$XWPFTableCell$XWPFVertAlign */
        static final /* synthetic */ int[] f111584xb97ea0d1;

        static {
            int[] iArr = new int[XWPFTableCell.XWPFVertAlign.values().length];
            f111584xb97ea0d1 = iArr;
            try {
                iArr[XWPFTableCell.XWPFVertAlign.BOTTOM.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f111584xb97ea0d1[XWPFTableCell.XWPFVertAlign.BOTH.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f111584xb97ea0d1[XWPFTableCell.XWPFVertAlign.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f111584xb97ea0d1[XWPFTableCell.XWPFVertAlign.TOP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public TableCellStyles(TableCellPropertyListFetcher tableCellPropertyListFetcher, int i) {
        this.fetcher = tableCellPropertyListFetcher;
        this.cellIndex = i;
        parse(tableCellPropertyListFetcher);
    }

    private void parse(TableCellPropertyListFetcher tableCellPropertyListFetcher) {
        parseBordersStyles(tableCellPropertyListFetcher);
        parseMarginStyles(tableCellPropertyListFetcher);
        this.backgroundColor = XWPFWordToHtmlUtils.getColorValue(tableCellPropertyListFetcher.getColor());
        this.width = parseTableCellWidth(tableCellPropertyListFetcher);
        this.verAlign = parseVerticalAlign(tableCellPropertyListFetcher);
    }

    private void parseBordersStyles(TableCellPropertyListFetcher tableCellPropertyListFetcher) {
        this.bordersStyles.parse(tableCellPropertyListFetcher);
    }

    private void parseMarginStyles(TableCellPropertyListFetcher tableCellPropertyListFetcher) {
        this.marginStyles.parse(tableCellPropertyListFetcher);
    }

    private UnitValue parseTableCellWidth(TableCellPropertyListFetcher tableCellPropertyListFetcher) {
        List<Double> colWidthList = tableCellPropertyListFetcher.getColWidthList();
        int i = this.cellIndex;
        double d = 0.0d;
        for (int gridSpan = tableCellPropertyListFetcher.getFetcher().getGridSpan(); i < colWidthList.size() && gridSpan > 0; gridSpan--) {
            d += colWidthList.get(i).doubleValue();
            i++;
        }
        return UnitValue.fromPX(d);
    }

    private TextVerAlign parseVerticalAlign(TableCellPropertyListFetcher tableCellPropertyListFetcher) {
        XWPFTableCell.XWPFVertAlign verticalAlignment = tableCellPropertyListFetcher.getVerticalAlignment();
        if (WordToHtmlUtils.isNull(verticalAlignment)) {
            return TextVerAlign.TOP;
        }
        int i = C198561.f111584xb97ea0d1[verticalAlignment.ordinal()];
        return i != 1 ? (i == 2 || i == 3) ? TextVerAlign.MIDDLE : TextVerAlign.TOP : TextVerAlign.BOTTOM;
    }

    public String getWidthStyle() {
        return "width:" + this.width.toStyle();
    }

    @Override // org.apache.poi.style.Styles
    public String toStyle() {
        StringBuilder sb = new StringBuilder();
        if (!WordToHtmlUtils.isNull(this.backgroundColor)) {
            sb.append("background-color:");
            sb.append(this.backgroundColor);
            sb.append(';');
        }
        sb.append(this.marginStyles.toPaddingStyle());
        sb.append(this.bordersStyles.toTableStyle());
        if (this.verAlign.ordinal() > TextVerAlign.AUTO.ordinal()) {
            sb.append("vertical-align:");
            sb.append(this.verAlign.value);
            sb.append(';');
        }
        return sb.toString();
    }
}
