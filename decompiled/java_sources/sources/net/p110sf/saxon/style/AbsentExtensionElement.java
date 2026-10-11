package net.p110sf.saxon.style;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import net.p110sf.saxon.expr.AtomicSequenceConverter;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.instruct.CallTemplate;
import net.p110sf.saxon.expr.instruct.NamedTemplate;
import net.p110sf.saxon.expr.instruct.WithParam;
import net.p110sf.saxon.functions.registry.VendorFunctionSetHE;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.style.StyleElement;
import net.p110sf.saxon.trans.Err;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.trans.XmlProcessingIncident;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class AbsentExtensionElement extends StyleElement {

    /* renamed from: u */
    public CallTemplate f101727u;

    /* renamed from: v */
    public boolean f101728v;

    @Override // net.p110sf.saxon.style.StyleElement
    public Expression compile(Compilation compilation, ComponentDeclaration componentDeclaration) throws XPathException {
        CallTemplate callTemplate = this.f101727u;
        if (callTemplate != null) {
            return callTemplate;
        }
        if (isTopLevel() || this.reportingCircumstances == StyleElement.OnFailure.IGNORED_INSTRUCTION) {
            return null;
        }
        if (this.validationError == null) {
            this.validationError = new XmlProcessingIncident("Unknown instruction");
        }
        return m63982u(compilation, componentDeclaration, this);
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean isInstruction() {
        return true;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean markTailCalls() {
        this.f101728v = true;
        CallTemplate callTemplate = this.f101727u;
        if (callTemplate != null) {
            callTemplate.setTailRecursive(true);
        }
        return true;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean mayContainSequenceConstructor() {
        return true;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void prepareAttributes() {
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void processAllAttributes() throws XPathException {
        NamedTemplate namedTemplate;
        StyleElement.OnFailure onFailure = this.reportingCircumstances;
        if (onFailure == StyleElement.OnFailure.IGNORED_INSTRUCTION) {
            return;
        }
        if (onFailure == StyleElement.OnFailure.REPORT_ALWAYS) {
            compileError(this.validationError);
        }
        if (m63950A() >= 40 && (namedTemplate = getPrincipalStylesheetModule().getNamedTemplate(getNodeName().getStructuredQName())) != null) {
            CallTemplate callTemplate = new CallTemplate(namedTemplate, namedTemplate.getTemplateName(), false, ((StyleElement) getParent()).isWithinDeclaredStreamableConstruct());
            List<NamedTemplate.LocalParamInfo> localParamDetails = namedTemplate.getLocalParamDetails();
            for (NamedTemplate.LocalParamInfo localParamInfo : localParamDetails) {
                if (localParamInfo.isRequired && !localParamInfo.isTunnel && attributes().get(localParamInfo.name.getURI(), localParamInfo.name.getLocalPart()) == null) {
                    compileError("No value supplied for required parameter " + Err.wrap(localParamInfo.name.getDisplayName(), 5), "XTSE0690");
                }
            }
            ArrayList arrayList = new ArrayList();
            Iterator<AttributeInfo> it2 = attributes().asList().iterator();
            while (it2.hasNext()) {
                AttributeInfo next = it2.next();
                StructuredQName structuredQName = next.getNodeName().getStructuredQName();
                if (!structuredQName.hasURI("http://www.w3.org/1999/XSL/Transform") && !structuredQName.hasURI("http://www.w3.org/XML/1998/namespace")) {
                    for (NamedTemplate.LocalParamInfo localParamInfo2 : localParamDetails) {
                        if (localParamInfo2.name.equals(structuredQName) && !localParamInfo2.isTunnel) {
                            SequenceType sequenceType = localParamInfo2.requiredType;
                            WithParam withParam = new WithParam();
                            withParam.setVariableQName(structuredQName);
                            withParam.setRequiredType(SequenceType.ANY_SEQUENCE);
                            if (sequenceType.getCardinality() != 16384 || !sequenceType.getPrimaryType().isPlainType()) {
                                withParam.setSelectExpression(callTemplate, makeExpression(next.getValue(), next));
                            } else if (sequenceType.getPrimaryType() == BuiltInAtomicType.BOOLEAN) {
                                withParam.setSelectExpression(callTemplate, VendorFunctionSetHE.getInstance().makeFunction("yes-no-boolean", 1).makeFunctionCall(makeAttributeValueTemplate(next.getValue(), next)));
                            } else {
                                Expression makeAttributeValueTemplate = makeAttributeValueTemplate(next.getValue(), next);
                                if (sequenceType.getPrimaryType() != BuiltInAtomicType.STRING) {
                                    makeAttributeValueTemplate = new AtomicSequenceConverter(makeAttributeValueTemplate, BuiltInAtomicType.UNTYPED_ATOMIC);
                                }
                                withParam.setSelectExpression(callTemplate, makeAttributeValueTemplate);
                            }
                            arrayList.add(withParam);
                        }
                    }
                }
            }
            callTemplate.setActualParameters((WithParam[]) arrayList.toArray(new WithParam[0]), new WithParam[0]);
            this.f101727u = callTemplate;
        }
        if (isTopLevel() && m63985x()) {
            return;
        }
        super.processAllAttributes();
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void validate(ComponentDeclaration componentDeclaration) throws XPathException {
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void validateSubtree(ComponentDeclaration componentDeclaration, boolean z) throws XPathException {
        if (this.reportingCircumstances != StyleElement.OnFailure.IGNORED_INSTRUCTION) {
            if (isTopLevel() && m63985x()) {
                return;
            }
            super.validateSubtree(componentDeclaration, z);
        }
    }
}
