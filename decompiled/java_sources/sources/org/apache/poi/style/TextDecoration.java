package org.apache.poi.style;

import org.apache.poi.convert.WordToHtmlUtils;
import org.apache.poi.convert.xwpf.XWPFWordToHtmlUtils;
import org.apache.poi.convert.xwpf.property.IRunPropertyFetcher;
import org.apache.poi.util.ColorUtils;
import org.apache.poi.util.StringUtils;
import org.apache.poi.xwpf.usermodel.UnderlinePatterns;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STThemeColor;

/* loaded from: classes13.dex */
public class TextDecoration implements Styles {
    public static final int THROUGH_LINE = 2;
    public static final int UNDERLINE = 1;
    private String color;
    private LineStyle lineStyle = LineStyle.NONE;
    private int lineType;

    /* renamed from: org.apache.poi.style.TextDecoration$1 */
    /* loaded from: classes13.dex */
    public static /* synthetic */ class C198571 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$xwpf$usermodel$UnderlinePatterns;

        static {
            int[] iArr = new int[UnderlinePatterns.values().length];
            $SwitchMap$org$apache$poi$xwpf$usermodel$UnderlinePatterns = iArr;
            try {
                iArr[UnderlinePatterns.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$xwpf$usermodel$UnderlinePatterns[UnderlinePatterns.DOUBLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$xwpf$usermodel$UnderlinePatterns[UnderlinePatterns.WAVE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$poi$xwpf$usermodel$UnderlinePatterns[UnderlinePatterns.WAVY_HEAVY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$apache$poi$xwpf$usermodel$UnderlinePatterns[UnderlinePatterns.WAVY_DOUBLE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$apache$poi$xwpf$usermodel$UnderlinePatterns[UnderlinePatterns.DOTTED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$org$apache$poi$xwpf$usermodel$UnderlinePatterns[UnderlinePatterns.DOT_DASH.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$org$apache$poi$xwpf$usermodel$UnderlinePatterns[UnderlinePatterns.DOT_DOT_DASH.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$org$apache$poi$xwpf$usermodel$UnderlinePatterns[UnderlinePatterns.DOTTED_HEAVY.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$org$apache$poi$xwpf$usermodel$UnderlinePatterns[UnderlinePatterns.DASH.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$org$apache$poi$xwpf$usermodel$UnderlinePatterns[UnderlinePatterns.DASH_LONG.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$org$apache$poi$xwpf$usermodel$UnderlinePatterns[UnderlinePatterns.DASHED_HEAVY.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$org$apache$poi$xwpf$usermodel$UnderlinePatterns[UnderlinePatterns.DASH_DOT_HEAVY.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$org$apache$poi$xwpf$usermodel$UnderlinePatterns[UnderlinePatterns.DASH_LONG_HEAVY.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$org$apache$poi$xwpf$usermodel$UnderlinePatterns[UnderlinePatterns.DASH_DOT_DOT_HEAVY.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$org$apache$poi$xwpf$usermodel$UnderlinePatterns[UnderlinePatterns.SINGLE.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$org$apache$poi$xwpf$usermodel$UnderlinePatterns[UnderlinePatterns.THICK.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$org$apache$poi$xwpf$usermodel$UnderlinePatterns[UnderlinePatterns.WORDS.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
        }
    }

    private String getLineColor(IRunPropertyFetcher iRunPropertyFetcher) {
        STThemeColor.Enum underlineThemeColorEnum = iRunPropertyFetcher.getUnderlineThemeColorEnum();
        return (WordToHtmlUtils.isNull(underlineThemeColorEnum) || underlineThemeColorEnum == STThemeColor.NONE) ? XWPFWordToHtmlUtils.getColorValue(iRunPropertyFetcher.getUnderlineColor()) : ColorUtils.decode(iRunPropertyFetcher.getThemeColor(underlineThemeColorEnum.toString()), "auto");
    }

    private LineStyle getLineStyle(UnderlinePatterns underlinePatterns) {
        if (WordToHtmlUtils.isNull(underlinePatterns)) {
            return LineStyle.SOLID;
        }
        switch (C198571.$SwitchMap$org$apache$poi$xwpf$usermodel$UnderlinePatterns[underlinePatterns.ordinal()]) {
            case 1:
                return LineStyle.NONE;
            case 2:
                return LineStyle.DOUBLE;
            case 3:
            case 4:
            case 5:
                return LineStyle.WAVY;
            case 6:
            case 7:
            case 8:
            case 9:
                return LineStyle.DOTTED;
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                return LineStyle.DASHED;
            default:
                return LineStyle.SOLID;
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof TextDecoration)) {
            return false;
        }
        TextDecoration textDecoration = (TextDecoration) obj;
        return this.lineStyle == textDecoration.lineStyle && this.lineType == textDecoration.lineType && StringUtils.isEquals(this.color, textDecoration.color);
    }

    public void parse(IRunPropertyFetcher iRunPropertyFetcher) {
        if (WordToHtmlUtils.parseBool(iRunPropertyFetcher.isStrikeThrough())) {
            this.lineType |= 2;
        } else if (WordToHtmlUtils.parseBool(iRunPropertyFetcher.isDoubleStrikeThrough())) {
            System.err.println("DoubleStrikeThrough");
            this.lineType |= 2;
        }
        LineStyle lineStyle = getLineStyle(iRunPropertyFetcher.getUnderline());
        this.lineStyle = lineStyle;
        if (lineStyle != LineStyle.NONE) {
            this.lineType |= 1;
            this.color = getLineColor(iRunPropertyFetcher);
        }
    }

    public void reset() {
        this.lineStyle = LineStyle.NONE;
        this.color = null;
        this.lineType = 0;
    }

    public String toString() {
        return "TextDecoration{lineStyle=" + this.lineStyle + ", color=" + this.color + ", lineType=" + this.lineType + '}';
    }

    @Override // org.apache.poi.style.Styles
    public String toStyle() {
        if (this.lineType < 1) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("text-decoration:");
        if ((this.lineType & 2) == 2) {
            sb.append("line-through ");
        }
        if ((this.lineType & 1) == 1) {
            sb.append("underline ");
            sb.append(this.lineStyle.value);
            sb.append(' ');
            if (!WordToHtmlUtils.isNull(this.color)) {
                sb.append(this.color);
            }
        }
        sb.append(';');
        return sb.toString();
    }
}
