package net.p110sf.saxon.expr;

import com.google.android.material.motion.MotionUtils;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.lib.StandardDiagnostics;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.AnyItemType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class SuppliedParameterReference extends Expression {

    /* renamed from: n */
    public int f99381n;

    /* renamed from: o */
    public SequenceType f99382o;

    public SuppliedParameterReference(int i) {
        this.f99381n = i;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeCardinality() {
        SequenceType sequenceType = this.f99382o;
        if (sequenceType != null) {
            return sequenceType.getCardinality();
        }
        return 57344;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        SuppliedParameterReference suppliedParameterReference = new SuppliedParameterReference(this.f99381n);
        ExpressionTool.copyLocationInfo(this, suppliedParameterReference);
        return suppliedParameterReference;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Item evaluateItem(XPathContext xPathContext) throws XPathException {
        return evaluateVariable(xPathContext).head();
    }

    public Sequence evaluateVariable(XPathContext xPathContext) {
        int i = this.f99381n;
        if (i == -1) {
            return xPathContext.getStackFrame().popDynamicValue();
        }
        try {
            return xPathContext.evaluateLocalVariable(i);
        } catch (AssertionError e) {
            new StandardDiagnostics().logStackTrace(xPathContext, xPathContext.getConfiguration().getLogger(), 2);
            throw new AssertionError(e.getMessage() + ". No value has been set for parameter " + this.f99381n);
        }
    }

    @Override // net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("supplied", this);
        expressionPresenter.emitAttribute("slot", this.f99381n + "");
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return "supplied";
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getImplementationMethod() {
        return 3;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getIntrinsicDependencies() {
        return 128;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        SequenceType sequenceType = this.f99382o;
        return sequenceType != null ? sequenceType.getPrimaryType() : AnyItemType.getInstance();
    }

    public int getSlotNumber() {
        return this.f99381n;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public SequenceIterator iterate(XPathContext xPathContext) throws XPathException {
        return evaluateVariable(xPathContext).iterate();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        return this;
    }

    public void setSuppliedType(SequenceType sequenceType) {
        this.f99382o = sequenceType;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String toString() {
        return "suppliedParam(" + this.f99381n + MotionUtils.f31762d;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        return this;
    }
}
