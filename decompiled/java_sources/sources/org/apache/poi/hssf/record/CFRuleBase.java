package org.apache.poi.hssf.record;

import java.util.Map;
import java.util.function.Supplier;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.hssf.model.HSSFFormulaParser;
import org.apache.poi.hssf.record.CFRuleBase;
import org.apache.poi.hssf.record.cf.BorderFormatting;
import org.apache.poi.hssf.record.cf.FontFormatting;
import org.apache.poi.hssf.record.cf.PatternFormatting;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.ss.formula.Formula;
import org.apache.poi.ss.formula.FormulaType;
import org.apache.poi.ss.formula.ptg.Ptg;
import org.apache.poi.util.BitField;
import org.apache.poi.util.BitFieldFactory;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public abstract class CFRuleBase extends StandardRecord {
    public static final byte CONDITION_TYPE_CELL_VALUE_IS = 1;
    public static final byte CONDITION_TYPE_COLOR_SCALE = 3;
    public static final byte CONDITION_TYPE_DATA_BAR = 4;
    public static final byte CONDITION_TYPE_FILTER = 5;
    public static final byte CONDITION_TYPE_FORMULA = 2;
    public static final byte CONDITION_TYPE_ICON_SET = 6;
    public static final int TEMPLATE_ABOVE_AVERAGE = 25;
    public static final int TEMPLATE_ABOVE_OR_EQUAL_TO_AVERAGE = 29;
    public static final int TEMPLATE_BELOW_AVERAGE = 26;
    public static final int TEMPLATE_BELOW_OR_EQUAL_TO_AVERAGE = 30;
    public static final int TEMPLATE_CELL_VALUE = 0;
    public static final int TEMPLATE_COLOR_SCALE_FORMATTING = 2;
    public static final int TEMPLATE_CONTAINS_BLANKS = 9;
    public static final int TEMPLATE_CONTAINS_ERRORS = 11;
    public static final int TEMPLATE_CONTAINS_NO_BLANKS = 10;
    public static final int TEMPLATE_CONTAINS_NO_ERRORS = 12;
    public static final int TEMPLATE_CONTAINS_TEXT = 8;
    public static final int TEMPLATE_DATA_BAR_FORMATTING = 3;
    public static final int TEMPLATE_DUPLICATE_VALUES = 27;
    public static final int TEMPLATE_FILTER = 5;
    public static final int TEMPLATE_FORMULA = 1;
    public static final int TEMPLATE_ICON_SET_FORMATTING = 4;
    public static final int TEMPLATE_LAST_7_DAYS = 18;
    public static final int TEMPLATE_LAST_MONTH = 19;
    public static final int TEMPLATE_LAST_WEEK = 23;
    public static final int TEMPLATE_NEXT_MONTH = 20;
    public static final int TEMPLATE_NEXT_WEEK = 22;
    public static final int TEMPLATE_THIS_MONTH = 24;
    public static final int TEMPLATE_THIS_WEEK = 21;
    public static final int TEMPLATE_TODAY = 15;
    public static final int TEMPLATE_TOMORROW = 16;
    public static final int TEMPLATE_UNIQUE_VALUES = 7;
    public static final int TEMPLATE_YESTERDAY = 17;
    protected BorderFormatting _borderFormatting;
    protected FontFormatting _fontFormatting;
    protected PatternFormatting _patternFormatting;
    private byte comparison_operator;
    private byte condition_type;
    protected short formatting_not_used;
    protected int formatting_options;
    private Formula formula1;
    private Formula formula2;
    protected static final Logger LOG = LogManager.getLogger((Class<?>) CFRuleBase.class);
    static final BitField modificationBits = m69023bf(4194303);
    static final BitField alignHor = m69023bf(1);
    static final BitField alignVer = m69023bf(2);
    static final BitField alignWrap = m69023bf(4);
    static final BitField alignRot = m69023bf(8);
    static final BitField alignJustLast = m69023bf(16);
    static final BitField alignIndent = m69023bf(32);
    static final BitField alignShrin = m69023bf(64);
    static final BitField mergeCell = m69023bf(128);
    static final BitField protLocked = m69023bf(256);
    static final BitField protHidden = m69023bf(512);
    static final BitField bordLeft = m69023bf(1024);
    static final BitField bordRight = m69023bf(2048);
    static final BitField bordTop = m69023bf(4096);
    static final BitField bordBot = m69023bf(8192);
    static final BitField bordTlBr = m69023bf(16384);
    static final BitField bordBlTr = m69023bf(32768);
    static final BitField pattStyle = m69023bf(65536);
    static final BitField pattCol = m69023bf(131072);
    static final BitField pattBgCol = m69023bf(262144);
    static final BitField notUsed2 = m69023bf(3670016);
    static final BitField undocumented = m69023bf(62914560);
    static final BitField fmtBlockBits = m69023bf(2080374784);
    static final BitField font = m69023bf(67108864);
    static final BitField align = m69023bf(134217728);
    static final BitField bord = m69023bf(268435456);
    static final BitField patt = m69023bf(536870912);
    static final BitField prot = m69023bf(1073741824);
    static final BitField alignTextDir = m69023bf(Integer.MIN_VALUE);

    /* loaded from: classes12.dex */
    public interface ComparisonOperator {
        public static final byte BETWEEN = 1;
        public static final byte EQUAL = 3;

        /* renamed from: GE */
        public static final byte f111392GE = 7;

        /* renamed from: GT */
        public static final byte f111393GT = 5;

        /* renamed from: LE */
        public static final byte f111394LE = 8;

        /* renamed from: LT */
        public static final byte f111395LT = 6;
        public static final byte NOT_BETWEEN = 2;
        public static final byte NOT_EQUAL = 4;
        public static final byte NO_COMPARISON = 0;
        public static final byte max_operator = 8;
    }

    public CFRuleBase(byte b, byte b2) {
        setConditionType(b);
        setComparisonOperation(b2);
        Ptg[] ptgArr = Ptg.EMPTY_PTG_ARRAY;
        this.formula1 = Formula.create(ptgArr);
        this.formula2 = Formula.create(ptgArr);
    }

    /* renamed from: bf */
    private static BitField m69023bf(int i) {
        return BitFieldFactory.getInstance(i);
    }

    public static int getFormulaSize(Formula formula) {
        return formula.getEncodedTokenSize();
    }

    private boolean getOptionFlag(BitField bitField) {
        return bitField.isSet(this.formatting_options);
    }

    private boolean isModified(BitField bitField) {
        return !bitField.isSet(this.formatting_options);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$0() {
        return Short.valueOf(this.formatting_not_used);
    }

    public static Ptg[] parseFormula(String str, HSSFSheet hSSFSheet) {
        if (str == null) {
            return null;
        }
        return HSSFFormulaParser.parse(str, hSSFSheet.getWorkbook(), FormulaType.CELL, hSSFSheet.getWorkbook().getSheetIndex(hSSFSheet));
    }

    private void setModified(boolean z, BitField bitField) {
        this.formatting_options = bitField.setBoolean(this.formatting_options, !z);
    }

    private void setOptionFlag(boolean z, BitField bitField) {
        this.formatting_options = bitField.setBoolean(this.formatting_options, z);
    }

    public boolean containsAlignFormattingBlock() {
        return getOptionFlag(align);
    }

    public boolean containsBorderFormattingBlock() {
        return getOptionFlag(bord);
    }

    public boolean containsFontFormattingBlock() {
        return getOptionFlag(font);
    }

    public boolean containsPatternFormattingBlock() {
        return getOptionFlag(patt);
    }

    public boolean containsProtectionFormattingBlock() {
        return getOptionFlag(prot);
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public abstract CFRuleBase copy();

    public BorderFormatting getBorderFormatting() {
        if (containsBorderFormattingBlock()) {
            return this._borderFormatting;
        }
        return null;
    }

    public byte getComparisonOperation() {
        return this.comparison_operator;
    }

    public byte getConditionType() {
        return this.condition_type;
    }

    public FontFormatting getFontFormatting() {
        if (containsFontFormattingBlock()) {
            return this._fontFormatting;
        }
        return null;
    }

    public int getFormattingBlockSize() {
        return (containsFontFormattingBlock() ? this._fontFormatting.getRawRecord().length : 0) + 6 + (containsBorderFormattingBlock() ? 8 : 0) + (containsPatternFormattingBlock() ? 4 : 0);
    }

    public Formula getFormula1() {
        return this.formula1;
    }

    public Formula getFormula2() {
        return this.formula2;
    }

    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("conditionType", new Supplier() { // from class: com.sunia.HTREnginev2.x10
            @Override // java.util.function.Supplier
            public final Object get() {
                return Byte.valueOf(CFRuleBase.this.getConditionType());
            }
        }, "comparisonOperation", new Supplier() { // from class: com.sunia.HTREnginev2.y10
            @Override // java.util.function.Supplier
            public final Object get() {
                return Byte.valueOf(CFRuleBase.this.getComparisonOperation());
            }
        }, "formattingOptions", new Supplier() { // from class: com.sunia.HTREnginev2.z10
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(CFRuleBase.this.getOptions());
            }
        }, "formattingNotUsed", new Supplier() { // from class: com.sunia.HTREnginev2.a20
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = CFRuleBase.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        }, "fontFormatting", new Supplier() { // from class: com.sunia.HTREnginev2.b20
            @Override // java.util.function.Supplier
            public final Object get() {
                return CFRuleBase.this.getFontFormatting();
            }
        }, "borderFormatting", new Supplier() { // from class: com.sunia.HTREnginev2.c20
            @Override // java.util.function.Supplier
            public final Object get() {
                return CFRuleBase.this.getBorderFormatting();
            }
        }, "patternFormatting", new Supplier() { // from class: com.sunia.HTREnginev2.d20
            @Override // java.util.function.Supplier
            public final Object get() {
                return CFRuleBase.this.getPatternFormatting();
            }
        }, "formula1", new Supplier() { // from class: com.sunia.HTREnginev2.e20
            @Override // java.util.function.Supplier
            public final Object get() {
                return CFRuleBase.this.getFormula1();
            }
        }, "formula2", new Supplier() { // from class: com.sunia.HTREnginev2.f20
            @Override // java.util.function.Supplier
            public final Object get() {
                return CFRuleBase.this.getFormula2();
            }
        });
    }

    public int getOptions() {
        return this.formatting_options;
    }

    public Ptg[] getParsedExpression1() {
        return this.formula1.getTokens();
    }

    public Ptg[] getParsedExpression2() {
        return Formula.getTokens(this.formula2);
    }

    public PatternFormatting getPatternFormatting() {
        if (containsPatternFormattingBlock()) {
            return this._patternFormatting;
        }
        return null;
    }

    public boolean isBottomBorderModified() {
        return isModified(bordBot);
    }

    public boolean isBottomLeftTopRightBorderModified() {
        return isModified(bordBlTr);
    }

    public boolean isLeftBorderModified() {
        return isModified(bordLeft);
    }

    public boolean isPatternBackgroundColorModified() {
        return isModified(pattBgCol);
    }

    public boolean isPatternColorModified() {
        return isModified(pattCol);
    }

    public boolean isPatternStyleModified() {
        return isModified(pattStyle);
    }

    public boolean isRightBorderModified() {
        return isModified(bordRight);
    }

    public boolean isTopBorderModified() {
        return isModified(bordTop);
    }

    public boolean isTopLeftBottomRightBorderModified() {
        return isModified(bordTlBr);
    }

    public int readFormatOptions(RecordInputStream recordInputStream) {
        this.formatting_options = recordInputStream.readInt();
        this.formatting_not_used = recordInputStream.readShort();
        int i = 6;
        if (containsFontFormattingBlock()) {
            FontFormatting fontFormatting = new FontFormatting(recordInputStream);
            this._fontFormatting = fontFormatting;
            i = 6 + fontFormatting.getDataLength();
        }
        if (containsBorderFormattingBlock()) {
            BorderFormatting borderFormatting = new BorderFormatting(recordInputStream);
            this._borderFormatting = borderFormatting;
            i += borderFormatting.getDataLength();
        }
        if (!containsPatternFormattingBlock()) {
            return i;
        }
        PatternFormatting patternFormatting = new PatternFormatting(recordInputStream);
        this._patternFormatting = patternFormatting;
        return i + patternFormatting.getDataLength();
    }

    public void serializeFormattingBlock(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeInt(this.formatting_options);
        littleEndianOutput.writeShort(this.formatting_not_used);
        if (containsFontFormattingBlock()) {
            littleEndianOutput.write(this._fontFormatting.getRawRecord());
        }
        if (containsBorderFormattingBlock()) {
            this._borderFormatting.serialize(littleEndianOutput);
        }
        if (containsPatternFormattingBlock()) {
            this._patternFormatting.serialize(littleEndianOutput);
        }
    }

    public void setAlignFormattingUnchanged() {
        setOptionFlag(false, align);
    }

    public void setBorderFormatting(BorderFormatting borderFormatting) {
        this._borderFormatting = borderFormatting;
        setOptionFlag(borderFormatting != null, bord);
    }

    public void setBottomBorderModified(boolean z) {
        setModified(z, bordBot);
    }

    public void setBottomLeftTopRightBorderModified(boolean z) {
        setModified(z, bordBlTr);
    }

    public void setComparisonOperation(byte b) {
        if (b < 0 || b > 8) {
            throw new IllegalArgumentException("Valid operators are only in the range 0 to 8");
        }
        this.comparison_operator = b;
    }

    public void setConditionType(byte b) {
        if ((this instanceof CFRuleRecord) && b != 1 && b != 2) {
            throw new IllegalArgumentException("CFRuleRecord only accepts Value-Is and Formula types");
        }
        this.condition_type = b;
    }

    public void setFontFormatting(FontFormatting fontFormatting) {
        this._fontFormatting = fontFormatting;
        setOptionFlag(fontFormatting != null, font);
    }

    public void setFormula1(Formula formula) {
        this.formula1 = formula;
    }

    public void setFormula2(Formula formula) {
        this.formula2 = formula;
    }

    public void setLeftBorderModified(boolean z) {
        setModified(z, bordLeft);
    }

    public void setParsedExpression1(Ptg[] ptgArr) {
        this.formula1 = Formula.create(ptgArr);
    }

    public void setParsedExpression2(Ptg[] ptgArr) {
        this.formula2 = Formula.create(ptgArr);
    }

    public void setPatternBackgroundColorModified(boolean z) {
        setModified(z, pattBgCol);
    }

    public void setPatternColorModified(boolean z) {
        setModified(z, pattCol);
    }

    public void setPatternFormatting(PatternFormatting patternFormatting) {
        this._patternFormatting = patternFormatting;
        setOptionFlag(patternFormatting != null, patt);
    }

    public void setPatternStyleModified(boolean z) {
        setModified(z, pattStyle);
    }

    public void setProtectionFormattingUnchanged() {
        setOptionFlag(false, prot);
    }

    public void setRightBorderModified(boolean z) {
        setModified(z, bordRight);
    }

    public void setTopBorderModified(boolean z) {
        setModified(z, bordTop);
    }

    public void setTopLeftBottomRightBorderModified(boolean z) {
        setModified(z, bordTlBr);
    }

    public CFRuleBase(byte b, byte b2, Ptg[] ptgArr, Ptg[] ptgArr2) {
        this(b, b2);
        this.formula1 = Formula.create(ptgArr);
        this.formula2 = Formula.create(ptgArr2);
    }

    public CFRuleBase() {
    }

    public CFRuleBase(CFRuleBase cFRuleBase) {
        super(cFRuleBase);
        setConditionType(cFRuleBase.getConditionType());
        setComparisonOperation(cFRuleBase.getComparisonOperation());
        this.formatting_options = cFRuleBase.formatting_options;
        this.formatting_not_used = cFRuleBase.formatting_not_used;
        this._fontFormatting = !cFRuleBase.containsFontFormattingBlock() ? null : cFRuleBase.getFontFormatting().copy();
        this._borderFormatting = !cFRuleBase.containsBorderFormattingBlock() ? null : cFRuleBase.getBorderFormatting().copy();
        this._patternFormatting = cFRuleBase.containsPatternFormattingBlock() ? cFRuleBase.getPatternFormatting().copy() : null;
        this.formula1 = cFRuleBase.getFormula1().copy();
        this.formula2 = cFRuleBase.getFormula2().copy();
    }
}
