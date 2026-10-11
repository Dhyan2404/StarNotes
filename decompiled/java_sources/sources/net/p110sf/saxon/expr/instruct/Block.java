package net.p110sf.saxon.expr.instruct;

import com.google.android.material.motion.MotionUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.expr.AxisExpression;
import net.p110sf.saxon.expr.Binding;
import net.p110sf.saxon.expr.CardinalityChecker;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.FirstItemExpression;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.Operand;
import net.p110sf.saxon.expr.OperandRole;
import net.p110sf.saxon.expr.PendingUpdateList;
import net.p110sf.saxon.expr.StringLiteral;
import net.p110sf.saxon.expr.VariableReference;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.expr.parser.TypeChecker;
import net.p110sf.saxon.om.AxisInfo;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.pattern.NodeKindTest;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.EmptyIterator;
import net.p110sf.saxon.tree.iter.ListIterator;
import net.p110sf.saxon.type.Affinity;
import net.p110sf.saxon.type.AnyItemType;
import net.p110sf.saxon.type.ErrorType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.Type;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.type.UType;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.Cardinality;
import net.p110sf.saxon.value.IntegerRange;
import net.p110sf.saxon.value.SequenceExtent;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class Block extends Instruction {

    /* renamed from: n */
    public final Operand[] f99633n;

    /* renamed from: o */
    public boolean f99634o;

    public Block(Expression[] expressionArr) {
        this.f99633n = new Operand[expressionArr.length];
        for (int i = 0; i < expressionArr.length; i++) {
            this.f99633n[i] = new Operand(this, expressionArr[i], OperandRole.SAME_FOCUS_ACTION);
        }
        for (Expression expression : expressionArr) {
            adoptChildExpression(expression);
        }
    }

    public static Expression makeBlock(Expression expression, Expression expression2) {
        if (expression == null || Literal.isEmptySequence(expression)) {
            return expression2;
        }
        if (expression2 == null || Literal.isEmptySequence(expression2)) {
            return expression;
        }
        boolean z = expression instanceof Block;
        if (!z && !(expression2 instanceof Block)) {
            return new Block(new Expression[]{expression, expression2});
        }
        ArrayList arrayList = new ArrayList(10);
        if (z) {
            Iterator<Operand> it2 = expression.operands().iterator();
            while (it2.hasNext()) {
                arrayList.add(it2.next().getChildExpression());
            }
        } else {
            arrayList.add(expression);
        }
        if (expression2 instanceof Block) {
            Iterator<Operand> it3 = expression2.operands().iterator();
            while (it3.hasNext()) {
                arrayList.add(it3.next().getChildExpression());
            }
        } else {
            arrayList.add(expression2);
        }
        return new Block((Expression[]) arrayList.toArray(new Expression[arrayList.size()]));
    }

    public static boolean neverReturnsTypedNodes(Instruction instruction, TypeHierarchy typeHierarchy) {
        Iterator<Operand> it2 = instruction.operands().iterator();
        while (it2.hasNext()) {
            Expression childExpression = it2.next().getChildExpression();
            if (!childExpression.hasSpecialProperty(134217728)) {
                ItemType itemType = childExpression.getItemType();
                Affinity relationship = typeHierarchy.relationship(itemType, NodeKindTest.ELEMENT);
                Affinity affinity = Affinity.DISJOINT;
                if (relationship != affinity || typeHierarchy.relationship(itemType, NodeKindTest.ATTRIBUTE) != affinity) {
                    return false;
                }
            }
        }
        return true;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public void checkForUpdatingSubexpressions() throws XPathException {
        if (size() < 2) {
            return;
        }
        Iterator<Operand> it2 = operands().iterator();
        boolean z = false;
        boolean z2 = false;
        while (it2.hasNext()) {
            Expression childExpression = it2.next().getChildExpression();
            if (ExpressionTool.isNotAllowedInUpdatingContext(childExpression)) {
                if (z) {
                    XPathException xPathException = new XPathException("If any subexpression is updating, then all must be updating", "XUST0001");
                    xPathException.setLocation(childExpression.getLocation());
                    throw xPathException;
                }
                z2 = true;
            }
            if (childExpression.isUpdatingExpression()) {
                if (z2) {
                    XPathException xPathException2 = new XPathException("If any subexpression is updating, then all must be updating", "XUST0001");
                    xPathException2.setLocation(childExpression.getLocation());
                    throw xPathException2;
                }
                z = true;
            }
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
    public int computeCardinality() {
        if (size() == 0) {
            return 8192;
        }
        int cardinality = m62721d(0).getCardinality();
        for (int i = 1; i < size() && (cardinality = Cardinality.sum(cardinality, m62721d(i).getCardinality())) != 32768; i++) {
        }
        return cardinality;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public int computeSpecialProperties() {
        boolean z;
        if (size() == 0) {
            return 234815488;
        }
        int computeSpecialProperties = super.computeSpecialProperties();
        if (this.f99634o) {
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
        return (size() == 2 && ((AxisExpression) m62721d(0)).getAxis() == 2 && ((AxisExpression) m62721d(1)).getAxis() == 3) ? i | 131072 : i;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        Expression[] expressionArr = new Expression[size()];
        for (int i = 0; i < size(); i++) {
            expressionArr[i] = m62721d(i).copy(rebindingMap);
        }
        Block block = new Block(expressionArr);
        for (int i2 = 0; i2 < size(); i2++) {
            block.adoptChildExpression(expressionArr[i2]);
        }
        block.f99634o = this.f99634o;
        ExpressionTool.copyLocationInfo(this, block);
        return block;
    }

    /* renamed from: d */
    public final Expression m62721d(int i) {
        return this.f99633n[i].getChildExpression();
    }

    /* renamed from: e */
    public final void m62722e(List<Expression> list) throws XPathException {
        Iterator<Operand> it2 = operands().iterator();
        while (true) {
            ArrayList arrayList = null;
            while (it2.hasNext()) {
                Expression childExpression = it2.next().getChildExpression();
                if (!Literal.isEmptySequence(childExpression)) {
                    if (childExpression instanceof Block) {
                        m62723g(arrayList, list);
                        ((Block) childExpression).m62722e(list);
                    } else {
                        if (childExpression instanceof Literal) {
                            Literal literal = (Literal) childExpression;
                            if (!(literal.getGroundedValue() instanceof IntegerRange)) {
                                SequenceIterator iterate = literal.getGroundedValue().iterate();
                                if (arrayList == null) {
                                    arrayList = new ArrayList(10);
                                }
                                while (true) {
                                    Item next = iterate.next();
                                    if (next != null) {
                                        arrayList.add(next);
                                    }
                                }
                            }
                        }
                        m62723g(arrayList, list);
                        list.add(childExpression);
                    }
                }
            }
            m62723g(arrayList, list);
            return;
        }
    }

    @Override // net.p110sf.saxon.expr.Expression
    public void evaluatePendingUpdates(XPathContext xPathContext, PendingUpdateList pendingUpdateList) throws XPathException {
        Iterator<Operand> it2 = operands().iterator();
        while (it2.hasNext()) {
            it2.next().getChildExpression().evaluatePendingUpdates(xPathContext, pendingUpdateList);
        }
    }

    @Override // net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("sequence", this);
        Iterator<Operand> it2 = operands().iterator();
        while (it2.hasNext()) {
            it2.next().getChildExpression().export(expressionPresenter);
        }
        expressionPresenter.endElement();
    }

    /* renamed from: g */
    public final void m62723g(List<Item> list, List<Expression> list2) {
        if (list != null) {
            list2.add(Literal.makeLiteral(new ListIterator.C18538Of(list).materialize(), this));
        }
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return "sequence";
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public int getImplementationMethod() {
        return 6;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public final ItemType getItemType() {
        if (size() == 0) {
            return ErrorType.getInstance();
        }
        TypeHierarchy typeHierarchy = getConfiguration().getTypeHierarchy();
        ItemType itemType = null;
        for (int i = 0; i < size(); i++) {
            Expression m62721d = m62721d(i);
            if (!(m62721d instanceof MessageInstr)) {
                ItemType itemType2 = m62721d.getItemType();
                if (itemType != null) {
                    itemType2 = Type.getCommonSuperType(itemType, itemType2, typeHierarchy);
                }
                if (itemType2 instanceof AnyItemType) {
                    return itemType2;
                }
                itemType = itemType2;
            }
        }
        return itemType == null ? ErrorType.getInstance() : itemType;
    }

    public Operand[] getOperanda() {
        return this.f99633n;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public UType getStaticUType(UType uType) {
        if (isInstruction()) {
            return super.getStaticUType(uType);
        }
        if (size() == 0) {
            return UType.VOID;
        }
        UType staticUType = m62721d(0).getStaticUType(uType);
        for (int i = 1; i < size(); i++) {
            staticUType = staticUType.union(m62721d(i).getStaticUType(uType));
            if (staticUType == UType.ANY) {
                return staticUType;
            }
        }
        return staticUType;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getStreamerName() {
        return "Block";
    }

    /* renamed from: h */
    public final void m62724h(int i, Expression expression) {
        this.f99633n[i].setChildExpression(expression);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean hasVariableBinding(Binding binding) {
        if (binding instanceof LocalParam) {
            for (Operand operand : this.f99633n) {
                if (operand.getChildExpression() == binding) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean implementsStaticTypeCheck() {
        return true;
    }

    public boolean isCandidateForSharedAppend() {
        Iterator<Operand> it2 = operands().iterator();
        while (it2.hasNext()) {
            Expression childExpression = it2.next().getChildExpression();
            if ((childExpression instanceof VariableReference) || (childExpression instanceof Literal)) {
                return true;
            }
        }
        return false;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public boolean isInstruction() {
        return false;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean isVacuousExpression() {
        Iterator<Operand> it2 = operands().iterator();
        while (it2.hasNext()) {
            if (!it2.next().getChildExpression().isVacuousExpression()) {
                return false;
            }
        }
        return true;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public SequenceIterator iterate(XPathContext xPathContext) throws XPathException {
        return size() == 0 ? EmptyIterator.emptyIterator() : size() == 1 ? m62721d(0).iterate(xPathContext) : new BlockIterator(this.f99633n, xPathContext);
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction
    public final boolean mayCreateNewNodes() {
        return someOperandCreatesNewNodes();
    }

    public Expression mergeAdjacentTextInstructions() {
        boolean[] zArr = new boolean[size()];
        boolean z = false;
        for (int i = 0; i < size(); i++) {
            boolean z2 = (m62721d(i) instanceof ValueOf) && (((ValueOf) m62721d(i)).getSelect() instanceof StringLiteral) && !((ValueOf) m62721d(i)).isDisableOutputEscaping();
            zArr[i] = z2;
            if (i > 0 && z2 && zArr[i - 1]) {
                z = true;
            }
        }
        if (!z) {
            return this;
        }
        ArrayList arrayList = new ArrayList(size());
        String str = null;
        for (int i2 = 0; i2 < size(); i2++) {
            if (zArr[i2]) {
                StringBuilder sb = new StringBuilder();
                if (str == null) {
                    str = "";
                }
                sb.append(str);
                sb.append(((StringLiteral) ((ValueOf) m62721d(i2)).getSelect()).getString());
                str = sb.toString();
            } else {
                if (str != null) {
                    arrayList.add(new ValueOf(new StringLiteral(str), false, false));
                    str = null;
                }
                arrayList.add(m62721d(i2));
            }
        }
        if (str != null) {
            arrayList.add(new ValueOf(new StringLiteral(str), false, false));
        }
        return makeBlock(arrayList);
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public Iterable<Operand> operands() {
        return Arrays.asList(this.f99633n);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        boolean z;
        optimizeChildren(expressionVisitor, contextItemStaticInfo);
        Iterator<Operand> it2 = operands().iterator();
        loop0: while (true) {
            boolean z2 = false;
            while (it2.hasNext()) {
                Expression childExpression = it2.next().getChildExpression();
                if (!(childExpression instanceof Block)) {
                    if ((childExpression instanceof Literal) && !(((Literal) childExpression).getGroundedValue() instanceof IntegerRange)) {
                        if (z2 || Literal.isEmptySequence(childExpression)) {
                            break loop0;
                        }
                        z2 = true;
                    }
                } else {
                    break loop0;
                }
            }
            z = false;
            break loop0;
        }
        z = true;
        if (!z) {
            return size() == 0 ? Literal.makeEmptySequence() : size() == 1 ? m62721d(0) : this;
        }
        ArrayList arrayList = new ArrayList(size() * 2);
        m62722e(arrayList);
        Expression makeBlock = makeBlock(arrayList);
        makeBlock.setRetainedStaticContext(getRetainedStaticContext());
        return makeBlock;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.instruct.TailCallReturner
    public TailCall processLeavingTail(Outputter outputter, XPathContext xPathContext) throws XPathException {
        Expression childExpression;
        Iterator<Operand> it2 = operands().iterator();
        while (true) {
            TailCall tailCall = null;
            while (it2.hasNext()) {
                childExpression = it2.next().getChildExpression();
                try {
                    if (childExpression instanceof TailCallReturner) {
                        tailCall = ((TailCallReturner) childExpression).processLeavingTail(outputter, xPathContext);
                    }
                } catch (XPathException e) {
                    e.maybeSetLocation(childExpression.getLocation());
                    e.maybeSetContext(xPathContext);
                    throw e;
                }
            }
            return tailCall;
            childExpression.process(outputter, xPathContext);
        }
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression simplify() throws XPathException {
        int i = 0;
        boolean z = true;
        boolean z2 = false;
        for (int i2 = 0; i2 < size(); i2++) {
            m62724h(i2, m62721d(i2).simplify());
            if (!Literal.isAtomic(m62721d(i2))) {
                z = false;
            }
            if ((m62721d(i2) instanceof Block) || Literal.isEmptySequence(m62721d(i2))) {
                z2 = true;
            }
        }
        if (size() == 1) {
            Expression childExpression = getOperanda()[0].getChildExpression();
            childExpression.setParentExpression(getParentExpression());
            return childExpression;
        }
        if (size() == 0) {
            Literal makeEmptySequence = Literal.makeEmptySequence();
            ExpressionTool.copyLocationInfo(this, makeEmptySequence);
            makeEmptySequence.setParentExpression(getParentExpression());
            return makeEmptySequence;
        }
        if (z2) {
            ArrayList arrayList = new ArrayList(size() * 2);
            m62722e(arrayList);
            Expression[] expressionArr = new Expression[arrayList.size()];
            while (i < arrayList.size()) {
                expressionArr[i] = arrayList.get(i);
                i++;
            }
            Block block = new Block(expressionArr);
            ExpressionTool.copyLocationInfo(this, block);
            return block.simplify();
        }
        if (!z) {
            return this;
        }
        AtomicValue[] atomicValueArr = new AtomicValue[size()];
        while (i < size()) {
            atomicValueArr[i] = (AtomicValue) ((Literal) m62721d(i)).getGroundedValue();
            i++;
        }
        Literal makeLiteral = Literal.makeLiteral(new SequenceExtent.C18571Of(atomicValueArr), this);
        makeLiteral.setParentExpression(getParentExpression());
        return makeLiteral;
    }

    public final int size() {
        return this.f99633n.length;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression staticTypeCheck(SequenceType sequenceType, boolean z, RoleDiagnostic roleDiagnostic, ExpressionVisitor expressionVisitor) throws XPathException {
        TypeChecker typeChecker = expressionVisitor.getConfiguration().getTypeChecker(z);
        if (z && !Cardinality.allowsMany(sequenceType.getCardinality())) {
            return typeChecker.staticTypeCheck(FirstItemExpression.makeFirstItemExpression(this), sequenceType, roleDiagnostic, expressionVisitor);
        }
        Expression[] expressionArr = new Expression[this.f99633n.length];
        SequenceType makeSequenceType = sequenceType.getCardinality() != 57344 ? SequenceType.makeSequenceType(sequenceType.getPrimaryType(), 57344) : sequenceType;
        int i = 0;
        while (true) {
            Operand[] operandArr = this.f99633n;
            if (i >= operandArr.length) {
                break;
            }
            expressionArr[i] = typeChecker.staticTypeCheck(operandArr[i].getChildExpression(), makeSequenceType, roleDiagnostic, expressionVisitor);
            i++;
        }
        Block block = new Block(expressionArr);
        ExpressionTool.copyLocationInfo(this, block);
        block.f99634o = this.f99634o;
        int cardinality = sequenceType.getCardinality();
        int cardinality2 = block.getCardinality();
        if (Cardinality.subsumes(sequenceType.getCardinality(), cardinality2)) {
            return block;
        }
        if ((cardinality & cardinality2) != 0) {
            return CardinalityChecker.makeCardinalityChecker(block, cardinality, roleDiagnostic);
        }
        XPathException xPathException = new XPathException("The required cardinality of the " + roleDiagnostic.getMessage() + " is " + Cardinality.describe(cardinality) + ", but the supplied cardinality is " + Cardinality.describe(cardinality2), roleDiagnostic.getErrorCode(), getLocation());
        xPathException.setIsTypeError(true);
        xPathException.setFailingExpression(this);
        throw xPathException;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String toShortString() {
        return MotionUtils.f31761c + m62721d(0).toShortString() + ", ...)";
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        typeCheckChildren(expressionVisitor, contextItemStaticInfo);
        if (neverReturnsTypedNodes(this, expressionVisitor.getConfiguration().getTypeHierarchy())) {
            resetLocalStaticProperties();
            this.f99634o = true;
        }
        return this;
    }

    public static Expression makeBlock(List<Expression> list) {
        if (list.isEmpty()) {
            return Literal.makeEmptySequence();
        }
        if (list.size() == 1) {
            return list.get(0);
        }
        return new Block((Expression[]) list.toArray(new Expression[list.size()]));
    }
}
