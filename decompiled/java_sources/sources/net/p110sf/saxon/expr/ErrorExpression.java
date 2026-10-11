package net.p110sf.saxon.expr;

import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.s9api.XmlProcessingError;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.trans.XmlProcessingIncident;
import net.p110sf.saxon.type.AnyItemType;
import net.p110sf.saxon.type.ItemType;

/* loaded from: classes11.dex */
public class ErrorExpression extends Expression {

    /* renamed from: n */
    public final XmlProcessingError f99239n;

    /* renamed from: o */
    public Expression f99240o;

    public ErrorExpression() {
        this("Unspecified error", "XXXX9999", false);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeCardinality() {
        return 57344;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        ErrorExpression errorExpression = new ErrorExpression(this.f99239n);
        errorExpression.setOriginalExpression(this.f99240o);
        ExpressionTool.copyLocationInfo(this, errorExpression);
        return errorExpression;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Item evaluateItem(XPathContext xPathContext) throws XPathException {
        XmlProcessingError xmlProcessingError = this.f99239n;
        if (xmlProcessingError == null) {
            XPathException fromXmlProcessingError = XPathException.fromXmlProcessingError(xmlProcessingError);
            fromXmlProcessingError.setLocation(getLocation());
            fromXmlProcessingError.setXPathContext(xPathContext);
            throw fromXmlProcessingError;
        }
        XPathException xPathException = new XPathException(this.f99239n.getMessage());
        xPathException.setLocation(this.f99239n.getLocation());
        xPathException.maybeSetLocation(getLocation());
        if (this.f99239n.getErrorCode() != null) {
            xPathException.setErrorCodeQName(this.f99239n.getErrorCode().getStructuredQName());
        }
        xPathException.maybeSetContext(xPathContext);
        xPathException.setIsTypeError(this.f99239n.isTypeError());
        throw xPathException;
    }

    @Override // net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("error", this);
        expressionPresenter.emitAttribute("message", this.f99239n.getMessage());
        expressionPresenter.emitAttribute("code", this.f99239n.getErrorCode().getLocalName());
        expressionPresenter.emitAttribute("isTypeErr", this.f99239n.isTypeError() ? "0" : "1");
        expressionPresenter.endElement();
    }

    public String getErrorCodeLocalPart() {
        return this.f99239n.getErrorCode().getLocalName();
    }

    public XmlProcessingError getException() {
        return this.f99239n;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return "errorExpr";
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getImplementationMethod() {
        return 3;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        return AnyItemType.getInstance();
    }

    public String getMessage() {
        return this.f99239n.getMessage();
    }

    public boolean isTypeError() {
        return this.f99239n.isTypeError();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public SequenceIterator iterate(XPathContext xPathContext) throws XPathException {
        evaluateItem(xPathContext);
        return null;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        return this;
    }

    public void setOriginalExpression(Expression expression) {
        this.f99240o = expression;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String toShortString() {
        Expression expression = this.f99240o;
        if (expression != null) {
            return expression.toShortString();
        }
        return "error(\"" + getMessage() + "\")";
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String toString() {
        Expression expression = this.f99240o;
        if (expression != null) {
            return expression.toString();
        }
        return "error(\"" + getMessage() + "\")";
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        return this;
    }

    public ErrorExpression(String str, String str2, boolean z) {
        this(new XmlProcessingIncident(str, str2));
        ((XmlProcessingIncident) this.f99239n).setTypeError(z);
    }

    public ErrorExpression(XmlProcessingError xmlProcessingError) {
        this.f99239n = xmlProcessingError;
    }
}
