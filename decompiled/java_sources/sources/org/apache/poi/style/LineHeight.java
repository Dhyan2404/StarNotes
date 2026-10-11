package org.apache.poi.style;

import org.apache.poi.convert.WordToHtmlUtils;
import org.apache.poi.convert.xwpf.XWPFWordToHtmlUtils;
import org.apache.poi.convert.xwpf.property.IParagraphPropertyFetcher;
import org.apache.poi.ooxml.util.POIXMLUnits;
import org.apache.poi.util.ExtUnits;
import org.apache.poi.util.Units;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSpacing;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STLineSpacingRule;

/* loaded from: classes13.dex */
public class LineHeight implements Styles {
    public static final float DEFAULT_LINE_HEIGHT_PERCENT = 1.285f;
    private boolean docGridLine;
    private UnitValue linePitch;
    private Type type;
    private float value;

    /* renamed from: org.apache.poi.style.LineHeight$1 */
    /* loaded from: classes13.dex */
    public static /* synthetic */ class C198541 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$style$LineHeight$Type;

        static {
            int[] iArr = new int[Type.values().length];
            $SwitchMap$org$apache$poi$style$LineHeight$Type = iArr;
            try {
                iArr[Type.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$style$LineHeight$Type[Type.AUTO.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$style$LineHeight$Type[Type.EXACT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$poi$style$LineHeight$Type[Type.AT_LEAST.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* loaded from: classes13.dex */
    public enum Type {
        NONE,
        AUTO,
        EXACT,
        AT_LEAST
    }

    public LineHeight() {
        this.type = Type.NONE;
    }

    public String getAtLeastStyle(float f) {
        StringBuilder sb = new StringBuilder("line-height:");
        float f2 = f * 1.285f;
        if (this.value == 0.0f) {
            sb.append(ExtUnits.getFormatValue(f2));
            sb.append("px;");
        } else if (this.docGridLine) {
            sb.append(Math.max(ExtUnits.getFormatValue(this.linePitch.getValue() * ((int) Math.ceil(f2 / this.linePitch.getValue()))), this.value));
            sb.append("px;");
        } else {
            sb.append(Math.max(ExtUnits.getFormatValue(f2), this.value));
            sb.append("px;");
        }
        return sb.toString();
    }

    public String getAutoStyle(float f) {
        StringBuilder sb = new StringBuilder("line-height:");
        float f2 = f * 1.285f;
        if (this.docGridLine) {
            sb.append(ExtUnits.getFormatValue(this.linePitch.getValue() * Math.max((int) Math.ceil(f2 / this.linePitch.getValue()), this.value)));
            sb.append("px;");
        } else {
            sb.append(ExtUnits.getFormatValue(f2 * this.value));
            sb.append("px;");
        }
        return sb.toString();
    }

    public String getExactStyle(float f) {
        return "line-height:" + this.value + "px;";
    }

    public float getValue() {
        return this.value;
    }

    public void parse(IParagraphPropertyFetcher iParagraphPropertyFetcher) {
        CTSpacing cTSpacing = iParagraphPropertyFetcher.getCTSpacing();
        if (WordToHtmlUtils.isNull(cTSpacing) || !cTSpacing.isSetLine()) {
            return;
        }
        double dxa = Units.toDXA(POIXMLUnits.parseLength(cTSpacing.xgetLine()));
        STLineSpacingRule.Enum lineSpaceRule = XWPFWordToHtmlUtils.getLineSpaceRule(cTSpacing);
        if (lineSpaceRule == STLineSpacingRule.AT_LEAST) {
            this.type = Type.AT_LEAST;
            this.value = ExtUnits.getFormatValue(ExtUnits.dxaToPixel(dxa));
        } else if (lineSpaceRule == STLineSpacingRule.EXACT) {
            this.type = Type.EXACT;
            this.value = ExtUnits.getFormatValue(ExtUnits.dxaToPixel(dxa));
        } else {
            this.type = Type.AUTO;
            this.value = ExtUnits.getFormatValue(dxa / 240.0d);
        }
    }

    public void setDocGridLine(boolean z) {
        this.docGridLine = z;
    }

    public void setLinePitch(UnitValue unitValue) {
        this.linePitch = unitValue;
    }

    @Override // org.apache.poi.style.Styles
    public String toStyle() {
        throw new UnsupportedOperationException("Please use toStyle(float)");
    }

    public String toStyle(float f) {
        int i = C198541.$SwitchMap$org$apache$poi$style$LineHeight$Type[this.type.ordinal()];
        if (i != 2) {
            if (i == 3) {
                return getExactStyle(f);
            }
            if (i != 4) {
                this.value = 1.0f;
            } else {
                return getAtLeastStyle(f);
            }
        }
        return getAutoStyle(f);
    }

    public LineHeight(Type type, float f) {
        Type type2 = Type.NONE;
        this.type = type;
        this.value = f;
    }
}
