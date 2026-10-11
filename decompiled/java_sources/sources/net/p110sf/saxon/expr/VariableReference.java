package net.p110sf.saxon.expr;

import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.expr.flwor.LocalVariableBinding;
import net.p110sf.saxon.expr.instruct.GlobalParam;
import net.p110sf.saxon.expr.instruct.LocalParam;
import net.p110sf.saxon.expr.instruct.LocalParamBlock;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.Optimizer;
import net.p110sf.saxon.expr.parser.PathMap;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.lib.StandardDiagnostics;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.ItemConsumer;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.pattern.NodeTest;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.AnyItemType;
import net.p110sf.saxon.type.AtomicType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.type.UType;
import net.p110sf.saxon.value.Cardinality;
import net.p110sf.saxon.value.IntegerValue;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public abstract class VariableReference extends Expression implements BindingReference {

    /* renamed from: r */
    public static final /* synthetic */ boolean f99420r = false;

    /* renamed from: n */
    public StructuredQName f99421n;
    protected Binding binding = null;
    protected SequenceType staticType = null;
    protected GroundedValue constantValue = null;

    /* renamed from: o */
    public boolean f99422o = false;

    /* renamed from: p */
    public boolean f99423p = false;

    /* renamed from: q */
    public boolean f99424q = false;

    public VariableReference(StructuredQName structuredQName) {
        this.f99421n = structuredQName;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public PathMap.PathMapNodeSet addToPathMap(PathMap pathMap, PathMap.PathMapNodeSet pathMapNodeSet) {
        return pathMap.getPathForVariable(getBinding());
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeCardinality() {
        SequenceType sequenceType = this.staticType;
        if (sequenceType != null) {
            return sequenceType.getCardinality();
        }
        Binding binding = this.binding;
        if (binding == null) {
            return 57344;
        }
        if (binding instanceof LetExpression) {
            return binding.getRequiredType().getCardinality();
        }
        if (binding instanceof Assignation) {
            return 16384;
        }
        if (binding.getRequiredType() == null) {
            return 57344;
        }
        return this.binding.getRequiredType().getCardinality();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeHashCode() {
        Binding binding = this.binding;
        if (binding == null) {
            return 73619830;
        }
        return binding.hashCode();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeSpecialProperties() {
        Expression sequence;
        int computeSpecialProperties = super.computeSpecialProperties();
        Binding binding = this.binding;
        if (binding == null || !binding.isAssignable()) {
            computeSpecialProperties |= 8388608;
        }
        Binding binding2 = this.binding;
        if ((binding2 instanceof Assignation) && (sequence = ((Assignation) binding2).getSequence()) != null) {
            computeSpecialProperties |= sequence.getSpecialProperties() & 67108864;
        }
        SequenceType sequenceType = this.staticType;
        if (sequenceType != null && !Cardinality.allowsMany(sequenceType.getCardinality()) && (this.staticType.getPrimaryType() instanceof NodeTest)) {
            computeSpecialProperties |= 16777216;
        }
        return (-4194305) & computeSpecialProperties;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public abstract Expression copy(RebindingMap rebindingMap);

    public void copyFrom(VariableReference variableReference) {
        this.binding = variableReference.binding;
        this.staticType = variableReference.staticType;
        this.constantValue = variableReference.constantValue;
        this.f99421n = variableReference.f99421n;
        this.f99422o = variableReference.f99422o;
        this.f99423p = variableReference.f99423p;
        this.f99424q = variableReference.f99424q;
        ExpressionTool.copyLocationInfo(variableReference, this);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean equals(Object obj) {
        Binding binding;
        return (obj instanceof VariableReference) && (binding = this.binding) == ((VariableReference) obj).binding && binding != null;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Item evaluateItem(XPathContext xPathContext) throws XPathException {
        try {
            return evaluateVariable(xPathContext).head();
        } catch (XPathException e) {
            e.maybeSetLocation(this.getLocation());
            throw e;
        }
    }

    public Sequence evaluateVariable(XPathContext xPathContext) throws XPathException {
        try {
            return this.binding.evaluateVariable(xPathContext);
        } catch (NullPointerException e) {
            if (this.binding != null) {
                throw e;
            }
            throw new IllegalStateException("Variable $" + this.f99421n.getDisplayName() + " has not been fixed up");
        }
    }

    @Override // net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("varRef", this);
        expressionPresenter.emitAttribute("name", this.f99421n);
        if (this.binding instanceof LocalBinding) {
            expressionPresenter.emitAttribute("slot", "" + ((LocalBinding) this.binding).getLocalSlotNumber());
        }
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.expr.BindingReference
    public void fixup(Binding binding) {
        Binding binding2 = this.binding;
        boolean z = (binding2 instanceof LocalBinding) && ((LocalBinding) binding2).isIndexedVariable();
        this.binding = binding;
        if (z && (binding instanceof LocalBinding)) {
            ((LocalBinding) binding).setIndexedVariable();
        }
        resetLocalStaticProperties();
    }

    public Binding getBinding() {
        return this.binding;
    }

    public String getDisplayName() {
        Binding binding = this.binding;
        return binding != null ? binding.getVariableQName().getDisplayName() : this.f99421n.getDisplayName();
    }

    public String getEQName() {
        Binding binding = this.binding;
        if (binding == null) {
            return this.f99421n.getEQName();
        }
        StructuredQName variableQName = binding.getVariableQName();
        return variableQName.hasURI("") ? variableQName.getLocalPart() : variableQName.getEQName();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return "varRef";
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getImplementationMethod() {
        return (!Cardinality.allowsMany(getCardinality()) ? 1 : 0) | 2 | 4;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public IntegerValue[] getIntegerBounds() {
        Binding binding = this.binding;
        if (binding != null) {
            return binding.getIntegerBoundsForVariable();
        }
        return null;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getIntrinsicDependencies() {
        Binding binding = this.binding;
        if (binding == null) {
            return 1664;
        }
        if (!binding.isGlobal()) {
            return 128;
        }
        int i = this.binding.isAssignable() ? 512 : 0;
        return this.binding instanceof GlobalParam ? i | 1024 : i;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        SequenceType requiredType;
        SequenceType sequenceType = this.staticType;
        if (sequenceType != null && sequenceType.getPrimaryType() != AnyItemType.getInstance()) {
            return this.staticType.getPrimaryType();
        }
        Binding binding = this.binding;
        return (binding == null || (requiredType = binding.getRequiredType()) == null) ? AnyItemType.getInstance() : requiredType.getPrimaryType();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getNetCost() {
        return 0;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression getScopingExpression() {
        Binding binding = this.binding;
        if (binding instanceof Expression) {
            return ((binding instanceof LocalParam) && (((LocalParam) binding).getParentExpression() instanceof LocalParamBlock)) ? ((LocalParamBlock) ((LocalParam) this.binding).getParentExpression()).getParentExpression() : (Expression) this.binding;
        }
        for (Expression parentExpression = getParentExpression(); parentExpression != null; parentExpression = parentExpression.getParentExpression()) {
            if (parentExpression.hasVariableBinding(this.binding)) {
                return parentExpression;
            }
        }
        return null;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public UType getStaticUType(UType uType) {
        Binding binding = this.binding;
        if (binding != null) {
            if (!binding.isGlobal()) {
                Binding binding2 = this.binding;
                if (!(binding2 instanceof LocalParam) && (!(binding2 instanceof LetExpression) || !((LetExpression) binding2).isInstruction())) {
                    Binding binding3 = this.binding;
                    if (!(binding3 instanceof LocalVariableBinding)) {
                        if (binding3 instanceof Assignation) {
                            return ((Assignation) binding3).getSequence().getStaticUType(uType);
                        }
                    }
                }
            }
            SequenceType requiredType = this.binding.getRequiredType();
            return requiredType != null ? requiredType.getPrimaryType().getUType() : UType.ANY;
        }
        return UType.ANY;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getStreamerName() {
        return "VariableReference";
    }

    public StructuredQName getVariableName() {
        return this.f99421n;
    }

    public boolean isFiltered() {
        return this.f99424q;
    }

    public boolean isFlattened() {
        return this.f99422o;
    }

    public boolean isInLoop() {
        return this.f99423p;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public SequenceIterator iterate(XPathContext xPathContext) throws XPathException {
        String str = "";
        try {
            return evaluateVariable(xPathContext).iterate();
        } catch (AssertionError e) {
            e.printStackTrace();
            StringBuilder sb = new StringBuilder();
            sb.append(e.getMessage());
            sb.append(". Variable reference $");
            sb.append(this.getDisplayName());
            sb.append(" at line ");
            sb.append(this.getLocation().getLineNumber());
            if (this.getLocation().getSystemId() != null) {
                str = " of " + this.getLocation().getSystemId();
            }
            sb.append(str);
            String sb2 = sb.toString();
            new StandardDiagnostics().logStackTrace(xPathContext, xPathContext.getConfiguration().getLogger(), 2);
            throw new AssertionError(sb2);
        } catch (NullPointerException e2) {
            e2.printStackTrace();
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Internal error: no value for variable $");
            sb3.append(this.getDisplayName());
            sb3.append(" at line ");
            sb3.append(this.getLocation().getLineNumber());
            if (this.getLocation().getSystemId() != null) {
                str = " of " + this.getLocation().getSystemId();
            }
            sb3.append(str);
            String sb4 = sb3.toString();
            new StandardDiagnostics().logStackTrace(xPathContext, xPathContext.getConfiguration().getLogger(), 2);
            throw new AssertionError(sb4);
        } catch (XPathException e3) {
            e3.maybeSetLocation(this.getLocation());
            throw e3;
        }
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        Binding binding = this.binding;
        if ((binding instanceof LetExpression) && (((LetExpression) binding).getSequence() instanceof Literal)) {
            Binding binding2 = this.binding;
            if (!((LetExpression) binding2).indexedVariable) {
                Expression sequence = ((LetExpression) binding2).getSequence();
                Optimizer.trace(expressionVisitor.getConfiguration(), "Replaced variable " + getDisplayName() + " by its value", sequence);
                this.binding = null;
                return sequence.copy(new RebindingMap());
            }
        }
        GroundedValue groundedValue = this.constantValue;
        if (groundedValue != null) {
            this.binding = null;
            Literal makeLiteral = Literal.makeLiteral(groundedValue, this);
            ExpressionTool.copyLocationInfo(this, makeLiteral);
            Optimizer.trace(expressionVisitor.getConfiguration(), "Replaced variable " + getDisplayName() + " by its value", makeLiteral);
            return makeLiteral;
        }
        Binding binding3 = this.binding;
        if (!(binding3 instanceof GlobalParam) || !((GlobalParam) binding3).isStatic()) {
            return this;
        }
        Expression body = ((GlobalParam) this.binding).getBody();
        if (!(body instanceof Literal)) {
            return this;
        }
        this.binding = null;
        Optimizer.trace(expressionVisitor.getConfiguration(), "Replaced static parameter " + getDisplayName() + " by its value", body);
        return body.copy(new RebindingMap());
    }

    @Override // net.p110sf.saxon.expr.Expression
    public void process(final Outputter outputter, XPathContext xPathContext) throws XPathException {
        try {
            SequenceIterator iterate = evaluateVariable(xPathContext).iterate();
            final Location location = getLocation();
            SequenceTool.supply(iterate, new ItemConsumer() { // from class: com.sunia.HTREnginev2.l0o
                @Override // net.p110sf.saxon.om.ItemConsumer
                public final void accept(Item item) {
                    Outputter.this.m62516b(item, location, 524288);
                }
            });
        } catch (UncheckedXPathException e) {
            XPathException xPathException = e.getXPathException();
            xPathException.maybeSetLocation(getLocation());
            throw xPathException;
        } catch (XPathException e2) {
            e2.maybeSetLocation(getLocation());
            throw e2;
        }
    }

    public void recomputeInLoop() {
        this.f99423p = ExpressionTool.isLoopingReference(this, this.binding);
    }

    public void refineVariableType(ItemType itemType, int i, GroundedValue groundedValue, int i2) {
        TypeHierarchy typeHierarchy = getConfiguration().getTypeHierarchy();
        ItemType itemType2 = getItemType();
        ItemType itemType3 = typeHierarchy.isSubType(itemType, itemType2) ? itemType : itemType2;
        if (!(itemType2 instanceof NodeTest) || !(itemType instanceof AtomicType)) {
            itemType = itemType3;
        }
        int cardinality = i & getCardinality();
        if (cardinality == 0) {
            cardinality = getCardinality();
        }
        setStaticType(SequenceType.makeSequenceType(itemType, cardinality), groundedValue, i2);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public void setFiltered(boolean z) {
        this.f99424q = z;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public void setFlattened(boolean z) {
        this.f99422o = z;
    }

    public void setInLoop(boolean z) {
        this.f99423p = z;
    }

    @Override // net.p110sf.saxon.expr.BindingReference
    public void setStaticType(SequenceType sequenceType, GroundedValue groundedValue, int i) {
        if (sequenceType == null) {
            sequenceType = SequenceType.ANY_SEQUENCE;
        }
        this.staticType = sequenceType;
        this.constantValue = groundedValue;
        this.staticProperties = sequenceType.getCardinality() | (i & (-65537) & (-4194305)) | 8388608 | getDependencies();
    }

    public void setVariableName(StructuredQName structuredQName) {
        this.f99421n = structuredQName;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String toShortString() {
        return "$" + getDisplayName();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String toString() {
        String eQName = getEQName();
        StringBuilder sb = new StringBuilder();
        sb.append("$");
        if (eQName == null) {
            eQName = "$";
        }
        sb.append(eQName);
        return sb.toString();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        GroundedValue groundedValue = this.constantValue;
        if (groundedValue != null) {
            this.binding = null;
            return Literal.makeLiteral(groundedValue, this);
        }
        if (this.binding != null) {
            recomputeInLoop();
            this.binding.addReference(this, this.f99423p);
        }
        return this;
    }

    public VariableReference(Binding binding) {
        this.f99421n = null;
        this.f99421n = binding.getVariableQName();
        fixup(binding);
    }
}
