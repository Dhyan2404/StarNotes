package net.p110sf.saxon.style;

import java.util.Iterator;
import net.p110sf.saxon.expr.Component;
import net.p110sf.saxon.functions.FunctionLibraryList;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.StandardNames;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.trans.Err;
import net.p110sf.saxon.trans.Mode;
import net.p110sf.saxon.trans.SymbolicName;
import net.p110sf.saxon.trans.Visibility;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class XSLOverride extends StyleElement {

    /* renamed from: u */
    public static final /* synthetic */ boolean f102081u = false;

    public void addXSLOverrideFunctionLibrary(FunctionLibraryList functionLibraryList) {
        functionLibraryList.addFunctionLibrary(XSLOriginalLibrary.getInstance());
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void postValidate() throws XPathException {
        XSLUsePackage xSLUsePackage = (XSLUsePackage) getParent();
        if (xSLUsePackage.getUsedPackage() != null) {
            for (NodeInfo nodeInfo : children()) {
                if ((nodeInfo instanceof XSLFunction) || (nodeInfo instanceof XSLTemplate) || (nodeInfo instanceof XSLGlobalVariable) || (nodeInfo instanceof XSLAttributeSet)) {
                    StylesheetComponent stylesheetComponent = (StylesheetComponent) nodeInfo;
                    SymbolicName symbolicName = stylesheetComponent.getSymbolicName();
                    if (symbolicName != null) {
                        Component component = xSLUsePackage.getUsedPackage().getComponent(symbolicName);
                        if (component == null) {
                            ((StyleElement) nodeInfo).compileError("There is no " + StandardNames.getLocalName(symbolicName.getComponentKind()) + " named " + symbolicName.getShortName() + " in the used package", "XTSE3058");
                            return;
                        }
                        Visibility visibility = component.getVisibility();
                        if (visibility == Visibility.UNDEFINED) {
                            visibility = Visibility.PRIVATE;
                        }
                        if (visibility == Visibility.FINAL || visibility == Visibility.PRIVATE) {
                            ((StyleElement) nodeInfo).compileError("The " + StandardNames.getLocalName(symbolicName.getComponentKind()) + " named " + symbolicName.getShortName() + " in the used package cannot be overridden because its visibility is " + Err.describeVisibility(visibility), "XTSE3060");
                            return;
                        }
                        stylesheetComponent.checkCompatibility(component);
                    } else {
                        if (!(nodeInfo instanceof XSLTemplate)) {
                            ((StyleElement) nodeInfo).compileError("An overriding component (other than a template rule) must have a name", "XTSE3440");
                            return;
                        }
                        XSLTemplate xSLTemplate = (XSLTemplate) nodeInfo;
                        if (xSLTemplate.getMatch() == null) {
                            xSLTemplate.compileError("An overriding template with no name must have a match pattern");
                        }
                        for (StructuredQName structuredQName : xSLTemplate.getModeNames()) {
                            if (structuredQName.equals(Mode.OMNI_MODE)) {
                                ((StyleElement) nodeInfo).compileError("An overriding template rule must not specify mode=\"#all\"", "XTSE3440");
                            } else {
                                StructuredQName structuredQName2 = Mode.UNNAMED_MODE_NAME;
                                if (structuredQName.equals(structuredQName2) && xSLTemplate.m63986y().equals(structuredQName2)) {
                                    ((StyleElement) nodeInfo).compileError("An overriding template rule must not belong to the unnamed mode", "XTSE3440");
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void prepareAttributes() {
        Iterator<AttributeInfo> it2 = attributes().iterator();
        while (it2.hasNext()) {
            checkUnknownAttribute(it2.next().getNodeName());
        }
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void validate(ComponentDeclaration componentDeclaration) throws XPathException {
        for (NodeInfo nodeInfo : children()) {
            if (nodeInfo.getNodeKind() == 3) {
                compileError("Character content is not allowed as a child of xsl:override", "XTSE0010");
            } else if (!(nodeInfo instanceof XSLFunction) && !(nodeInfo instanceof XSLTemplate) && !(nodeInfo instanceof XSLGlobalVariable) && !(nodeInfo instanceof XSLAttributeSet)) {
                ((StyleElement) nodeInfo).compileError("Element " + nodeInfo.getDisplayName() + " is not allowed as a child of xsl:override", "XTSE0010");
            }
        }
    }
}
