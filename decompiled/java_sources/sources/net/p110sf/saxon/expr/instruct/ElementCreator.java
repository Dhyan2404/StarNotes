package net.p110sf.saxon.expr.instruct;

import com.couchbase.lite.internal.BaseTLSIdentity;
import net.p110sf.saxon.event.ComplexContentOutputter;
import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.lib.ParseOptions;
import net.p110sf.saxon.lib.Validation;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.pattern.NodeKindTest;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.AnyType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.Untyped;

/* loaded from: classes11.dex */
public abstract class ElementCreator extends ParentNodeConstructor {

    /* renamed from: p */
    public boolean f99686p = true;

    /* renamed from: q */
    public boolean f99687q = true;

    /* JADX WARN: Code restructure failed: missing block: B:42:0x00bb, code lost:
    
        if (r7 != false) goto L36;
     */
    @Override // net.p110sf.saxon.expr.instruct.ParentNodeConstructor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void checkContentSequence(net.p110sf.saxon.expr.StaticContext r12) throws net.p110sf.saxon.trans.XPathException {
        /*
            Method dump skipped, instructions count: 302
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.expr.instruct.ElementCreator.checkContentSequence(net.sf.saxon.expr.StaticContext):void");
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public int computeSpecialProperties() {
        int computeSpecialProperties = super.computeSpecialProperties() | 16777216;
        return getValidationAction() == 4 ? computeSpecialProperties | 134217728 : computeSpecialProperties;
    }

    /* renamed from: d */
    public void m62749d(ExpressionPresenter expressionPresenter) {
        SchemaType schemaType;
        if (getValidationAction() != 4 && getValidationAction() != 8) {
            expressionPresenter.emitAttribute("validation", Validation.describe(getValidationAction()));
        }
        if (getValidationAction() != 8 || (schemaType = getSchemaType()) == null) {
            return;
        }
        expressionPresenter.emitAttribute("type", schemaType.getStructuredQName());
    }

    /* renamed from: e */
    public String m62750e() {
        String str = "";
        if (!this.f99687q) {
            str = "P";
        }
        if (this.f99686p) {
            return str;
        }
        return str + BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY;
    }

    @Override // net.p110sf.saxon.expr.instruct.ParentNodeConstructor, net.p110sf.saxon.expr.Expression
    public int getCardinality() {
        return 16384;
    }

    public abstract NodeName getElementName(XPathContext xPathContext, NodeInfo nodeInfo) throws XPathException;

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public int getImplementationMethod() {
        return 4;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        return NodeKindTest.ELEMENT;
    }

    public abstract String getNewBaseURI(XPathContext xPathContext, NodeInfo nodeInfo);

    @Override // net.p110sf.saxon.expr.Expression
    public String getStreamerName() {
        return "ElementCreator";
    }

    public boolean isBequeathNamespacesToChildren() {
        return this.f99686p;
    }

    public boolean isInheritNamespacesFromParent() {
        return this.f99687q;
    }

    public abstract void outputNamespaceNodes(Outputter outputter, NodeName nodeName, NodeInfo nodeInfo) throws XPathException;

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.instruct.TailCallReturner
    public TailCall processLeavingTail(Outputter outputter, XPathContext xPathContext) throws XPathException {
        return processLeavingTail(outputter, xPathContext, null);
    }

    public void setBequeathNamespacesToChildren(boolean z) {
        this.f99686p = z;
    }

    public void setInheritNamespacesFromParent(boolean z) {
        this.f99687q = z;
    }

    public void setInheritanceFlags(String str) {
        this.f99687q = !str.contains("P");
        this.f99686p = !str.contains(BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public void suppressValidation(int i) {
        if (getValidationAction() == i && getSchemaType() == null) {
            setValidationAction(3, null);
        }
    }

    public final TailCall processLeavingTail(Outputter outputter, XPathContext xPathContext, NodeInfo nodeInfo) throws XPathException {
        SchemaType untyped;
        try {
            NodeName elementName = getElementName(xPathContext, nodeInfo);
            if (getValidationAction() == 3) {
                untyped = AnyType.getInstance();
            } else {
                untyped = Untyped.getInstance();
            }
            if (!this.preservingTypes) {
                ParseOptions parseOptions = new ParseOptions(getValidationOptions());
                parseOptions.setTopLevelElement(elementName.getStructuredQName());
                xPathContext.getConfiguration().prepareValidationReporting(xPathContext, parseOptions);
                Receiver elementValidator = xPathContext.getConfiguration().getElementValidator(outputter, parseOptions, getLocation());
                if (elementValidator != outputter) {
                    outputter = new ComplexContentOutputter(elementValidator);
                }
            }
            if (outputter.getSystemId() == null) {
                outputter.setSystemId(getNewBaseURI(xPathContext, nodeInfo));
            }
            int i = !this.f99686p ? 128 : 0;
            if (!this.f99687q) {
                i |= 65536;
            }
            outputter.startElement(elementName, untyped, getLocation(), i | 524288);
            outputNamespaceNodes(outputter, elementName, nodeInfo);
            getContentExpression().process(outputter, xPathContext);
            outputter.endElement();
            return null;
        } catch (XPathException e) {
            e.maybeSetLocation(getLocation());
            e.maybeSetContext(xPathContext);
            throw e;
        }
    }
}
