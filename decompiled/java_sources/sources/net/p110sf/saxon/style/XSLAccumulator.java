package net.p110sf.saxon.style;

import com.sunia.HTREnginev2.w2n;
import java.util.Iterator;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.Component;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.StringLiteral;
import net.p110sf.saxon.expr.accum.Accumulator;
import net.p110sf.saxon.expr.accum.AccumulatorRegistry;
import net.p110sf.saxon.expr.accum.AccumulatorRule;
import net.p110sf.saxon.expr.instruct.Actor;
import net.p110sf.saxon.expr.instruct.SlotManager;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.Optimizer;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.lib.Feature;
import net.p110sf.saxon.lib.NamespaceConstant;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.pattern.NodeTest;
import net.p110sf.saxon.pattern.Pattern;
import net.p110sf.saxon.trans.SimpleMode;
import net.p110sf.saxon.trans.SymbolicName;
import net.p110sf.saxon.trans.Visibility;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.AtomicType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.UType;
import net.p110sf.saxon.value.SequenceType;
import net.p110sf.saxon.value.StringValue;
import net.p110sf.saxon.value.Whitespace;
import org.xmlresolver.logging.AbstractLogger;

/* loaded from: classes11.dex */
public class XSLAccumulator extends StyleElement implements StylesheetComponent {

    /* renamed from: u */
    public final Accumulator f101866u = new Accumulator();

    /* renamed from: v */
    public SlotManager f101867v;

    /* renamed from: Z */
    public final void m64021Z(Expression expression) throws XPathException {
    }

    /* renamed from: a0 */
    public final void m64022a0(XSLAccumulatorRule xSLAccumulatorRule, Pattern pattern, Expression expression) throws XPathException {
    }

    /* renamed from: b0 */
    public final void m64023b0(StyleElement styleElement, String str) {
        if (!getConfiguration().getBooleanProperty(Feature.STREAMING_FALLBACK)) {
            styleElement.compileError(str, "XTSE3430");
            return;
        }
        styleElement.compileWarning(str + ". Falling back to non-streaming implementation", "XTSE3430");
        styleElement.getCompilation().setFallbackToNonStreaming(true);
    }

    /* renamed from: c0 */
    public final void m64024c0() {
        for (AttributeInfo attributeInfo : attributes()) {
            NodeName nodeName = attributeInfo.getNodeName();
            String value = attributeInfo.getValue();
            String displayName = nodeName.getDisplayName();
            if (displayName.equals("name")) {
                this.f101866u.setAccumulatorName(makeQName(Whitespace.trim(value), null, "name"));
            } else if (displayName.equals("streamable")) {
                this.f101866u.setDeclaredStreamable(false);
                this.f101866u.setDeclaredStreamable(m63969U(value));
            } else if (nodeName.hasURI(NamespaceConstant.SAXON) && nodeName.getLocalPart().equals(AbstractLogger.TRACE) && isExtensionAttributeAllowed(nodeName.getDisplayName())) {
                this.f101866u.setTracing(processBooleanAttribute("saxon:trace", value));
            }
        }
        if (this.f101866u.getAccumulatorName() == null) {
            reportAbsence("name");
            this.f101866u.setAccumulatorName(new StructuredQName("anon", NamespaceConstant.ANONYMOUS, "acc" + hashCode()));
        }
    }

    @Override // net.p110sf.saxon.style.StylesheetComponent
    public void checkCompatibility(Component component) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r7v6 */
    @Override // net.p110sf.saxon.style.StyleElement
    public void compileDeclaration(Compilation compilation, ComponentDeclaration componentDeclaration) throws XPathException {
        Configuration configuration = compilation.getConfiguration();
        this.f101866u.setPackageData(compilation.getPackageData());
        this.f101866u.obtainDeclaringComponent(componentDeclaration.getSourceElement());
        Expression initialValueExpression = this.f101866u.getInitialValueExpression();
        ExpressionVisitor make = ExpressionVisitor.make(getStaticContext());
        int i = 4;
        ?? r7 = 0;
        Expression optimize = configuration.getTypeChecker(false).staticTypeCheck(initialValueExpression.typeCheck(make, configuration.getDefaultContextItemStaticInfo()), this.f101866u.getType(), new RoleDiagnostic(4, "xsl:accumulator-rule/select", 0), make).optimize(make, configuration.getDefaultContextItemStaticInfo());
        SlotManager makeSlotManager = configuration.makeSlotManager();
        ExpressionTool.allocateSlots(optimize, 0, makeSlotManager);
        this.f101866u.setSlotManagerForInitialValueExpression(makeSlotManager);
        m64021Z(optimize);
        this.f101866u.setInitialValueExpression(optimize);
        this.f101866u.addChildExpression(optimize);
        Iterator<? extends NodeInfo> it2 = children(new w2n(XSLAccumulatorRule.class)).iterator();
        int i2 = 0;
        while (it2.hasNext()) {
            XSLAccumulatorRule xSLAccumulatorRule = (XSLAccumulatorRule) it2.next();
            Pattern match = xSLAccumulatorRule.getMatch();
            Expression newValueExpression = xSLAccumulatorRule.getNewValueExpression(compilation, componentDeclaration);
            ExpressionVisitor make2 = ExpressionVisitor.make(getStaticContext());
            Expression optimize2 = configuration.getTypeChecker(r7).staticTypeCheck(newValueExpression.typeCheck(make2, configuration.makeContextItemStaticInfo(match.getItemType(), r7)), this.f101866u.getType(), new RoleDiagnostic(i, "xsl:accumulator-rule/select", r7), make2).optimize(make2, getConfiguration().makeContextItemStaticInfo(match.getItemType(), r7));
            this.f101867v.allocateSlotNumber(new StructuredQName("", "", "value"));
            ExpressionTool.allocateSlots(optimize2, 1, this.f101867v);
            SimpleMode preDescentRules = xSLAccumulatorRule.isPostDescent() ^ true ? this.f101866u.getPreDescentRules() : this.f101866u.getPostDescentRules();
            AccumulatorRule accumulatorRule = new AccumulatorRule(optimize2, this.f101867v, xSLAccumulatorRule.isPostDescent());
            int i3 = i2 + 1;
            preDescentRules.addRule(match, accumulatorRule, componentDeclaration.getModule(), componentDeclaration.getModule().getPrecedence(), 1.0d, i2, 0);
            m64022a0(xSLAccumulatorRule, match, optimize2);
            if (this.f101866u.isDeclaredStreamable() && xSLAccumulatorRule.isPostDescent() && xSLAccumulatorRule.isCapture()) {
                accumulatorRule.setCapturing(true);
            }
            ItemType itemType = match.getItemType();
            if (itemType instanceof NodeTest) {
                if (!itemType.getUType().overlaps(UType.DOCUMENT.union(UType.CHILD_NODE_KINDS))) {
                    xSLAccumulatorRule.compileWarning("An accumulator rule that matches attribute or namespace nodes has no effect", "SXWN9999");
                }
            } else if (itemType instanceof AtomicType) {
                xSLAccumulatorRule.compileWarning("An accumulator rule that matches atomic values has no effect", "SXWN9999");
            }
            this.f101866u.addChildExpression(optimize2);
            this.f101866u.addChildExpression(match);
            i2 = i3;
            i = 4;
            r7 = 0;
        }
        this.f101866u.getPreDescentRules().allocateAllPatternSlots();
        this.f101866u.getPostDescentRules().allocateAllPatternSlots();
    }

    @Override // net.p110sf.saxon.style.StylesheetComponent
    public void generateByteCode(Optimizer optimizer) {
    }

    @Override // net.p110sf.saxon.style.StylesheetComponent
    public Actor getActor() {
        if (this.f101866u.getDeclaringComponent() == null) {
            this.f101866u.makeDeclaringComponent(Visibility.PRIVATE, getContainingPackage());
        }
        return this.f101866u;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public StructuredQName getObjectName() {
        StructuredQName objectName = super.getObjectName();
        if (objectName != null) {
            return objectName;
        }
        String trim = Whitespace.trim(getAttributeValue("", "name"));
        if (trim != null) {
            StructuredQName makeQName = makeQName(trim, null, "name");
            setObjectName(makeQName);
            return makeQName;
        }
        return new StructuredQName("saxon", NamespaceConstant.SAXON, "badly-named-accumulator" + generateId());
    }

    public SequenceType getResultType() {
        return this.f101866u.getType();
    }

    @Override // net.p110sf.saxon.style.StylesheetComponent
    public SlotManager getSlotManager() {
        return this.f101867v;
    }

    @Override // net.p110sf.saxon.style.StylesheetComponent
    public SymbolicName getSymbolicName() {
        if (this.f101866u.getAccumulatorName() == null) {
            return null;
        }
        return new SymbolicName(129, null);
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void index(ComponentDeclaration componentDeclaration, PrincipalStylesheetModule principalStylesheetModule) {
        if (this.f101866u.getAccumulatorName() == null) {
            m64024c0();
        }
        this.f101866u.setImportPrecedence(componentDeclaration.getPrecedence());
        if (principalStylesheetModule.getAccumulatorManager() == null) {
            AccumulatorRegistry makeAccumulatorManager = getCompilation().getStyleNodeFactory(true).makeAccumulatorManager();
            principalStylesheetModule.setAccumulatorManager(makeAccumulatorManager);
            getCompilation().getPackageData().setAccumulatorRegistry(makeAccumulatorManager);
        }
        AccumulatorRegistry accumulatorManager = principalStylesheetModule.getAccumulatorManager();
        Accumulator accumulator = accumulatorManager.getAccumulator(this.f101866u.getAccumulatorName());
        if (accumulator != null) {
            int importPrecedence = accumulator.getImportPrecedence();
            if (importPrecedence == componentDeclaration.getPrecedence()) {
                compileError("There are two accumulators with the same name (" + this.f101866u.getAccumulatorName().getDisplayName() + ") and the same import precedence", "XTSE3350");
            }
            if (importPrecedence > componentDeclaration.getPrecedence()) {
                return;
            }
        }
        accumulatorManager.addAccumulator(this.f101866u);
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean isDeclaration() {
        return true;
    }

    @Override // net.p110sf.saxon.style.StylesheetComponent
    public void optimize(ComponentDeclaration componentDeclaration) throws XPathException {
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void prepareAttributes() {
        for (AttributeInfo attributeInfo : attributes()) {
            NodeName nodeName = attributeInfo.getNodeName();
            String displayName = nodeName.getDisplayName();
            String value = attributeInfo.getValue();
            if (!displayName.equals("name") && !displayName.equals("streamable")) {
                if (displayName.equals("initial-value")) {
                    this.f101866u.setInitialValueExpression(makeExpression(value, attributeInfo));
                } else if (displayName.equals("as")) {
                    try {
                        this.f101866u.setType(makeSequenceType(value));
                    } catch (XPathException e) {
                        compileErrorInAttribute(e.getMessage(), e.getErrorCodeLocalPart(), "as");
                    }
                } else if (!nodeName.hasURI(NamespaceConstant.SAXON) || !nodeName.getLocalPart().equals(AbstractLogger.TRACE)) {
                    checkUnknownAttribute(nodeName);
                } else if (isExtensionAttributeAllowed(nodeName.getDisplayName())) {
                    this.f101866u.setTracing(processBooleanAttribute("saxon:trace", value));
                }
            }
        }
        if (this.f101866u.getType() == null) {
            this.f101866u.setType(SequenceType.ANY_SEQUENCE);
        }
        if (this.f101866u.getInitialValueExpression() == null) {
            reportAbsence("initial-value");
            StringLiteral stringLiteral = new StringLiteral(StringValue.EMPTY_STRING);
            stringLiteral.setRetainedStaticContext(makeRetainedStaticContext());
            this.f101866u.setInitialValueExpression(stringLiteral);
        }
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void validate(ComponentDeclaration componentDeclaration) throws XPathException {
        this.f101867v = getConfiguration().makeSlotManager();
        checkTopLevel("XTSE0010", true);
        Iterator<? extends NodeInfo> it2 = children().iterator();
        boolean z = false;
        while (it2.hasNext()) {
            if (it2.next() instanceof XSLAccumulatorRule) {
                z = true;
            } else {
                compileError("Only xsl:accumulator-rule is allowed here", "XTSE0010");
            }
        }
        if (z) {
            return;
        }
        compileError("xsl:accumulator must contain at least one xsl:accumulator-rule", "XTSE0010");
    }
}
