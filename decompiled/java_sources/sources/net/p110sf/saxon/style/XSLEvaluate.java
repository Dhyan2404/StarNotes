package net.p110sf.saxon.style;

import com.caverock.androidsvg.SVGParser;
import com.sun.org.apache.xpath.internal.compiler.Keywords;
import com.sunia.HTREnginev2.w2n;
import java.util.ArrayList;
import java.util.Iterator;
import net.p110sf.saxon.expr.ErrorExpression;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.StringLiteral;
import net.p110sf.saxon.expr.ValueComparison;
import net.p110sf.saxon.expr.instruct.Block;
import net.p110sf.saxon.expr.instruct.Choose;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.expr.parser.TypeChecker;
import net.p110sf.saxon.functions.SystemFunction;
import net.p110sf.saxon.lib.Feature;
import net.p110sf.saxon.ma.map.MapType;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.trans.Err;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.trans.XmlProcessingIncident;
import net.p110sf.saxon.type.AnyItemType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.value.BooleanValue;
import net.p110sf.saxon.value.SequenceType;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public class XSLEvaluate extends StyleElement {

    /* renamed from: Q */
    public boolean f101961Q;

    /* renamed from: u */
    public Expression f101962u = null;

    /* renamed from: v */
    public SequenceType f101963v = SequenceType.ANY_SEQUENCE;

    /* renamed from: w */
    public Expression f101964w = null;

    /* renamed from: x */
    public Expression f101965x = null;

    /* renamed from: y */
    public Expression f101966y = null;

    /* renamed from: z */
    public Expression f101967z = null;

    /* renamed from: J */
    public Expression f101959J = null;

    /* renamed from: O */
    public Expression f101960O = null;

    @Override // net.p110sf.saxon.style.StyleElement
    public Expression compile(Compilation compilation, ComponentDeclaration componentDeclaration) throws XPathException {
        if (getConfiguration().getBooleanProperty(Feature.DISABLE_XSL_EVALUATE)) {
            this.validationError = new XmlProcessingIncident("xsl:evaluate is not available in this configuration", "XTDE3175");
            return m63982u(compilation, componentDeclaration, this);
        }
        Expression makeEvaluateInstruction = getConfiguration().makeEvaluateInstruction(this, componentDeclaration);
        if ((makeEvaluateInstruction instanceof ErrorExpression) || !this.f101961Q) {
            return makeEvaluateInstruction;
        }
        Expression[] expressionArr = {new ValueComparison(SystemFunction.makeCall(Keywords.FUNC_SYSTEM_PROPERTY_STRING, makeRetainedStaticContext(), new StringLiteral("Q{http://www.w3.org/1999/XSL/Transform}supports-dynamic-evaluation")), 50, new StringLiteral(SVGParser.f16048t)), Literal.makeLiteral(BooleanValue.TRUE)};
        Expression[] expressionArr2 = new Expression[2];
        ArrayList arrayList = new ArrayList();
        Iterator<? extends NodeInfo> it2 = children(new w2n(XSLFallback.class)).iterator();
        while (it2.hasNext()) {
            arrayList.add(((XSLFallback) it2.next()).compileSequenceConstructor(compilation, componentDeclaration, false));
        }
        expressionArr2[0] = new Block((Expression[]) arrayList.toArray(new Expression[0]));
        expressionArr2[1] = makeEvaluateInstruction;
        return new Choose(expressionArr, expressionArr2);
    }

    public Expression getBaseUriExpression() {
        return this.f101966y;
    }

    public Expression getContextItemExpression() {
        return this.f101965x;
    }

    public Expression getNamespaceContextExpression() {
        return this.f101964w;
    }

    public Expression getOptionsExpression() {
        return this.f101960O;
    }

    public SequenceType getRequiredType() {
        return this.f101963v;
    }

    public ItemType getReturnedItemType() {
        return AnyItemType.getInstance();
    }

    public Expression getSchemaAwareExpression() {
        return this.f101967z;
    }

    public Expression getTargetExpression() {
        return this.f101962u;
    }

    public Expression getWithParamsExpression() {
        return this.f101959J;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean isInstruction() {
        return true;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean isPermittedChild(StyleElement styleElement) {
        return styleElement instanceof XSLLocalParam;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean mayContainSequenceConstructor() {
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:62:0x0071, code lost:
    
        if (r14.equals("with-params") == false) goto L7;
     */
    @Override // net.p110sf.saxon.style.StyleElement
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void prepareAttributes() {
        /*
            Method dump skipped, instructions count: 388
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.style.XSLEvaluate.prepareAttributes():void");
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void validate(ComponentDeclaration componentDeclaration) throws XPathException {
        getContainingPackage().setRetainUnusedFunctions();
        if (this.f101962u == null) {
            this.f101962u = new StringLiteral("''");
        }
        this.f101962u = typeCheck("xpath", this.f101962u);
        this.f101966y = typeCheck("base-uri", this.f101966y);
        this.f101965x = typeCheck("context-item", this.f101965x);
        this.f101964w = typeCheck("namespace-context", this.f101964w);
        this.f101967z = typeCheck("schema-aware", this.f101967z);
        this.f101959J = typeCheck("with-params", this.f101959J);
        this.f101960O = typeCheck("options", this.f101960O);
        for (NodeInfo nodeInfo : children()) {
            if (!(nodeInfo instanceof XSLWithParam)) {
                if (nodeInfo instanceof XSLFallback) {
                    this.f101961Q = true;
                } else if (nodeInfo.getNodeKind() != 3) {
                    compileError("Child element " + Err.wrap(nodeInfo.getDisplayName(), 1) + " is not allowed as a child of xsl:evaluate", "XTSE0010");
                } else if (!Whitespace.isAllWhite(nodeInfo.getUnicodeStringValue())) {
                    compileError("No character data is allowed within xsl:evaluate", "XTSE0010");
                }
            }
        }
        try {
            ExpressionVisitor makeExpressionVisitor = makeExpressionVisitor();
            TypeChecker typeChecker = getConfiguration().getTypeChecker(false);
            this.f101962u = typeChecker.staticTypeCheck(this.f101962u, SequenceType.SINGLE_STRING, new RoleDiagnostic(4, "xsl:evaluate/xpath", 0), makeExpressionVisitor);
            RoleDiagnostic roleDiagnostic = new RoleDiagnostic(4, "xsl:evaluate/context-item", 0);
            roleDiagnostic.setErrorCode("XTTE3210");
            this.f101965x = typeChecker.staticTypeCheck(this.f101965x, SequenceType.OPTIONAL_ITEM, roleDiagnostic, makeExpressionVisitor);
            RoleDiagnostic roleDiagnostic2 = new RoleDiagnostic(4, "xsl:evaluate/namespace-context", 0);
            roleDiagnostic2.setErrorCode("XTTE3170");
            Expression expression = this.f101964w;
            if (expression != null) {
                this.f101964w = typeChecker.staticTypeCheck(expression, SequenceType.SINGLE_NODE, roleDiagnostic2, makeExpressionVisitor);
            }
            RoleDiagnostic roleDiagnostic3 = new RoleDiagnostic(4, "xsl:evaluate/with-params", 0);
            roleDiagnostic3.setErrorCode("XTTE3170");
            Expression expression2 = this.f101959J;
            MapType mapType = MapType.ANY_MAP_TYPE;
            this.f101959J = typeChecker.staticTypeCheck(expression2, SequenceType.makeSequenceType(mapType, 16384), roleDiagnostic3, makeExpressionVisitor);
            this.f101960O = typeChecker.staticTypeCheck(this.f101960O, SequenceType.makeSequenceType(mapType, 16384), new RoleDiagnostic(4, "xsl:evaluate/saxon:options", 0), makeExpressionVisitor);
        } catch (XPathException e) {
            compileError(e);
        }
    }
}
