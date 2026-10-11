package net.p110sf.saxon.expr;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.util.Iterator;
import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.expr.ForMemberExpression;
import net.p110sf.saxon.expr.SequenceMapper;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.ma.arrays.ArrayItem;
import net.p110sf.saxon.ma.arrays.ArrayItemType;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.UType;
import net.p110sf.saxon.value.IntegerValue;

/* loaded from: classes11.dex */
public class ForMemberExpression extends Assignation {
    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i */
    public /* synthetic */ SequenceIterator m62579i(ArrayItem arrayItem, XPathContext xPathContext, int i, Item item) throws XPathException {
        xPathContext.setLocalVariable(i, arrayItem.get((int) ((IntegerValue) item).longValue()));
        return getAction().iterate(xPathContext);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public void checkPermittedContents(SchemaType schemaType, boolean z) throws XPathException {
        getAction().checkPermittedContents(schemaType, false);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeCardinality() {
        return 57344;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        ForMemberExpression forMemberExpression = new ForMemberExpression();
        ExpressionTool.copyLocationInfo(this, forMemberExpression);
        forMemberExpression.setRequiredType(this.requiredType);
        forMemberExpression.setVariableQName(this.variableName);
        forMemberExpression.setSequence(getSequence().copy(rebindingMap));
        Expression copy = getAction().copy(rebindingMap);
        forMemberExpression.setAction(copy);
        forMemberExpression.variableName = this.variableName;
        forMemberExpression.slotNumber = this.slotNumber;
        ExpressionTool.rebindVariableReferences(copy, this, forMemberExpression);
        return forMemberExpression;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public void evaluatePendingUpdates(XPathContext xPathContext, PendingUpdateList pendingUpdateList) throws XPathException {
        int localSlotNumber = getLocalSlotNumber();
        Iterator<GroundedValue> it2 = ((ArrayItem) getSequence().evaluateItem(xPathContext)).members().iterator();
        while (it2.hasNext()) {
            xPathContext.setLocalVariable(localSlotNumber, it2.next());
            getAction().evaluatePendingUpdates(xPathContext, pendingUpdateList);
        }
    }

    @Override // net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("forMember", this);
        expressionPresenter.emitAttribute("var", getVariableQName());
        expressionPresenter.emitAttribute("slot", "" + getLocalSlotNumber());
        expressionPresenter.setChildRole("in");
        getSequence().export(expressionPresenter);
        expressionPresenter.setChildRole("return");
        getAction().export(expressionPresenter);
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return "forMember";
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getImplementationMethod() {
        return 6;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public IntegerValue[] getIntegerBounds() {
        return getAction().getIntegerBounds();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        return getAction().getItemType();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public UType getStaticUType(UType uType) {
        return getAction().getStaticUType(uType);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getStreamerName() {
        return "ForMemberExpression";
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean isVacuousExpression() {
        return getAction().isVacuousExpression();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public SequenceIterator iterate(final XPathContext xPathContext) throws XPathException {
        final int localSlotNumber = getLocalSlotNumber();
        final ArrayItem arrayItem = (ArrayItem) getSequence().evaluateItem(xPathContext);
        return MappingIterator.map(new AscendingRangeIterator(0L, 1L, arrayItem.arrayLength() - 1), new SequenceMapper.Lambda() { // from class: com.sunia.HTREnginev2.tsg
            @Override // net.sf.saxon.expr.SequenceMapper.Lambda
            public final SequenceIterator map(Item item) {
                SequenceIterator m62579i;
                m62579i = ForMemberExpression.this.m62579i(arrayItem, xPathContext, localSlotNumber, item);
                return m62579i;
            }
        });
    }

    @Override // net.p110sf.saxon.expr.Expression
    public void process(Outputter outputter, XPathContext xPathContext) throws XPathException {
        int localSlotNumber = getLocalSlotNumber();
        Iterator<GroundedValue> it2 = ((ArrayItem) getSequence().evaluateItem(xPathContext)).members().iterator();
        while (it2.hasNext()) {
            xPathContext.setLocalVariable(localSlotNumber, it2.next());
            getAction().process(outputter, xPathContext);
        }
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String toShortString() {
        StringBuilder sb = new StringBuilder();
        sb.append("for member $");
        sb.append(getVariableQName().getDisplayName());
        sb.append(CloudStorageConstants.OPERATION_IN);
        sb.append(getSequence() == null ? "(...)" : getSequence().toShortString());
        sb.append(" return ");
        sb.append(getAction() != null ? getAction().toShortString() : "(...)");
        return sb.toString();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("for member $");
        sb.append(getVariableEQName());
        sb.append(CloudStorageConstants.OPERATION_IN);
        sb.append(getSequence() == null ? "(...)" : getSequence().toString());
        sb.append(" return ");
        sb.append(getAction() != null ? ExpressionTool.parenthesize(getAction()) : "(...)");
        return sb.toString();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        getSequenceOp().typeCheck(expressionVisitor, contextItemStaticInfo);
        setSequence(expressionVisitor.getConfiguration().getTypeChecker(false).staticTypeCheck(getSequence(), ArrayItemType.SINGLE_ARRAY, new RoleDiagnostic(20, "'in' clause of for-member", 0), expressionVisitor));
        if (Literal.isEmptySequence(getAction())) {
            return getAction();
        }
        getActionOp().typeCheck(expressionVisitor, contextItemStaticInfo);
        return this;
    }
}
