package net.p110sf.saxon.style;

import net.p110sf.saxon.expr.Component;
import net.p110sf.saxon.pattern.NameTest;
import net.p110sf.saxon.pattern.QNameTest;
import net.p110sf.saxon.trans.ComponentTest;
import net.p110sf.saxon.trans.Err;
import net.p110sf.saxon.trans.SymbolicName;
import net.p110sf.saxon.trans.Visibility;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.linked.NodeImpl;

/* loaded from: classes11.dex */
public class XSLAccept extends XSLAcceptExpose {

    /* renamed from: net.sf.saxon.style.XSLAccept$a */
    /* loaded from: classes11.dex */
    public static /* synthetic */ class C18522a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f101862a;

        static {
            int[] iArr = new int[Visibility.values().length];
            f101862a = iArr;
            try {
                iArr[Visibility.PUBLIC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f101862a[Visibility.ABSTRACT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f101862a[Visibility.FINAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f101862a[Visibility.UNDEFINED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static boolean isCompatible(Visibility visibility, Visibility visibility2) {
        int i = C18522a.f101862a[visibility.ordinal()];
        return i != 1 ? i != 2 ? i != 3 ? i == 4 : visibility2 == Visibility.PRIVATE || visibility2 == Visibility.FINAL || visibility2 == Visibility.HIDDEN : visibility2 == Visibility.ABSTRACT || visibility2 == Visibility.HIDDEN : visibility2 == Visibility.PUBLIC || visibility2 == Visibility.PRIVATE || visibility2 == Visibility.FINAL || visibility2 == Visibility.HIDDEN;
    }

    public void checkCompatibility(SymbolicName symbolicName, Visibility visibility, Visibility visibility2) {
        if (isCompatible(visibility, visibility2)) {
            return;
        }
        compileError("The " + symbolicName + " is declared as " + Err.describeVisibility(visibility) + " and cannot be accepted as " + Err.describeVisibility(visibility2), "XTSE3040");
    }

    @Override // net.p110sf.saxon.style.XSLAcceptExpose, net.p110sf.saxon.style.StyleElement
    public void prepareAttributes() {
        super.prepareAttributes();
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void validate(ComponentDeclaration componentDeclaration) throws XPathException {
        NodeImpl parent = getParent();
        if (!(parent instanceof XSLUsePackage)) {
            compileError("Parent of xsl:accept must be xsl:use-package");
            return;
        }
        StylesheetPackage usedPackage = ((XSLUsePackage) parent).getUsedPackage();
        if (usedPackage != null) {
            for (ComponentTest componentTest : getExplicitComponentTests()) {
                QNameTest qNameTest = componentTest.getQNameTest();
                if (qNameTest instanceof NameTest) {
                    int componentKind = componentTest.getComponentKind();
                    SymbolicName c18533f = componentKind == 160 ? new SymbolicName.C18533F(((NameTest) qNameTest).getMatchingNodeName(), componentTest.getArity()) : new SymbolicName(componentKind, ((NameTest) qNameTest).getMatchingNodeName());
                    Component component = usedPackage.getComponent(c18533f);
                    boolean z = true;
                    if (component == null) {
                        if (componentKind == 160 && componentTest.getArity() == -1) {
                            boolean z2 = false;
                            for (int i = 0; i <= usedPackage.getMaxFunctionArity(); i++) {
                                c18533f = new SymbolicName.C18533F(((NameTest) qNameTest).getMatchingNodeName(), i);
                                Component component2 = usedPackage.getComponent(c18533f);
                                if (component2 != null) {
                                    checkCompatibility(c18533f, component2.getVisibility(), getVisibility());
                                    z2 = true;
                                }
                            }
                            z = z2;
                        } else {
                            z = false;
                        }
                    } else {
                        checkCompatibility(c18533f, component.getVisibility(), getVisibility());
                    }
                    if (!z) {
                        compileError("No " + c18533f.toString() + " exists in the used package", "XTSE3030");
                    }
                }
            }
        }
    }
}
