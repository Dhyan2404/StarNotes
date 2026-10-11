package org.apache.poi.style;

import java.math.BigInteger;
import org.apache.poi.convert.WordToHtmlUtils;
import org.apache.poi.convert.xwpf.XWPFWordToHtmlUtils;
import org.apache.poi.convert.xwpf.property.BordersFetcher;
import org.apache.poi.util.ExtUnits;
import org.apache.poi.util.StringUtils;
import org.apache.poi.util.Units;
import org.apache.poi.xwpf.usermodel.Borders;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTBorder;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STBorder;

/* loaded from: classes13.dex */
public class BordersStyles implements Styles {
    private BorderStyles bottom;
    private BorderStyles left;
    private BorderStyles right;
    private BorderStyles top;

    /* renamed from: org.apache.poi.style.BordersStyles$1 */
    /* loaded from: classes13.dex */
    public static /* synthetic */ class C198531 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$xwpf$usermodel$Borders;

        static {
            int[] iArr = new int[Borders.values().length];
            $SwitchMap$org$apache$poi$xwpf$usermodel$Borders = iArr;
            try {
                iArr[Borders.NIL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$xwpf$usermodel$Borders[Borders.NONE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$xwpf$usermodel$Borders[Borders.DASHED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$poi$xwpf$usermodel$Borders[Borders.DASH_SMALL_GAP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$apache$poi$xwpf$usermodel$Borders[Borders.DASH_DOT_STROKED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$apache$poi$xwpf$usermodel$Borders[Borders.DOTTED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$org$apache$poi$xwpf$usermodel$Borders[Borders.DOT_DASH.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$org$apache$poi$xwpf$usermodel$Borders[Borders.DOT_DOT_DASH.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$org$apache$poi$xwpf$usermodel$Borders[Borders.DOUBLE.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$org$apache$poi$xwpf$usermodel$Borders[Borders.INSET.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$org$apache$poi$xwpf$usermodel$Borders[Borders.OUTSET.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$org$apache$poi$xwpf$usermodel$Borders[Borders.WAVE.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$org$apache$poi$xwpf$usermodel$Borders[Borders.THICK.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$org$apache$poi$xwpf$usermodel$Borders[Borders.SINGLE.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$org$apache$poi$xwpf$usermodel$Borders[Borders.CUP.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$org$apache$poi$xwpf$usermodel$Borders[Borders.SUN.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$org$apache$poi$xwpf$usermodel$Borders[Borders.BATS.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$org$apache$poi$xwpf$usermodel$Borders[Borders.FANS.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
        }
    }

    /* loaded from: classes13.dex */
    public static class BorderStyles {
        public String color;
        public LineStyle style = LineStyle.NONE;
        public String width;

        public boolean equals(Object obj) {
            if (!(obj instanceof BorderStyles)) {
                return false;
            }
            BorderStyles borderStyles = (BorderStyles) obj;
            return this.style == borderStyles.style && StringUtils.isEquals(this.width, borderStyles.width) && StringUtils.isEquals(this.color, borderStyles.color);
        }
    }

    private void appendBorderColor(StringBuilder sb, String str, char c) {
        if (WordToHtmlUtils.isEmpty(str)) {
            str = "gray";
        } else if (str.equals("auto")) {
            str = "black";
        }
        sb.append(str);
        sb.append(c);
    }

    private void appendBorderLineStyle(StringBuilder sb, LineStyle lineStyle, boolean z, char c) {
        if (z && lineStyle == LineStyle.NONE) {
            sb.append(LineStyle.DASHED.value);
            sb.append(c);
        } else {
            sb.append(lineStyle.value);
            sb.append(c);
        }
    }

    private void appendBorderWidth(StringBuilder sb, String str, char c) {
        if (WordToHtmlUtils.isEmpty(str)) {
            str = "thin";
        }
        sb.append(str);
        sb.append(c);
    }

    private BorderStyles parseBorder(CTBorder cTBorder) {
        BorderStyles borderStyles = new BorderStyles();
        if (WordToHtmlUtils.isNull(cTBorder)) {
            return borderStyles;
        }
        borderStyles.style = parseBorderLineStyle(cTBorder);
        borderStyles.width = parseBorderWidth(cTBorder);
        borderStyles.color = parseBorderColor(cTBorder);
        return borderStyles;
    }

    private String parseBorderColor(CTBorder cTBorder) {
        return cTBorder.isSetColor() ? XWPFWordToHtmlUtils.getColorValue(cTBorder.xgetColor().getStringValue(), "black") : "black";
    }

    private LineStyle parseBorderLineStyle(CTBorder cTBorder) {
        STBorder.Enum val = cTBorder.getVal();
        switch (C198531.$SwitchMap$org$apache$poi$xwpf$usermodel$Borders[Borders.valueOf(WordToHtmlUtils.isNull(val) ? 2 : val.intValue()).ordinal()]) {
            case 1:
            case 2:
                return LineStyle.NONE;
            case 3:
            case 4:
            case 5:
                return LineStyle.DASHED;
            case 6:
            case 7:
            case 8:
                return LineStyle.DOTTED;
            case 9:
                return LineStyle.DOUBLE;
            case 10:
                return LineStyle.INSET;
            case 11:
                return LineStyle.OUTSET;
            default:
                return LineStyle.SOLID;
        }
    }

    private String parseBorderWidth(CTBorder cTBorder) {
        BigInteger sz = cTBorder.getSz();
        if (WordToHtmlUtils.isNull(sz) || sz.intValue() <= 0) {
            return "thin";
        }
        return ExtUnits.getFormatValue(Units.masterToPoints(sz.intValue())) + ExtUnits.UNIT_PX;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof BordersStyles)) {
            return false;
        }
        BordersStyles bordersStyles = (BordersStyles) obj;
        if (WordToHtmlUtils.isNull(this.top) && WordToHtmlUtils.isNull(bordersStyles.top)) {
            return true;
        }
        return WordToHtmlUtils.isNull(this.top) == WordToHtmlUtils.isNull(bordersStyles.top) && this.top.equals(bordersStyles.top) && this.right.equals(bordersStyles.right) && this.bottom.equals(bordersStyles.bottom) && this.left.equals(bordersStyles.left);
    }

    public boolean isNoneBorders() {
        BorderStyles borderStyles = this.top;
        if (borderStyles != null) {
            LineStyle lineStyle = borderStyles.style;
            LineStyle lineStyle2 = LineStyle.NONE;
            if (lineStyle != lineStyle2 || this.right.style != lineStyle2 || this.bottom.style != lineStyle2 || this.left.style != lineStyle2) {
                return false;
            }
        }
        return true;
    }

    public void parse(BordersFetcher bordersFetcher) {
        if (WordToHtmlUtils.isNull(this.top)) {
            CTBorder[] cTBorders = bordersFetcher.getCTBorders();
            if (WordToHtmlUtils.isNull(cTBorders) || cTBorders.length == 0) {
                return;
            }
            if (cTBorders.length >= 4) {
                this.top = parseBorder(cTBorders[0]);
                this.right = parseBorder(cTBorders[1]);
                this.bottom = parseBorder(cTBorders[2]);
                this.left = parseBorder(cTBorders[3]);
                return;
            }
            BorderStyles parseBorder = parseBorder(cTBorders[0]);
            this.left = parseBorder;
            this.bottom = parseBorder;
            this.right = parseBorder;
            this.top = parseBorder;
        }
    }

    public void reset() {
        this.left = null;
        this.bottom = null;
        this.right = null;
        this.top = null;
    }

    public String toString() {
        if (WordToHtmlUtils.isNull(this.top)) {
            return "Border{none}";
        }
        return "Border{t:" + this.top.style + ' ' + this.top.width + ' ' + this.top.color + ", r:" + this.right.style + ' ' + this.right.width + ' ' + this.right.color + ", b:" + this.bottom.style + ' ' + this.bottom.width + ' ' + this.bottom.color + ", l:" + this.left.style + ' ' + this.left.width + ' ' + this.left.color + "}";
    }

    @Override // org.apache.poi.style.Styles
    public String toStyle() {
        return toStyle(false);
    }

    public String toTableStyle() {
        return toStyle(true);
    }

    public String toStyle(boolean z) {
        if (isNoneBorders()) {
            return z ? "border-style:dashed;border-width:thin;border-color:gray;" : "";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("border-style:");
        appendBorderLineStyle(sb, this.top.style, z, ' ');
        appendBorderLineStyle(sb, this.right.style, z, ' ');
        appendBorderLineStyle(sb, this.bottom.style, z, ' ');
        appendBorderLineStyle(sb, this.left.style, z, ';');
        sb.append("border-width:");
        appendBorderWidth(sb, this.top.width, ' ');
        appendBorderWidth(sb, this.right.width, ' ');
        appendBorderWidth(sb, this.bottom.width, ' ');
        appendBorderWidth(sb, this.left.width, ';');
        sb.append("border-color:");
        appendBorderColor(sb, this.top.color, ' ');
        appendBorderColor(sb, this.right.color, ' ');
        appendBorderColor(sb, this.bottom.color, ' ');
        appendBorderColor(sb, this.left.color, ';');
        return sb.toString();
    }
}
