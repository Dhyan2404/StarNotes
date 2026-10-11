package net.p110sf.saxon.style;

import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.instruct.SequenceInstr;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.expr.parser.TypeChecker;
import net.p110sf.saxon.lib.Feature;
import net.p110sf.saxon.lib.NamespaceConstant;
import net.p110sf.saxon.ma.map.HashTrieMap;
import net.p110sf.saxon.ma.map.MapFunctionSet;
import net.p110sf.saxon.ma.map.MapType;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.trans.SaxonErrorCode;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.value.QNameValue;
import net.p110sf.saxon.value.SequenceType;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class XSLMap extends StyleElement {

    /* renamed from: u */
    public Expression f102027u = null;

    /* renamed from: v */
    public Expression f102028v = null;

    @Override // net.p110sf.saxon.style.StyleElement
    public Expression compile(Compilation compilation, ComponentDeclaration componentDeclaration) throws XPathException {
        Expression makeLiteral;
        Expression compileSequenceConstructor = compileSequenceConstructor(compilation, componentDeclaration, false);
        this.f102027u = compileSequenceConstructor;
        this.f102027u = compileSequenceConstructor.simplify();
        TypeChecker typeChecker = getConfiguration().getTypeChecker(false);
        RoleDiagnostic roleDiagnostic = new RoleDiagnostic(20, "xsl:map sequence constructor", 0);
        roleDiagnostic.setErrorCode("XTTE3375");
        this.f102027u = typeChecker.staticTypeCheck(this.f102027u, SequenceType.makeSequenceType(MapType.ANY_MAP_TYPE, 57344), roleDiagnostic, makeExpressionVisitor());
        if (this.f102028v != null) {
            makeLiteral = MapFunctionSet.getInstance().makeFunction("entry", 2).makeFunctionCall(Literal.makeLiteral(new QNameValue("", NamespaceConstant.SAXON, "on-duplicates")), this.f102028v);
        } else {
            HashTrieMap hashTrieMap = new HashTrieMap();
            hashTrieMap.initialPut(StringValue.bmp("duplicates"), StringValue.bmp("reject"));
            hashTrieMap.initialPut(new QNameValue("", NamespaceConstant.SAXON, "duplicates-error-code"), StringValue.bmp("XTDE3365"));
            makeLiteral = Literal.makeLiteral(hashTrieMap, this.f102027u);
        }
        Expression makeFunctionCall = MapFunctionSet.getInstance().makeFunction("merge", 2).makeFunctionCall(this.f102027u, makeLiteral);
        return getConfiguration().getBooleanProperty(Feature.STRICT_STREAMABILITY) ? new SequenceInstr(makeFunctionCall) : makeFunctionCall;
    }

    public ItemType getReturnedItemType() {
        return MapType.ANY_MAP_TYPE;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean isInstruction() {
        return true;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean mayContainSequenceConstructor() {
        return true;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void prepareAttributes() {
        for (AttributeInfo attributeInfo : attributes()) {
            NodeName nodeName = attributeInfo.getNodeName();
            nodeName.getDisplayName();
            String value = attributeInfo.getValue();
            if (!nodeName.getLocalPart().equals("on-duplicates")) {
                checkUnknownAttribute(nodeName);
            } else if (nodeName.getURI().isEmpty()) {
                requireXslt40("on-duplicates");
                this.f102028v = makeExpression(value, attributeInfo);
            } else if (nodeName.hasURI(NamespaceConstant.SAXON)) {
                if (getConfiguration().isLicensedFeature(8)) {
                    this.f102028v = makeExpression(value, attributeInfo);
                } else {
                    compileWarning("saxon:on-duplicates ignored - requires Saxon-PE license", SaxonErrorCode.SXWN9013);
                }
            }
        }
    }
}
