package net.p110sf.saxon.expr.instruct;

import com.google.android.gms.common.GoogleApiAvailabilityLight;
import java.util.Iterator;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.Controller;
import net.p110sf.saxon.event.ComplexContentOutputter;
import net.p110sf.saxon.event.NoOpenStartTagException;
import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.event.SequenceCollector;
import net.p110sf.saxon.expr.ContextItemExpression;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.InstanceOfExpression;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.Operand;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.lib.ParseOptions;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NameOfNode;
import net.p110sf.saxon.om.NamespaceBinding;
import net.p110sf.saxon.om.NoElementsSpaceStrippingRule;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.pattern.AnyNodeTest;
import net.p110sf.saxon.pattern.ContentTypeTest;
import net.p110sf.saxon.pattern.MultipleNodeKindTest;
import net.p110sf.saxon.pattern.NodeKindTest;
import net.p110sf.saxon.pattern.NodeTest;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.Affinity;
import net.p110sf.saxon.type.AnyItemType;
import net.p110sf.saxon.type.AnySimpleType;
import net.p110sf.saxon.type.AnyType;
import net.p110sf.saxon.type.AtomicType;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ComplexType;
import net.p110sf.saxon.type.ErrorType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.MissingComponentException;
import net.p110sf.saxon.type.SchemaDeclaration;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.SimpleType;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.type.UType;
import net.p110sf.saxon.type.Untyped;
import net.p110sf.saxon.value.BooleanValue;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class Copy extends ElementCreator {

    /* renamed from: r */
    public boolean f99667r;

    /* renamed from: s */
    public ItemType f99668s = AnyItemType.getInstance();

    /* renamed from: t */
    public ItemType f99669t;

    public Copy(boolean z, boolean z2, SchemaType schemaType, int i) {
        this.f99667r = z;
        this.f99686p = z2;
        setValidationAction(i, schemaType);
        this.preservingTypes = schemaType == null && i == 3;
    }

    public static void copyUnparsedEntities(NodeInfo nodeInfo, Outputter outputter) throws XPathException {
        Iterator<String> unparsedEntityNames = nodeInfo.getTreeInfo().getUnparsedEntityNames();
        while (unparsedEntityNames.hasNext()) {
            String next = unparsedEntityNames.next();
            String[] unparsedEntity = nodeInfo.getTreeInfo().getUnparsedEntity(next);
            outputter.setUnparsedEntity(next, unparsedEntity[0], unparsedEntity[1]);
        }
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        Copy copy = new Copy(this.f99667r, this.f99686p, getSchemaType(), getValidationAction());
        ExpressionTool.copyLocationInfo(this, copy);
        copy.setContentExpression(getContentExpression().copy(rebindingMap));
        copy.f99669t = this.f99669t;
        return copy;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public Item evaluateItem(XPathContext xPathContext) throws XPathException {
        SequenceCollector allocateSequenceOutputter = xPathContext.getController().allocateSequenceOutputter(1);
        allocateSequenceOutputter.getPipelineConfiguration().setHostLanguage(getPackageData().getHostLanguage());
        process(new ComplexContentOutputter(allocateSequenceOutputter), xPathContext);
        allocateSequenceOutputter.close();
        Item firstItem = allocateSequenceOutputter.getFirstItem();
        allocateSequenceOutputter.reset();
        return firstItem;
    }

    @Override // net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("copy", this);
        m62749d(expressionPresenter);
        String str = this.f99667r ? "c" : "";
        if (this.f99686p) {
            str = str + "i";
        }
        if (this.f99687q) {
            str = str + GoogleApiAvailabilityLight.f29016b;
        }
        if (isLocal()) {
            str = str + "l";
        }
        expressionPresenter.emitAttribute("flags", str);
        String alphaCode = SequenceType.makeSequenceType(this.f99668s, getCardinality()).toAlphaCode();
        if (alphaCode != null) {
            expressionPresenter.emitAttribute("sit", alphaCode);
        }
        expressionPresenter.setChildRole("content");
        getContentExpression().export(expressionPresenter);
        expressionPresenter.endElement();
    }

    /* renamed from: g */
    public final ItemType m62733g(TypeHierarchy typeHierarchy) {
        Affinity affinity;
        Affinity affinity2;
        Affinity affinity3;
        Affinity affinity4;
        ItemType itemType = this.f99668s;
        if (!getPackageData().isSchemaAware() || itemType.getUType().overlaps(UType.ANY_ATOMIC.union(UType.FUNCTION))) {
            return itemType;
        }
        Configuration configuration = typeHierarchy.getConfiguration();
        if (getSchemaType() != null) {
            Affinity relationship = typeHierarchy.relationship(itemType, NodeKindTest.ELEMENT);
            Affinity affinity5 = Affinity.SAME_TYPE;
            if (relationship == affinity5 || relationship == (affinity4 = Affinity.SUBSUMED_BY)) {
                return new ContentTypeTest(1, getSchemaType(), configuration, false);
            }
            Affinity relationship2 = typeHierarchy.relationship(itemType, NodeKindTest.ATTRIBUTE);
            return (relationship2 == affinity5 || relationship2 == affinity4) ? new ContentTypeTest(2, getSchemaType(), configuration, false) : AnyNodeTest.getInstance();
        }
        int validationAction = getValidationAction();
        if (validationAction != 1 && validationAction != 2) {
            if (validationAction == 3) {
                return itemType;
            }
            if (validationAction != 4) {
                throw new IllegalStateException();
            }
            Affinity relationship3 = typeHierarchy.relationship(itemType, NodeKindTest.ELEMENT);
            Affinity affinity6 = Affinity.SAME_TYPE;
            if (relationship3 == affinity6 || relationship3 == (affinity3 = Affinity.SUBSUMED_BY)) {
                return new ContentTypeTest(1, Untyped.getInstance(), configuration, false);
            }
            Affinity relationship4 = typeHierarchy.relationship(itemType, NodeKindTest.ATTRIBUTE);
            if (relationship4 == affinity6 || relationship4 == affinity3) {
                return new ContentTypeTest(2, BuiltInAtomicType.UNTYPED_ATOMIC, configuration, false);
            }
            Affinity affinity7 = Affinity.DISJOINT;
            return (relationship3 == affinity7 && relationship4 == affinity7) ? itemType : AnyNodeTest.getInstance();
        }
        if (!(itemType instanceof NodeTest)) {
            return itemType instanceof AtomicType ? itemType : AnyItemType.getInstance();
        }
        int fingerprint = ((NodeTest) itemType).getFingerprint();
        if (fingerprint != -1) {
            Affinity relationship5 = typeHierarchy.relationship(itemType, NodeKindTest.ELEMENT);
            Affinity affinity8 = Affinity.SAME_TYPE;
            if (relationship5 == affinity8 || relationship5 == (affinity2 = Affinity.SUBSUMED_BY)) {
                SchemaDeclaration elementDeclaration = configuration.getElementDeclaration(fingerprint);
                if (elementDeclaration == null) {
                    return new ContentTypeTest(1, AnyType.getInstance(), configuration, false);
                }
                try {
                    return new ContentTypeTest(1, elementDeclaration.getType(), configuration, false);
                } catch (MissingComponentException unused) {
                    return new ContentTypeTest(1, AnyType.getInstance(), configuration, false);
                }
            }
            Affinity relationship6 = typeHierarchy.relationship(itemType, NodeKindTest.ATTRIBUTE);
            if (relationship6 == affinity8 || relationship6 == affinity2) {
                SchemaDeclaration elementDeclaration2 = configuration.getElementDeclaration(fingerprint);
                if (elementDeclaration2 == null) {
                    return new ContentTypeTest(2, AnySimpleType.getInstance(), configuration, false);
                }
                try {
                    return new ContentTypeTest(2, elementDeclaration2.getType(), configuration, false);
                } catch (MissingComponentException unused2) {
                    return new ContentTypeTest(2, AnySimpleType.getInstance(), configuration, false);
                }
            }
        } else {
            NodeKindTest nodeKindTest = NodeKindTest.ELEMENT;
            Affinity relationship7 = typeHierarchy.relationship(itemType, nodeKindTest);
            Affinity affinity9 = Affinity.SAME_TYPE;
            if (relationship7 == affinity9 || relationship7 == (affinity = Affinity.SUBSUMED_BY)) {
                return nodeKindTest;
            }
            NodeKindTest nodeKindTest2 = NodeKindTest.ATTRIBUTE;
            Affinity relationship8 = typeHierarchy.relationship(itemType, nodeKindTest2);
            if (relationship8 == affinity9 || relationship8 == affinity) {
                return nodeKindTest2;
            }
        }
        return AnyNodeTest.getInstance();
    }

    @Override // net.p110sf.saxon.expr.instruct.ElementCreator
    public NodeName getElementName(XPathContext xPathContext, NodeInfo nodeInfo) {
        return NameOfNode.makeName(nodeInfo);
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction
    public int getInstructionNameCode() {
        return 146;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getIntrinsicDependencies() {
        return 2;
    }

    @Override // net.p110sf.saxon.expr.instruct.ElementCreator, net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        ItemType itemType = this.f99669t;
        if (itemType != null) {
            return itemType;
        }
        ItemType m62733g = m62733g(getConfiguration().getTypeHierarchy());
        this.f99669t = m62733g;
        return m62733g;
    }

    @Override // net.p110sf.saxon.expr.instruct.ElementCreator
    public String getNewBaseURI(XPathContext xPathContext, NodeInfo nodeInfo) {
        return nodeInfo.getBaseURI();
    }

    @Override // net.p110sf.saxon.expr.instruct.ElementCreator, net.p110sf.saxon.expr.Expression
    public String getStreamerName() {
        return "Copy";
    }

    public boolean isCopyNamespaces() {
        return this.f99667r;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public Iterable<Operand> operands() {
        return this.contentOp;
    }

    @Override // net.p110sf.saxon.expr.instruct.ParentNodeConstructor, net.p110sf.saxon.expr.Expression
    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        Expression optimize = super.optimize(expressionVisitor, contextItemStaticInfo);
        if (optimize != this) {
            return optimize;
        }
        if (this.f99669t == null) {
            this.f99669t = m62733g(expressionVisitor.getConfiguration().getTypeHierarchy());
        }
        if (!expressionVisitor.isOptimizeForStreaming()) {
            return optimize;
        }
        UType uType = contextItemStaticInfo.getItemType().getUType();
        MultipleNodeKindTest multipleNodeKindTest = MultipleNodeKindTest.LEAF;
        if (uType.intersection(multipleNodeKindTest.getUType()).equals(UType.VOID)) {
            return optimize;
        }
        Expression parentExpression = getParentExpression();
        if (parentExpression instanceof Choose) {
            Choose choose = (Choose) parentExpression;
            if (choose.size() == 2 && choose.getAction(1) == this && (choose.getAction(0) instanceof CopyOf)) {
                return optimize;
            }
        }
        Choose choose2 = new Choose(new Expression[]{new InstanceOfExpression(new ContextItemExpression(), SequenceType.makeSequenceType(new MultipleNodeKindTest(uType.intersection(multipleNodeKindTest.getUType())), 16384)), Literal.makeLiteral(BooleanValue.TRUE, this)}, new Expression[]{new CopyOf(new ContextItemExpression(), false, getValidationAction(), getSchemaType(), false), this});
        ExpressionTool.copyLocationInfo(this, choose2);
        return choose2;
    }

    @Override // net.p110sf.saxon.expr.instruct.ElementCreator
    public void outputNamespaceNodes(Outputter outputter, NodeName nodeName, NodeInfo nodeInfo) throws XPathException {
        if (this.f99667r) {
            outputter.namespaces(nodeInfo.getAllNamespaces(), 64);
            return;
        }
        NamespaceBinding namespaceBinding = nodeName.getNamespaceBinding();
        if (namespaceBinding.isDefaultUndeclaration()) {
            return;
        }
        outputter.namespace(namespaceBinding.getPrefix(), namespaceBinding.getURI(), 0);
    }

    @Override // net.p110sf.saxon.expr.instruct.ElementCreator, net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.instruct.TailCallReturner
    public TailCall processLeavingTail(Outputter outputter, XPathContext xPathContext) throws XPathException {
        Controller controller = xPathContext.getController();
        Item contextItem = xPathContext.getContextItem();
        if (contextItem == null) {
            XPathException xPathException = new XPathException("There is no context item for xsl:copy", "XTTE0945");
            xPathException.setIsTypeError(true);
            xPathException.setLocation(getLocation());
            xPathException.setXPathContext(xPathContext);
            throw xPathException;
        }
        if (!(contextItem instanceof NodeInfo)) {
            outputter.m62486h(contextItem, getLocation(), 524288);
            return null;
        }
        NodeInfo nodeInfo = (NodeInfo) contextItem;
        int nodeKind = nodeInfo.getNodeKind();
        if (nodeKind == 1) {
            return super.processLeavingTail(outputter, xPathContext, nodeInfo);
        }
        if (nodeKind == 2) {
            if (getSchemaType() instanceof ComplexType) {
                dynamicError("Cannot copy an attribute when the type requested for validation is a complex type", "XTTE1535", xPathContext);
            }
            try {
                CopyOf.copyAttribute(nodeInfo, (SimpleType) getSchemaType(), getValidationAction(), this, outputter, xPathContext, false);
            } catch (NoOpenStartTagException e) {
                e.setXPathContext(xPathContext);
                throw Instruction.dynamicError(getLocation(), e, xPathContext);
            }
        } else if (nodeKind == 3) {
            outputter.characters(nodeInfo.getUnicodeStringValue(), getLocation(), 0);
        } else if (nodeKind == 7) {
            outputter.processingInstruction(nodeInfo.getDisplayName(), nodeInfo.getUnicodeStringValue(), getLocation(), 0);
        } else if (nodeKind == 8) {
            outputter.comment(nodeInfo.getUnicodeStringValue(), getLocation(), 0);
        } else if (nodeKind == 9) {
            if (!this.preservingTypes) {
                ParseOptions parseOptions = new ParseOptions(getValidationOptions());
                parseOptions.setSpaceStrippingRule(NoElementsSpaceStrippingRule.getInstance());
                controller.getConfiguration().prepareValidationReporting(xPathContext, parseOptions);
                outputter = new ComplexContentOutputter(controller.getConfiguration().getDocumentValidator(outputter, nodeInfo.getBaseURI(), parseOptions, getLocation()));
            }
            if (outputter.getSystemId() == null) {
                outputter.setSystemId(nodeInfo.getBaseURI());
            }
            outputter.startDocument(0);
            copyUnparsedEntities(nodeInfo, outputter);
            getContentExpression().process(outputter, xPathContext);
            outputter.endDocument();
        } else {
            if (nodeKind != 13) {
                throw new IllegalArgumentException("Unknown node kind " + nodeInfo.getNodeKind());
            }
            outputter.namespace(nodeInfo.getLocalPart(), contextItem.getStringValue(), 0);
        }
        return null;
    }

    public void setCopyNamespaces(boolean z) {
        this.f99667r = z;
    }

    public void setSelectItemType(ItemType itemType) {
        this.f99668s = itemType;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression simplify() throws XPathException {
        this.preservingTypes |= !getPackageData().isSchemaAware();
        return super.simplify();
    }

    @Override // net.p110sf.saxon.expr.instruct.ParentNodeConstructor, net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        typeCheckChildren(expressionVisitor, contextItemStaticInfo);
        ItemType itemType = contextItemStaticInfo.getItemType();
        this.f99668s = itemType;
        if (itemType == ErrorType.getInstance()) {
            XPathException xPathException = new XPathException("No context item supplied for xsl:copy", "XTTE0945");
            xPathException.setIsTypeError(true);
            xPathException.setLocation(getLocation());
            throw xPathException;
        }
        ItemType itemType2 = this.f99668s;
        if (itemType2 instanceof NodeTest) {
            int primitiveType = itemType2.getPrimitiveType();
            if (primitiveType != 1) {
                if (primitiveType != 2 && primitiveType != 3 && primitiveType != 7 && primitiveType != 8) {
                    if (primitiveType == 9) {
                        this.f99669t = NodeKindTest.DOCUMENT;
                    } else if (primitiveType != 13) {
                        this.f99669t = this.f99668s;
                    }
                }
                ContextItemExpression contextItemExpression = new ContextItemExpression();
                ExpressionTool.copyLocationInfo(this, contextItemExpression);
                CopyOf copyOf = new CopyOf(contextItemExpression, this.f99667r, getValidationAction(), getSchemaType(), false);
                ExpressionTool.copyLocationInfo(this, copyOf);
                return copyOf.typeCheck(expressionVisitor, contextItemStaticInfo);
            }
            this.f99669t = NodeKindTest.ELEMENT;
        } else {
            this.f99669t = itemType2;
        }
        checkContentSequence(expressionVisitor.getStaticContext());
        return this;
    }
}
