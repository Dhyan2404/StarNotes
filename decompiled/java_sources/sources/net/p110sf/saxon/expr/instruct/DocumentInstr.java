package net.p110sf.saxon.expr.instruct;

import com.sunia.HTREnginev2.gon;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.Controller;
import net.p110sf.saxon.event.Builder;
import net.p110sf.saxon.event.ComplexContentOutputter;
import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.event.PipelineConfiguration;
import net.p110sf.saxon.expr.CastExpression;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Operand;
import net.p110sf.saxon.expr.StaticContext;
import net.p110sf.saxon.expr.StringLiteral;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.functions.SystemFunction;
import net.p110sf.saxon.lib.ParseOptions;
import net.p110sf.saxon.lib.Validation;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.pattern.NodeKindTest;
import net.p110sf.saxon.pattern.NodeTest;
import net.p110sf.saxon.str.UnicodeBuilder;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.tiny.TinyBuilder;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.SchemaDeclaration;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.UType;
import net.p110sf.saxon.value.StringValue;
import net.p110sf.saxon.value.TextFragmentValue;

/* loaded from: classes11.dex */
public class DocumentInstr extends ParentNodeConstructor {

    /* renamed from: p */
    public final boolean f99683p;

    /* renamed from: q */
    public final UnicodeString f99684q;

    public DocumentInstr(boolean z, UnicodeString unicodeString) {
        this.f99683p = z;
        this.f99684q = unicodeString;
    }

    @Override // net.p110sf.saxon.expr.instruct.ParentNodeConstructor
    public void checkContentSequence(StaticContext staticContext) throws XPathException {
        checkContentSequence(staticContext, getContentOperand(), getValidationOptions());
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public int computeSpecialProperties() {
        int computeSpecialProperties = super.computeSpecialProperties() | 16777216;
        return getValidationAction() == 4 ? computeSpecialProperties | 134217728 : computeSpecialProperties;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        DocumentInstr documentInstr = new DocumentInstr(this.f99683p, this.f99684q);
        ExpressionTool.copyLocationInfo(this, documentInstr);
        documentInstr.setContentExpression(getContentExpression().copy(rebindingMap));
        documentInstr.setValidationAction(getValidationAction(), getSchemaType());
        return documentInstr;
    }

    @Override // net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("doc", this);
        if (!expressionPresenter.isRelocatable()) {
            expressionPresenter.emitAttribute(gon.f71271X, getStaticBaseURIString());
        }
        String str = "";
        if (this.f99683p) {
            str = "t";
        }
        if (isLocal()) {
            str = str + "l";
        }
        if (!str.isEmpty()) {
            expressionPresenter.emitAttribute("flags", str);
        }
        UnicodeString unicodeString = this.f99684q;
        if (unicodeString != null) {
            expressionPresenter.emitAttribute("text", unicodeString.toString());
        }
        if (getValidationAction() != 4 && getValidationAction() != 8) {
            expressionPresenter.emitAttribute("validation", Validation.describe(getValidationAction()));
        }
        SchemaType schemaType = getSchemaType();
        if (schemaType != null) {
            expressionPresenter.emitAttribute("type", schemaType.getStructuredQName());
        }
        getContentExpression().export(expressionPresenter);
        expressionPresenter.endElement();
    }

    public UnicodeString getConstantText() {
        return this.f99684q;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public int getImplementationMethod() {
        return 1;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction
    public int getInstructionNameCode() {
        return 150;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        return NodeKindTest.DOCUMENT;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getStreamerName() {
        return "DocumentInstr";
    }

    public Expression getStringValueExpression() {
        if (!this.f99683p) {
            throw new AssertionError("getStringValueExpression() called on non-text-only document instruction");
        }
        if (this.f99684q != null) {
            return new StringLiteral(StringValue.makeUntypedAtomic(this.f99684q));
        }
        if (getContentExpression() instanceof ValueOf) {
            return ((ValueOf) getContentExpression()).convertToCastAsString();
        }
        CastExpression castExpression = new CastExpression(SystemFunction.makeCall("string-join", getRetainedStaticContext(), getContentExpression(), new StringLiteral(StringValue.EMPTY_STRING)), BuiltInAtomicType.UNTYPED_ATOMIC, false);
        ExpressionTool.copyLocationInfo(this, castExpression);
        return castExpression;
    }

    public boolean isTextOnly() {
        return this.f99683p;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public Iterable<Operand> operands() {
        return this.contentOp;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.instruct.TailCallReturner
    public TailCall processLeavingTail(Outputter outputter, XPathContext xPathContext) throws XPathException {
        if (!this.preservingTypes || this.f99683p) {
            NodeInfo evaluateItem = evaluateItem(xPathContext);
            if (evaluateItem != null) {
                outputter.m62486h(evaluateItem, getLocation(), 524288);
            }
            return null;
        }
        outputter.startDocument(0);
        getContentExpression().process(outputter, xPathContext);
        outputter.endDocument();
        return null;
    }

    public static void checkContentSequence(StaticContext staticContext, Operand operand, ParseOptions parseOptions) throws XPathException {
        Operand[] operandArr;
        if (operand.getChildExpression() instanceof Block) {
            operandArr = ((Block) operand.getChildExpression()).getOperanda();
        } else {
            operandArr = new Operand[]{operand};
        }
        int schemaValidationMode = parseOptions == null ? 3 : parseOptions.getSchemaValidationMode();
        SchemaType topLevelType = parseOptions == null ? null : parseOptions.getTopLevelType();
        boolean isXSLT = operand.getChildExpression().getPackageData().isXSLT();
        int i = 0;
        for (Operand operand2 : operandArr) {
            Expression childExpression = operand2.getChildExpression();
            ItemType itemType = childExpression.getItemType();
            if (itemType instanceof NodeTest) {
                UType uType = itemType.getUType();
                if (uType.equals(UType.ATTRIBUTE)) {
                    XPathException xPathException = new XPathException("Cannot create an attribute node whose parent is a document node");
                    xPathException.setErrorCode(isXSLT ? "XTDE0420" : "XPTY0004");
                    xPathException.setLocator(childExpression.getLocation());
                    throw xPathException;
                }
                if (uType.equals(UType.NAMESPACE)) {
                    XPathException xPathException2 = new XPathException("Cannot create a namespace node whose parent is a document node");
                    xPathException2.setErrorCode(isXSLT ? "XTDE0420" : "XQTY0024");
                    xPathException2.setLocator(childExpression.getLocation());
                    throw xPathException2;
                }
                if (uType.equals(UType.ELEMENT)) {
                    i++;
                    if (i > 1 && (schemaValidationMode == 1 || schemaValidationMode == 2 || topLevelType != null)) {
                        XPathException xPathException3 = new XPathException("A valid document must have only one child element");
                        if (isXSLT) {
                            xPathException3.setErrorCode("XTTE1550");
                        } else {
                            xPathException3.setErrorCode("XQDY0061");
                        }
                        xPathException3.setLocator(childExpression.getLocation());
                        throw xPathException3;
                    }
                    if (schemaValidationMode == 1 && (childExpression instanceof FixedElement)) {
                        FixedElement fixedElement = (FixedElement) childExpression;
                        SchemaDeclaration elementDeclaration = staticContext.getConfiguration().getElementDeclaration(fixedElement.getFixedElementName().getFingerprint());
                        if (elementDeclaration != null) {
                            fixedElement.getContentExpression().checkPermittedContents(elementDeclaration.getType(), true);
                        }
                    }
                } else {
                    continue;
                }
            }
        }
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public NodeInfo evaluateItem(XPathContext xPathContext) throws XPathException {
        Controller controller = xPathContext.getController();
        Configuration configuration = controller.getConfiguration();
        if (this.f99683p) {
            UnicodeString unicodeString = this.f99684q;
            if (unicodeString == null) {
                UnicodeBuilder unicodeBuilder = new UnicodeBuilder();
                SequenceIterator iterate = getContentExpression().iterate(xPathContext);
                while (true) {
                    Item next = iterate.next();
                    if (next == null) {
                        break;
                    }
                    unicodeBuilder.accept(next.getUnicodeStringValue());
                }
                unicodeString = unicodeBuilder.toUnicodeString();
            }
            return TextFragmentValue.makeTextFragment(configuration, unicodeString, getStaticBaseURIString());
        }
        try {
            PipelineConfiguration makePipelineConfiguration = controller.makePipelineConfiguration();
            makePipelineConfiguration.setXPathContext(xPathContext);
            Builder makeBuilder = controller.makeBuilder();
            makeBuilder.setUseEventLocation(false);
            if (makeBuilder instanceof TinyBuilder) {
                ((TinyBuilder) makeBuilder).setStatistics(configuration.getTreeStatistics().SOURCE_DOCUMENT_STATISTICS);
            }
            makeBuilder.setBaseURI(getStaticBaseURIString());
            makeBuilder.setTiming(false);
            makePipelineConfiguration.setHostLanguage(getPackageData().getHostLanguage());
            makeBuilder.setPipelineConfiguration(makePipelineConfiguration);
            ComplexContentOutputter makeComplexContentReceiver = ComplexContentOutputter.makeComplexContentReceiver(makeBuilder, getValidationOptions());
            makeComplexContentReceiver.open();
            makeComplexContentReceiver.startDocument(0);
            getContentExpression().process(makeComplexContentReceiver, xPathContext);
            makeComplexContentReceiver.endDocument();
            makeComplexContentReceiver.close();
            return makeBuilder.getCurrentRoot();
        } catch (XPathException e) {
            e.maybeSetLocation(this.getLocation());
            e.maybeSetContext(xPathContext);
            throw e;
        }
    }
}
