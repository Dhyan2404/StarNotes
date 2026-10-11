package net.p110sf.saxon.style;

import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.Arrays;
import java.util.Iterator;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.instruct.Block;
import net.p110sf.saxon.expr.instruct.FixedAttribute;
import net.p110sf.saxon.expr.instruct.FixedElement;
import net.p110sf.saxon.expr.instruct.UseAttributeSet;
import net.p110sf.saxon.expr.parser.Loc;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.AttributeMap;
import net.p110sf.saxon.om.CodedName;
import net.p110sf.saxon.om.EmptyAttributeMap;
import net.p110sf.saxon.om.FingerprintedQName;
import net.p110sf.saxon.om.NamespaceBinding;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NoNamespaceName;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.p111z.IntHashSet;
import net.p110sf.saxon.trans.Err;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.linked.DocumentImpl;
import net.p110sf.saxon.tree.linked.LinkedTreeBuilder;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.Untyped;

/* loaded from: classes11.dex */
public class LiteralResultElement extends StyleElement {

    /* renamed from: k0 */
    public static final IntHashSet f101756k0 = IntHashSet.m64712of(236, 228, 229, 230, 233, 231, 232, 239, 240, 235, 237, 238);

    /* renamed from: J */
    public StructuredQName[] f101757J;

    /* renamed from: u */
    public NodeName f101761u;

    /* renamed from: v */
    public NodeName[] f101762v;

    /* renamed from: w */
    public Expression[] f101763w;

    /* renamed from: x */
    public int f101764x;

    /* renamed from: y */
    public boolean f101765y;

    /* renamed from: z */
    public NamespaceMap f101766z = NamespaceMap.emptyMap();

    /* renamed from: O */
    public SchemaType f101758O = null;

    /* renamed from: Q */
    public int f101759Q = 4;

    /* renamed from: Z */
    public boolean f101760Z = true;

    @Override // net.p110sf.saxon.style.StyleElement
    public Expression compile(Compilation compilation, ComponentDeclaration componentDeclaration) throws XPathException {
        if (this.f101765y) {
            return null;
        }
        FixedElement fixedElement = new FixedElement(this.f101761u, this.f101766z, this.f101760Z, true, this.f101758O, this.f101759Q);
        fixedElement.setLocation(allocateLocation());
        Expression compileSequenceConstructor = compileSequenceConstructor(compilation, componentDeclaration, true);
        if (this.f101764x > 0) {
            for (int length = this.f101762v.length - 1; length >= 0; length--) {
                FixedAttribute fixedAttribute = new FixedAttribute(this.f101762v[length], 4, null);
                fixedAttribute.setRetainedStaticContext(makeRetainedStaticContext());
                fixedAttribute.setSelect(this.f101763w[length]);
                fixedAttribute.setLocation(allocateLocation());
                if (compileSequenceConstructor == null) {
                    compileSequenceConstructor = fixedAttribute;
                } else {
                    compileSequenceConstructor = Block.makeBlock(fixedAttribute, compileSequenceConstructor);
                    compileSequenceConstructor.setLocation(allocateLocation());
                }
            }
        }
        StructuredQName[] structuredQNameArr = this.f101757J;
        if (structuredQNameArr != null) {
            Expression makeUseAttributeSets = UseAttributeSet.makeUseAttributeSets(structuredQNameArr, this);
            if (compileSequenceConstructor == null) {
                compileSequenceConstructor = makeUseAttributeSets;
            } else {
                compileSequenceConstructor = Block.makeBlock(makeUseAttributeSets, compileSequenceConstructor);
                compileSequenceConstructor.setLocation(allocateLocation());
            }
        }
        if (compileSequenceConstructor == null) {
            compileSequenceConstructor = Literal.makeEmptySequence();
        }
        fixedElement.setContentExpression(compileSequenceConstructor);
        fixedElement.setRetainedStaticContext(makeRetainedStaticContext());
        fixedElement.setLocation(allocateLocation());
        return fixedElement;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public StructuredQName getObjectName() {
        return new StructuredQName(getPrefix(), getURI(), getLocalPart());
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean isInstruction() {
        return true;
    }

    public DocumentImpl makeStylesheet(boolean z) throws XPathException {
        StyleNodeFactory styleNodeFactory = getCompilation().getStyleNodeFactory(z);
        if (!isInScopeNamespace("http://www.w3.org/1999/XSL/Transform")) {
            XPathException xPathException = new XPathException((getLocalPart().equals(Constants.ELEMNAME_STYLESHEET_STRING) || getLocalPart().equals(Constants.ELEMNAME_TRANSFORM_STRING)) ? "Namespace for stylesheet element should be http://www.w3.org/1999/XSL/Transform" : "The supplied file does not appear to be a stylesheet");
            xPathException.setLocation(allocateLocation());
            xPathException.setErrorCode("XTSE0150");
            xPathException.setIsStaticError(true);
            compileError(xPathException);
            throw xPathException;
        }
        String attributeValue = getAttributeValue("http://www.w3.org/1999/XSL/Transform", "version");
        if (attributeValue == null) {
            XPathException xPathException2 = new XPathException("Simplified stylesheet: xsl:version attribute is missing");
            xPathException2.setErrorCode("XTSE0150");
            xPathException2.setIsStaticError(true);
            xPathException2.setLocation(allocateLocation());
            compileError(xPathException2);
            throw xPathException2;
        }
        try {
            DocumentImpl documentImpl = (DocumentImpl) getRoot();
            LinkedTreeBuilder linkedTreeBuilder = new LinkedTreeBuilder(getConfiguration().makePipelineConfiguration());
            linkedTreeBuilder.setNodeFactory(styleNodeFactory);
            linkedTreeBuilder.setSystemId(getSystemId());
            linkedTreeBuilder.open();
            linkedTreeBuilder.startDocument(0);
            Loc loc = Loc.NONE;
            NamespaceMap put = getAllNamespaces().put("xsl", "http://www.w3.org/1999/XSL/Transform");
            EmptyAttributeMap emptyAttributeMap = EmptyAttributeMap.getInstance();
            NoNamespaceName noNamespaceName = new NoNamespaceName("version");
            BuiltInAtomicType builtInAtomicType = BuiltInAtomicType.UNTYPED_ATOMIC;
            linkedTreeBuilder.startElement(new CodedName(208, "xsl", getNamePool()), Untyped.getInstance(), emptyAttributeMap.put(new AttributeInfo(noNamespaceName, builtInAtomicType, attributeValue, loc, 0)), put, loc, 0);
            linkedTreeBuilder.startElement(new CodedName(210, "xsl", getNamePool()), Untyped.getInstance(), EmptyAttributeMap.getInstance().put(new AttributeInfo(new NoNamespaceName(Constants.ATTRNAME_MATCH), builtInAtomicType, "/", loc, 0)), put, loc, 0);
            linkedTreeBuilder.graftElement(this);
            linkedTreeBuilder.endElement();
            linkedTreeBuilder.endElement();
            linkedTreeBuilder.endDocument();
            linkedTreeBuilder.close();
            DocumentImpl documentImpl2 = (DocumentImpl) linkedTreeBuilder.getCurrentRoot();
            documentImpl2.graftLocationMap(documentImpl);
            return documentImpl2;
        } catch (XPathException e) {
            e.setLocation(allocateLocation());
            throw e;
        }
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean mayContainSequenceConstructor() {
        return true;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void prepareAttributes() {
        AttributeMap attributes = attributes();
        int size = attributes.size();
        if (size == 0) {
            this.f101764x = 0;
        } else {
            this.f101762v = new NodeName[size];
            this.f101763w = new Expression[size];
            this.f101764x = 0;
            for (AttributeInfo attributeInfo : attributes) {
                NodeName nodeName = attributeInfo.getNodeName();
                int fingerprint = nodeName.getFingerprint();
                if (!nodeName.getURI().equals("http://www.w3.org/1999/XSL/Transform")) {
                    this.f101762v[this.f101764x] = nodeName;
                    Expression makeAttributeValueTemplate = makeAttributeValueTemplate(attributeInfo.getValue(), attributeInfo);
                    Expression[] expressionArr = this.f101763w;
                    int i = this.f101764x;
                    expressionArr[i] = makeAttributeValueTemplate;
                    this.f101764x = i + 1;
                } else if (!f101756k0.contains(fingerprint)) {
                    if (fingerprint == 234) {
                        this.f101760Z = processBooleanAttribute("xsl:inherit-namespaces", attributeInfo.getValue());
                    } else if (!m63985x()) {
                        compileError("Unknown XSLT attribute " + Err.wrap(nodeName.getDisplayName(), 2), "XTSE0805");
                    }
                }
            }
            int i2 = this.f101764x;
            NodeName[] nodeNameArr = this.f101762v;
            if (i2 < nodeNameArr.length) {
                this.f101762v = (NodeName[]) Arrays.copyOf(nodeNameArr, i2);
                this.f101763w = (Expression[]) Arrays.copyOf(this.f101763w, this.f101764x);
            }
        }
        this.f101761u = getNodeName();
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void validate(ComponentDeclaration componentDeclaration) throws XPathException {
        int i;
        NamespaceBinding namespaceAlias;
        this.f101765y = getParent() instanceof XSLStylesheet;
        this.f101761u = getNodeName();
        String uri = getURI();
        if (this.f101765y) {
            if (uri.isEmpty()) {
                compileError("Top level elements must have a non-null namespace URI", "XTSE0130");
                return;
            }
            return;
        }
        this.f101766z = getAllNamespaces();
        PrincipalStylesheetModule principalStylesheetModule = getPrincipalStylesheetModule();
        if (principalStylesheetModule.hasNamespaceAliases()) {
            NamespaceMap namespaceMap = this.f101766z;
            Iterator<NamespaceBinding> it2 = namespaceMap.iterator();
            while (it2.hasNext()) {
                NamespaceBinding next = it2.next();
                String uri2 = next.getURI();
                NamespaceBinding namespaceAlias2 = principalStylesheetModule.getNamespaceAlias(uri2);
                if (namespaceAlias2 != null && !namespaceAlias2.getURI().equals(uri2)) {
                    namespaceMap = namespaceMap.remove(next.getPrefix());
                    if (!namespaceAlias2.getURI().isEmpty()) {
                        namespaceMap = namespaceMap.put(namespaceAlias2.getPrefix(), namespaceAlias2.getURI());
                    }
                }
            }
            this.f101766z = namespaceMap;
            NamespaceBinding namespaceAlias3 = principalStylesheetModule.getNamespaceAlias(uri);
            if (namespaceAlias3 != null && !namespaceAlias3.getURI().equals(uri)) {
                this.f101761u = new FingerprintedQName(namespaceAlias3.getPrefix(), namespaceAlias3.getURI(), getLocalPart());
            }
        }
        String attributeValue = getAttributeValue("http://www.w3.org/1999/XSL/Transform", Constants.ATTRNAME_USEATTRIBUTESETS);
        if (attributeValue != null) {
            this.f101757J = m63953D(attributeValue);
        }
        this.f101759Q = m63987z();
        String attributeValue2 = getAttributeValue("http://www.w3.org/1999/XSL/Transform", "type");
        if (attributeValue2 != null) {
            if (!isSchemaAware()) {
                compileError("The xsl:type attribute is available only with a schema-aware XSLT processor", "XTSE1660");
            }
            this.f101758O = getSchemaType(attributeValue2);
            this.f101759Q = 8;
        }
        String attributeValue3 = getAttributeValue("http://www.w3.org/1999/XSL/Transform", "validation");
        if (attributeValue3 != null) {
            this.f101759Q = validateValidationAttribute(attributeValue3);
            if (this.f101758O != null) {
                compileError("The attributes xsl:type and xsl:validation are mutually exclusive", "XTSE1505");
            }
        }
        if (this.f101764x > 0) {
            int i2 = 0;
            boolean z = false;
            while (true) {
                i = this.f101764x;
                if (i2 >= i) {
                    break;
                }
                NodeName nodeName = this.f101762v[i2];
                String uri3 = nodeName.getURI();
                if (!uri3.isEmpty() && (namespaceAlias = principalStylesheetModule.getNamespaceAlias(uri3)) != null && !namespaceAlias.getURI().equals(uri3)) {
                    nodeName = new FingerprintedQName(namespaceAlias.getPrefix(), namespaceAlias.getURI(), nodeName.getLocalPart());
                    z = true;
                }
                this.f101762v[i2] = nodeName;
                this.f101763w[i2] = typeCheck(nodeName.getDisplayName(), this.f101763w[i2]);
                i2++;
            }
            if (z && i > 1) {
                IntHashSet intHashSet = new IntHashSet(i);
                for (int i3 = 0; i3 < this.f101764x; i3++) {
                    if (!intHashSet.add(this.f101762v[i3].obtainFingerprint(getNamePool()))) {
                        compileError("As a result of namespace aliasing, two attributes have the same expanded name", "XTSE0813");
                    }
                }
            }
        }
        NamespaceMap namespaceMap2 = this.f101766z;
        Iterator<NamespaceBinding> it3 = namespaceMap2.iterator();
        while (it3.hasNext()) {
            NamespaceBinding next2 = it3.next();
            String uri4 = next2.getURI();
            if (m63957H(uri4) && !principalStylesheetModule.isAliasResultNamespace(uri4)) {
                namespaceMap2 = namespaceMap2.remove(next2.getPrefix());
            }
        }
        this.f101766z = namespaceMap2;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void validateChildren(ComponentDeclaration componentDeclaration, boolean z) throws XPathException {
        if (this.f101765y) {
            return;
        }
        super.validateChildren(componentDeclaration, z);
    }
}
