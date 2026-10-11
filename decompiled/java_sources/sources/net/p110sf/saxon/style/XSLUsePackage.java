package net.p110sf.saxon.style;

import com.google.android.material.motion.MotionUtils;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.tqo;
import com.sunia.HTREnginev2.w2n;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import net.p110sf.saxon.expr.Component;
import net.p110sf.saxon.expr.instruct.GlobalContextRequirement;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.pattern.NodeKindTest;
import net.p110sf.saxon.pattern.NodeSelector;
import net.p110sf.saxon.trans.CompilerInfo;
import net.p110sf.saxon.trans.ComponentTest;
import net.p110sf.saxon.trans.CompoundMode;
import net.p110sf.saxon.trans.Err;
import net.p110sf.saxon.trans.Mode;
import net.p110sf.saxon.trans.SimpleMode;
import net.p110sf.saxon.trans.SymbolicName;
import net.p110sf.saxon.trans.Visibility;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.trans.packages.PackageDetails;
import net.p110sf.saxon.trans.rules.RuleManager;
import net.p110sf.saxon.tree.iter.AxisIterator;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public class XSLUsePackage extends StyleElement {

    /* renamed from: w */
    public StylesheetPackage f102136w;

    /* renamed from: u */
    public String f102134u = null;

    /* renamed from: v */
    public PackageVersionRanges f102135v = null;

    /* renamed from: x */
    public List<XSLAccept> f102137x = null;

    /* renamed from: Z */
    public void m64061Z(CompilerInfo compilerInfo) throws XPathException {
        if (this.f102136w == null) {
            if (this.f102134u == null) {
                this.f102134u = Whitespace.trim(getAttributeValue("", "name"));
            }
            if (this.f102134u == null) {
                reportAbsence("name");
                this.f102134u = "unnamed-package";
            }
            PackageVersionRanges m64067f0 = m64067f0();
            PackageDetails findPackage = m64067f0 == null ? null : compilerInfo.getPackageLibrary().findPackage(this.f102134u, m64067f0);
            StylesheetPackage stylesheetPackage = findPackage != null ? findPackage.loadedPackage : null;
            this.f102136w = stylesheetPackage;
            if (stylesheetPackage == null) {
                compileErrorInAttribute("Package " + this.f102134u + " could not be found", "XTSE3000", "name");
                StylesheetPackage makeStylesheetPackage = getConfiguration().makeStylesheetPackage();
                this.f102136w = makeStylesheetPackage;
                makeStylesheetPackage.setJustInTimeCompilation(compilerInfo.isJustInTimeCompilation());
            }
            GlobalContextRequirement contextItemRequirements = this.f102136w.getContextItemRequirements();
            if (contextItemRequirements == null || contextItemRequirements.isMayBeOmitted()) {
                return;
            }
            compileError("Package " + getAttributeValue("name") + " requires a global context item, so it cannot be used as a library package", "XTTE0590");
        }
    }

    /* renamed from: a0 */
    public void m64062a0(PrincipalStylesheetModule principalStylesheetModule, List<ComponentDeclaration> list, Set<SymbolicName> set) throws XPathException {
        if (this.f102136w == null) {
            return;
        }
        Iterator<? extends NodeInfo> it2 = children(new w2n(XSLOverride.class)).iterator();
        while (it2.hasNext()) {
            for (NodeInfo nodeInfo : it2.next().children(NodeSelector.m63449of(new tqo(StylesheetComponent.class)))) {
                list.add(new ComponentDeclaration(principalStylesheetModule, (StyleElement) nodeInfo));
                SymbolicName symbolicName = ((StylesheetComponent) nodeInfo).getSymbolicName();
                if (symbolicName != null) {
                    set.add(symbolicName);
                } else if ((nodeInfo instanceof XSLTemplate) && nodeInfo.getAttributeValue("", Constants.ATTRNAME_MATCH) != null) {
                    for (StructuredQName structuredQName : ((XSLTemplate) nodeInfo).getModeNames()) {
                        set.add(new SymbolicName(180, structuredQName));
                    }
                }
            }
        }
    }

    /* renamed from: b0 */
    public void m64063b0(PrincipalStylesheetModule principalStylesheetModule, Set<SymbolicName> set) throws XPathException {
        Component component;
        AxisIterator axisIterator;
        StylesheetPackage stylesheetPackage = principalStylesheetModule.getStylesheetPackage();
        RuleManager ruleManager = principalStylesheetModule.getRuleManager();
        int i = 3;
        AxisIterator iterateAxis = iterateAxis(3, NodeKindTest.ELEMENT);
        HashSet hashSet = new HashSet();
        while (true) {
            NodeInfo next = iterateAxis.next();
            if (next == null) {
                break;
            }
            if (next instanceof XSLOverride) {
                AxisIterator iterateAxis2 = next.iterateAxis(i, NodeKindTest.ELEMENT);
                while (true) {
                    NodeInfo next2 = iterateAxis2.next();
                    if (next2 != null) {
                        if ((next2 instanceof XSLTemplate) && next2.getAttributeValue("", Constants.ATTRNAME_MATCH) != null) {
                            StructuredQName[] modeNames = ((XSLTemplate) next2).getModeNames();
                            int length = modeNames.length;
                            int i2 = 0;
                            while (i2 < length) {
                                StructuredQName structuredQName = modeNames[i2];
                                if (structuredQName.equals(Mode.OMNI_MODE)) {
                                    ((StyleElement) next2).compileError("The mode name #all must not appear in an overriding template rule", "XTSE3440");
                                } else {
                                    SymbolicName symbolicName = new SymbolicName(180, structuredQName);
                                    set.add(symbolicName);
                                    hashSet.add(symbolicName);
                                    Component.C18300M c18300m = (Component.C18300M) stylesheetPackage.getComponent(symbolicName);
                                    if (c18300m == null) {
                                        ((StyleElement) next2).compileError("Mode " + structuredQName.getDisplayName() + " is not defined in the used package", "XTSE3060");
                                    } else if (c18300m.getBaseComponent() == null) {
                                        ((StyleElement) next2).compileError("Mode " + structuredQName.getDisplayName() + " cannot be overridden because it is local to this package", "XTSE3440");
                                    } else {
                                        Component.C18300M c18300m2 = (Component.C18300M) c18300m.getBaseComponent();
                                        axisIterator = iterateAxis;
                                        if (c18300m2.getVisibility() == Visibility.FINAL) {
                                            ((StyleElement) next2).compileError("Cannot define overriding template rules in mode " + structuredQName.getDisplayName() + " because it has visibility=final", "XTSE3060");
                                        } else {
                                            Mode actor = c18300m2.getActor();
                                            if (c18300m2.getVisibility() != Visibility.PUBLIC) {
                                                ((StyleElement) next2).compileError("Cannot override template rules in mode " + structuredQName.getDisplayName() + ", because the mode is not public", "XTSE3060");
                                            } else if (c18300m.getActor() == actor) {
                                                CompoundMode compoundMode = new CompoundMode(actor, new SimpleMode(structuredQName));
                                                compoundMode.setDeclaringComponent(c18300m);
                                                ruleManager.registerMode(compoundMode);
                                                c18300m.setActor(compoundMode);
                                            }
                                        }
                                        i2++;
                                        iterateAxis = axisIterator;
                                        i = 3;
                                    }
                                }
                                axisIterator = iterateAxis;
                                i2++;
                                iterateAxis = axisIterator;
                                i = 3;
                            }
                        }
                    }
                }
            }
        }
        RuleManager ruleManager2 = this.f102136w.getRuleManager();
        if (ruleManager2 != null) {
            Iterator<Mode> it2 = ruleManager2.getAllNamedModes().iterator();
            while (it2.hasNext()) {
                SymbolicName symbolicName2 = it2.next().getSymbolicName();
                if (!hashSet.contains(symbolicName2) && (component = stylesheetPackage.getComponent(symbolicName2)) != null && component.getVisibility() != Visibility.PRIVATE) {
                    ruleManager.registerMode((Mode) component.getActor());
                }
            }
        }
    }

    /* renamed from: c0 */
    public List<XSLAccept> m64064c0() {
        if (this.f102137x == null) {
            this.f102137x = new ArrayList();
            Iterator<? extends NodeInfo> it2 = children(new w2n(XSLAccept.class)).iterator();
            while (it2.hasNext()) {
                this.f102137x.add((XSLAccept) it2.next());
            }
        }
        return this.f102137x;
    }

    /* renamed from: d0 */
    public final Set<SymbolicName> m64065d0() throws XPathException {
        HashSet hashSet = new HashSet();
        Iterator<? extends NodeInfo> it2 = children(new w2n(XSLAccept.class)).iterator();
        while (it2.hasNext()) {
            Iterator<ComponentTest> it3 = ((XSLAccept) it2.next()).getExplicitComponentTests().iterator();
            while (it3.hasNext()) {
                hashSet.add(it3.next().getSymbolicNameIfExplicit());
            }
        }
        return hashSet;
    }

    /* renamed from: e0 */
    public final Set<SymbolicName> m64066e0() {
        SymbolicName symbolicName;
        HashSet hashSet = new HashSet();
        AxisIterator iterateAxis = iterateAxis(3, NodeKindTest.ELEMENT);
        while (true) {
            NodeInfo next = iterateAxis.next();
            if (next == null) {
                return hashSet;
            }
            if (next instanceof XSLOverride) {
                AxisIterator iterateAxis2 = next.iterateAxis(3, NodeKindTest.ELEMENT);
                while (true) {
                    NodeInfo next2 = iterateAxis2.next();
                    if (next2 != null) {
                        if ((next2 instanceof StylesheetComponent) && (symbolicName = ((StylesheetComponent) next2).getSymbolicName()) != null) {
                            hashSet.add(symbolicName);
                        }
                    }
                }
            }
        }
    }

    /* renamed from: f0 */
    public final PackageVersionRanges m64067f0() throws XPathException {
        if (this.f102135v == null) {
            prepareAttributes();
        }
        return this.f102135v;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public StylesheetPackage getUsedPackage() {
        return this.f102136w;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean isDeclaration() {
        return true;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void postValidate() throws XPathException {
        for (NodeInfo nodeInfo : children()) {
            if ((nodeInfo instanceof XSLOverride) || (nodeInfo instanceof XSLAccept)) {
                ((StyleElement) nodeInfo).postValidate();
            }
        }
        Set<SymbolicName> m64065d0 = m64065d0();
        Set<SymbolicName> m64066e0 = m64066e0();
        if (m64065d0.isEmpty()) {
            return;
        }
        for (SymbolicName symbolicName : m64066e0) {
            if (m64065d0.contains(symbolicName)) {
                compileError("Cannot accept and override the same component (" + symbolicName + MotionUtils.f31762d, "XTSE3051");
            }
            if (symbolicName.getComponentKind() == 160 && m64065d0.contains(new SymbolicName.C18533F(symbolicName.getComponentName(), -1))) {
                compileError("Cannot accept and override the same function (" + symbolicName + MotionUtils.f31762d, "XTSE3051");
            }
        }
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void prepareAttributes() {
        String str = "*";
        for (AttributeInfo attributeInfo : attributes()) {
            NodeName nodeName = attributeInfo.getNodeName();
            String displayName = nodeName.getDisplayName();
            if (displayName.equals("name")) {
                this.f102134u = Whitespace.trim(attributeInfo.getValue());
            } else if (displayName.equals("package-version")) {
                str = Whitespace.trim(attributeInfo.getValue()).replaceAll("\\\\", "");
            } else {
                checkUnknownAttribute(nodeName);
            }
        }
        try {
            this.f102135v = new PackageVersionRanges(str);
        } catch (XPathException e) {
            compileError(e);
        }
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void validate(ComponentDeclaration componentDeclaration) {
        for (NodeInfo nodeInfo : children()) {
            if (nodeInfo.getNodeKind() == 3) {
                compileError("Character content is not allowed as a child of xsl:use-package");
            } else if (!(nodeInfo instanceof XSLAccept) && !(nodeInfo instanceof XSLOverride)) {
                compileError("Child element " + Err.wrap(nodeInfo.getDisplayName(), 1) + " is not allowed as a child of xsl:use-package", "XTSE0010");
            }
        }
    }
}
