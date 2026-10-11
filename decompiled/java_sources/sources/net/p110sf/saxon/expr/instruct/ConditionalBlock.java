package net.p110sf.saxon.expr.instruct;

import com.google.android.material.motion.MotionUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.event.SignificantItemDetector;
import net.p110sf.saxon.expr.AxisExpression;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Operand;
import net.p110sf.saxon.expr.OperandRole;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.instruct.ConditionalBlock;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.om.Action;
import net.p110sf.saxon.om.AxisInfo;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.AnyItemType;
import net.p110sf.saxon.type.ErrorType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.Type;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.type.UType;
import net.p110sf.saxon.value.Cardinality;

/* loaded from: classes11.dex */
public class ConditionalBlock extends Instruction {

    /* renamed from: n */
    public final Operand[] f99665n;

    /* renamed from: o */
    public boolean f99666o;

    public ConditionalBlock(Expression[] expressionArr) {
        this.f99665n = new Operand[expressionArr.length];
        for (int i = 0; i < expressionArr.length; i++) {
            Operand[] operandArr = this.f99665n;
            Expression expression = expressionArr[i];
            OperandRole operandRole = OperandRole.SAME_FOCUS_ACTION;
            operandArr[i] = new Operand(this, expression, operandRole);
            if (expressionArr[i] instanceof OnEmptyExpr) {
                this.f99665n[i].setOperandRole(operandRole.withConstrainedClass());
            }
        }
    }

    /* renamed from: e */
    public static /* synthetic */ void m62732e(List list, Outputter outputter, XPathContext xPathContext) throws XPathException {
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            ((Expression) it2.next()).process(outputter, xPathContext);
        }
    }

    @Override // net.p110sf.saxon.expr.Expression
    public void checkPermittedContents(SchemaType schemaType, boolean z) throws XPathException {
        Iterator<Operand> it2 = operands().iterator();
        while (it2.hasNext()) {
            it2.next().getChildExpression().checkPermittedContents(schemaType, false);
        }
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public int computeSpecialProperties() {
        boolean z;
        if (size() == 0) {
            return 234815488;
        }
        int computeSpecialProperties = super.computeSpecialProperties();
        if (this.f99666o) {
            computeSpecialProperties |= 134217728;
        }
        Iterator<Operand> it2 = operands().iterator();
        boolean z2 = true;
        boolean z3 = true;
        while (true) {
            if (!it2.hasNext()) {
                z = true;
                break;
            }
            Expression childExpression = it2.next().getChildExpression();
            if (!(childExpression instanceof AxisExpression)) {
                z = false;
                z2 = false;
                z3 = false;
                break;
            }
            int axis = ((AxisExpression) childExpression).getAxis();
            if (axis != 3) {
                z2 = false;
            }
            if (!AxisInfo.isSubtreeAxis[axis]) {
                z3 = false;
            }
        }
        if (!z) {
            return computeSpecialProperties;
        }
        int i = computeSpecialProperties | 25231360;
        if (z2) {
            i |= 524288;
        }
        if (z3) {
            i |= 1048576;
        }
        return (size() == 2 && ((AxisExpression) getChildExpression(0)).getAxis() == 2 && ((AxisExpression) getChildExpression(1)).getAxis() == 3) ? i | 131072 : i;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        Expression[] expressionArr = new Expression[size()];
        for (int i = 0; i < size(); i++) {
            expressionArr[i] = getChildExpression(i).copy(rebindingMap);
        }
        ConditionalBlock conditionalBlock = new ConditionalBlock(expressionArr);
        for (int i2 = 0; i2 < size(); i2++) {
            conditionalBlock.adoptChildExpression(expressionArr[i2]);
        }
        conditionalBlock.f99666o = this.f99666o;
        ExpressionTool.copyLocationInfo(this, conditionalBlock);
        return conditionalBlock;
    }

    @Override // net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("condSeq", this);
        Iterator<Operand> it2 = operands().iterator();
        while (it2.hasNext()) {
            it2.next().getChildExpression().export(expressionPresenter);
        }
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public final int getCardinality() {
        if (size() == 0) {
            return 8192;
        }
        int cardinality = getChildExpression(0).getCardinality();
        for (int i = 1; i < size() && (cardinality = Cardinality.sum(cardinality, getChildExpression(i).getCardinality())) != 57344; i++) {
        }
        return cardinality;
    }

    public Expression getChildExpression(int i) {
        return this.f99665n[i].getChildExpression();
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return "condSeq";
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public int getImplementationMethod() {
        return 4;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public final ItemType getItemType() {
        if (size() == 0) {
            return ErrorType.getInstance();
        }
        ItemType itemType = getChildExpression(0).getItemType();
        TypeHierarchy typeHierarchy = getConfiguration().getTypeHierarchy();
        for (int i = 1; i < size(); i++) {
            itemType = Type.getCommonSuperType(itemType, getChildExpression(i).getItemType(), typeHierarchy);
            if (itemType instanceof AnyItemType) {
                return itemType;
            }
        }
        return itemType;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getStreamerName() {
        return "ConditionalBlock";
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction
    public final boolean mayCreateNewNodes() {
        return someOperandCreatesNewNodes();
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public Iterable<Operand> operands() {
        return Arrays.asList(this.f99665n);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        Expression optimize = super.optimize(expressionVisitor, contextItemStaticInfo);
        if (optimize != this) {
            return optimize;
        }
        int i = 0;
        int i2 = -1;
        boolean z = true;
        int i3 = 0;
        boolean z2 = false;
        while (true) {
            if (i3 >= size()) {
                i3 = i2;
                break;
            }
            if (!(getChildExpression(i3) instanceof OnEmptyExpr) && !(getChildExpression(i3) instanceof OnNonEmptyExpr)) {
                if (!getChildExpression(i3).getItemType().getUType().intersection(UType.DOCUMENT.union(UType.TEXT)).equals(UType.VOID)) {
                    z2 = false;
                    z = false;
                    break;
                }
                int cardinality = getChildExpression(i3).getCardinality();
                if (!Cardinality.allowsZero(cardinality)) {
                    z2 = true;
                }
                if (cardinality != 8192) {
                    z = false;
                }
                i2 = i3;
            }
            i3++;
        }
        if (z) {
            expressionVisitor.getStaticContext().issueWarning("The result of the sequence constructor will always be empty, so xsl:on-empty instructions will always be evaluated, and xsl:on-non-empty instructions will never be evaluated", getLocation());
            ArrayList arrayList = new ArrayList();
            while (i < size()) {
                if (!(getChildExpression(i) instanceof OnNonEmptyExpr)) {
                    if (getChildExpression(i) instanceof OnEmptyExpr) {
                        arrayList.add(((OnEmptyExpr) getChildExpression(i)).getBaseExpression());
                    } else {
                        arrayList.add(getChildExpression(i));
                    }
                }
                i++;
            }
            return Block.makeBlock(arrayList);
        }
        if (!z2) {
            if (i3 != -1) {
                return this;
            }
            ArrayList arrayList2 = new ArrayList();
            while (i < size()) {
                if (getChildExpression(i) instanceof OnEmptyExpr) {
                    arrayList2.add(((OnEmptyExpr) getChildExpression(i)).getBaseExpression());
                }
                i++;
            }
            return Block.makeBlock(arrayList2);
        }
        expressionVisitor.getStaticContext().issueWarning("The result of the sequence constructor will never be empty, so xsl:on-empty instructions will never be evaluated, and xsl:on-non-empty instructions will always be evaluated", getLocation());
        ArrayList arrayList3 = new ArrayList();
        while (i < size()) {
            if (!(getChildExpression(i) instanceof OnEmptyExpr)) {
                if (getChildExpression(i) instanceof OnNonEmptyExpr) {
                    arrayList3.add(((OnNonEmptyExpr) getChildExpression(i)).getBaseExpression());
                } else {
                    arrayList3.add(getChildExpression(i));
                }
            }
            i++;
        }
        return Block.makeBlock(arrayList3);
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.instruct.TailCallReturner
    public TailCall processLeavingTail(final Outputter outputter, final XPathContext xPathContext) throws XPathException {
        final ArrayList arrayList = new ArrayList();
        SignificantItemDetector significantItemDetector = new SignificantItemDetector(outputter, new Action() { // from class: com.sunia.HTREnginev2.d8e
            @Override // net.p110sf.saxon.om.Action
            public final void doAction() {
                ConditionalBlock.m62732e(arrayList, outputter, xPathContext);
            }
        });
        Iterator<Operand> it2 = operands().iterator();
        while (it2.hasNext()) {
            Expression childExpression = it2.next().getChildExpression();
            try {
                if (!(childExpression instanceof OnEmptyExpr)) {
                    if (!(childExpression instanceof OnNonEmptyExpr)) {
                        childExpression.process(significantItemDetector, xPathContext);
                    } else if (significantItemDetector.isEmpty()) {
                        arrayList.add((OnNonEmptyExpr) childExpression);
                    } else {
                        childExpression.process(outputter, xPathContext);
                    }
                }
            } catch (XPathException e) {
                e.maybeSetLocation(childExpression.getLocation());
                e.maybeSetContext(xPathContext);
                throw e;
            }
        }
        if (!significantItemDetector.isEmpty()) {
            return null;
        }
        Iterator<Operand> it3 = operands().iterator();
        while (it3.hasNext()) {
            Expression childExpression2 = it3.next().getChildExpression();
            if (childExpression2 instanceof OnEmptyExpr) {
                childExpression2.process(outputter, xPathContext);
            }
        }
        return null;
    }

    public int size() {
        return this.f99665n.length;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String toShortString() {
        return MotionUtils.f31761c + getChildExpression(0).toShortString() + ", ...)";
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        typeCheckChildren(expressionVisitor, contextItemStaticInfo);
        if (Block.neverReturnsTypedNodes(this, expressionVisitor.getConfiguration().getTypeHierarchy())) {
            resetLocalStaticProperties();
            this.f99666o = true;
        }
        return this;
    }

    public ConditionalBlock(List<Expression> list) {
        this((Expression[]) list.toArray(new Expression[list.size()]));
    }
}
