package net.p110sf.saxon.expr.instruct;

import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.StringLiteral;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.pattern.NodeKindTest;
import net.p110sf.saxon.str.StringConstants;
import net.p110sf.saxon.str.Twine8;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.ItemType;

/* loaded from: classes11.dex */
public final class Comment extends SimpleNodeConstructor {

    /* renamed from: n */
    public static final UnicodeString f99652n = new Twine8(StringConstants.TWO_HYPHENS);

    public static UnicodeString checkContentXQuery(UnicodeString unicodeString) throws XPathException {
        String m62728d = m62728d(unicodeString);
        if (m62728d == null) {
            return unicodeString;
        }
        throw new XPathException(m62728d, "XQDY0072");
    }

    public static UnicodeString checkContentXSLT(UnicodeString unicodeString) {
        if (m62728d(unicodeString) == null) {
            return unicodeString;
        }
        while (true) {
            long indexOf = unicodeString.indexOf(f99652n, 0L);
            if (indexOf < 0) {
                break;
            }
            long j = indexOf + 1;
            unicodeString = unicodeString.substring(0L, j).concat(StringConstants.SINGLE_SPACE).concat(unicodeString.substring(j));
        }
        return unicodeString.codePointAt(unicodeString.length() - 1) == 45 ? unicodeString.concat(StringConstants.SINGLE_SPACE) : unicodeString;
    }

    /* renamed from: d */
    public static String m62728d(UnicodeString unicodeString) {
        if (unicodeString.indexOf(f99652n, 0L) >= 0) {
            return "Invalid characters (--) in comment";
        }
        if (unicodeString.length() <= 0 || unicodeString.codePointAt(unicodeString.length() - 1) != 45) {
            return null;
        }
        return "Comment cannot end in '-'";
    }

    @Override // net.p110sf.saxon.expr.instruct.SimpleNodeConstructor
    public UnicodeString checkContent(UnicodeString unicodeString, XPathContext xPathContext) throws XPathException {
        if (isXSLT()) {
            return checkContentXSLT(unicodeString);
        }
        try {
            return checkContentXQuery(unicodeString);
        } catch (XPathException e) {
            e.setXPathContext(xPathContext);
            e.setLocation(this.getLocation());
            throw e;
        }
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        Comment comment = new Comment();
        ExpressionTool.copyLocationInfo(this, comment);
        comment.setSelect(getSelect().copy(rebindingMap));
        return comment;
    }

    @Override // net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("comment", this);
        String str = "";
        if (isLocal()) {
            str = "l";
        }
        if (!str.isEmpty()) {
            expressionPresenter.emitAttribute("flags", str);
        }
        getSelect().export(expressionPresenter);
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getCardinality() {
        return 16384;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction
    public int getInstructionNameCode() {
        return 144;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        return NodeKindTest.COMMENT;
    }

    @Override // net.p110sf.saxon.expr.instruct.SimpleNodeConstructor
    public void localTypeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        if (getSelect() instanceof Literal) {
            UnicodeString unicodeStringValue = ((Literal) getSelect()).getGroundedValue().getUnicodeStringValue();
            UnicodeString checkContent = checkContent(unicodeStringValue, expressionVisitor.getStaticContext().makeEarlyEvaluationContext());
            if (checkContent.equals(unicodeStringValue)) {
                return;
            }
            setSelect(new StringLiteral(checkContent));
        }
    }

    @Override // net.p110sf.saxon.expr.instruct.SimpleNodeConstructor
    public void processValue(UnicodeString unicodeString, Outputter outputter, XPathContext xPathContext) throws XPathException {
        outputter.comment(checkContent(unicodeString, xPathContext), getLocation(), 0);
    }
}
