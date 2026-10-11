package org.apache.poi.convert.xwpf.property;

import java.math.BigInteger;
import org.apache.poi.convert.WordToHtmlUtils;
import org.apache.poi.convert.xwpf.XWPFWordToHtmlUtils;
import org.apache.poi.ooxml.util.POIXMLUnits;
import org.apache.poi.style.UnitValue;
import org.apache.poi.util.ExtUnits;
import org.apache.poi.util.Units;
import org.apache.poi.xwpf.usermodel.LineSpacingRule;
import org.apache.poi.xwpf.usermodel.ParagraphAlignment;
import org.apache.poi.xwpf.usermodel.TextAlignment;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTBorder;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTInd;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPBdr;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPPrBase;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSpacing;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STLineSpacingRule;

/* loaded from: classes12.dex */
public class ParagraphPropertyFetcher implements IParagraphPropertyFetcher {
    private CTBorder[] borders;
    private CTInd indentation;
    private UnitValue marginBottom;
    private UnitValue marginLeft;
    private UnitValue marginRight;
    private UnitValue marginTop;

    /* renamed from: pr */
    private CTPPrBase f111317pr;
    private CTSpacing spacing;
    private UnitValue textIndent;

    public ParagraphPropertyFetcher(CTPPrBase cTPPrBase) {
        this.f111317pr = cTPPrBase;
        if (cTPPrBase == null) {
            throw new NullPointerException("pr is null");
        }
        init();
    }

    private CTInd getCTInd(boolean z) {
        CTInd ind = this.f111317pr.getInd();
        return (z && ind == null) ? this.f111317pr.addNewInd() : ind;
    }

    private void init() {
        initBorders();
        initIndentation();
        initSpacing();
    }

    private void initBorders() {
        CTPBdr cTPBrd = getCTPBrd(false);
        if (WordToHtmlUtils.isNull(cTPBrd)) {
            return;
        }
        CTBorder[] cTBorderArr = new CTBorder[4];
        this.borders = cTBorderArr;
        cTBorderArr[0] = cTPBrd.getTop();
        this.borders[1] = cTPBrd.getRight();
        this.borders[2] = cTPBrd.getBottom();
        this.borders[3] = cTPBrd.getLeft();
    }

    private void initIndentation() {
        CTInd cTInd = getCTInd(false);
        this.indentation = cTInd;
        if (WordToHtmlUtils.isNull(cTInd)) {
            return;
        }
        UnitValue indentationFirstLineChars = getIndentationFirstLineChars();
        this.textIndent = indentationFirstLineChars;
        if (WordToHtmlUtils.isNull(indentationFirstLineChars)) {
            this.textIndent = getIndentationFirstLine();
        }
        if (WordToHtmlUtils.isNull(this.textIndent)) {
            this.textIndent = getHangingIndentChars();
        }
        if (WordToHtmlUtils.isNull(this.textIndent)) {
            this.textIndent = getHangingIndent();
        }
        UnitValue indentationLeftChars = getIndentationLeftChars();
        this.marginLeft = indentationLeftChars;
        if (WordToHtmlUtils.isNull(indentationLeftChars)) {
            this.marginLeft = getIndentFromLeft();
        }
        UnitValue indentationRightChars = getIndentationRightChars();
        this.marginRight = indentationRightChars;
        if (WordToHtmlUtils.isNull(indentationRightChars)) {
            this.marginRight = getIndentFromRight();
        }
    }

    private void initSpacing() {
        CTSpacing cTSpacing = getCTSpacing(false);
        this.spacing = cTSpacing;
        if (WordToHtmlUtils.isNull(cTSpacing)) {
            return;
        }
        UnitValue spacingBeforeLines = getSpacingBeforeLines();
        this.marginTop = spacingBeforeLines;
        if (WordToHtmlUtils.isNull(spacingBeforeLines)) {
            this.marginTop = getSpacingBefore();
        }
        UnitValue spacingAfterLines = getSpacingAfterLines();
        this.marginBottom = spacingAfterLines;
        if (WordToHtmlUtils.isNull(spacingAfterLines)) {
            this.marginBottom = getSpacingAfter();
        }
    }

    @Override // org.apache.poi.convert.xwpf.property.IParagraphPropertyFetcher
    public ParagraphAlignment getAlignment() {
        CTPPrBase cTPPrBase = this.f111317pr;
        if (cTPPrBase == null || !cTPPrBase.isSetJc()) {
            return null;
        }
        return ParagraphAlignment.valueOf(this.f111317pr.getJc().getVal().intValue());
    }

    @Override // org.apache.poi.convert.xwpf.property.BordersFetcher
    public CTBorder[] getCTBorders() {
        return this.borders;
    }

    public CTPBdr getCTPBrd(boolean z) {
        CTPBdr pBdr = this.f111317pr.isSetPBdr() ? this.f111317pr.getPBdr() : null;
        return (z && pBdr == null) ? this.f111317pr.addNewPBdr() : pBdr;
    }

    @Override // org.apache.poi.convert.xwpf.property.IParagraphPropertyFetcher
    public CTSpacing getCTSpacing() {
        return this.spacing;
    }

    public UnitValue getHangingIndent() {
        if (WordToHtmlUtils.isNull(this.indentation) || !this.indentation.isSetHanging()) {
            return null;
        }
        return UnitValue.fromPX(-ExtUnits.parseLength(this.indentation.xgetHanging()));
    }

    public UnitValue getHangingIndentChars() {
        if (WordToHtmlUtils.isNull(this.indentation) || !this.indentation.isSetHangingChars()) {
            return null;
        }
        BigInteger[] divideAndRemainder = this.indentation.getHangingChars().divideAndRemainder(BigInteger.valueOf(100L));
        return UnitValue.fromEM(-(divideAndRemainder[0].floatValue() + (divideAndRemainder[1].floatValue() / 100.0f)));
    }

    public UnitValue getIndentFromLeft() {
        return getIndentationLeft();
    }

    public UnitValue getIndentFromRight() {
        return getIndentationRight();
    }

    public UnitValue getIndentationFirstLine() {
        if (WordToHtmlUtils.isNull(this.indentation) || !this.indentation.isSetFirstLine()) {
            return null;
        }
        return UnitValue.fromPX(ExtUnits.parseLength(this.indentation.xgetFirstLine()));
    }

    public UnitValue getIndentationFirstLineChars() {
        if (WordToHtmlUtils.isNull(this.indentation) || !this.indentation.isSetFirstLineChars()) {
            return null;
        }
        BigInteger[] divideAndRemainder = this.indentation.getFirstLineChars().divideAndRemainder(BigInteger.valueOf(100L));
        return UnitValue.fromEM(divideAndRemainder[0].floatValue() + (divideAndRemainder[1].floatValue() / 100.0f));
    }

    public UnitValue getIndentationLeft() {
        if (WordToHtmlUtils.isNull(this.indentation) || !this.indentation.isSetLeft()) {
            return null;
        }
        return UnitValue.fromPX(ExtUnits.parseLength(this.indentation.xgetLeft()));
    }

    public UnitValue getIndentationLeftChars() {
        if (WordToHtmlUtils.isNull(this.indentation) || !this.indentation.isSetLeftChars()) {
            return null;
        }
        BigInteger[] divideAndRemainder = this.indentation.getLeftChars().divideAndRemainder(BigInteger.valueOf(100L));
        return UnitValue.fromEM(divideAndRemainder[0].floatValue() + (divideAndRemainder[1].floatValue() / 100.0f));
    }

    public UnitValue getIndentationRight() {
        if (WordToHtmlUtils.isNull(this.indentation) || !this.indentation.isSetRight()) {
            return null;
        }
        return UnitValue.fromPX(ExtUnits.parseLength(this.indentation.xgetRight()));
    }

    public UnitValue getIndentationRightChars() {
        if (WordToHtmlUtils.isNull(this.indentation) || !this.indentation.isSetRightChars()) {
            return null;
        }
        BigInteger[] divideAndRemainder = this.indentation.getRightChars().divideAndRemainder(BigInteger.valueOf(100L));
        return UnitValue.fromEM(divideAndRemainder[0].floatValue() + (divideAndRemainder[1].floatValue() / 100.0f));
    }

    @Override // org.apache.poi.convert.xwpf.property.IParagraphPropertyFetcher
    public UnitValue getMarginBottom() {
        return this.marginBottom;
    }

    @Override // org.apache.poi.convert.xwpf.property.IParagraphPropertyFetcher
    public UnitValue getMarginLeft() {
        return this.marginLeft;
    }

    @Override // org.apache.poi.convert.xwpf.property.IParagraphPropertyFetcher
    public UnitValue getMarginRight() {
        return this.marginRight;
    }

    @Override // org.apache.poi.convert.xwpf.property.IParagraphPropertyFetcher
    public UnitValue getMarginTop() {
        return this.marginTop;
    }

    public UnitValue getSpacingAfter() {
        if (WordToHtmlUtils.isNull(this.spacing) || !this.spacing.isSetAfter()) {
            return null;
        }
        return UnitValue.fromPX(ExtUnits.parseLength(this.spacing.xgetAfter()));
    }

    public UnitValue getSpacingAfterLines() {
        if (WordToHtmlUtils.isNull(this.spacing) || !this.spacing.isSetAfterLines()) {
            return null;
        }
        BigInteger[] divideAndRemainder = this.spacing.getAfterLines().divideAndRemainder(BigInteger.valueOf(100L));
        return UnitValue.fromEM(divideAndRemainder[0].floatValue() + (divideAndRemainder[1].floatValue() / 100.0f));
    }

    public UnitValue getSpacingBefore() {
        if (WordToHtmlUtils.isNull(this.spacing) || !this.spacing.isSetBefore()) {
            return null;
        }
        return UnitValue.fromPX(ExtUnits.parseLength(this.spacing.xgetBefore()));
    }

    public UnitValue getSpacingBeforeLines() {
        if (WordToHtmlUtils.isNull(this.spacing) || !this.spacing.isSetBeforeLines()) {
            return null;
        }
        BigInteger[] divideAndRemainder = this.spacing.getBeforeLines().divideAndRemainder(BigInteger.valueOf(100L));
        return UnitValue.fromEM(divideAndRemainder[0].floatValue() + (divideAndRemainder[1].floatValue() / 100.0f));
    }

    public UnitValue getSpacingBetween() {
        if (WordToHtmlUtils.isNull(this.spacing) || !this.spacing.isSetLine()) {
            return null;
        }
        double dxa = Units.toDXA(POIXMLUnits.parseLength(this.spacing.xgetLine()));
        STLineSpacingRule.Enum lineSpaceRule = XWPFWordToHtmlUtils.getLineSpaceRule(this.spacing);
        return lineSpaceRule == STLineSpacingRule.AT_LEAST ? UnitValue.fromPX(Math.max(16.0d, ExtUnits.dxaToPixel(dxa))) : lineSpaceRule == STLineSpacingRule.EXACT ? UnitValue.fromPX(ExtUnits.dxaToPixel(dxa)) : UnitValue.fromEM(dxa / 240.0d);
    }

    public LineSpacingRule getSpacingLineRule() {
        if (WordToHtmlUtils.isNull(this.spacing) || !this.spacing.isSetLineRule()) {
            return null;
        }
        return LineSpacingRule.valueOf(XWPFWordToHtmlUtils.getLineSpaceRule(this.spacing).intValue());
    }

    @Override // org.apache.poi.convert.xwpf.property.IParagraphPropertyFetcher
    public UnitValue getTextIndent() {
        return this.textIndent;
    }

    @Override // org.apache.poi.convert.xwpf.property.IParagraphPropertyFetcher
    public TextAlignment getVerticalAlignment() {
        CTPPrBase cTPPrBase = this.f111317pr;
        if (cTPPrBase == null || !cTPPrBase.isSetTextAlignment()) {
            return null;
        }
        return TextAlignment.valueOf(this.f111317pr.getTextAlignment().getVal().intValue());
    }

    private CTSpacing getCTSpacing(boolean z) {
        CTSpacing spacing = this.f111317pr.getSpacing();
        return (z && spacing == null) ? this.f111317pr.addNewSpacing() : spacing;
    }
}
