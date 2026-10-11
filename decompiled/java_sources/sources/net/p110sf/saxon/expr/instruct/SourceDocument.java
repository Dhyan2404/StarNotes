package net.p110sf.saxon.expr.instruct;

import com.onyx.engine.sdk.archive.ArchiveFormatCode;
import java.util.Set;
import net.p110sf.saxon.Controller;
import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Operand;
import net.p110sf.saxon.expr.OperandRole;
import net.p110sf.saxon.expr.OperandUsage;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.XPathContextMinor;
import net.p110sf.saxon.expr.accum.Accumulator;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.expr.parser.TypeChecker;
import net.p110sf.saxon.functions.DocumentFn;
import net.p110sf.saxon.lib.ParseOptions;
import net.p110sf.saxon.om.AllElementsSpaceStrippingRule;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.pattern.NodeKindTest;
import net.p110sf.saxon.style.StylesheetPackage;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.QuitParsingException;
import net.p110sf.saxon.trans.SaxonErrorCode;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.trans.XsltController;
import net.p110sf.saxon.tree.iter.ManualIterator;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class SourceDocument extends Instruction {
    protected Set<? extends Accumulator> accumulators;
    protected Operand bodyOp;
    protected Operand hrefOp;
    protected ParseOptions parseOptions;

    public SourceDocument(Expression expression, Expression expression2, ParseOptions parseOptions) {
        this.hrefOp = new Operand(this, expression, OperandRole.SINGLE_ATOMIC);
        this.bodyOp = new Operand(this, expression2, new OperandRole(64, OperandUsage.TRANSMISSION));
        this.parseOptions = parseOptions;
        this.accumulators = parseOptions.getApplicableAccumulators();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean allowExtractingCommonSubexpressions() {
        return false;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeDependencies() {
        return (getBody().getDependencies() & (-31)) | getHref().getDependencies() | 0;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public int computeSpecialProperties() {
        return (getBody().getSpecialProperties() & 4194304) != 0 ? ArchiveFormatCode.ARCHIVE_FORMAT_XAR : super.computeSpecialProperties();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        SourceDocument sourceDocument = new SourceDocument(getHref().copy(rebindingMap), getBody().copy(rebindingMap), this.parseOptions);
        sourceDocument.setRetainedStaticContext(getRetainedStaticContext());
        ExpressionTool.copyLocationInfo(this, sourceDocument);
        return sourceDocument;
    }

    @Override // net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        ExpressionPresenter.ExportOptions exportOptions = (ExpressionPresenter.ExportOptions) expressionPresenter.getOptions();
        if ("JS".equals(exportOptions.target) && exportOptions.targetVersion == 1) {
            throw new XPathException("xsl:source-document is not supported in SaxonJS 1.*", SaxonErrorCode.SXJS0001);
        }
        expressionPresenter.startElement(getExportTag(), this);
        int schemaValidationMode = this.parseOptions.getSchemaValidationMode();
        String str = "";
        if (schemaValidationMode != 4 && schemaValidationMode != 8) {
            expressionPresenter.emitAttribute("validation", schemaValidationMode + "");
        }
        SchemaType topLevelType = this.parseOptions.getTopLevelType();
        if (topLevelType != null) {
            expressionPresenter.emitAttribute("schemaType", topLevelType.getStructuredQName());
        }
        if (this.parseOptions.getSpaceStrippingRule() == (getPackageData() instanceof StylesheetPackage ? ((StylesheetPackage) getPackageData()).getSpaceStrippingRule() : null)) {
            str = "s";
        } else if (this.parseOptions.getSpaceStrippingRule() == AllElementsSpaceStrippingRule.getInstance()) {
            str = "S";
        }
        if (this.parseOptions.isLineNumbering()) {
            str = str + "l";
        }
        if (this.parseOptions.isExpandAttributeDefaults()) {
            str = str + "a";
        }
        if (this.parseOptions.getDTDValidationMode() == 1) {
            str = str + "d";
        }
        if (this.parseOptions.isXIncludeAware()) {
            str = str + "i";
        }
        expressionPresenter.emitAttribute("flags", str);
        Set<? extends Accumulator> set = this.accumulators;
        if (set != null && !set.isEmpty()) {
            StringBuilder sb = new StringBuilder(256);
            for (Accumulator accumulator : this.accumulators) {
                if (sb.length() != 0) {
                    sb.append(" ");
                }
                sb.append(accumulator.getAccumulatorName().getEQName());
            }
            expressionPresenter.emitAttribute("accum", sb.toString());
        }
        expressionPresenter.setChildRole("href");
        getHref().export(expressionPresenter);
        expressionPresenter.setChildRole("body");
        getBody().export(expressionPresenter);
        expressionPresenter.endElement();
    }

    public Expression getBody() {
        return this.bodyOp.getChildExpression();
    }

    public String getExportTag() {
        return "sourceDoc";
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return "xsl:source-document";
    }

    public Expression getHref() {
        return this.hrefOp.getChildExpression();
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction
    public boolean mayCreateNewNodes() {
        return !getBody().hasSpecialProperty(8388608);
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public Iterable<Operand> operands() {
        return operandList(this.hrefOp, this.bodyOp);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        ContextItemStaticInfo makeContextItemStaticInfo = getConfiguration().makeContextItemStaticInfo(NodeKindTest.DOCUMENT, false);
        makeContextItemStaticInfo.setContextPostureStriding();
        this.hrefOp.optimize(expressionVisitor, contextItemStaticInfo);
        this.bodyOp.optimize(expressionVisitor, makeContextItemStaticInfo);
        return this;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.instruct.TailCallReturner
    public TailCall processLeavingTail(Outputter outputter, XPathContext xPathContext) throws XPathException {
        try {
            push(outputter, xPathContext);
            return null;
        } catch (QuitParsingException unused) {
            return null;
        } catch (XPathException e) {
            e.maybeSetLocation(getLocation());
            if (e.getErrorCodeQName() == null) {
                e.setErrorCode("FODC0002");
            }
            throw e;
        }
    }

    public void push(Outputter outputter, XPathContext xPathContext) throws XPathException {
        NodeInfo makeDoc = DocumentFn.makeDoc(this.hrefOp.getChildExpression().evaluateAsString(xPathContext).toString(), getStaticBaseURIString(), getPackageData(), this.parseOptions, xPathContext, getLocation(), false);
        if (makeDoc != null) {
            Controller controller = xPathContext.getController();
            if (this.accumulators != null && (controller instanceof XsltController)) {
                ((XsltController) controller).getAccumulatorManager().setApplicableAccumulators(makeDoc.getTreeInfo(), this.accumulators);
            }
            XPathContextMinor newMinorContext = xPathContext.newMinorContext();
            newMinorContext.setCurrentIterator(new ManualIterator(makeDoc));
            this.bodyOp.getChildExpression().process(outputter, newMinorContext);
        }
    }

    public void setBody(Expression expression) {
        this.bodyOp.setChildExpression(expression);
    }

    public void setHref(Expression expression) {
        this.hrefOp.setChildExpression(expression);
    }

    public void setUsedAccumulators(Set<? extends Accumulator> set) {
        this.accumulators = set;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        this.hrefOp.typeCheck(expressionVisitor, contextItemStaticInfo);
        RoleDiagnostic roleDiagnostic = new RoleDiagnostic(4, "xsl:stream/href", 0);
        TypeChecker typeChecker = expressionVisitor.getConfiguration().getTypeChecker(false);
        Operand operand = this.hrefOp;
        operand.setChildExpression(typeChecker.staticTypeCheck(operand.getChildExpression(), SequenceType.SINGLE_STRING, roleDiagnostic, expressionVisitor));
        ContextItemStaticInfo makeContextItemStaticInfo = getConfiguration().makeContextItemStaticInfo(NodeKindTest.DOCUMENT, false);
        makeContextItemStaticInfo.setContextPostureStriding();
        this.bodyOp.typeCheck(expressionVisitor, makeContextItemStaticInfo);
        return this;
    }
}
