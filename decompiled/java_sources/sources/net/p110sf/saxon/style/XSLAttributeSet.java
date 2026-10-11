package net.p110sf.saxon.style;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import net.p110sf.saxon.expr.Component;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.instruct.AttributeSet;
import net.p110sf.saxon.expr.instruct.Instruction;
import net.p110sf.saxon.expr.instruct.SlotManager;
import net.p110sf.saxon.expr.instruct.UseAttributeSet;
import net.p110sf.saxon.expr.parser.Optimizer;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.pattern.NodeKindTest;
import net.p110sf.saxon.trans.SymbolicName;
import net.p110sf.saxon.trans.Visibility;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.AxisIterator;

/* loaded from: classes11.dex */
public class XSLAttributeSet extends StyleElement implements StylesheetComponent {

    /* renamed from: Q */
    public Visibility f101899Q;

    /* renamed from: u */
    public String f101901u;

    /* renamed from: v */
    public String f101902v;

    /* renamed from: w */
    public String f101903w;

    /* renamed from: x */
    public SlotManager f101904x;

    /* renamed from: z */
    public StructuredQName[] f101906z;

    /* renamed from: y */
    public final List<ComponentDeclaration> f101905y = new ArrayList();

    /* renamed from: J */
    public final List<Expression> f101897J = new ArrayList();

    /* renamed from: O */
    public boolean f101898O = false;

    /* renamed from: Z */
    public boolean f101900Z = false;

    public void checkCircularity(XSLAttributeSet xSLAttributeSet) throws XPathException {
        List<ComponentDeclaration> list;
        if (this == xSLAttributeSet) {
            compileError("The definition of the attribute set is circular", "XTSE0720");
            return;
        }
        if (this.f101898O && (list = this.f101905y) != null) {
            Iterator<ComponentDeclaration> it2 = list.iterator();
            while (it2.hasNext()) {
                XSLAttributeSet xSLAttributeSet2 = (XSLAttributeSet) it2.next().getSourceElement();
                xSLAttributeSet2.checkCircularity(xSLAttributeSet);
                if (this.f101900Z && !xSLAttributeSet2.f101900Z) {
                    compileError("Attribute-set is declared streamable but references a non-streamable attribute set " + xSLAttributeSet2.getAttributeSetName().getDisplayName(), "XTSE3430");
                }
            }
        }
    }

    @Override // net.p110sf.saxon.style.StylesheetComponent
    public void checkCompatibility(Component component) throws XPathException {
        if (!((AttributeSet) component.getActor()).isDeclaredStreamable() || isDeclaredStreamable()) {
            return;
        }
        compileError("The overridden attribute set is declared streamable, so the overriding attribute set must also be declared streamable");
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void compileDeclaration(Compilation compilation, ComponentDeclaration componentDeclaration) throws XPathException {
        if (m63955F(2)) {
            return;
        }
        if (this.f101902v != null) {
            List<UseAttributeSet> makeUseAttributeSetInstructions = UseAttributeSet.makeUseAttributeSetInstructions(this.f101906z, this);
            if (!makeUseAttributeSetInstructions.isEmpty()) {
                this.f101897J.add(UseAttributeSet.makeCompositeExpression(makeUseAttributeSetInstructions));
            }
            for (StructuredQName structuredQName : this.f101906z) {
                getPrincipalStylesheetModule().getAttributeSets(structuredQName, this.f101905y);
            }
            Iterator<ComponentDeclaration> it2 = this.f101905y.iterator();
            while (it2.hasNext()) {
                ((XSLAttributeSet) it2.next().getSourceElement()).checkCircularity(this);
            }
            if (this.f101900Z) {
                Iterator<ComponentDeclaration> it3 = this.f101905y.iterator();
                while (it3.hasNext()) {
                    if (!((XSLAttributeSet) it3.next().getSourceElement()).f101900Z) {
                        compileError("Attribute set is declared streamable, but references an attribute set that is not declared streamable", "XTSE0730");
                    }
                }
            }
        }
        AxisIterator iterateAxis = iterateAxis(3, NodeKindTest.ELEMENT);
        while (true) {
            XSLAttribute xSLAttribute = (XSLAttribute) iterateAxis.next();
            if (xSLAttribute == null) {
                m63970V(2);
                return;
            }
            Instruction compile = xSLAttribute.compile(compilation, componentDeclaration);
            compile.setRetainedStaticContext(makeRetainedStaticContext());
            Expression simplify = compile.simplify();
            StyleElement.setInstructionLocation(this, simplify);
            this.f101897J.add(simplify);
        }
    }

    @Override // net.p110sf.saxon.style.StylesheetComponent
    public void generateByteCode(Optimizer optimizer) {
    }

    public StructuredQName getAttributeSetName() {
        return getObjectName();
    }

    public List<Expression> getContainedInstructions() {
        return this.f101897J;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public StructuredQName getObjectName() {
        StructuredQName objectName = super.getObjectName();
        if (objectName != null) {
            return objectName;
        }
        prepareAttributes();
        return getObjectName();
    }

    @Override // net.p110sf.saxon.style.StylesheetComponent
    public SlotManager getSlotManager() {
        return this.f101904x;
    }

    @Override // net.p110sf.saxon.style.StylesheetComponent
    public SymbolicName getSymbolicName() {
        return new SymbolicName(138, getObjectName());
    }

    public StructuredQName[] getUseAttributeSetNames() {
        return this.f101906z;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void index(ComponentDeclaration componentDeclaration, PrincipalStylesheetModule principalStylesheetModule) throws XPathException {
        principalStylesheetModule.indexAttributeSet(componentDeclaration);
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean isDeclaration() {
        return true;
    }

    public boolean isDeclaredStreamable() {
        return this.f101900Z;
    }

    @Override // net.p110sf.saxon.style.StylesheetComponent
    public void optimize(ComponentDeclaration componentDeclaration) throws XPathException {
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0062 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0069 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x006c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0073 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x005e A[SYNTHETIC] */
    @Override // net.p110sf.saxon.style.StyleElement
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void prepareAttributes() {
        /*
            r9 = this;
            r0 = 0
            r9.f101902v = r0
            net.sf.saxon.om.AttributeMap r1 = r9.attributes()
            java.util.Iterator r1 = r1.iterator()
            r2 = r0
        Lc:
            boolean r3 = r1.hasNext()
            java.lang.String r4 = "name"
            if (r3 == 0) goto L75
            java.lang.Object r3 = r1.next()
            net.sf.saxon.om.AttributeInfo r3 = (net.p110sf.saxon.om.AttributeInfo) r3
            net.sf.saxon.om.NodeName r5 = r3.getNodeName()
            java.lang.String r6 = r5.getDisplayName()
            java.lang.String r3 = r3.getValue()
            r6.hashCode()
            int r7 = r6.hashCode()
            r8 = -1
            switch(r7) {
                case -1194384166: goto L51;
                case 3373707: goto L48;
                case 1701827048: goto L3d;
                case 1941332754: goto L32;
                default: goto L31;
            }
        L31:
            goto L5b
        L32:
            java.lang.String r4 = "visibility"
            boolean r4 = r6.equals(r4)
            if (r4 != 0) goto L3b
            goto L5b
        L3b:
            r8 = 3
            goto L5b
        L3d:
            java.lang.String r4 = "use-attribute-sets"
            boolean r4 = r6.equals(r4)
            if (r4 != 0) goto L46
            goto L5b
        L46:
            r8 = 2
            goto L5b
        L48:
            boolean r4 = r6.equals(r4)
            if (r4 != 0) goto L4f
            goto L5b
        L4f:
            r8 = 1
            goto L5b
        L51:
            java.lang.String r4 = "streamable"
            boolean r4 = r6.equals(r4)
            if (r4 != 0) goto L5a
            goto L5b
        L5a:
            r8 = 0
        L5b:
            switch(r8) {
                case 0: goto L73;
                case 1: goto L6c;
                case 2: goto L69;
                case 3: goto L62;
                default: goto L5e;
            }
        L5e:
            r9.checkUnknownAttribute(r5)
            goto Lc
        L62:
            java.lang.String r3 = net.p110sf.saxon.value.Whitespace.trim(r3)
            r9.f101903w = r3
            goto Lc
        L69:
            r9.f101902v = r3
            goto Lc
        L6c:
            java.lang.String r3 = net.p110sf.saxon.value.Whitespace.trim(r3)
            r9.f101901u = r3
            goto Lc
        L73:
            r2 = r3
            goto Lc
        L75:
            java.lang.String r1 = r9.f101901u
            java.lang.String r3 = ""
            if (r1 != 0) goto L89
            r9.reportAbsence(r4)
            net.sf.saxon.om.StructuredQName r0 = new net.sf.saxon.om.StructuredQName
            java.lang.String r1 = "attribute-set-error-name"
            r0.<init>(r3, r3, r1)
            r9.setObjectName(r0)
            return
        L89:
            java.lang.String r1 = r9.f101903w
            if (r1 != 0) goto L92
            net.sf.saxon.trans.Visibility r1 = net.p110sf.saxon.trans.Visibility.PRIVATE
            r9.f101899Q = r1
            goto L98
        L92:
            net.sf.saxon.trans.Visibility r1 = r9.m63954E(r1, r3)
            r9.f101899Q = r1
        L98:
            if (r2 == 0) goto La0
            boolean r1 = r9.m63969U(r2)
            r9.f101900Z = r1
        La0:
            java.lang.String r1 = r9.f101901u
            net.sf.saxon.om.StructuredQName r0 = r9.makeQName(r1, r0, r4)
            r9.setObjectName(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.style.XSLAttributeSet.prepareAttributes():void");
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void validate(ComponentDeclaration componentDeclaration) throws XPathException {
        if (this.f101898O) {
            return;
        }
        checkTopLevel("XTSE0010", true);
        this.f101904x = getConfiguration().makeSlotManager();
        Iterator<? extends NodeInfo> it2 = children().iterator();
        while (it2.hasNext()) {
            if (!(it2.next() instanceof XSLAttribute)) {
                compileError("Only xsl:attribute is allowed within xsl:attribute-set", "XTSE0010");
            } else if (this.f101899Q == Visibility.ABSTRACT) {
                compileError("An abstract attribute-set must contain no xsl:attribute instructions");
            }
        }
        if (this.f101902v != null) {
            if (this.f101899Q == Visibility.ABSTRACT) {
                compileError("An abstract attribute-set must have no @use-attribute-sets attribute");
            }
            this.f101906z = m63953D(this.f101902v);
        }
        this.f101898O = true;
    }

    @Override // net.p110sf.saxon.style.StylesheetComponent
    public AttributeSet getActor() {
        return (AttributeSet) getPrincipalStylesheetModule().getStylesheetPackage().getComponent(new SymbolicName(138, getObjectName())).getActor();
    }
}
