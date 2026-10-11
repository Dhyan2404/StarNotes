package net.p110sf.saxon.style;

import com.sunia.HTREnginev2.w2n;
import java.util.Iterator;
import java.util.List;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.instruct.CallTemplate;
import net.p110sf.saxon.expr.instruct.NamedTemplate;
import net.p110sf.saxon.lib.NamespaceConstant;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.trans.Err;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public class XSLCallTemplate extends StyleElement {

    /* renamed from: x */
    public static final StructuredQName f101908x = new StructuredQName("saxon", NamespaceConstant.SAXON, "error-template");

    /* renamed from: u */
    public StructuredQName f101909u;

    /* renamed from: v */
    public NamedTemplate f101910v = null;

    /* renamed from: w */
    public boolean f101911w = false;

    /* renamed from: Z */
    public final void m64029Z() throws XPathException {
        boolean z;
        List<NamedTemplate.LocalParamInfo> localParamDetails = this.f101910v.getLocalParamDetails();
        Iterator<NamedTemplate.LocalParamInfo> it2 = localParamDetails.iterator();
        while (true) {
            boolean z2 = true;
            if (!it2.hasNext()) {
                break;
            }
            NamedTemplate.LocalParamInfo next = it2.next();
            if (next.isRequired && !next.isTunnel) {
                Iterator<? extends NodeInfo> it3 = children(new w2n(XSLWithParam.class)).iterator();
                while (true) {
                    if (it3.hasNext()) {
                        if (((XSLWithParam) it3.next()).getVariableQName().equals(next.name)) {
                            break;
                        }
                    } else {
                        z2 = false;
                        break;
                    }
                }
                if (!z2) {
                    compileError("No value supplied for required parameter " + Err.wrap(next.name.getDisplayName(), 5), "XTSE0690");
                }
            }
        }
        for (NodeInfo nodeInfo : children()) {
            if (nodeInfo instanceof XSLWithParam) {
                XSLWithParam xSLWithParam = (XSLWithParam) nodeInfo;
                if (!xSLWithParam.isTunnelParam()) {
                    Iterator<NamedTemplate.LocalParamInfo> it4 = localParamDetails.iterator();
                    while (true) {
                        if (!it4.hasNext()) {
                            z = false;
                            break;
                        }
                        NamedTemplate.LocalParamInfo next2 = it4.next();
                        if (next2.name.equals(xSLWithParam.getVariableQName()) && !next2.isTunnel) {
                            xSLWithParam.checkAgainstRequiredType(next2.requiredType);
                            z = true;
                            break;
                        }
                    }
                    if (!z && !m63973Y()) {
                        compileError("Parameter " + xSLWithParam.getVariableQName().getDisplayName() + " is not declared in the called template", "XTSE0680");
                    }
                }
            }
        }
    }

    /* renamed from: a0 */
    public final NamedTemplate m64030a0(StructuredQName structuredQName) throws XPathException {
        NamedTemplate namedTemplate = getPrincipalStylesheetModule().getNamedTemplate(structuredQName);
        if (namedTemplate == null) {
            if (structuredQName.hasURI("http://www.w3.org/1999/XSL/Transform") && structuredQName.getLocalPart().equals("original")) {
                return (NamedTemplate) getXslOriginal(210);
            }
            compileError("Cannot find a template named " + this.f101909u, "XTSE0650");
        }
        return namedTemplate;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public Expression compile(Compilation compilation, ComponentDeclaration componentDeclaration) throws XPathException {
        if (this.f101910v == null) {
            return null;
        }
        CallTemplate callTemplate = new CallTemplate(this.f101910v, this.f101909u, this.f101911w, isWithinDeclaredStreamableConstruct());
        callTemplate.setLocation(allocateLocation());
        callTemplate.setActualParameters(getWithParamInstructions(callTemplate, compilation, componentDeclaration, false), getWithParamInstructions(callTemplate, compilation, componentDeclaration, true));
        return callTemplate;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean isInstruction() {
        return true;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean markTailCalls() {
        this.f101911w = true;
        return true;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void postValidate() throws XPathException {
        if (this.f101910v == null) {
            throw new AssertionError("Target template not known");
        }
        m64029Z();
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void prepareAttributes() {
        String str = null;
        for (AttributeInfo attributeInfo : attributes()) {
            NodeName nodeName = attributeInfo.getNodeName();
            String displayName = nodeName.getDisplayName();
            String value = attributeInfo.getValue();
            if (displayName.equals("name")) {
                str = Whitespace.trim(value);
            } else {
                checkUnknownAttribute(nodeName);
            }
        }
        if (str != null) {
            this.f101909u = makeQName(str, null, "name");
        } else {
            this.f101909u = f101908x;
            reportAbsence("name");
        }
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void validate(ComponentDeclaration componentDeclaration) throws XPathException {
        for (NodeInfo nodeInfo : children()) {
            if (!(nodeInfo instanceof XSLWithParam) && (!(nodeInfo instanceof XSLFallback) || !mayContainFallback())) {
                if (nodeInfo.getNodeKind() != 3) {
                    compileError("Child element " + Err.wrap(nodeInfo.getDisplayName(), 1) + " is not allowed as a child of xsl:call-template", "XTSE0010");
                } else if (!Whitespace.isAllWhite(nodeInfo.getUnicodeStringValue())) {
                    compileError("No character data is allowed within xsl:call-template", "XTSE0010");
                }
            }
        }
        if (this.f101909u == null) {
            this.f101909u = f101908x;
        }
        if (this.f101909u.equals(f101908x)) {
            return;
        }
        this.f101910v = m64030a0(this.f101909u);
    }
}
