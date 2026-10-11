package net.p110sf.saxon.expr;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import net.p110sf.saxon.expr.Assignation;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.parser.ExpressionAction;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.PathMap;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.value.IntegerValue;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public abstract class Assignation extends Expression implements LocalBinding {

    /* renamed from: p */
    public static final OperandRole f99163p = new OperandRole(4, OperandUsage.TRANSMISSION);

    /* renamed from: o */
    public final Operand f99165o;
    protected SequenceType requiredType;
    protected StructuredQName variableName;
    protected int slotNumber = -999;
    protected boolean indexedVariable = false;
    protected boolean hasLoopingReference = false;
    protected List<VariableReference> references = null;

    /* renamed from: n */
    public final Operand f99164n = new Operand(this, null, OperandRole.NAVIGATE);

    public Assignation() {
        this.f99165o = new Operand(this, null, this instanceof LetExpression ? OperandRole.SAME_FOCUS_ACTION : f99163p);
    }

    /* renamed from: e */
    public static void m62539e(Binding binding, Expression expression, List<VariableReference> list, int[] iArr) {
        if (expression instanceof LocalVariableReference) {
            LocalVariableReference localVariableReference = (LocalVariableReference) expression;
            if (localVariableReference.getBinding() == binding) {
                localVariableReference.recomputeInLoop();
                iArr[0] = iArr[0] + (localVariableReference.isInLoop() ? 10 : 1);
                list.add(localVariableReference);
                return;
            }
            return;
        }
        if ((expression.getDependencies() & 128) != 0) {
            int i = iArr[1] - 1;
            iArr[1] = i;
            if (i <= 0) {
                iArr[0] = 100;
                iArr[1] = 0;
            } else {
                Iterator<Operand> it2 = expression.operands().iterator();
                while (it2.hasNext()) {
                    m62539e(binding, it2.next().getChildExpression(), list, iArr);
                }
            }
        }
    }

    /* renamed from: g */
    public static /* synthetic */ boolean m62540g(Assignation assignation, ItemType itemType, int i, GroundedValue groundedValue, int i2, Expression expression, Object obj) throws XPathException {
        if (!(expression instanceof VariableReference)) {
            return false;
        }
        VariableReference variableReference = (VariableReference) expression;
        if (variableReference.getBinding() != assignation) {
            return false;
        }
        variableReference.refineVariableType(itemType, i, groundedValue, i2);
        return false;
    }

    @Override // net.p110sf.saxon.expr.Binding
    public void addReference(VariableReference variableReference, boolean z) {
        this.hasLoopingReference = z | this.hasLoopingReference;
        if (this.references == null) {
            this.references = new ArrayList();
        }
        Iterator<VariableReference> it2 = this.references.iterator();
        while (it2.hasNext()) {
            if (it2.next() == variableReference) {
                return;
            }
        }
        this.references.add(variableReference);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public PathMap.PathMapNodeSet addToPathMap(PathMap pathMap, PathMap.PathMapNodeSet pathMapNodeSet) {
        pathMap.registerPathForVariable(this, getSequence().addToPathMap(pathMap, pathMapNodeSet));
        return getAction().addToPathMap(pathMap, pathMapNodeSet);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public void checkForUpdatingSubexpressions() throws XPathException {
        getSequence().checkForUpdatingSubexpressions();
        if (!getSequence().isUpdatingExpression()) {
            getAction().checkForUpdatingSubexpressions();
        } else {
            XPathException xPathException = new XPathException("An updating expression cannot be used to initialize a variable", "XUST0001");
            xPathException.setLocator(getSequence().getLocation());
            throw xPathException;
        }
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeDependencies() {
        int computeDependencies = super.computeDependencies();
        return !ExpressionTool.containsLocalVariableReference(this) ? computeDependencies & (-129) : computeDependencies;
    }

    @Override // net.p110sf.saxon.expr.Binding
    public Sequence evaluateVariable(XPathContext xPathContext) throws XPathException {
        Sequence evaluateLocalVariable = xPathContext.evaluateLocalVariable(this.slotNumber);
        if ((evaluateLocalVariable instanceof GroundedValue) || (evaluateLocalVariable instanceof NodeInfo)) {
            return evaluateLocalVariable;
        }
        GroundedValue materialize = evaluateLocalVariable.materialize();
        xPathContext.setLocalVariable(this.slotNumber, materialize);
        return materialize;
    }

    public Expression getAction() {
        return this.f99165o.getChildExpression();
    }

    public Operand getActionOp() {
        return this.f99165o;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public double getCost() {
        return getSequence().getCost() + (getAction().getCost() * 5.0d);
    }

    @Override // net.p110sf.saxon.expr.Binding
    public IntegerValue[] getIntegerBoundsForVariable() {
        return getSequence().getIntegerBounds();
    }

    @Override // net.p110sf.saxon.expr.LocalBinding
    public int getLocalSlotNumber() {
        return this.slotNumber;
    }

    public int getNominalReferenceCount() {
        if (this.indexedVariable) {
            return 10000;
        }
        List<VariableReference> list = this.references;
        if (list == null || this.hasLoopingReference) {
            return 10;
        }
        return list.size();
    }

    @Override // net.p110sf.saxon.expr.Expression, net.p110sf.saxon.trace.Traceable
    public StructuredQName getObjectName() {
        return this.variableName;
    }

    public int getRequiredSlots() {
        return 1;
    }

    @Override // net.p110sf.saxon.expr.Binding
    public SequenceType getRequiredType() {
        return this.requiredType;
    }

    public Expression getSequence() {
        return this.f99164n.getChildExpression();
    }

    public Operand getSequenceOp() {
        return this.f99164n;
    }

    public String getVariableEQName() {
        StructuredQName structuredQName = this.variableName;
        if (structuredQName != null) {
            return structuredQName.hasURI("") ? this.variableName.getLocalPart() : this.variableName.getEQName();
        }
        return "Q{http://ns.saxonica.com/anonymous-var}var" + computeHashCode();
    }

    public String getVariableName() {
        StructuredQName structuredQName = this.variableName;
        if (structuredQName != null) {
            return structuredQName.getDisplayName();
        }
        return "zz:var" + computeHashCode();
    }

    @Override // net.p110sf.saxon.expr.Binding
    public StructuredQName getVariableQName() {
        return this.variableName;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean hasVariableBinding(Binding binding) {
        return this == binding;
    }

    @Override // net.p110sf.saxon.expr.Binding
    public final boolean isAssignable() {
        return false;
    }

    @Override // net.p110sf.saxon.expr.Binding
    public final boolean isGlobal() {
        return false;
    }

    @Override // net.p110sf.saxon.expr.LocalBinding
    public boolean isIndexedVariable() {
        return this.indexedVariable;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean isUpdatingExpression() {
        return getAction().isUpdatingExpression();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Iterable<Operand> operands() {
        return operandList(this.f99164n, this.f99165o);
    }

    public void rebuildReferenceList(boolean z) {
        int[] iArr = new int[2];
        iArr[0] = 0;
        iArr[1] = z ? Integer.MAX_VALUE : 500;
        ArrayList arrayList = new ArrayList();
        m62539e(this, getAction(), arrayList, iArr);
        if (iArr[1] <= 0) {
            arrayList = null;
        }
        this.references = arrayList;
    }

    public void refineTypeInformation(final ItemType itemType, final int i, final GroundedValue groundedValue, final int i2, final Assignation assignation) throws XPathException {
        ExpressionTool.processExpressionTree(assignation.getAction(), null, new ExpressionAction() { // from class: com.sunia.HTREnginev2.vf
            @Override // net.p110sf.saxon.expr.parser.ExpressionAction
            public final boolean process(Expression expression, Object obj) {
                boolean m62540g;
                m62540g = Assignation.m62540g(Assignation.this, itemType, i, groundedValue, i2, expression, obj);
                return m62540g;
            }
        });
    }

    public boolean removeDeadReferences() {
        boolean z;
        List<VariableReference> list = this.references;
        if (list == null) {
            return false;
        }
        boolean z2 = false;
        for (int size = list.size() - 1; size >= 0; size--) {
            z2 |= this.references.get(size).isInLoop();
            Expression parentExpression = this.references.get(size).getParentExpression();
            while (true) {
                if (parentExpression == null) {
                    z = false;
                    break;
                }
                if (parentExpression == this) {
                    z = true;
                    break;
                }
                parentExpression = parentExpression.getParentExpression();
            }
            if (!z) {
                this.references.remove(size);
            }
        }
        return z2;
    }

    public boolean replaceVariable(Expression expression) {
        boolean inlineVariableReferences = ExpressionTool.inlineVariableReferences(getAction(), this, expression);
        if (inlineVariableReferences && isIndexedVariable() && (expression instanceof VariableReference)) {
            Binding binding = ((VariableReference) expression).getBinding();
            if (binding instanceof Assignation) {
                ((Assignation) binding).setIndexedVariable();
            }
        }
        return inlineVariableReferences;
    }

    public void setAction(Expression expression) {
        this.f99165o.setChildExpression(expression);
    }

    @Override // net.p110sf.saxon.expr.LocalBinding
    public void setIndexedVariable() {
        this.indexedVariable = true;
    }

    public void setRequiredType(SequenceType sequenceType) {
        this.requiredType = sequenceType;
    }

    public void setSequence(Expression expression) {
        this.f99164n.setChildExpression(expression);
    }

    public void setSlotNumber(int i) {
        this.slotNumber = i;
    }

    public void setVariableQName(StructuredQName structuredQName) {
        this.variableName = structuredQName;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public void suppressValidation(int i) {
        getAction().suppressValidation(i);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression unordered(boolean z, boolean z2) throws XPathException {
        setAction(getAction().unordered(z, z2));
        return this;
    }

    public void verifyReferences() {
        rebuildReferenceList(false);
    }
}
