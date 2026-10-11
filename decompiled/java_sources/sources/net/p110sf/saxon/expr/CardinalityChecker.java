package net.p110sf.saxon.expr;

import com.google.android.material.motion.MotionUtils;
import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.event.TypeCheckingFilter;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.pattern.DocumentNodeTest;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.Err;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.TwoItemIterator;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.Type;
import net.p110sf.saxon.value.Cardinality;
import net.p110sf.saxon.value.IntegerValue;

/* loaded from: classes11.dex */
public final class CardinalityChecker extends UnaryExpression {

    /* renamed from: o */
    public int f99197o;

    /* renamed from: p */
    public final RoleDiagnostic f99198p;

    public CardinalityChecker(Expression expression, int i, RoleDiagnostic roleDiagnostic) {
        super(expression);
        this.f99197o = i;
        this.f99198p = roleDiagnostic;
    }

    public static String depictSequenceStart(SequenceIterator sequenceIterator, int i) {
        StringBuilder sb = new StringBuilder(64);
        sb.append(" (");
        int i2 = 0;
        while (true) {
            Item next = sequenceIterator.next();
            if (next == null) {
                sb.append(") ");
                return sb.toString();
            }
            int i3 = i2 + 1;
            if (i2 > 0) {
                sb.append(", ");
            }
            if (i3 > i) {
                sb.append("...) ");
                return sb.toString();
            }
            sb.append(Err.depict(next));
            i2 = i3;
        }
    }

    public static Expression makeCardinalityChecker(Expression expression, int i, RoleDiagnostic roleDiagnostic) {
        if ((expression instanceof Literal) && Cardinality.subsumes(i, SequenceTool.getCardinality(((Literal) expression).getGroundedValue()))) {
            return expression;
        }
        Expression cardinalityChecker = (!(expression instanceof Atomizer) || Cardinality.allowsMany(i)) ? new CardinalityChecker(expression, i, roleDiagnostic) : new SingletonAtomizer(((Atomizer) expression).getBaseExpression(), roleDiagnostic, Cardinality.allowsZero(i));
        ExpressionTool.copyLocationInfo(expression, cardinalityChecker);
        return cardinalityChecker;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public int computeCardinality() {
        return this.f99197o;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public int computeHashCode() {
        return this.f99197o ^ super.computeHashCode();
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public int computeSpecialProperties() {
        return getBaseExpression().getSpecialProperties();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        CardinalityChecker cardinalityChecker = new CardinalityChecker(getBaseExpression().copy(rebindingMap), this.f99197o, this.f99198p);
        ExpressionTool.copyLocationInfo(this, cardinalityChecker);
        return cardinalityChecker;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public boolean equals(Object obj) {
        return super.equals(obj) && this.f99197o == ((CardinalityChecker) obj).f99197o;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Item evaluateItem(XPathContext xPathContext) throws XPathException {
        try {
            SequenceIterator iterate = getBaseExpression().iterate(xPathContext);
            Item next = iterate.next();
            if (next == null) {
                if (!Cardinality.allowsZero(this.f99197o)) {
                    typeError("An empty sequence is not allowed as the " + this.f99198p.getMessage(), this.f99198p.getErrorCode(), xPathContext);
                }
                return null;
            }
            if (this.f99197o == 8192) {
                typeError("An empty sequence is required as the " + this.f99198p.getMessage(), this.f99198p.getErrorCode(), xPathContext);
                return null;
            }
            Item next2 = iterate.next();
            if (next2 == null) {
                return next;
            }
            typeError("A sequence of more than one item is not allowed as the " + this.f99198p.getMessage() + depictSequenceStart(new TwoItemIterator(next, next2), 2), this.f99198p.getErrorCode(), xPathContext);
            return null;
        } catch (UncheckedXPathException e) {
            throw e.getXPathException();
        }
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("check", this);
        String occurrenceIndicator = Cardinality.getOccurrenceIndicator(this.f99197o);
        if (occurrenceIndicator.equals("")) {
            occurrenceIndicator = "1";
        }
        expressionPresenter.emitAttribute("card", occurrenceIndicator);
        expressionPresenter.emitAttribute("diag", this.f99198p.save());
        getBaseExpression().export(expressionPresenter);
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return "CheckCardinality";
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getImplementationMethod() {
        return !Cardinality.allowsMany(this.f99197o) ? 23 : 22;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public IntegerValue[] getIntegerBounds() {
        return getBaseExpression().getIntegerBounds();
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        return getBaseExpression().getItemType();
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression
    public OperandRole getOperandRole() {
        return OperandRole.SAME_FOCUS_ACTION;
    }

    public int getRequiredCardinality() {
        return this.f99197o;
    }

    public RoleDiagnostic getRoleLocator() {
        return this.f99198p;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getStreamerName() {
        return "CardinalityChecker";
    }

    @Override // net.p110sf.saxon.expr.Expression
    public SequenceIterator iterate(XPathContext xPathContext) throws XPathException {
        SequenceIterator iterate = getBaseExpression().iterate(xPathContext);
        if (!SequenceTool.supportsGetLength(iterate)) {
            return new CardinalityCheckingIterator(iterate, this.f99197o, this.f99198p, getLocation());
        }
        int length = SequenceTool.getLength(iterate);
        if (length == 0 && !Cardinality.allowsZero(this.f99197o)) {
            typeError("An empty sequence is not allowed as the " + this.f99198p.getMessage(), this.f99198p.getErrorCode(), xPathContext);
        } else if (length == 1 && this.f99197o == 8192) {
            typeError("The only value allowed for the " + this.f99198p.getMessage() + " is an empty sequence", this.f99198p.getErrorCode(), xPathContext);
        } else if (length > 1 && !Cardinality.allowsMany(this.f99197o)) {
            typeError("A sequence of more than one item is not allowed as the " + this.f99198p.getMessage() + depictSequenceStart(iterate, 2), this.f99198p.getErrorCode(), xPathContext);
        }
        return iterate;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        getOperand().optimize(expressionVisitor, contextItemStaticInfo);
        Expression baseExpression = getBaseExpression();
        int i = this.f99197o;
        if (i == 57344 || Cardinality.subsumes(i, baseExpression.getCardinality())) {
            return baseExpression;
        }
        if ((baseExpression.getCardinality() & this.f99197o) != 0) {
            if (!(baseExpression instanceof ItemChecker)) {
                return this;
            }
            ItemChecker itemChecker = (ItemChecker) baseExpression;
            setBaseExpression(itemChecker.getBaseExpression());
            itemChecker.setBaseExpression(this);
            itemChecker.setParentExpression(null);
            return itemChecker;
        }
        XPathException xPathException = new XPathException("The " + this.f99198p.getMessage() + " does not satisfy the cardinality constraints", this.f99198p.getErrorCode());
        xPathException.setLocation(getLocation());
        xPathException.setIsTypeError(this.f99198p.isTypeError());
        throw xPathException;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public void process(Outputter outputter, XPathContext xPathContext) throws XPathException {
        Expression baseExpression = getBaseExpression();
        ItemType itemType = Type.ITEM_TYPE;
        if (baseExpression instanceof ItemChecker) {
            ItemChecker itemChecker = (ItemChecker) baseExpression;
            itemType = itemChecker.getRequiredType();
            baseExpression = itemChecker.getBaseExpression();
        }
        if ((baseExpression.getImplementationMethod() & 4) == 0 || (itemType instanceof DocumentNodeTest)) {
            super.process(outputter, xPathContext);
            return;
        }
        TypeCheckingFilter typeCheckingFilter = new TypeCheckingFilter(outputter);
        typeCheckingFilter.setRequiredType(itemType, this.f99197o, this.f99198p, getLocation());
        baseExpression.process(typeCheckingFilter, xPathContext);
        try {
            typeCheckingFilter.finalCheck();
        } catch (XPathException e) {
            e.maybeSetLocation(getLocation());
            throw e;
        }
    }

    public void setErrorCode(String str) {
        this.f99198p.setErrorCode(str);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public void setLocation(Location location) {
        super.setLocation(location);
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public String toShortString() {
        return getBaseExpression().toShortString();
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public String toString() {
        Expression baseExpression = getBaseExpression();
        int i = this.f99197o;
        if (i == 8192) {
            return "must-be-empty(" + baseExpression + MotionUtils.f31762d;
        }
        if (i == 16384) {
            return "exactly-one(" + baseExpression + MotionUtils.f31762d;
        }
        if (i == 24576) {
            return "zero-or-one(" + baseExpression + MotionUtils.f31762d;
        }
        if (i != 49152) {
            return "check(" + baseExpression + MotionUtils.f31762d;
        }
        return "one-or-more(" + baseExpression + MotionUtils.f31762d;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        getOperand().typeCheck(expressionVisitor, contextItemStaticInfo);
        Expression baseExpression = getBaseExpression();
        int i = this.f99197o;
        return (i == 57344 || Cardinality.subsumes(i, baseExpression.getCardinality())) ? baseExpression : this;
    }
}
