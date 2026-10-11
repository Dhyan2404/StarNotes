package net.p110sf.saxon.expr.instruct;

import com.google.android.material.motion.MotionUtils;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.expr.Atomizer;
import net.p110sf.saxon.expr.ErrorExpression;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.Operand;
import net.p110sf.saxon.expr.OperandRole;
import net.p110sf.saxon.expr.OperandUsage;
import net.p110sf.saxon.expr.PendingUpdateList;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.PathMap;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.expr.parser.TypeChecker;
import net.p110sf.saxon.functions.BooleanFn;
import net.p110sf.saxon.functions.SystemFunction;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.trans.XmlProcessingException;
import net.p110sf.saxon.tree.iter.EmptyIterator;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.Type;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.type.UType;
import net.p110sf.saxon.value.BooleanValue;
import net.p110sf.saxon.value.Cardinality;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class Choose extends Instruction implements ConditionalInstruction {
    public static final OperandRole CHOICE_ACTION = new OperandRole(8, OperandUsage.TRANSMISSION, SequenceType.ANY_SEQUENCE);

    /* renamed from: n */
    public final Operand[] f99649n;

    /* renamed from: o */
    public final Operand[] f99650o;

    /* renamed from: p */
    public boolean f99651p;

    public Choose(Expression[] expressionArr, Expression[] expressionArr2) {
        this.f99649n = new Operand[expressionArr.length];
        for (int i = 0; i < expressionArr.length; i++) {
            this.f99649n[i] = new Operand(this, expressionArr[i], OperandRole.INSPECT);
        }
        this.f99650o = new Operand[expressionArr2.length];
        for (int i2 = 0; i2 < expressionArr2.length; i2++) {
            this.f99650o[i2] = new Operand(this, expressionArr2[i2], CHOICE_ACTION);
        }
    }

    public static boolean isSingleBranchChoice(Expression expression) {
        return (expression instanceof Choose) && ((Choose) expression).size() == 1;
    }

    public static Expression makeConditional(Expression expression, Expression expression2, Expression expression3) {
        if (Literal.isEmptySequence(expression3)) {
            return new Choose(new Expression[]{expression}, new Expression[]{expression2});
        }
        return new Choose(new Expression[]{expression, Literal.makeLiteral(BooleanValue.TRUE, expression)}, new Expression[]{expression2, expression3});
    }

    public Iterable<Operand> actions() {
        return Arrays.asList(this.f99650o);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public PathMap.PathMapNodeSet addToPathMap(PathMap pathMap, PathMap.PathMapNodeSet pathMapNodeSet) {
        Iterator<Operand> it2 = conditions().iterator();
        while (it2.hasNext()) {
            it2.next().getChildExpression().addToPathMap(pathMap, pathMapNodeSet);
        }
        PathMap.PathMapNodeSet pathMapNodeSet2 = new PathMap.PathMapNodeSet();
        Iterator<Operand> it3 = actions().iterator();
        while (it3.hasNext()) {
            pathMapNodeSet2.addNodeSet(it3.next().getChildExpression().addToPathMap(pathMap, pathMapNodeSet));
        }
        return pathMapNodeSet2;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean allowExtractingCommonSubexpressions() {
        return false;
    }

    public void atomizeActions() {
        for (int i = 0; i < size(); i++) {
            setAction(i, Atomizer.makeAtomizer(getAction(i), null));
        }
    }

    @Override // net.p110sf.saxon.expr.Expression
    public void checkForUpdatingSubexpressions() throws XPathException {
        Iterator<Operand> it2 = conditions().iterator();
        while (it2.hasNext()) {
            Expression childExpression = it2.next().getChildExpression();
            childExpression.checkForUpdatingSubexpressions();
            if (childExpression.isUpdatingExpression()) {
                XPathException xPathException = new XPathException("Updating expression appears in a context where it is not permitted", "XUST0001");
                xPathException.setLocator(childExpression.getLocation());
                throw xPathException;
            }
        }
        Iterator<Operand> it3 = actions().iterator();
        boolean z = false;
        boolean z2 = false;
        while (it3.hasNext()) {
            Expression childExpression2 = it3.next().getChildExpression();
            childExpression2.checkForUpdatingSubexpressions();
            if (ExpressionTool.isNotAllowedInUpdatingContext(childExpression2)) {
                if (z) {
                    XPathException xPathException2 = new XPathException("If any branch of a conditional is an updating expression, then all must be updating expressions (or vacuous)", "XUST0001");
                    xPathException2.setLocator(childExpression2.getLocation());
                    throw xPathException2;
                }
                z2 = true;
            }
            if (childExpression2.isUpdatingExpression()) {
                if (z2) {
                    XPathException xPathException3 = new XPathException("If any branch of a conditional is an updating expression, then all must be updating expressions (or vacuous)", "XUST0001");
                    xPathException3.setLocator(childExpression2.getLocation());
                    throw xPathException3;
                }
                z = true;
            }
        }
    }

    @Override // net.p110sf.saxon.expr.Expression
    public void checkPermittedContents(SchemaType schemaType, boolean z) throws XPathException {
        Iterator<Operand> it2 = actions().iterator();
        while (it2.hasNext()) {
            it2.next().getChildExpression().checkPermittedContents(schemaType, z);
        }
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public int computeCardinality() {
        boolean z = false;
        int i = 0;
        for (int i2 = 0; i2 < size(); i2++) {
            i = Cardinality.union(i, getAction(i2).getCardinality());
            if (Literal.hasEffectiveBooleanValue(getCondition(i2), true)) {
                z = true;
            }
        }
        return !z ? Cardinality.union(i, 8192) : i;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public int computeSpecialProperties() {
        int specialProperties = getAction(0).getSpecialProperties();
        for (int i = 1; i < size(); i++) {
            specialProperties &= getAction(i).getSpecialProperties();
        }
        return specialProperties;
    }

    public Iterable<Operand> conditions() {
        return Arrays.asList(this.f99649n);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        int size = size();
        Expression[] expressionArr = new Expression[size];
        Expression[] expressionArr2 = new Expression[size];
        for (int i = 0; i < size; i++) {
            expressionArr[i] = getCondition(i).copy(rebindingMap);
            expressionArr2[i] = getAction(i).copy(rebindingMap);
        }
        Choose choose = new Choose(expressionArr, expressionArr2);
        ExpressionTool.copyLocationInfo(this, choose);
        choose.setInstruction(isInstruction());
        return choose;
    }

    /* renamed from: d */
    public final int m62725d(XPathContext xPathContext) throws XPathException {
        int size = size();
        for (int i = 0; i < size; i++) {
            try {
                if (getCondition(i).effectiveBooleanValue(xPathContext)) {
                    return i;
                }
            } catch (XPathException e) {
                e.maybeSetFailingExpression(getCondition(i));
                throw e;
            }
        }
        return -1;
    }

    /* renamed from: e */
    public final Expression m62726e(ExpressionVisitor expressionVisitor) {
        Expression m62727g = m62727g(expressionVisitor);
        if (m62727g != this) {
            ExpressionTool.copyLocationInfo(this, m62727g);
        }
        return m62727g;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public Item evaluateItem(XPathContext xPathContext) throws XPathException {
        int m62725d = m62725d(xPathContext);
        if (m62725d < 0) {
            return null;
        }
        return getAction(m62725d).evaluateItem(xPathContext);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public void evaluatePendingUpdates(XPathContext xPathContext, PendingUpdateList pendingUpdateList) throws XPathException {
        int m62725d = m62725d(xPathContext);
        if (m62725d >= 0) {
            getAction(m62725d).evaluatePendingUpdates(xPathContext, pendingUpdateList);
        }
    }

    @Override // net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement(Constants.ELEMNAME_CHOOSE_STRING, this);
        for (int i = 0; i < size(); i++) {
            getCondition(i).export(expressionPresenter);
            getAction(i).export(expressionPresenter);
        }
        expressionPresenter.endElement();
    }

    /* renamed from: g */
    public final Expression m62727g(ExpressionVisitor expressionVisitor) {
        boolean z;
        int i = 0;
        int i2 = 0;
        while (true) {
            if (i2 >= size()) {
                z = false;
                break;
            }
            if (getCondition(i2) instanceof Literal) {
                z = true;
                break;
            }
            i2++;
        }
        int size = size();
        if (z) {
            ArrayList arrayList = new ArrayList(size);
            ArrayList arrayList2 = new ArrayList(size);
            for (int i3 = 0; i3 < size; i3++) {
                Expression condition = getCondition(i3);
                if (!Literal.hasEffectiveBooleanValue(condition, false)) {
                    arrayList.add(condition);
                    arrayList2.add(getAction(i3));
                }
                if (Literal.hasEffectiveBooleanValue(condition, true)) {
                    break;
                }
            }
            if (arrayList.isEmpty()) {
                Literal makeEmptySequence = Literal.makeEmptySequence();
                ExpressionTool.copyLocationInfo(this, makeEmptySequence);
                return makeEmptySequence;
            }
            if (arrayList.size() == 1 && Literal.hasEffectiveBooleanValue((Expression) arrayList.get(0), true)) {
                return (Expression) arrayList2.get(0);
            }
            if (arrayList.size() != size) {
                Choose choose = new Choose((Expression[]) arrayList.toArray(new Expression[arrayList.size()]), (Expression[]) arrayList2.toArray(new Expression[arrayList2.size()]));
                choose.setRetainedStaticContext(getRetainedStaticContext());
                return choose;
            }
        }
        if (size() == 1 && Literal.hasEffectiveBooleanValue(getCondition(0), true)) {
            return getAction(0);
        }
        if (Literal.isEmptySequence(getAction(size() - 1))) {
            if (size() == 1) {
                Literal makeEmptySequence2 = Literal.makeEmptySequence();
                ExpressionTool.copyLocationInfo(this, makeEmptySequence2);
                return makeEmptySequence2;
            }
            int i4 = size - 1;
            Expression[] expressionArr = new Expression[i4];
            Expression[] expressionArr2 = new Expression[i4];
            while (i < i4) {
                expressionArr[i] = getCondition(i);
                expressionArr2[i] = getAction(i);
                i++;
            }
            return new Choose(expressionArr, expressionArr2);
        }
        int i5 = size - 1;
        if (!Literal.hasEffectiveBooleanValue(getCondition(i5), true) || !(getAction(i5) instanceof Choose)) {
            return (size == 2 && Literal.isConstantBoolean(getAction(0), true) && Literal.isConstantBoolean(getAction(1), false) && Literal.hasEffectiveBooleanValue(getCondition(1), true)) ? (expressionVisitor.getConfiguration().getTypeHierarchy().isSubType(getCondition(0).getItemType(), BuiltInAtomicType.BOOLEAN) && getCondition(0).getCardinality() == 16384) ? getCondition(0) : SystemFunction.makeCall("boolean", getRetainedStaticContext(), getCondition(0)) : this;
        }
        Choose choose2 = (Choose) getAction(i5);
        int size2 = (choose2.size() + size) - 1;
        Expression[] expressionArr3 = new Expression[size2];
        Expression[] expressionArr4 = new Expression[size2];
        for (int i6 = 0; i6 < i5; i6++) {
            expressionArr3[i6] = getCondition(i6);
            expressionArr4[i6] = getAction(i6);
        }
        while (i < choose2.size()) {
            int i7 = (i + size) - 1;
            expressionArr3[i7] = choose2.getCondition(i);
            expressionArr4[i7] = choose2.getAction(i);
            i++;
        }
        return new Choose(expressionArr3, expressionArr4);
    }

    public Expression getAction(int i) {
        return this.f99650o[i].getChildExpression();
    }

    public Operand getActionOperand(int i) {
        return this.f99650o[i];
    }

    public Expression getCondition(int i) {
        return this.f99649n[i].getChildExpression();
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return Constants.ELEMNAME_CHOOSE_STRING;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public int getImplementationMethod() {
        return !Cardinality.allowsMany(getCardinality()) ? 15 : 14;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction
    public int getInstructionNameCode() {
        return size() == 1 ? 162 : 143;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        TypeHierarchy typeHierarchy = getConfiguration().getTypeHierarchy();
        ItemType itemType = getAction(0).getItemType();
        for (int i = 1; i < size(); i++) {
            itemType = Type.getCommonSuperType(itemType, getAction(i).getItemType(), typeHierarchy);
        }
        return itemType;
    }

    public int getNumberOfConditions() {
        return size();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public UType getStaticUType(UType uType) {
        if (isInstruction()) {
            return super.getStaticUType(uType);
        }
        UType staticUType = getAction(0).getStaticUType(uType);
        for (int i = 1; i < size(); i++) {
            staticUType = staticUType.union(getAction(i).getStaticUType(uType));
        }
        return staticUType;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getStreamerName() {
        return "Choose";
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean implementsStaticTypeCheck() {
        return true;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public boolean isInstruction() {
        return this.f99651p;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean isUpdatingExpression() {
        Iterator<Operand> it2 = actions().iterator();
        while (it2.hasNext()) {
            if (it2.next().getChildExpression().isUpdatingExpression()) {
                return true;
            }
        }
        return false;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean isVacuousExpression() {
        Iterator<Operand> it2 = actions().iterator();
        while (it2.hasNext()) {
            if (!it2.next().getChildExpression().isVacuousExpression()) {
                return false;
            }
        }
        return true;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public SequenceIterator iterate(XPathContext xPathContext) throws XPathException {
        int m62725d = m62725d(xPathContext);
        return m62725d < 0 ? EmptyIterator.emptyIterator() : getAction(m62725d).iterate(xPathContext);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int markTailFunctionCalls(StructuredQName structuredQName, int i) {
        Iterator<Operand> it2 = actions().iterator();
        int i2 = 0;
        while (it2.hasNext()) {
            i2 = Math.max(i2, it2.next().getChildExpression().markTailFunctionCalls(structuredQName, i));
        }
        return i2;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction
    public final boolean mayCreateNewNodes() {
        Iterator<Operand> it2 = actions().iterator();
        while (it2.hasNext()) {
            if ((it2.next().getChildExpression().getSpecialProperties() & 8388608) == 0) {
                return true;
            }
        }
        return false;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public Iterable<Operand> operands() {
        ArrayList arrayList = new ArrayList(size() * 2);
        for (int i = 0; i < size(); i++) {
            arrayList.add(this.f99649n[i]);
            arrayList.add(this.f99650o[i]);
        }
        return arrayList;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        int size = size();
        for (int i = 0; i < size; i++) {
            this.f99649n[i].optimize(expressionVisitor, contextItemStaticInfo);
            Expression rewriteEffectiveBooleanValue = BooleanFn.rewriteEffectiveBooleanValue(getCondition(i), expressionVisitor, contextItemStaticInfo);
            if (rewriteEffectiveBooleanValue != null && rewriteEffectiveBooleanValue != getCondition(i)) {
                setCondition(i, rewriteEffectiveBooleanValue);
            }
            if ((getCondition(i) instanceof Literal) && !(((Literal) getCondition(i)).getGroundedValue() instanceof BooleanValue)) {
                try {
                    setCondition(i, Literal.makeLiteral(BooleanValue.get(((Literal) getCondition(i)).getGroundedValue().effectiveBooleanValue()), this));
                } catch (XPathException e) {
                    e.setLocation(getLocation());
                    throw e;
                }
            }
        }
        for (int i2 = 0; i2 < size; i2++) {
            if (!Literal.hasEffectiveBooleanValue(getCondition(i2), false)) {
                try {
                    this.f99650o[i2].optimize(expressionVisitor, contextItemStaticInfo);
                } catch (XPathException e2) {
                    if (e2.isTypeError() && !expressionVisitor.isInliningFunctions()) {
                        throw e2;
                    }
                    ErrorExpression errorExpression = new ErrorExpression(new XmlProcessingException(e2));
                    ExpressionTool.copyLocationInfo(this.f99650o[i2].getChildExpression(), errorExpression);
                    setAction(i2, errorExpression);
                }
                if ((getAction(i2) instanceof ErrorExpression) && ((ErrorExpression) getAction(i2)).isTypeError() && !Literal.isConstantBoolean(getCondition(i2), false) && !Literal.isConstantBoolean(getCondition(i2), true)) {
                    expressionVisitor.issueWarning("Branch " + (i2 + 1) + " of conditional will fail with a type error if executed. " + ((ErrorExpression) getAction(i2)).getMessage(), getAction(i2).getLocation());
                }
                if (Literal.hasEffectiveBooleanValue(getCondition(i2), true)) {
                    break;
                }
            }
        }
        if (size == 0) {
            return Literal.makeEmptySequence();
        }
        if (!expressionVisitor.obtainOptimizer().isOptionSet(32768)) {
            return this;
        }
        Expression m62726e = m62726e(expressionVisitor);
        return m62726e instanceof Choose ? expressionVisitor.obtainOptimizer().trySwitch((Choose) m62726e, expressionVisitor) : m62726e;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.instruct.TailCallReturner
    public TailCall processLeavingTail(Outputter outputter, XPathContext xPathContext) throws XPathException {
        int m62725d = m62725d(xPathContext);
        if (m62725d >= 0) {
            Expression action = getAction(m62725d);
            if (action instanceof TailCallReturner) {
                return ((TailCallReturner) action).processLeavingTail(outputter, xPathContext);
            }
            action.process(outputter, xPathContext);
        }
        return null;
    }

    public void setAction(int i, Expression expression) {
        this.f99650o[i].setChildExpression(expression);
    }

    public void setCondition(int i, Expression expression) {
        this.f99649n[i].setChildExpression(expression);
    }

    public void setInstruction(boolean z) {
        this.f99651p = z;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression simplify() throws XPathException {
        for (int i = 0; i < size(); i++) {
            setCondition(i, getCondition(i).simplify());
            try {
                setAction(i, getAction(i).simplify());
            } catch (XPathException e) {
                if (e.isTypeError()) {
                    throw e;
                }
                setAction(i, new ErrorExpression(new XmlProcessingException(e)));
            }
        }
        return this;
    }

    public int size() {
        return this.f99649n.length;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression staticTypeCheck(SequenceType sequenceType, boolean z, RoleDiagnostic roleDiagnostic, ExpressionVisitor expressionVisitor) throws XPathException {
        int size = size();
        TypeChecker typeChecker = getConfiguration().getTypeChecker(z);
        for (int i = 0; i < size; i++) {
            try {
                setAction(i, typeChecker.staticTypeCheck(getAction(i), sequenceType, roleDiagnostic, expressionVisitor));
            } catch (XPathException e) {
                if (e.isStaticError()) {
                    throw e;
                }
                ErrorExpression errorExpression = new ErrorExpression(new XmlProcessingException(e));
                ExpressionTool.copyLocationInfo(getAction(i), errorExpression);
                setAction(i, errorExpression);
            }
        }
        if (Literal.hasEffectiveBooleanValue(getCondition(size - 1), true) || Cardinality.allowsZero(sequenceType.getCardinality())) {
            return this;
        }
        int i2 = size + 1;
        Expression[] expressionArr = new Expression[i2];
        Expression[] expressionArr2 = new Expression[i2];
        for (int i3 = 0; i3 < size; i3++) {
            expressionArr[i3] = getCondition(i3);
            expressionArr2[i3] = getAction(i3);
        }
        expressionArr[size] = Literal.makeLiteral(BooleanValue.TRUE, this);
        ErrorExpression errorExpression2 = new ErrorExpression("Conditional expression: " + (size == 1 ? "The condition is not" : "None of the conditions is") + " satisfied, so an empty sequence is returned, but this is not allowed as the " + roleDiagnostic.getMessage(), roleDiagnostic.getErrorCode(), true);
        ExpressionTool.copyLocationInfo(this, errorExpression2);
        expressionArr2[size] = errorExpression2;
        return new Choose(expressionArr, expressionArr2);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String toShortString() {
        return "if(" + getCondition(0).toShortString() + ") then ... else ...";
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String toString() {
        StringBuilder sb = new StringBuilder(64);
        sb.append("if (");
        for (int i = 0; i < size(); i++) {
            sb.append(getCondition(i).toString());
            sb.append(") then (");
            sb.append(getAction(i).toString());
            if (i == size() - 1) {
                sb.append(MotionUtils.f31762d);
            } else {
                sb.append(") else if (");
            }
        }
        return sb.toString();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        TypeHierarchy typeHierarchy = expressionVisitor.getConfiguration().getTypeHierarchy();
        for (int i = 0; i < size(); i++) {
            this.f99649n[i].typeCheck(expressionVisitor, contextItemStaticInfo);
            XPathException ebvError = TypeChecker.ebvError(getCondition(i), typeHierarchy);
            if (ebvError != null) {
                ebvError.setLocator(getCondition(i).getLocation());
                ebvError.maybeSetFailingExpression(getCondition(i));
                throw ebvError;
            }
        }
        for (int i2 = 0; i2 < size(); i2++) {
            if (!Literal.hasEffectiveBooleanValue(getCondition(i2), false)) {
                try {
                    this.f99650o[i2].typeCheck(expressionVisitor, contextItemStaticInfo);
                } catch (XPathException e) {
                    e.maybeSetLocation(getLocation());
                    e.maybeSetFailingExpression(getAction(i2));
                    if (e.isStaticError()) {
                        throw e;
                    }
                    if (!e.isTypeError()) {
                        setAction(i2, new ErrorExpression(new XmlProcessingException(e)));
                    } else {
                        if (!Literal.isEmptySequence(getAction(i2)) && !Literal.hasEffectiveBooleanValue(getCondition(i2), false)) {
                            throw e;
                        }
                        setAction(i2, new ErrorExpression(new XmlProcessingException(e)));
                    }
                }
                if (Literal.hasEffectiveBooleanValue(getCondition(i2), true)) {
                    break;
                }
            }
        }
        if (!expressionVisitor.obtainOptimizer().isOptionSet(32768)) {
            return this;
        }
        Expression m62726e = m62726e(expressionVisitor);
        return m62726e != this ? m62726e.typeCheck(expressionVisitor, contextItemStaticInfo) : m62726e;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression unordered(boolean z, boolean z2) throws XPathException {
        for (int i = 0; i < size(); i++) {
            setAction(i, getAction(i).unordered(z, z2));
        }
        return this;
    }

    public static Expression makeConditional(Expression expression, Expression expression2) {
        return new Choose(new Expression[]{expression}, new Expression[]{expression2});
    }
}
