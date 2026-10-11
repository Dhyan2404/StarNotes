package net.p110sf.saxon.style;

import java.util.ArrayList;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;
import net.p110sf.saxon.expr.Binding;
import net.p110sf.saxon.expr.BindingReference;
import net.p110sf.saxon.expr.ErrorExpression;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.StringLiteral;
import net.p110sf.saxon.expr.instruct.DocumentInstr;
import net.p110sf.saxon.expr.instruct.GlobalVariable;
import net.p110sf.saxon.expr.instruct.SlotManager;
import net.p110sf.saxon.expr.instruct.ValueOf;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.lib.NamespaceConstant;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.pattern.NodeKindTest;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.Visibility;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.trans.XmlProcessingException;
import net.p110sf.saxon.type.Affinity;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.type.UType;
import net.p110sf.saxon.value.Cardinality;
import net.p110sf.saxon.value.SequenceType;
import net.p110sf.saxon.value.StringValue;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public class SourceBinding {

    /* renamed from: a */
    public final StyleElement f101793a;

    /* renamed from: b */
    public StructuredQName f101794b;

    /* renamed from: f */
    public Visibility f101798f;

    /* renamed from: c */
    public Expression f101795c = null;

    /* renamed from: d */
    public SequenceType f101796d = null;

    /* renamed from: e */
    public SequenceType f101797e = null;
    protected SlotManager slotManager = null;

    /* renamed from: g */
    public GroundedValue f101799g = null;

    /* renamed from: h */
    public EnumSet<BindingProperty> f101800h = EnumSet.noneOf(BindingProperty.class);

    /* renamed from: i */
    public final List<BindingReference> f101801i = new ArrayList(10);

    /* loaded from: classes11.dex */
    public enum BindingProperty {
        PRIVATE,
        GLOBAL,
        PARAM,
        TUNNEL,
        REQUIRED,
        IMPLICITLY_REQUIRED,
        ASSIGNABLE,
        SELECT,
        AS,
        DISALLOWS_CONTENT,
        STATIC,
        VISIBILITY,
        IMPLICITLY_DECLARED
    }

    public SourceBinding(StyleElement styleElement) {
        this.f101793a = styleElement;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:5:0x001c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final net.p110sf.saxon.value.SequenceType m63945a(java.lang.String r6, java.lang.String r7) {
        /*
            r5 = this;
            java.lang.String r0 = "as"
            if (r6 == 0) goto L19
            net.sf.saxon.style.StyleElement r1 = r5.f101793a     // Catch: net.p110sf.saxon.trans.XPathException -> Lb
            net.sf.saxon.value.SequenceType r1 = r1.makeSequenceType(r6)     // Catch: net.p110sf.saxon.trans.XPathException -> Lb
            goto L1a
        Lb:
            r1 = move-exception
            net.sf.saxon.style.StyleElement r2 = r5.f101793a
            java.lang.String r3 = r1.getMessage()
            java.lang.String r1 = r1.getErrorCodeLocalPart()
            r2.compileErrorInAttribute(r3, r1, r0)
        L19:
            r1 = 0
        L1a:
            if (r7 == 0) goto L59
            net.sf.saxon.style.StyleElement r2 = r5.f101793a     // Catch: net.p110sf.saxon.trans.XPathException -> L23
            net.sf.saxon.value.SequenceType r7 = r2.m63959K(r7)     // Catch: net.p110sf.saxon.trans.XPathException -> L23
            goto L35
        L23:
            r7 = move-exception
            net.sf.saxon.style.StyleElement r2 = r5.f101793a
            java.lang.String r3 = r7.getMessage()
            java.lang.String r7 = r7.getErrorCodeLocalPart()
            java.lang.String r4 = "saxon:as"
            r2.compileErrorInAttribute(r3, r7, r4)
            net.sf.saxon.value.SequenceType r7 = net.p110sf.saxon.value.SequenceType.ANY_SEQUENCE
        L35:
            if (r6 == 0) goto L58
            net.sf.saxon.style.StyleElement r6 = r5.f101793a
            net.sf.saxon.Configuration r6 = r6.getConfiguration()
            net.sf.saxon.type.TypeHierarchy r6 = r6.getTypeHierarchy()
            net.sf.saxon.type.Affinity r6 = r6.sequenceTypeRelationship(r7, r1)
            net.sf.saxon.type.Affinity r2 = net.p110sf.saxon.type.Affinity.SAME_TYPE
            if (r6 == r2) goto L58
            net.sf.saxon.type.Affinity r2 = net.p110sf.saxon.type.Affinity.SUBSUMED_BY
            if (r6 != r2) goto L4e
            goto L58
        L4e:
            net.sf.saxon.style.StyleElement r5 = r5.f101793a
            java.lang.String r6 = "When both are present, @saxon:as must be a subtype of @as"
            java.lang.String r7 = "SXER7TBA"
            r5.compileErrorInAttribute(r6, r7, r0)
            goto L59
        L58:
            r1 = r7
        L59:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.style.SourceBinding.m63945a(java.lang.String, java.lang.String):net.sf.saxon.value.SequenceType");
    }

    /* renamed from: b */
    public final StructuredQName m63946b() {
        return new StructuredQName("saxon", NamespaceConstant.SAXON, "error-variable-name");
    }

    /* renamed from: c */
    public final void m63947c(String str) {
        if (str != null) {
            if (str.startsWith("$")) {
                this.f101793a.compileErrorInAttribute("Invalid variable name (no '$' sign needed)", "XTSE0020", "name");
                str = str.substring(1);
            }
            this.f101794b = this.f101793a.makeQName(str, null, "name");
        }
    }

    public void checkAgainstRequiredType(SequenceType sequenceType) {
        if (this.f101798f == Visibility.ABSTRACT || sequenceType == null) {
            return;
        }
        try {
            if (this.f101795c != null) {
                String str = "XTTE0570";
                StyleElement styleElement = this.f101793a;
                int i = 8;
                if (styleElement instanceof XSLLocalParam) {
                    str = "XTTE0600";
                } else {
                    if (!(styleElement instanceof XSLWithParam) && !(styleElement instanceof XSLGlobalParam)) {
                        i = 3;
                    }
                    str = "XTTE0590";
                }
                RoleDiagnostic roleDiagnostic = new RoleDiagnostic(i, this.f101794b.getDisplayName(), 0);
                roleDiagnostic.setErrorCode(str);
                this.f101795c = this.f101793a.getConfiguration().getTypeChecker(false).staticTypeCheck(this.f101795c, sequenceType, roleDiagnostic, this.f101793a.makeExpressionVisitor());
            }
        } catch (XPathException e) {
            e.setLocator(this.f101793a);
            this.f101793a.compileError(e);
            this.f101795c = new ErrorExpression(new XmlProcessingException(e));
        }
    }

    public void fixupBinding(Binding binding) {
        Iterator<BindingReference> it2 = this.f101801i.iterator();
        while (it2.hasNext()) {
            it2.next().fixup(binding);
        }
    }

    public void fixupReferences(GlobalVariable globalVariable) {
        Visibility visibility;
        Expression expression;
        SequenceType inferredType = getInferredType(true);
        int specialProperties = (hasProperty(BindingProperty.ASSIGNABLE) || hasProperty(BindingProperty.PARAM) || (visibility = this.f101798f) == Visibility.PUBLIC || visibility == Visibility.ABSTRACT || (expression = this.f101795c) == null) ? 0 : expression.getSpecialProperties();
        for (BindingReference bindingReference : this.f101801i) {
            if (globalVariable != null) {
                bindingReference.fixup(globalVariable);
            }
            bindingReference.setStaticType(inferredType, getConstantValue(), specialProperties);
        }
    }

    public GroundedValue getConstantValue() {
        Visibility visibility;
        Affinity relationship;
        if (this.f101799g == null) {
            SequenceType inferredType = getInferredType(true);
            TypeHierarchy typeHierarchy = this.f101793a.getConfiguration().getTypeHierarchy();
            if (!hasProperty(BindingProperty.ASSIGNABLE) && !hasProperty(BindingProperty.PARAM) && (visibility = this.f101798f) != Visibility.PUBLIC && visibility != Visibility.ABSTRACT) {
                Expression expression = this.f101795c;
                if ((expression instanceof Literal) && ((relationship = typeHierarchy.relationship(expression.getItemType(), inferredType.getPrimaryType())) == Affinity.SAME_TYPE || relationship == Affinity.SUBSUMED_BY)) {
                    this.f101799g = ((Literal) this.f101795c).getGroundedValue();
                }
            }
        }
        return this.f101799g;
    }

    public SequenceType getDeclaredType() {
        if (this.f101796d == null) {
            String attributeValue = this.f101793a.getAttributeValue("", "as");
            if (attributeValue == null) {
                return null;
            }
            try {
                this.f101796d = this.f101793a.makeSequenceType(attributeValue);
            } catch (XPathException unused) {
            }
        }
        return this.f101796d;
    }

    public SequenceType getInferredType(boolean z) {
        SequenceType sequenceType = this.f101797e;
        if (sequenceType != null) {
            return sequenceType;
        }
        Visibility visibility = this.f101793a.getVisibility();
        if (hasProperty(BindingProperty.PARAM) || hasProperty(BindingProperty.ASSIGNABLE) || !(visibility == Visibility.PRIVATE || visibility == Visibility.FINAL)) {
            SequenceType declaredType = getDeclaredType();
            if (declaredType == null) {
                declaredType = SequenceType.ANY_SEQUENCE;
            }
            this.f101797e = declaredType;
            return declaredType;
        }
        if (this.f101795c == null) {
            if (!z) {
                return this.f101796d;
            }
            if (this.f101793a.hasChildNodes()) {
                SequenceType sequenceType2 = this.f101796d;
                return sequenceType2 == null ? SequenceType.makeSequenceType(NodeKindTest.DOCUMENT, 16384) : sequenceType2;
            }
            SequenceType sequenceType3 = this.f101796d;
            return sequenceType3 == null ? SequenceType.SINGLE_STRING : sequenceType3;
        }
        TypeHierarchy typeHierarchy = this.f101793a.getConfiguration().getTypeHierarchy();
        if (Literal.isEmptySequence(this.f101795c)) {
            SequenceType sequenceType4 = this.f101796d;
            if (sequenceType4 == null) {
                sequenceType4 = SequenceType.ANY_SEQUENCE;
            }
            this.f101797e = sequenceType4;
            return sequenceType4;
        }
        ItemType itemType = this.f101795c.getItemType();
        int cardinality = this.f101795c.getCardinality();
        SequenceType sequenceType5 = this.f101796d;
        if (sequenceType5 != null) {
            if (!typeHierarchy.isSubType(itemType, sequenceType5.getPrimaryType())) {
                itemType = this.f101796d.getPrimaryType();
            }
            if (!Cardinality.subsumes(this.f101796d.getCardinality(), cardinality)) {
                cardinality = this.f101796d.getCardinality();
            }
        }
        SequenceType makeSequenceType = SequenceType.makeSequenceType(itemType, cardinality);
        this.f101797e = makeSequenceType;
        return makeSequenceType;
    }

    public List<BindingReference> getReferences() {
        return this.f101801i;
    }

    public Expression getSelectExpression() {
        return this.f101795c;
    }

    public SlotManager getSlotManager() {
        return this.slotManager;
    }

    public StyleElement getSourceElement() {
        return this.f101793a;
    }

    public StructuredQName getVariableQName() {
        if (this.f101794b == null) {
            m63947c(this.f101793a.getAttributeValue("", "name"));
        }
        return this.f101794b;
    }

    public void handleSequenceConstructor(Compilation compilation, ComponentDeclaration componentDeclaration) throws XPathException {
        UnicodeString unicodeString;
        if (this.f101793a.hasChildNodes()) {
            if (this.f101796d != null) {
                Expression compileSequenceConstructor = this.f101793a.compileSequenceConstructor(compilation, componentDeclaration, true);
                this.f101795c = compileSequenceConstructor;
                if (compileSequenceConstructor == null) {
                    this.f101795c = Literal.makeEmptySequence();
                }
                try {
                    RoleDiagnostic roleDiagnostic = new RoleDiagnostic(3, this.f101794b.getDisplayName(), 0);
                    roleDiagnostic.setErrorCode("XTTE0570");
                    this.f101795c = this.f101795c.simplify();
                    this.f101795c = this.f101793a.getConfiguration().getTypeChecker(false).staticTypeCheck(this.f101795c, this.f101796d, roleDiagnostic, this.f101793a.makeExpressionVisitor());
                    return;
                } catch (XPathException e) {
                    e.setLocator(this.f101793a);
                    XmlProcessingException xmlProcessingException = new XmlProcessingException(e);
                    this.f101793a.compileError(xmlProcessingException);
                    this.f101795c = new ErrorExpression(xmlProcessingException);
                    return;
                }
            }
            Expression compileSequenceConstructor2 = this.f101793a.compileSequenceConstructor(compilation, componentDeclaration, true);
            if (compileSequenceConstructor2 == null) {
                compileSequenceConstructor2 = Literal.makeEmptySequence();
            }
            boolean subsumes = UType.TEXT.subsumes(compileSequenceConstructor2.getItemType().getUType());
            if (subsumes && (compileSequenceConstructor2 instanceof ValueOf)) {
                ValueOf valueOf = (ValueOf) compileSequenceConstructor2;
                if (valueOf.getSelect() instanceof StringLiteral) {
                    unicodeString = ((StringLiteral) valueOf.getSelect()).getString();
                    DocumentInstr documentInstr = new DocumentInstr(subsumes, unicodeString);
                    documentInstr.setContentExpression(compileSequenceConstructor2);
                    documentInstr.setRetainedStaticContext(this.f101793a.makeRetainedStaticContext());
                    this.f101795c = documentInstr;
                }
            }
            unicodeString = null;
            DocumentInstr documentInstr2 = new DocumentInstr(subsumes, unicodeString);
            documentInstr2.setContentExpression(compileSequenceConstructor2);
            documentInstr2.setRetainedStaticContext(this.f101793a.makeRetainedStaticContext());
            this.f101795c = documentInstr2;
        }
    }

    public boolean hasProperty(BindingProperty bindingProperty) {
        return this.f101800h.contains(bindingProperty);
    }

    public boolean isStatic() {
        return hasProperty(BindingProperty.STATIC);
    }

    public void postValidate() throws XPathException {
        checkAgainstRequiredType(this.f101796d);
        if (this.f101795c == null && !hasProperty(BindingProperty.DISALLOWS_CONTENT) && this.f101798f != Visibility.ABSTRACT && this.f101793a.iterateAxis(3).next() == null) {
            SequenceType sequenceType = this.f101796d;
            if (sequenceType == null) {
                StringLiteral stringLiteral = new StringLiteral(StringValue.EMPTY_STRING);
                this.f101795c = stringLiteral;
                stringLiteral.setRetainedStaticContext(this.f101793a.makeRetainedStaticContext());
            } else {
                StyleElement styleElement = this.f101793a;
                if ((styleElement instanceof XSLLocalParam) || (styleElement instanceof XSLGlobalParam)) {
                    if (!hasProperty(BindingProperty.REQUIRED)) {
                        if (Cardinality.allowsZero(this.f101796d.getCardinality())) {
                            Literal makeEmptySequence = Literal.makeEmptySequence();
                            this.f101795c = makeEmptySequence;
                            makeEmptySequence.setRetainedStaticContext(this.f101793a.makeRetainedStaticContext());
                        } else {
                            setProperty(BindingProperty.IMPLICITLY_REQUIRED, true);
                        }
                    }
                } else if (Cardinality.allowsZero(sequenceType.getCardinality())) {
                    Literal makeEmptySequence2 = Literal.makeEmptySequence();
                    this.f101795c = makeEmptySequence2;
                    makeEmptySequence2.setRetainedStaticContext(this.f101793a.makeRetainedStaticContext());
                } else {
                    this.f101793a.compileError("The implicit value () is not valid for the declared type", "XTTE0570");
                }
            }
        }
        this.f101795c = this.f101793a.typeCheck("select", this.f101795c);
    }

    public void prepareAttributes(EnumSet<BindingProperty> enumSet) {
        String str;
        String str2;
        String str3;
        Iterator<AttributeInfo> it2 = this.f101793a.attributes().iterator();
        AttributeInfo attributeInfo = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        String str8 = null;
        String str9 = null;
        String str10 = null;
        while (true) {
            str = str10;
            if (!it2.hasNext()) {
                break;
            }
            AttributeInfo next = it2.next();
            NodeName nodeName = next.getNodeName();
            Iterator<AttributeInfo> it3 = it2;
            String displayName = nodeName.getDisplayName();
            if (displayName.equals("name")) {
                StructuredQName structuredQName = this.f101794b;
                if (structuredQName == null || structuredQName.equals(m63946b())) {
                    m63947c(next.getValue());
                }
            } else {
                if (!displayName.equals("select")) {
                    if (displayName.equals("as")) {
                        str3 = str8;
                        if (enumSet.contains(BindingProperty.AS)) {
                            str8 = next.getValue();
                        }
                    } else {
                        str3 = str8;
                    }
                    if (displayName.equals("required") && enumSet.contains(BindingProperty.REQUIRED)) {
                        str4 = Whitespace.trim(next.getValue());
                    } else if (displayName.equals("tunnel")) {
                        str5 = Whitespace.trim(next.getValue());
                    } else if (displayName.equals("static") && enumSet.contains(BindingProperty.STATIC)) {
                        str7 = Whitespace.trim(next.getValue());
                    } else if (displayName.equals("visibility") && enumSet.contains(BindingProperty.VISIBILITY)) {
                        str10 = Whitespace.trim(next.getValue());
                        str8 = str3;
                        it2 = it3;
                    } else if (!NamespaceConstant.SAXON.equals(nodeName.getURI())) {
                        this.f101793a.checkUnknownAttribute(next.getNodeName());
                    } else if (this.f101793a.isExtensionAttributeAllowed(nodeName.getDisplayName())) {
                        if (nodeName.getLocalPart().equals("assignable") && enumSet.contains(BindingProperty.ASSIGNABLE)) {
                            str6 = Whitespace.trim(next.getValue());
                        } else if (nodeName.getLocalPart().equals("as")) {
                            str9 = next.getValue();
                        } else {
                            this.f101793a.checkUnknownAttribute(next.getNodeName());
                        }
                    }
                    str10 = str;
                    str8 = str3;
                    it2 = it3;
                } else if (enumSet.contains(BindingProperty.SELECT)) {
                    attributeInfo = next;
                } else {
                    this.f101793a.compileErrorInAttribute("The select attribute is not permitted on a function parameter", "XTSE0760", "select");
                }
                str10 = str;
                it2 = it3;
            }
            str3 = str8;
            str10 = str;
            str8 = str3;
            it2 = it3;
        }
        String str11 = str8;
        if (this.f101794b == null) {
            this.f101793a.reportAbsence("name");
            this.f101794b = m63946b();
        }
        if (attributeInfo != null) {
            this.f101795c = this.f101793a.makeExpression(attributeInfo.getValue(), attributeInfo);
        }
        if (str4 != null) {
            boolean processBooleanAttribute = this.f101793a.processBooleanAttribute("required", str4);
            setProperty(BindingProperty.REQUIRED, processBooleanAttribute);
            if (processBooleanAttribute && this.f101795c != null) {
                this.f101793a.compileError("xsl:param: cannot supply a default value when required='yes'");
            }
        }
        if (str5 != null) {
            boolean processBooleanAttribute2 = this.f101793a.processBooleanAttribute("tunnel", str5);
            if (processBooleanAttribute2 && !enumSet.contains(BindingProperty.TUNNEL)) {
                this.f101793a.compileErrorInAttribute("The only permitted value of the 'tunnel' attribute is 'no'", "XTSE0020", "tunnel");
            }
            setProperty(BindingProperty.TUNNEL, processBooleanAttribute2);
        }
        if (str6 != null) {
            setProperty(BindingProperty.ASSIGNABLE, this.f101793a.processBooleanAttribute("saxon:assignable", str6));
        }
        if (str7 != null) {
            boolean processBooleanAttribute3 = this.f101793a.processBooleanAttribute("static", str7);
            setProperty(BindingProperty.STATIC, processBooleanAttribute3);
            if (processBooleanAttribute3) {
                setProperty(BindingProperty.DISALLOWS_CONTENT, true);
            }
            if (processBooleanAttribute3 && !hasProperty(BindingProperty.GLOBAL)) {
                this.f101793a.compileErrorInAttribute("Only global declarations can be static", "XTSE0020", "static");
            }
        }
        this.f101796d = m63945a(str11, str9);
        if (str != null) {
            if (hasProperty(BindingProperty.PARAM)) {
                this.f101793a.compileErrorInAttribute("The visibility attribute is not allowed on xsl:param", "XTSE0020", "visibility");
                str2 = str;
            } else {
                str2 = str;
                this.f101798f = this.f101793a.m63954E(str2, "");
            }
            if (!hasProperty(BindingProperty.GLOBAL)) {
                this.f101793a.compileErrorInAttribute("The visibility attribute is allowed only on global declarations", "XTSE0020", "visibility");
            }
        } else {
            str2 = str;
        }
        if (!hasProperty(BindingProperty.STATIC) || this.f101798f == Visibility.PRIVATE || str2 == null) {
            return;
        }
        this.f101793a.compileErrorInAttribute("A static variable or parameter must be private", "XTSE0020", "static");
    }

    public void prepareTemplateSignatureAttributes() {
        String str = null;
        String str2 = null;
        for (AttributeInfo attributeInfo : this.f101793a.attributes()) {
            NodeName nodeName = attributeInfo.getNodeName();
            String displayName = nodeName.getDisplayName();
            if (displayName.equals("name")) {
                StructuredQName structuredQName = this.f101794b;
                if (structuredQName == null || structuredQName.equals(m63946b())) {
                    m63947c(attributeInfo.getValue());
                }
            } else if (displayName.equals("as")) {
                str = attributeInfo.getValue();
            } else if (displayName.equals("required")) {
                setProperty(BindingProperty.REQUIRED, this.f101793a.processBooleanAttribute("required", Whitespace.trim(attributeInfo.getValue())));
            } else if (displayName.equals("tunnel")) {
                setProperty(BindingProperty.TUNNEL, this.f101793a.processBooleanAttribute("tunnel", Whitespace.trim(attributeInfo.getValue())));
            } else if (NamespaceConstant.SAXON.equals(nodeName.getURI()) && nodeName.getLocalPart().equals("as")) {
                str2 = attributeInfo.getValue();
            }
        }
        if (this.f101794b == null) {
            this.f101793a.reportAbsence("name");
            this.f101794b = m63946b();
        }
        this.f101796d = m63945a(str, str2);
    }

    public void registerReference(BindingReference bindingReference) {
        this.f101801i.add(bindingReference);
    }

    public void setDeclaredType(SequenceType sequenceType) {
        this.f101796d = sequenceType;
    }

    public void setProperty(BindingProperty bindingProperty, boolean z) {
        if (z) {
            this.f101800h.add(bindingProperty);
        } else {
            this.f101800h.remove(bindingProperty);
        }
    }

    public void setVariableQName(StructuredQName structuredQName) {
        this.f101794b = structuredQName;
    }

    public void validate() throws XPathException {
        if (this.f101795c != null && this.f101793a.hasChildNodes()) {
            this.f101793a.compileError("An " + this.f101793a.getDisplayName() + " element with a select attribute must be empty", "XTSE0620");
        }
        if (hasProperty(BindingProperty.DISALLOWS_CONTENT) && this.f101793a.hasChildNodes()) {
            if (isStatic()) {
                this.f101793a.compileError("A static variable or parameter must have no content", "XTSE0010");
            } else {
                this.f101793a.compileError("Within xsl:function, an xsl:param element must have no content", "XTSE0620");
            }
        }
        if (this.f101798f == Visibility.ABSTRACT) {
            if (this.f101795c != null || this.f101793a.hasChildNodes()) {
                this.f101793a.compileError("An abstract variable must have no select attribute and no content", "XTSE0620");
            }
        }
    }
}
