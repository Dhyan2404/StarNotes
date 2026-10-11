package org.apache.poi.style;

import org.apache.poi.convert.WordToHtmlUtils;
import org.apache.poi.convert.xwpf.property.IParagraphPropertyFetcher;
import org.apache.poi.convert.xwpf.property.ParagraphPropertyListFetcher;
import org.apache.poi.convert.xwpf.property.RunPropertyListFetcher;
import org.apache.poi.xwpf.usermodel.ParagraphAlignment;
import org.apache.poi.xwpf.usermodel.TextAlignment;

/* loaded from: classes13.dex */
public class ParagraphStyles implements Styles {
    private ParagraphPropertyListFetcher fetcher;
    private int textChildSize;
    private UnitValue textIndent;
    private TextStyles textStyles;
    private TextAlign align = TextAlign.NONE;
    private TextVerAlign verAlign = TextVerAlign.NONE;
    private MarginStyles marginStyles = new MarginStyles();
    private LineHeight lineHeight = new LineHeight();

    /* renamed from: org.apache.poi.style.ParagraphStyles$1 */
    /* loaded from: classes13.dex */
    public static /* synthetic */ class C198551 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$xwpf$usermodel$ParagraphAlignment;
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$xwpf$usermodel$TextAlignment;

        static {
            int[] iArr = new int[TextAlignment.values().length];
            $SwitchMap$org$apache$poi$xwpf$usermodel$TextAlignment = iArr;
            try {
                iArr[TextAlignment.CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$xwpf$usermodel$TextAlignment[TextAlignment.TOP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$xwpf$usermodel$TextAlignment[TextAlignment.BOTTOM.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$poi$xwpf$usermodel$TextAlignment[TextAlignment.BASELINE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$apache$poi$xwpf$usermodel$TextAlignment[TextAlignment.AUTO.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            int[] iArr2 = new int[ParagraphAlignment.values().length];
            $SwitchMap$org$apache$poi$xwpf$usermodel$ParagraphAlignment = iArr2;
            try {
                iArr2[ParagraphAlignment.RIGHT.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$org$apache$poi$xwpf$usermodel$ParagraphAlignment[ParagraphAlignment.CENTER.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$org$apache$poi$xwpf$usermodel$ParagraphAlignment[ParagraphAlignment.DISTRIBUTE.ordinal()] = 3;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$org$apache$poi$xwpf$usermodel$ParagraphAlignment[ParagraphAlignment.THAI_DISTRIBUTE.ordinal()] = 4;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$org$apache$poi$xwpf$usermodel$ParagraphAlignment[ParagraphAlignment.BOTH.ordinal()] = 5;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$org$apache$poi$xwpf$usermodel$ParagraphAlignment[ParagraphAlignment.LEFT.ordinal()] = 6;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$org$apache$poi$xwpf$usermodel$ParagraphAlignment[ParagraphAlignment.NUM_TAB.ordinal()] = 7;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$org$apache$poi$xwpf$usermodel$ParagraphAlignment[ParagraphAlignment.LOW_KASHIDA.ordinal()] = 8;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$org$apache$poi$xwpf$usermodel$ParagraphAlignment[ParagraphAlignment.HIGH_KASHIDA.ordinal()] = 9;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$org$apache$poi$xwpf$usermodel$ParagraphAlignment[ParagraphAlignment.MEDIUM_KASHIDA.ordinal()] = 10;
            } catch (NoSuchFieldError unused15) {
            }
        }
    }

    public ParagraphStyles(ParagraphPropertyListFetcher paragraphPropertyListFetcher, RunPropertyListFetcher runPropertyListFetcher) {
        this.fetcher = paragraphPropertyListFetcher;
        this.textStyles = new ParagraphTextStyle(runPropertyListFetcher);
        parse(paragraphPropertyListFetcher);
    }

    private TextAlign getTextAlign(ParagraphAlignment paragraphAlignment) {
        if (WordToHtmlUtils.isNull(paragraphAlignment)) {
            return TextAlign.NONE;
        }
        int i = C198551.$SwitchMap$org$apache$poi$xwpf$usermodel$ParagraphAlignment[paragraphAlignment.ordinal()];
        return i != 1 ? i != 2 ? (i == 3 || i == 4) ? TextAlign.JUSTIFY_LAST : i != 5 ? TextAlign.LEFT : TextAlign.JUSTIFY : TextAlign.CENTER : TextAlign.RIGHT;
    }

    private TextVerAlign getTextVerAlign(TextAlignment textAlignment) {
        if (WordToHtmlUtils.isNull(textAlignment)) {
            return TextVerAlign.NONE;
        }
        int i = C198551.$SwitchMap$org$apache$poi$xwpf$usermodel$TextAlignment[textAlignment.ordinal()];
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? TextVerAlign.AUTO : TextVerAlign.BASELINE : TextVerAlign.BOTTOM : TextVerAlign.TOP : TextVerAlign.MIDDLE;
    }

    private void parse(IParagraphPropertyFetcher iParagraphPropertyFetcher) {
        this.textStyles.parseBorderStyles(iParagraphPropertyFetcher);
        this.marginStyles.parse(iParagraphPropertyFetcher);
        this.lineHeight.parse(iParagraphPropertyFetcher);
        this.align = getTextAlign(iParagraphPropertyFetcher.getAlignment());
        this.verAlign = getTextVerAlign(iParagraphPropertyFetcher.getVerticalAlignment());
        this.textIndent = iParagraphPropertyFetcher.getTextIndent();
    }

    public LineHeight getLineHeight() {
        return this.lineHeight;
    }

    public MarginStyles getMarginStyles() {
        return this.marginStyles;
    }

    public UnitValue getTextIndent() {
        return this.textIndent;
    }

    public TextStyles getTextStyles() {
        return this.textStyles;
    }

    public boolean hasTextChild() {
        return this.textChildSize > 0;
    }

    public void increaseTextChildSize() {
        this.textChildSize++;
    }

    @Override // org.apache.poi.style.Styles
    public String toStyle() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.align.toStyle());
        sb.append(this.verAlign.toStyle());
        if (WordToHtmlUtils.isNull(this.textIndent)) {
            sb.append(this.marginStyles.toStyle());
        } else if (this.textIndent.getValue() > 0.0f) {
            sb.append("text-indent:");
            sb.append(this.textIndent.toStyle());
            sb.append(this.marginStyles.toStyle());
        } else if (this.textIndent.getValue() < 0.0f) {
            UnitValue add = this.textIndent.add(this.marginStyles.getLeft());
            if (add.getValue() > 0.0f) {
                sb.append(this.marginStyles.toStyleExcludeLeft());
                sb.append("margin-left:");
                sb.append(add.toStyle());
            } else if (add.getValue() < 0.0f) {
                sb.append("text-indent:");
                sb.append(add.toStyle());
                sb.append(this.marginStyles.toStyleExcludeLeft());
            }
        } else {
            sb.append(this.marginStyles.toStyle());
        }
        return sb.toString();
    }
}
