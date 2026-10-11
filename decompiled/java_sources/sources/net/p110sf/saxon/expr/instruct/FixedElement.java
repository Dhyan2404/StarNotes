package net.p110sf.saxon.expr.instruct;

import java.util.Iterator;
import java.util.function.BiConsumer;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Operand;
import net.p110sf.saxon.expr.StaticContext;
import net.p110sf.saxon.expr.StringLiteral;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.om.NameChecker;
import net.p110sf.saxon.om.NamespaceBinding;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.om.QNameException;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.pattern.CombinedNodeTest;
import net.p110sf.saxon.pattern.ContentTypeTest;
import net.p110sf.saxon.pattern.NameTest;
import net.p110sf.saxon.pattern.NodeKindTest;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.Affinity;
import net.p110sf.saxon.type.AnyType;
import net.p110sf.saxon.type.ComplexType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.MissingComponentException;
import net.p110sf.saxon.type.SchemaDeclaration;
import net.p110sf.saxon.type.SchemaException;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.SimpleType;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.type.Untyped;
import net.p110sf.saxon.type.ValidationFailure;
import org.apache.xmlbeans.XmlErrorCodes;

/* loaded from: classes11.dex */
public class FixedElement extends ElementCreator {
    protected NamespaceMap namespaceBindings;

    /* renamed from: r */
    public final NodeName f99714r;

    /* renamed from: s */
    public ItemType f99715s;

    public FixedElement(NodeName nodeName, NamespaceMap namespaceMap, boolean z, boolean z2, SchemaType schemaType, int i) {
        this.f99714r = nodeName;
        this.namespaceBindings = namespaceMap;
        this.f99686p = z;
        this.f99687q = z2;
        setValidationAction(i, schemaType);
        this.preservingTypes = schemaType == null && i == 3;
    }

    @Override // net.p110sf.saxon.expr.instruct.ElementCreator, net.p110sf.saxon.expr.instruct.ParentNodeConstructor
    public void checkContentSequence(StaticContext staticContext) throws XPathException {
        super.checkContentSequence(staticContext);
        this.f99715s = m62757g(this, staticContext, getValidationAction(), getSchemaType(), this.f99714r, getContentExpression());
    }

    @Override // net.p110sf.saxon.expr.Expression
    public void checkPermittedContents(SchemaType schemaType, boolean z) throws XPathException {
        if (schemaType instanceof SimpleType) {
            XPathException xPathException = new XPathException("Element " + this.f99714r.getDisplayName() + " is not permitted here: the containing element is of simple type " + schemaType.getDescription());
            xPathException.setIsTypeError(true);
            xPathException.setLocation(getLocation());
            throw xPathException;
        }
        if (((ComplexType) schemaType).isSimpleContent()) {
            XPathException xPathException2 = new XPathException("Element " + this.f99714r.getDisplayName() + " is not permitted here: the containing element has a complex type with simple content");
            xPathException2.setIsTypeError(true);
            xPathException2.setLocation(getLocation());
            throw xPathException2;
        }
        if (z) {
            Expression parentExpression = getParentExpression();
            schemaType.analyzeContentExpression(new Block(new Expression[]{this}), 1);
            setParentExpression(parentExpression);
        }
        try {
            SchemaType elementParticleType = ((ComplexType) schemaType).getElementParticleType(this.f99714r.obtainFingerprint(getConfiguration().getNamePool()), true);
            if (elementParticleType != null) {
                if (elementParticleType instanceof AnyType) {
                    return;
                }
                try {
                    getContentExpression().checkPermittedContents(elementParticleType, true);
                    return;
                } catch (XPathException e) {
                    e.maybeSetLocation(getLocation());
                    throw e;
                }
            }
            XPathException xPathException3 = new XPathException("Element " + this.f99714r.getDisplayName() + " is not permitted in the content model of the complex type " + schemaType.getDescription());
            xPathException3.setIsTypeError(true);
            xPathException3.setLocation(getLocation());
            xPathException3.setErrorCode(isXSLT() ? "XTTE1510" : "XQDY0027");
            throw xPathException3;
        } catch (MissingComponentException e2) {
            throw new XPathException(e2);
        }
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        FixedElement fixedElement = new FixedElement(this.f99714r, this.namespaceBindings, this.f99686p, this.f99687q, getSchemaType(), getValidationAction());
        fixedElement.setContentExpression(getContentExpression().copy(rebindingMap));
        ExpressionTool.copyLocationInfo(this, fixedElement);
        return fixedElement;
    }

    @Override // net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("elem", this);
        expressionPresenter.emitAttribute("name", this.f99714r.getDisplayName());
        expressionPresenter.emitAttribute("nsuri", this.f99714r.getURI());
        String m62750e = m62750e();
        if (!this.f99714r.getURI().isEmpty() && this.f99714r.getPrefix().isEmpty()) {
            m62750e = m62750e + "d";
        }
        if (isLocal()) {
            m62750e = m62750e + "l";
        }
        if (!m62750e.isEmpty()) {
            expressionPresenter.emitAttribute("flags", m62750e);
        }
        StringBuilder sb = new StringBuilder(256);
        if (!this.namespaceBindings.isEmpty()) {
            Iterator<NamespaceBinding> it2 = this.namespaceBindings.iterator();
            while (it2.hasNext()) {
                NamespaceBinding next = it2.next();
                String prefix = next.getPrefix();
                if (!prefix.equals("xml")) {
                    sb.append(prefix.isEmpty() ? "#" : prefix);
                    if (!next.getURI().equals(getRetainedStaticContext().getURIForPrefix(prefix, true))) {
                        sb.append('=');
                        sb.append(next.getURI());
                    }
                    sb.append(' ');
                }
            }
            sb.setLength(sb.length() - 1);
            expressionPresenter.emitAttribute("namespaces", sb.toString());
        }
        m62749d(expressionPresenter);
        getContentExpression().export(expressionPresenter);
        expressionPresenter.endElement();
    }

    /* renamed from: g */
    public final ItemType m62757g(FixedElement fixedElement, StaticContext staticContext, int i, SchemaType schemaType, NodeName nodeName, Expression expression) throws XPathException {
        Configuration configuration = staticContext.getConfiguration();
        int obtainFingerprint = nodeName.obtainFingerprint(configuration.getNamePool());
        if (schemaType != null) {
            CombinedNodeTest combinedNodeTest = new CombinedNodeTest(new NameTest(1, obtainFingerprint, configuration.getNamePool()), 23, new ContentTypeTest(1, schemaType, configuration, false));
            try {
                schemaType.analyzeContentExpression(expression, 1);
                return combinedNodeTest;
            } catch (XPathException e) {
                e.setErrorCode(fixedElement.isXSLT() ? "XTTE1540" : "XQDY0027");
                e.setLocation(fixedElement.getLocation());
                throw e;
            }
        }
        if (i != 1) {
            if (i != 2) {
                return i == 3 ? new CombinedNodeTest(new NameTest(1, obtainFingerprint, configuration.getNamePool()), 23, new ContentTypeTest(1, AnyType.getInstance(), configuration, false)) : new CombinedNodeTest(new NameTest(1, obtainFingerprint, configuration.getNamePool()), 23, new ContentTypeTest(1, Untyped.getInstance(), configuration, false));
            }
            SchemaDeclaration elementDeclaration = configuration.getElementDeclaration(obtainFingerprint);
            if (elementDeclaration == null) {
                staticContext.issueWarning("There is no global element declaration for " + nodeName.getDisplayName(), fixedElement.getLocation());
                return new NameTest(1, obtainFingerprint, configuration.getNamePool());
            }
            SchemaType type = elementDeclaration.getType();
            fixedElement.getValidationOptions().setTopLevelType(type);
            CombinedNodeTest combinedNodeTest2 = new CombinedNodeTest(new NameTest(1, obtainFingerprint, configuration.getNamePool()), 23, new ContentTypeTest(1, fixedElement.getSchemaType(), configuration, false));
            try {
                type.analyzeContentExpression(expression, 1);
                return combinedNodeTest2;
            } catch (XPathException e2) {
                e2.setErrorCode(fixedElement.isXSLT() ? "XTTE1515" : "XQDY0027");
                e2.setLocation(fixedElement.getLocation());
                throw e2;
            }
        }
        SchemaDeclaration elementDeclaration2 = configuration.getElementDeclaration(obtainFingerprint);
        if (elementDeclaration2 == null) {
            XPathException xPathException = new XPathException("There is no global element declaration for " + nodeName.getStructuredQName().getEQName() + ", so strict validation will fail");
            xPathException.setErrorCode(fixedElement.isXSLT() ? "XTTE1512" : "XQDY0084");
            xPathException.setIsTypeError(true);
            xPathException.setLocation(fixedElement.getLocation());
            throw xPathException;
        }
        if (elementDeclaration2.isAbstract()) {
            XPathException xPathException2 = new XPathException("The element declaration for " + nodeName.getStructuredQName().getEQName() + " is abstract, so strict validation will fail");
            xPathException2.setErrorCode(fixedElement.isXSLT() ? "XTTE1512" : "XQDY0027");
            xPathException2.setIsTypeError(true);
            xPathException2.setLocation(fixedElement.getLocation());
            throw xPathException2;
        }
        SchemaType type2 = elementDeclaration2.getType();
        SchemaType m62758h = fixedElement.m62758h(staticContext);
        SchemaType schemaType2 = m62758h != null ? m62758h : type2;
        CombinedNodeTest combinedNodeTest3 = new CombinedNodeTest(new NameTest(1, obtainFingerprint, staticContext.getConfiguration().getNamePool()), 23, new ContentTypeTest(1, schemaType2, configuration, false));
        if (m62758h == null && elementDeclaration2.hasTypeAlternatives()) {
            return combinedNodeTest3;
        }
        fixedElement.getValidationOptions().setTopLevelType(schemaType2);
        try {
            schemaType2.analyzeContentExpression(expression, 1);
            if (m62758h == null) {
                return combinedNodeTest3;
            }
            try {
                configuration.checkTypeDerivationIsOK(m62758h, type2, 0);
                return combinedNodeTest3;
            } catch (SchemaException unused) {
                ValidationFailure validationFailure = new ValidationFailure("The specified xsi:type " + m62758h.getDescription() + " is not validly derived from the required type " + type2.getDescription());
                validationFailure.setConstraintReference(1, XmlErrorCodes.ELEM_LOCALLY_VALID, "4.3");
                validationFailure.setErrorCode(fixedElement.isXSLT() ? "XTTE1515" : "XQDY0027");
                validationFailure.setLocator(fixedElement.getLocation());
                throw validationFailure.makeException();
            }
        } catch (XPathException e3) {
            e3.setErrorCode(fixedElement.isXSLT() ? "XTTE1510" : "XQDY0027");
            e3.setLocation(fixedElement.getLocation());
            throw e3;
        }
    }

    @Override // net.p110sf.saxon.trace.Traceable
    public void gatherProperties(BiConsumer<String, Object> biConsumer) {
        biConsumer.accept("name", getFixedElementName());
    }

    public NamespaceMap getActiveNamespaces() {
        return this.namespaceBindings;
    }

    @Override // net.p110sf.saxon.expr.instruct.ElementCreator
    public NodeName getElementName(XPathContext xPathContext, NodeInfo nodeInfo) {
        return this.f99714r;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return "element";
    }

    public NodeName getFixedElementName() {
        return this.f99714r;
    }

    @Override // net.p110sf.saxon.expr.instruct.ElementCreator, net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        ItemType itemType = this.f99715s;
        return itemType == null ? super.getItemType() : itemType;
    }

    @Override // net.p110sf.saxon.expr.instruct.ElementCreator
    public String getNewBaseURI(XPathContext xPathContext, NodeInfo nodeInfo) {
        return getStaticBaseURIString();
    }

    /* renamed from: h */
    public final SchemaType m62758h(StaticContext staticContext) throws XPathException {
        SchemaType m62760j;
        if (getContentExpression() instanceof FixedAttribute) {
            return m62760j((FixedAttribute) getContentExpression(), staticContext);
        }
        if (getContentExpression() instanceof Block) {
            Iterator<Operand> it2 = getContentExpression().operands().iterator();
            while (it2.hasNext()) {
                Expression childExpression = it2.next().getChildExpression();
                if ((childExpression instanceof FixedAttribute) && (m62760j = m62760j((FixedAttribute) childExpression, staticContext)) != null) {
                    return m62760j;
                }
            }
        }
        return null;
    }

    /* renamed from: i */
    public final void m62759i(ExpressionVisitor expressionVisitor, NamespaceMap namespaceMap) {
        if (this.namespaceBindings.isEmpty()) {
            return;
        }
        TypeHierarchy typeHierarchy = expressionVisitor.getConfiguration().getTypeHierarchy();
        boolean z = true;
        boolean z2 = typeHierarchy.relationship(getContentExpression().getItemType(), NodeKindTest.ATTRIBUTE) == Affinity.DISJOINT;
        if (z2 || !(getContentExpression() instanceof Block)) {
            z = z2;
        } else {
            Iterator<Operand> it2 = getContentExpression().operands().iterator();
            while (it2.hasNext()) {
                Expression childExpression = it2.next().getChildExpression();
                if (childExpression instanceof FixedAttribute) {
                    if (!((FixedAttribute) childExpression).getAttributeName().hasURI("")) {
                        z = false;
                        break;
                    }
                } else if (typeHierarchy.relationship(childExpression.getItemType(), NodeKindTest.ATTRIBUTE) != Affinity.DISJOINT) {
                    z = false;
                    break;
                }
            }
        }
        if (z) {
            NamespaceMap namespaceMap2 = this.namespaceBindings;
            Iterator<NamespaceBinding> it3 = namespaceMap2.iterator();
            while (it3.hasNext()) {
                NamespaceBinding next = it3.next();
                if (next.getURI().equals(namespaceMap.getURI(next.getPrefix()))) {
                    namespaceMap2 = namespaceMap2.remove(next.getPrefix());
                }
            }
            this.namespaceBindings = namespaceMap2;
        }
    }

    /* renamed from: j */
    public final SchemaType m62760j(FixedAttribute fixedAttribute, StaticContext staticContext) throws XPathException {
        if (fixedAttribute.getAttributeFingerprint() == 641) {
            Expression select = fixedAttribute.getSelect();
            if (select instanceof StringLiteral) {
                try {
                    String[] qNameParts = NameChecker.getQNameParts(((StringLiteral) select).stringify());
                    String uri = this.namespaceBindings.getURI(qNameParts[0]);
                    if (uri == null) {
                        return null;
                    }
                    return staticContext.getConfiguration().getSchemaType(new StructuredQName("", uri, qNameParts[1]));
                } catch (QNameException e) {
                    throw new XPathException(e.getMessage());
                }
            }
        }
        return null;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public Iterable<Operand> operands() {
        return this.contentOp;
    }

    @Override // net.p110sf.saxon.expr.instruct.ParentNodeConstructor, net.p110sf.saxon.expr.Expression
    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        Expression optimize = super.optimize(expressionVisitor, contextItemStaticInfo);
        return optimize != this ? optimize : this;
    }

    @Override // net.p110sf.saxon.expr.instruct.ElementCreator
    public void outputNamespaceNodes(Outputter outputter, NodeName nodeName, NodeInfo nodeInfo) throws XPathException {
        Iterator<NamespaceBinding> it2 = this.namespaceBindings.iterator();
        while (it2.hasNext()) {
            NamespaceBinding next = it2.next();
            outputter.namespace(next.getPrefix(), next.getURI(), 0);
        }
    }

    @Override // net.p110sf.saxon.expr.Expression
    public void setLocation(Location location) {
        super.setLocation(location);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression simplify() throws XPathException {
        this.preservingTypes |= !getPackageData().isSchemaAware();
        return super.simplify();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String toShortString() {
        return "<" + this.f99714r.getStructuredQName().getDisplayName() + " {" + getContentExpression().toShortString() + "}/>";
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String toString() {
        return "<" + this.f99714r.getStructuredQName().getDisplayName() + " {" + getContentExpression().toString() + "}/>";
    }
}
