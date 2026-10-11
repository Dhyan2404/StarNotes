package net.p110sf.saxon.expr.instruct;

import java.util.function.BiConsumer;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.lib.Validation;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.util.Orphan;
import net.p110sf.saxon.type.ComplexType;
import net.p110sf.saxon.type.SchemaException;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.SimpleType;

/* loaded from: classes11.dex */
public final class FixedAttribute extends AttributeCreator {

    /* renamed from: t */
    public static final /* synthetic */ boolean f99712t = false;

    /* renamed from: s */
    public final NodeName f99713s;

    public FixedAttribute(NodeName nodeName, int i, SimpleType simpleType) {
        this.f99713s = nodeName;
        setSchemaType(simpleType);
        setValidationAction(i);
        setOptions(0);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public void checkPermittedContents(SchemaType schemaType, boolean z) throws XPathException {
        int fingerprint = this.f99713s.getFingerprint();
        if (fingerprint == 641 || fingerprint == 643 || fingerprint == 642 || fingerprint == 644) {
            return;
        }
        if (schemaType instanceof SimpleType) {
            XPathException xPathException = new XPathException("Attribute " + this.f99713s.getDisplayName() + " is not permitted in the content model of the simple type " + schemaType.getDescription());
            xPathException.setIsTypeError(true);
            xPathException.setLocation(getLocation());
            xPathException.setErrorCode(getPackageData().isXSLT() ? "XTTE1510" : "XQDY0027");
            throw xPathException;
        }
        try {
            SimpleType attributeUseType = ((ComplexType) schemaType).getAttributeUseType(this.f99713s.getStructuredQName());
            if (attributeUseType != null) {
                try {
                    getSelect().checkPermittedContents(attributeUseType, true);
                    return;
                } catch (XPathException e) {
                    e.maybeSetLocation(getLocation());
                    throw e;
                }
            }
            XPathException xPathException2 = new XPathException("Attribute " + this.f99713s.getDisplayName() + " is not permitted in the content model of the complex type " + schemaType.getDescription());
            xPathException2.setIsTypeError(true);
            xPathException2.setLocation(getLocation());
            xPathException2.setErrorCode(getPackageData().isXSLT() ? "XTTE1510" : "XQDY0027");
            throw xPathException2;
        } catch (SchemaException e2) {
            throw new XPathException(e2);
        }
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        FixedAttribute fixedAttribute = new FixedAttribute(this.f99713s, getValidationAction(), getSchemaType());
        ExpressionTool.copyLocationInfo(this, fixedAttribute);
        fixedAttribute.setSelect(getSelect().copy(rebindingMap));
        fixedAttribute.setInstruction(isInstruction());
        return fixedAttribute;
    }

    @Override // net.p110sf.saxon.expr.instruct.SimpleNodeConstructor
    public NodeName evaluateNodeName(XPathContext xPathContext) {
        return this.f99713s;
    }

    @Override // net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("att", this);
        expressionPresenter.emitAttribute("name", this.f99713s.getDisplayName());
        String str = "";
        if (!this.f99713s.getStructuredQName().hasURI("")) {
            expressionPresenter.emitAttribute("nsuri", this.f99713s.getStructuredQName().getURI());
        }
        if (getValidationAction() != 4 && getValidationAction() != 8) {
            expressionPresenter.emitAttribute("validation", Validation.describe(getValidationAction()));
        }
        if (getSchemaType() != null) {
            expressionPresenter.emitAttribute("type", getSchemaType().getStructuredQName());
        }
        if (isLocal()) {
            str = "l";
        }
        if (!str.isEmpty()) {
            expressionPresenter.emitAttribute("flags", str);
        }
        getSelect().export(expressionPresenter);
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.trace.Traceable
    public void gatherProperties(BiConsumer<String, Object> biConsumer) {
        biConsumer.accept("name", getAttributeName());
    }

    public int getAttributeFingerprint() {
        return this.f99713s.getFingerprint();
    }

    public NodeName getAttributeName() {
        return this.f99713s;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getCardinality() {
        return 16384;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return "att";
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction
    public int getInstructionNameCode() {
        return 137;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:56:? A[RETURN, SYNTHETIC] */
    @Override // net.p110sf.saxon.expr.instruct.SimpleNodeConstructor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void localTypeCheck(net.p110sf.saxon.expr.parser.ExpressionVisitor r7, net.p110sf.saxon.expr.parser.ContextItemStaticInfo r8) throws net.p110sf.saxon.trans.XPathException {
        /*
            Method dump skipped, instructions count: 353
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.expr.instruct.FixedAttribute.localTypeCheck(net.sf.saxon.expr.parser.ExpressionVisitor, net.sf.saxon.expr.parser.ContextItemStaticInfo):void");
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String toShortString() {
        return "attr{" + this.f99713s.getDisplayName() + "=...}";
    }

    @Override // net.p110sf.saxon.expr.instruct.SimpleNodeConstructor, net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public NodeInfo evaluateItem(XPathContext xPathContext) throws XPathException {
        Orphan orphan = (Orphan) super.evaluateItem(xPathContext);
        validateOrphanAttribute(orphan, xPathContext);
        return orphan;
    }
}
