package net.p110sf.saxon.expr.instruct;

import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.Operand;
import net.p110sf.saxon.expr.OperandRole;
import net.p110sf.saxon.expr.OperandUsage;
import net.p110sf.saxon.expr.StaticContext;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.PathMap;
import net.p110sf.saxon.lib.ParseOptions;
import net.p110sf.saxon.pattern.MultipleNodeKindTest;
import net.p110sf.saxon.pattern.NodeKindTest;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.Affinity;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.type.Untyped;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public abstract class ParentNodeConstructor extends Instruction implements ValidatingInstruction, InstructionWithComplexContent {

    /* renamed from: o */
    public static final OperandRole f99803o = new OperandRole(0, OperandUsage.ABSORPTION, SequenceType.ANY_SEQUENCE);
    protected Operand contentOp;

    /* renamed from: n */
    public ParseOptions f99804n = null;
    protected boolean preservingTypes = true;

    @Override // net.p110sf.saxon.expr.Expression
    public PathMap.PathMapNodeSet addToPathMap(PathMap pathMap, PathMap.PathMapNodeSet pathMapNodeSet) {
        PathMap.PathMapNodeSet addToPathMap = super.addToPathMap(pathMap, pathMapNodeSet);
        addToPathMap.setReturnable(false);
        TypeHierarchy typeHierarchy = getConfiguration().getTypeHierarchy();
        ItemType itemType = getItemType();
        Affinity relationship = typeHierarchy.relationship(itemType, NodeKindTest.ELEMENT);
        Affinity affinity = Affinity.DISJOINT;
        if (relationship != affinity || typeHierarchy.relationship(itemType, NodeKindTest.DOCUMENT) != affinity) {
            addToPathMap.addDescendants();
        }
        return new PathMap.PathMapNodeSet(pathMap.makeNewRoot(this));
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean allowExtractingCommonSubexpressions() {
        return false;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction
    public boolean alwaysCreatesNewNodes() {
        return true;
    }

    public abstract void checkContentSequence(StaticContext staticContext) throws XPathException;

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public int computeCardinality() {
        return 16384;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getCardinality() {
        return 16384;
    }

    @Override // net.p110sf.saxon.expr.instruct.InstructionWithComplexContent
    public Expression getContentExpression() {
        Operand operand = this.contentOp;
        if (operand == null) {
            return null;
        }
        return operand.getChildExpression();
    }

    public Operand getContentOperand() {
        return this.contentOp;
    }

    @Override // net.p110sf.saxon.expr.instruct.ValidatingInstruction
    public SchemaType getSchemaType() {
        ParseOptions parseOptions = this.f99804n;
        if (parseOptions == null) {
            return null;
        }
        return parseOptions.getTopLevelType();
    }

    @Override // net.p110sf.saxon.expr.instruct.ValidatingInstruction
    public int getValidationAction() {
        ParseOptions parseOptions = this.f99804n;
        if (parseOptions == null) {
            return 3;
        }
        return parseOptions.getSchemaValidationMode();
    }

    public ParseOptions getValidationOptions() {
        return this.f99804n;
    }

    public boolean isLocal() {
        return ExpressionTool.isLocalConstructor(this);
    }

    public boolean isPreservingTypes() {
        return this.preservingTypes;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction
    public final boolean mayCreateNewNodes() {
        return true;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        optimizeChildren(expressionVisitor, contextItemStaticInfo);
        if (!Literal.isEmptySequence(getContentExpression())) {
            if (getContentExpression() instanceof Block) {
                setContentExpression(((Block) getContentExpression()).mergeAdjacentTextInstructions());
            }
            if (expressionVisitor.isOptimizeForStreaming()) {
                expressionVisitor.obtainOptimizer().makeCopyOperationsExplicit(this, this.contentOp);
            }
        }
        if (expressionVisitor.getStaticContext().getPackageData().isSchemaAware()) {
            TypeHierarchy typeHierarchy = expressionVisitor.getConfiguration().getTypeHierarchy();
            if (getValidationAction() == 4 && (getContentExpression().hasSpecialProperty(134217728) || typeHierarchy.relationship(getContentExpression().getItemType(), MultipleNodeKindTest.DOC_ELEM_ATTR) == Affinity.DISJOINT)) {
                setNoNeedToStrip();
            }
        } else {
            setValidationAction(4, null);
            setNoNeedToStrip();
        }
        return this;
    }

    public void setContentExpression(Expression expression) {
        Operand operand = this.contentOp;
        if (operand == null) {
            this.contentOp = new Operand(this, expression, f99803o);
        } else {
            operand.setChildExpression(expression);
        }
    }

    public void setNoNeedToStrip() {
        this.preservingTypes = true;
    }

    public void setValidationAction(int i, SchemaType schemaType) {
        boolean z = i == 3 && schemaType == null;
        this.preservingTypes = z;
        if (z) {
            return;
        }
        if (this.f99804n == null) {
            this.f99804n = new ParseOptions();
        }
        if (schemaType == Untyped.getInstance()) {
            this.f99804n.setSchemaValidationMode(4);
        } else {
            this.f99804n.setSchemaValidationMode(i);
            this.f99804n.setTopLevelType(schemaType);
        }
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        typeCheckChildren(expressionVisitor, contextItemStaticInfo);
        checkContentSequence(expressionVisitor.getStaticContext());
        return this;
    }
}
