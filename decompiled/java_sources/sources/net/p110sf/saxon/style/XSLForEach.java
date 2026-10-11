package net.p110sf.saxon.style;

import com.onyx.android.sdk.data.common.cloud.Constant;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.StringLiteral;
import net.p110sf.saxon.expr.instruct.ForEach;
import net.p110sf.saxon.expr.sort.SortExpression;
import net.p110sf.saxon.expr.sort.SortKeyDefinitionList;
import net.p110sf.saxon.lib.NamespaceConstant;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.trans.SaxonErrorCode;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.Cardinality;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public class XSLForEach extends StyleElement {

    /* renamed from: y */
    public static final /* synthetic */ boolean f101969y = false;

    /* renamed from: u */
    public Expression f101970u = null;

    /* renamed from: v */
    public boolean f101971v = false;

    /* renamed from: w */
    public Expression f101972w = null;

    /* renamed from: x */
    public Expression f101973x = null;

    @Override // net.p110sf.saxon.style.StyleElement
    public Expression compile(Compilation compilation, ComponentDeclaration componentDeclaration) throws XPathException {
        SortKeyDefinitionList m63961M = m63961M(compilation, componentDeclaration);
        Expression expression = this.f101970u;
        if (m63961M != null) {
            expression = new SortExpression(this.f101970u, m63961M);
        }
        Expression compileSequenceConstructor = compileSequenceConstructor(compilation, componentDeclaration, true);
        if (compileSequenceConstructor == null) {
            return Literal.makeEmptySequence();
        }
        try {
            ForEach forEach = new ForEach(expression, compileSequenceConstructor.simplify(), this.f101971v, this.f101972w);
            forEach.setInstruction(true);
            forEach.setLocation(allocateLocation());
            Expression expression2 = this.f101973x;
            if (expression2 != null) {
                forEach.setSeparatorExpression(expression2);
            }
            return forEach;
        } catch (XPathException e) {
            compileError(e);
            return null;
        }
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean isInstruction() {
        return true;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean isPermittedChild(StyleElement styleElement) {
        return styleElement instanceof XSLSort;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean markTailCalls() {
        boolean z = false;
        if (Cardinality.allowsMany(this.f101970u.getCardinality())) {
            return false;
        }
        StyleElement m63951B = m63951B();
        if (m63951B != null && m63951B.markTailCalls()) {
            z = true;
        }
        this.f101971v = z;
        return z;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean mayContainSequenceConstructor() {
        return true;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void prepareAttributes() {
        for (AttributeInfo attributeInfo : attributes()) {
            NodeName nodeName = attributeInfo.getNodeName();
            String displayName = nodeName.getDisplayName();
            String value = attributeInfo.getValue();
            if (displayName.equals("select")) {
                this.f101970u = makeExpression(value, attributeInfo);
            } else if (displayName.equals("array")) {
                requireXslt40("array");
                this.f101970u = arrayToSequence(makeExpression(value, attributeInfo));
            } else if (displayName.equals(Constant.MAP_TAG)) {
                requireXslt40(Constant.MAP_TAG);
                this.f101970u = mapToSequence(makeExpression(value, attributeInfo));
            } else if (displayName.equals("separator")) {
                requireXslt40("separator");
                this.f101973x = makeAttributeValueTemplate(value, attributeInfo);
            } else if (nodeName.getLocalPart().equals("threads") && nodeName.hasURI(NamespaceConstant.SAXON)) {
                this.f101972w = makeAttributeValueTemplate(Whitespace.trim(value), attributeInfo);
                if (getCompilation().getCompilerInfo().isCompileWithTracing()) {
                    compileWarning("saxon:threads - no multithreading takes place when compiling with trace enabled", SaxonErrorCode.SXWN9012);
                    this.f101972w = new StringLiteral("0");
                } else if (!"EE".equals(getConfiguration().getEditionCode())) {
                    compileWarning("saxon:threads - ignored when not running Saxon-EE", SaxonErrorCode.SXWN9013);
                    this.f101972w = new StringLiteral("0");
                }
            } else {
                checkUnknownAttribute(nodeName);
            }
        }
        if (this.f101970u == null) {
            if (m63950A() >= 40) {
                compileError("One of the attributes select|array|map must be present");
            } else {
                reportAbsence("select");
            }
            this.f101970u = Literal.makeEmptySequence();
        }
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void validate(ComponentDeclaration componentDeclaration) throws XPathException {
        m63977p(false);
        this.f101970u = typeCheck("select", this.f101970u);
        Expression expression = this.f101973x;
        if (expression != null) {
            this.f101973x = typeCheck("separator", expression);
        }
        Expression expression2 = this.f101972w;
        if (expression2 != null) {
            this.f101972w = typeCheck("threads", expression2);
        }
        if (hasChildNodes()) {
            return;
        }
        compileWarning("An empty xsl:for-each instruction has no effect", SaxonErrorCode.SXWN9009);
    }
}
