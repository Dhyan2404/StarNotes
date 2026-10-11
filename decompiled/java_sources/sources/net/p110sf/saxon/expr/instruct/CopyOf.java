package net.p110sf.saxon.expr.instruct;

import com.sunia.HTREnginev2.gon;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.function.Function;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.Controller;
import net.p110sf.saxon.event.ComplexContentOutputter;
import net.p110sf.saxon.event.LocationCopier;
import net.p110sf.saxon.event.NoOpenStartTagException;
import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.event.PipelineConfiguration;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.event.SequenceCollector;
import net.p110sf.saxon.event.Sink;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.ItemMapper;
import net.p110sf.saxon.expr.ItemMappingIterator;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.Operand;
import net.p110sf.saxon.expr.OperandRole;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.accum.AccumulatorManager;
import net.p110sf.saxon.expr.instruct.CopyOf;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.PathMap;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.lib.ParseOptions;
import net.p110sf.saxon.lib.Validation;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.ItemConsumer;
import net.p110sf.saxon.om.NameOfNode;
import net.p110sf.saxon.om.NoElementsSpaceStrippingRule;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.om.TreeModel;
import net.p110sf.saxon.pattern.AnyNodeTest;
import net.p110sf.saxon.pattern.ContentTypeTest;
import net.p110sf.saxon.pattern.NodeKindTest;
import net.p110sf.saxon.pattern.NodeTest;
import net.p110sf.saxon.s9api.HostLanguage;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.trans.XsltController;
import net.p110sf.saxon.tree.tiny.TinyBuilder;
import net.p110sf.saxon.tree.tiny.TinyNodeImpl;
import net.p110sf.saxon.tree.wrapper.VirtualCopy;
import net.p110sf.saxon.tree.wrapper.VirtualUntypedCopy;
import net.p110sf.saxon.type.Affinity;
import net.p110sf.saxon.type.AnyItemType;
import net.p110sf.saxon.type.AnySimpleType;
import net.p110sf.saxon.type.AnyType;
import net.p110sf.saxon.type.AtomicType;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.MissingComponentException;
import net.p110sf.saxon.type.SchemaDeclaration;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.SimpleType;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.type.Untyped;
import net.p110sf.saxon.type.ValidationException;
import net.p110sf.saxon.type.ValidationFailure;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class CopyOf extends Instruction implements ValidatingInstruction {

    /* renamed from: y */
    public static final /* synthetic */ boolean f99670y = false;

    /* renamed from: n */
    public final Operand f99671n;

    /* renamed from: o */
    public final boolean f99672o;

    /* renamed from: p */
    public boolean f99673p;

    /* renamed from: q */
    public final int f99674q;

    /* renamed from: r */
    public final SchemaType f99675r;

    /* renamed from: t */
    public final boolean f99677t;

    /* renamed from: u */
    public final boolean f99678u;

    /* renamed from: s */
    public boolean f99676s = false;

    /* renamed from: v */
    public boolean f99679v = false;

    /* renamed from: w */
    public boolean f99680w = false;

    /* renamed from: x */
    public boolean f99681x = true;

    public CopyOf(Expression expression, boolean z, int i, SchemaType schemaType, boolean z2) {
        this.f99671n = new Operand(this, expression, OperandRole.SINGLE_ATOMIC);
        this.f99672o = z;
        this.f99674q = i;
        this.f99675r = schemaType;
        this.f99678u = schemaType != null || i == 1 || i == 2;
        this.f99677t = z2;
    }

    public static String computeNewBaseUri(NodeInfo nodeInfo, String str) {
        String attributeValue = nodeInfo.getAttributeValue("http://www.w3.org/XML/1998/namespace", gon.f71271X);
        if (attributeValue == null) {
            return nodeInfo.getBaseURI();
        }
        try {
            URI uri = new URI(attributeValue);
            if (!uri.isAbsolute()) {
                attributeValue = str != null ? new URI(str).resolve(uri).toString() : nodeInfo.getBaseURI();
            }
            return attributeValue;
        } catch (URISyntaxException unused) {
            return nodeInfo.getBaseURI();
        }
    }

    public static void copyAttribute(NodeInfo nodeInfo, SimpleType simpleType, int i, Instruction instruction, Outputter outputter, XPathContext xPathContext, boolean z) throws XPathException {
        try {
            outputter.attribute(NameOfNode.makeName(nodeInfo), validateAttribute(nodeInfo, simpleType, i, xPathContext), nodeInfo.getUnicodeStringValue().toString(), instruction.getLocation(), z ? 32 : 0);
        } catch (XPathException e) {
            e.maybeSetContext(xPathContext);
            e.maybeSetLocation(instruction.getLocation());
            if (instruction.getPackageData().getHostLanguage() == HostLanguage.XQUERY && e.getErrorCodeLocalPart().equals("XTTE0950")) {
                e.setErrorCode("XQTY0086");
            }
            throw e;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n */
    public /* synthetic */ Item m62742n(Controller controller, boolean z, XPathContext xPathContext, Item item) throws XPathException {
        if (!(item instanceof NodeInfo)) {
            return item;
        }
        NodeInfo nodeInfo = (NodeInfo) item;
        if (nodeInfo.getTreeInfo().isTyped()) {
            if (!this.f99672o && nodeInfo.getNodeKind() == 1) {
                nodeInfo.copy(new Sink(controller.makePipelineConfiguration()), 4, getLocation());
            }
            if (nodeInfo.getNodeKind() == 2 && ((SimpleType) nodeInfo.getSchemaType()).isNamespaceSensitive()) {
                throw new XPathException("Cannot copy an attribute with namespace-sensitive content except as part of its containing element", "XTTE0950");
            }
        }
        VirtualCopy makeVirtualCopy = VirtualCopy.makeVirtualCopy(nodeInfo);
        makeVirtualCopy.setDropNamespaces(!this.f99672o);
        if (z && this.f99673p) {
            makeVirtualCopy.getTreeInfo().setCopyAccumulators(true);
            AccumulatorManager accumulatorManager = ((XsltController) xPathContext.getController()).getAccumulatorManager();
            accumulatorManager.setApplicableAccumulators(makeVirtualCopy.getTreeInfo(), accumulatorManager.getApplicableAccumulators(nodeInfo.getTreeInfo()));
        }
        if (nodeInfo.getNodeKind() == 1) {
            makeVirtualCopy.setSystemId(computeNewBaseUri(nodeInfo, getStaticBaseURIString()));
        }
        return makeVirtualCopy;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: o */
    public /* synthetic */ Item m62743o(XPathContext xPathContext, Item item) throws XPathException {
        if (!(item instanceof NodeInfo)) {
            return item;
        }
        NodeInfo nodeInfo = (NodeInfo) item;
        VirtualCopy makeVirtualUntypedTree = VirtualUntypedCopy.makeVirtualUntypedTree(nodeInfo, nodeInfo);
        if (this.f99673p) {
            makeVirtualUntypedTree.getTreeInfo().setCopyAccumulators(true);
            AccumulatorManager accumulatorManager = ((XsltController) xPathContext.getController()).getAccumulatorManager();
            accumulatorManager.setApplicableAccumulators(makeVirtualUntypedTree.getTreeInfo(), accumulatorManager.getApplicableAccumulators(nodeInfo.getTreeInfo()));
        }
        makeVirtualUntypedTree.setDropNamespaces(!this.f99672o);
        if (nodeInfo.getNodeKind() == 1) {
            makeVirtualUntypedTree.setSystemId(computeNewBaseUri(nodeInfo, getStaticBaseURIString()));
        }
        return makeVirtualUntypedTree;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: p */
    public /* synthetic */ void m62744p(Outputter outputter, XPathContext xPathContext, Item item) throws XPathException {
        if (!(item instanceof NodeInfo)) {
            outputter.append(item);
            return;
        }
        TinyBuilder tinyBuilder = new TinyBuilder(outputter.getPipelineConfiguration());
        ComplexContentOutputter complexContentOutputter = new ComplexContentOutputter(tinyBuilder);
        complexContentOutputter.open();
        NodeInfo nodeInfo = (NodeInfo) item;
        m62746k(xPathContext, complexContentOutputter, nodeInfo, 2);
        complexContentOutputter.close();
        TinyNodeImpl tinyNodeImpl = (TinyNodeImpl) tinyBuilder.getCurrentRoot();
        tinyNodeImpl.getTree().setCopiedFrom(nodeInfo);
        outputter.append(tinyNodeImpl);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: q */
    public /* synthetic */ void m62745q(XPathContext xPathContext, Outputter outputter, int i, Item item) throws XPathException {
        if (item instanceof NodeInfo) {
            m62746k(xPathContext, outputter, (NodeInfo) item, i);
        } else {
            outputter.m62516b(item, getLocation(), 524288);
        }
    }

    public static SimpleType validateAttribute(NodeInfo nodeInfo, SimpleType simpleType, int i, XPathContext xPathContext) throws XPathException {
        UnicodeString unicodeStringValue = nodeInfo.getUnicodeStringValue();
        BuiltInAtomicType builtInAtomicType = BuiltInAtomicType.UNTYPED_ATOMIC;
        if (simpleType != null) {
            if (simpleType.isNamespaceSensitive()) {
                XPathException xPathException = new XPathException("Cannot create a parentless attribute whose type is namespace-sensitive (such as xs:QName)");
                xPathException.setErrorCode("XTTE1545");
                throw xPathException;
            }
            ValidationFailure validateContent = simpleType.validateContent(unicodeStringValue, DummyNamespaceResolver.getInstance(), xPathContext.getConfiguration().getConversionRules());
            if (validateContent == null) {
                return simpleType;
            }
            validateContent.setMessage("Attribute being copied does not match the required type. " + validateContent.getMessage());
            validateContent.setErrorCode("XTTE1510");
            throw validateContent.makeException();
        }
        if (i == 1 || i == 2) {
            try {
                return xPathContext.getConfiguration().validateAttribute(NameOfNode.makeName(nodeInfo).getStructuredQName(), unicodeStringValue, i);
            } catch (ValidationException e) {
                XPathException makeXPathException = XPathException.makeXPathException(e);
                makeXPathException.setErrorCodeQName(e.getErrorCodeQName());
                makeXPathException.setIsTypeError(true);
                throw makeXPathException;
            }
        }
        if (i != 3) {
            return builtInAtomicType;
        }
        SimpleType simpleType2 = (SimpleType) nodeInfo.getSchemaType();
        if (simpleType2.equals(builtInAtomicType) || !simpleType2.isNamespaceSensitive()) {
            return simpleType2;
        }
        XPathException xPathException2 = new XPathException("Cannot preserve type annotation when copying an attribute with namespace-sensitive content");
        xPathException2.setErrorCode(xPathContext.getController().getExecutable().getHostLanguage() == HostLanguage.XSLT ? "XTTE0950" : "XQTY0086");
        xPathException2.setIsTypeError(true);
        throw xPathException2;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public PathMap.PathMapNodeSet addToPathMap(PathMap pathMap, PathMap.PathMapNodeSet pathMapNodeSet) {
        PathMap.PathMapNodeSet addToPathMap = super.addToPathMap(pathMap, pathMapNodeSet);
        addToPathMap.setReturnable(false);
        TypeHierarchy typeHierarchy = getConfiguration().getTypeHierarchy();
        ItemType itemType = getItemType();
        Affinity relationship = typeHierarchy.relationship(itemType, NodeKindTest.ELEMENT);
        Affinity affinity = Affinity.DISJOINT;
        if (relationship != affinity || typeHierarchy.relationship(itemType, NodeKindTest.DOCUMENT) != affinity) {
            addToPathMap.addDescendants();
        }
        return new PathMap.PathMapNodeSet(pathMap.makeNewRoot(this));
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        CopyOf copyOf = new CopyOf(getSelect().copy(rebindingMap), this.f99672o, this.f99674q, this.f99675r, this.f99677t);
        ExpressionTool.copyLocationInfo(this, copyOf);
        copyOf.setCopyForUpdate(this.f99680w);
        copyOf.setCopyLineNumbers(this.f99679v);
        copyOf.f99681x = this.f99681x;
        copyOf.setCopyAccumulators(this.f99673p);
        return copyOf;
    }

    @Override // net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("copyOf", this);
        int i = this.f99674q;
        if (i != 4) {
            expressionPresenter.emitAttribute("validation", Validation.describe(i));
        }
        SchemaType schemaType = this.f99675r;
        if (schemaType != null) {
            expressionPresenter.emitAttribute("type", schemaType.getStructuredQName());
        }
        StringBuilder sb = new StringBuilder(16);
        if (this.f99676s) {
            sb.append('p');
        }
        if (this.f99677t) {
            sb.append('a');
        }
        if (this.f99678u) {
            sb.append('v');
        }
        if (this.f99679v) {
            sb.append('l');
        }
        if (this.f99680w) {
            sb.append('u');
        }
        if (this.f99681x) {
            sb.append('s');
        }
        if (this.f99672o) {
            sb.append('c');
        }
        if (this.f99673p) {
            sb.append('m');
        }
        if (sb.length() != 0) {
            expressionPresenter.emitAttribute("flags", sb.toString());
        }
        getSelect().export(expressionPresenter);
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getCardinality() {
        return getSelect().getCardinality();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getDependencies() {
        return getSelect().getDependencies();
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public int getImplementationMethod() {
        return 14;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction
    public int getInstructionNameCode() {
        return 147;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        Affinity affinity;
        Affinity relationship;
        Affinity affinity2;
        Affinity affinity3;
        Affinity affinity4;
        ItemType itemType = getSelect().getItemType();
        if (!this.f99681x) {
            return itemType;
        }
        Configuration configuration = getConfiguration();
        if (this.f99675r != null) {
            TypeHierarchy typeHierarchy = configuration.getTypeHierarchy();
            Affinity relationship2 = typeHierarchy.relationship(itemType, NodeKindTest.ELEMENT);
            Affinity affinity5 = Affinity.SAME_TYPE;
            if (relationship2 == affinity5 || relationship2 == (affinity4 = Affinity.SUBSUMED_BY)) {
                return new ContentTypeTest(1, this.f99675r, configuration, false);
            }
            Affinity relationship3 = typeHierarchy.relationship(itemType, NodeKindTest.ATTRIBUTE);
            if (relationship3 == affinity5 || relationship3 == affinity4) {
                return new ContentTypeTest(2, this.f99675r, configuration, false);
            }
        } else {
            int i = this.f99674q;
            if (i == 1 || i == 2) {
                if (!(itemType instanceof NodeTest)) {
                    return itemType instanceof AtomicType ? itemType : AnyItemType.getInstance();
                }
                TypeHierarchy typeHierarchy2 = configuration.getTypeHierarchy();
                int fingerprint = ((NodeTest) itemType).getFingerprint();
                if (fingerprint != -1) {
                    Affinity relationship4 = typeHierarchy2.relationship(itemType, NodeKindTest.ELEMENT);
                    Affinity affinity6 = Affinity.SAME_TYPE;
                    if (relationship4 == affinity6 || relationship4 == (affinity2 = Affinity.SUBSUMED_BY)) {
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
                    Affinity relationship5 = typeHierarchy2.relationship(itemType, NodeKindTest.ATTRIBUTE);
                    if (relationship5 == affinity6 || relationship5 == affinity2) {
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
                    Affinity relationship6 = typeHierarchy2.relationship(itemType, nodeKindTest);
                    Affinity affinity7 = Affinity.SAME_TYPE;
                    if (relationship6 == affinity7 || relationship6 == (affinity = Affinity.SUBSUMED_BY) || (relationship = typeHierarchy2.relationship(itemType, (nodeKindTest = NodeKindTest.ATTRIBUTE))) == affinity7 || relationship == affinity) {
                        return nodeKindTest;
                    }
                }
                return AnyNodeTest.getInstance();
            }
            if (i == 3) {
                return itemType;
            }
            if (i == 4) {
                TypeHierarchy typeHierarchy3 = configuration.getTypeHierarchy();
                Affinity relationship7 = typeHierarchy3.relationship(itemType, NodeKindTest.ELEMENT);
                Affinity affinity8 = Affinity.SAME_TYPE;
                if (relationship7 == affinity8 || relationship7 == (affinity3 = Affinity.SUBSUMED_BY)) {
                    return new ContentTypeTest(1, Untyped.getInstance(), configuration, false);
                }
                Affinity relationship8 = typeHierarchy3.relationship(itemType, NodeKindTest.ATTRIBUTE);
                if (relationship8 == affinity8 || relationship8 == affinity3) {
                    return new ContentTypeTest(2, BuiltInAtomicType.UNTYPED_ATOMIC, configuration, false);
                }
                Affinity affinity9 = Affinity.DISJOINT;
                return (relationship7 == affinity9 && relationship8 == affinity9) ? itemType : itemType instanceof NodeTest ? AnyNodeTest.getInstance() : AnyItemType.getInstance();
            }
        }
        return getSelect().getItemType();
    }

    @Override // net.p110sf.saxon.expr.instruct.ValidatingInstruction
    public SchemaType getSchemaType() {
        return this.f99675r;
    }

    public Expression getSelect() {
        return this.f99671n.getChildExpression();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getStreamerName() {
        return "CopyOf";
    }

    @Override // net.p110sf.saxon.expr.instruct.ValidatingInstruction
    public int getValidationAction() {
        return this.f99674q;
    }

    public boolean isCopyAccumulators() {
        return this.f99673p;
    }

    public boolean isCopyForUpdate() {
        return this.f99680w;
    }

    public boolean isCopyNamespaces() {
        return this.f99672o;
    }

    public boolean isDocumentOrElementRequired() {
        return this.f99676s;
    }

    public boolean isValidating() {
        return this.f99678u;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public SequenceIterator iterate(final XPathContext xPathContext) throws XPathException {
        final Controller controller = xPathContext.getController();
        final boolean isXSLT = getRetainedStaticContext().getPackageData().isXSLT();
        if (this.f99675r == null && !this.f99680w) {
            int i = this.f99674q;
            if (i == 3) {
                return new ItemMappingIterator(getSelect().iterate(xPathContext), ItemMapper.m62594of(new ItemMapper.Lambda() { // from class: com.sunia.HTREnginev2.lce
                    @Override // net.sf.saxon.expr.ItemMapper.Lambda
                    public final Item map(Item item) {
                        Item m62742n;
                        m62742n = CopyOf.this.m62742n(controller, isXSLT, xPathContext, item);
                        return m62742n;
                    }
                }), true);
            }
            if (i == 4) {
                return new ItemMappingIterator(getSelect().iterate(xPathContext), ItemMapper.m62594of(new ItemMapper.Lambda() { // from class: com.sunia.HTREnginev2.mce
                    @Override // net.sf.saxon.expr.ItemMapper.Lambda
                    public final Item map(Item item) {
                        Item m62743o;
                        m62743o = CopyOf.this.m62743o(xPathContext, item);
                        return m62743o;
                    }
                }), true);
            }
        }
        PipelineConfiguration makePipelineConfiguration = controller.makePipelineConfiguration();
        makePipelineConfiguration.setXPathContext(xPathContext);
        SequenceCollector sequenceCollector = new SequenceCollector(makePipelineConfiguration);
        if (this.f99680w) {
            sequenceCollector.setTreeModel(TreeModel.LINKED_TREE);
        }
        makePipelineConfiguration.setHostLanguage(getPackageData().getHostLanguage());
        try {
            process(new ComplexContentOutputter(sequenceCollector), xPathContext);
            return sequenceCollector.getSequence().iterate();
        } catch (XPathException e) {
            e.maybeSetLocation(getLocation());
            e.maybeSetContext(xPathContext);
            throw e;
        }
    }

    /* renamed from: k */
    public final void m62746k(XPathContext xPathContext, Outputter outputter, NodeInfo nodeInfo, int i) throws XPathException {
        Receiver receiver;
        int i2;
        String attributeValue;
        Controller controller = xPathContext.getController();
        boolean z = outputter.getSystemId() == null;
        int nodeKind = nodeInfo.getNodeKind();
        if (this.f99676s && nodeKind != 1 && nodeKind != 9) {
            XPathException xPathException = new XPathException("Operand of validate expression must be a document or element node");
            xPathException.setXPathContext(xPathContext);
            xPathException.setErrorCode("XQTY0030");
            throw xPathException;
        }
        Configuration configuration = controller.getConfiguration();
        PipelineConfiguration pipelineConfiguration = null;
        if (nodeKind == 1) {
            if (this.f99678u) {
                ParseOptions parseOptions = new ParseOptions();
                parseOptions.setSchemaValidationMode(this.f99674q);
                SchemaType schemaType = this.f99675r;
                if (schemaType == null && (((i2 = this.f99674q) == 1 || i2 == 2) && (attributeValue = nodeInfo.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance", "type")) != null)) {
                    try {
                        schemaType = configuration.getSchemaType(StructuredQName.fromLexicalQName(attributeValue, true, false, nodeInfo.getAllNamespaces()));
                        if (schemaType == null) {
                            throw new XPathException("Unknown xsi:type in element being validated: " + attributeValue, "XTTE1510");
                        }
                    } catch (XPathException e) {
                        throw new XPathException("Invalid QName in xsi:type attribute of element being validated: " + attributeValue + ". " + e.getMessage(), "XTTE1510");
                    }
                }
                parseOptions.setTopLevelType(schemaType);
                parseOptions.setTopLevelElement(NameOfNode.makeName(nodeInfo).getStructuredQName());
                parseOptions.setErrorReporter(xPathContext.getErrorReporter());
                configuration.prepareValidationReporting(xPathContext, parseOptions);
                receiver = new ComplexContentOutputter(configuration.getElementValidator(outputter, parseOptions, getLocation()));
            } else {
                receiver = outputter;
            }
            if (z) {
                receiver.setSystemId(computeNewBaseUri(nodeInfo, getStaticBaseURIString()));
            }
            PipelineConfiguration pipelineConfiguration2 = outputter.getPipelineConfiguration();
            if (this.f99679v) {
                final LocationCopier locationCopier = new LocationCopier(false, outputter.getSystemId());
                pipelineConfiguration2.setCopyInformee(new Function() { // from class: com.sunia.HTREnginev2.gce
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        Object notifyElementNode;
                        notifyElementNode = LocationCopier.this.notifyElementNode((NodeInfo) obj);
                        return notifyElementNode;
                    }
                });
            }
            nodeInfo.copy(receiver, i, getLocation());
            if (this.f99679v) {
                pipelineConfiguration2.setCopyInformee(null);
                return;
            }
            return;
        }
        if (nodeKind == 2) {
            SchemaType schemaType2 = this.f99675r;
            if (schemaType2 != null && schemaType2.isComplexType()) {
                XPathException xPathException2 = new XPathException("When copying an attribute with schema validation, the requested type must not be a complex type");
                xPathException2.setLocation(getLocation());
                xPathException2.setXPathContext(xPathContext);
                xPathException2.setErrorCode("XTTE1535");
                throw Instruction.dynamicError(getLocation(), xPathException2, xPathContext);
            }
            try {
                copyAttribute(nodeInfo, (SimpleType) this.f99675r, this.f99674q, this, outputter, xPathContext, this.f99677t);
                return;
            } catch (NoOpenStartTagException e2) {
                XPathException xPathException3 = new XPathException(e2.getMessage());
                xPathException3.setLocation(getLocation());
                xPathException3.setXPathContext(xPathContext);
                xPathException3.setErrorCodeQName(e2.getErrorCodeQName());
                throw Instruction.dynamicError(getLocation(), xPathException3, xPathContext);
            }
        }
        if (nodeKind == 3) {
            outputter.characters(nodeInfo.getUnicodeStringValue(), getLocation(), 0);
            return;
        }
        if (nodeKind == 7) {
            if (z) {
                outputter.setSystemId(nodeInfo.getBaseURI());
            }
            outputter.processingInstruction(nodeInfo.getDisplayName(), nodeInfo.getUnicodeStringValue(), getLocation(), 0);
            return;
        }
        if (nodeKind == 8) {
            outputter.comment(nodeInfo.getUnicodeStringValue(), getLocation(), 0);
            return;
        }
        if (nodeKind != 9) {
            if (nodeKind != 13) {
                throw new IllegalArgumentException("Unknown node kind " + nodeInfo.getNodeKind());
            }
            try {
                outputter.namespace(nodeInfo.getLocalPart(), nodeInfo.getStringValue(), 0);
                return;
            } catch (NoOpenStartTagException e3) {
                XPathException xPathException4 = new XPathException(e3.getMessage());
                xPathException4.setXPathContext(xPathContext);
                xPathException4.setErrorCodeQName(e3.getErrorCodeQName());
                throw Instruction.dynamicError(getLocation(), xPathException4, xPathContext);
            }
        }
        ParseOptions parseOptions2 = new ParseOptions();
        parseOptions2.setSchemaValidationMode(this.f99674q);
        parseOptions2.setSpaceStrippingRule(NoElementsSpaceStrippingRule.getInstance());
        parseOptions2.setTopLevelType(this.f99675r);
        parseOptions2.setErrorReporter(xPathContext.getErrorReporter());
        configuration.prepareValidationReporting(xPathContext, parseOptions2);
        Receiver documentValidator = configuration.getDocumentValidator(outputter, nodeInfo.getBaseURI(), parseOptions2, getLocation());
        if (z) {
            documentValidator.setSystemId(nodeInfo.getBaseURI());
        }
        if (this.f99679v) {
            pipelineConfiguration = new PipelineConfiguration(documentValidator.getPipelineConfiguration());
            final LocationCopier locationCopier2 = new LocationCopier(true, nodeInfo.getBaseURI());
            documentValidator.getPipelineConfiguration().setCopyInformee(new Function() { // from class: com.sunia.HTREnginev2.hce
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    Object notifyElementNode;
                    notifyElementNode = LocationCopier.this.notifyElementNode((NodeInfo) obj);
                    return notifyElementNode;
                }
            });
        }
        nodeInfo.copy(documentValidator, i, getLocation());
        if (this.f99679v) {
            documentValidator.setPipelineConfiguration(pipelineConfiguration);
        }
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction
    public final boolean mayCreateNewNodes() {
        return !getSelect().getItemType().isPlainType();
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public Iterable<Operand> operands() {
        return this.f99671n;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        this.f99671n.optimize(expressionVisitor, contextItemStaticInfo);
        if (Literal.isEmptySequence(getSelect())) {
            return getSelect();
        }
        adoptChildExpression(getSelect());
        return getSelect().getItemType().isPlainType() ? getSelect() : this;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.instruct.TailCallReturner
    public TailCall processLeavingTail(final Outputter outputter, final XPathContext xPathContext) throws XPathException {
        try {
            if (!this.f99673p) {
                final int i = (this.f99672o ? 2 : 0) | (this.f99674q == 4 ? 0 : 4) | (this.f99680w ? 8 : 0);
                SequenceTool.supply(getSelect().iterate(xPathContext), new ItemConsumer() { // from class: com.sunia.HTREnginev2.kce
                    @Override // net.p110sf.saxon.om.ItemConsumer
                    public final void accept(Item item) {
                        CopyOf.this.m62745q(xPathContext, outputter, i, item);
                    }
                });
                return null;
            }
            if (m62747r()) {
                SequenceTool.supply(getSelect().iterate(xPathContext), new ItemConsumer() { // from class: com.sunia.HTREnginev2.ice
                    @Override // net.p110sf.saxon.om.ItemConsumer
                    public final void accept(Item item) {
                        CopyOf.this.m62744p(outputter, xPathContext, item);
                    }
                });
                return null;
            }
            SequenceIterator iterate = iterate(xPathContext);
            outputter.getClass();
            SequenceTool.supply(iterate, new ItemConsumer() { // from class: com.sunia.HTREnginev2.jce
                @Override // net.p110sf.saxon.om.ItemConsumer
                public final void accept(Item item) {
                    Outputter.this.append(item);
                }
            });
            return null;
        } catch (UncheckedXPathException e) {
            throw e.getXPathException();
        }
    }

    /* renamed from: r */
    public final boolean m62747r() {
        int i;
        return this.f99675r != null || (i = this.f99674q) == 2 || i == 1 || this.f99680w;
    }

    public void setCopyAccumulators(boolean z) {
        this.f99673p = z;
    }

    public void setCopyForUpdate(boolean z) {
        this.f99680w = z;
    }

    public void setCopyLineNumbers(boolean z) {
        this.f99679v = z;
    }

    public void setRequireDocumentOrElement(boolean z) {
        this.f99676s = z;
    }

    public void setSchemaAware(boolean z) {
        this.f99681x = z;
    }

    public void setSelect(Expression expression) {
        this.f99671n.setChildExpression(expression);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        typeCheckChildren(expressionVisitor, contextItemStaticInfo);
        if (isDocumentOrElementRequired()) {
            RoleDiagnostic roleDiagnostic = new RoleDiagnostic(2, "validate", 0);
            roleDiagnostic.setErrorCode("XQTY0030");
            Configuration configuration = expressionVisitor.getConfiguration();
            setSelect(configuration.getTypeChecker(false).staticTypeCheck(getSelect(), SequenceType.SINGLE_NODE, roleDiagnostic, expressionVisitor));
            TypeHierarchy typeHierarchy = configuration.getTypeHierarchy();
            ItemType itemType = getSelect().getItemType();
            if (typeHierarchy.isSubType(itemType, NodeKindTest.ATTRIBUTE)) {
                throw new XPathException("validate{} expression cannot be applied to an attribute", "XQTY0030");
            }
            if (typeHierarchy.isSubType(itemType, NodeKindTest.TEXT)) {
                throw new XPathException("validate{} expression cannot be applied to a text node", "XQTY0030");
            }
            if (typeHierarchy.isSubType(itemType, NodeKindTest.COMMENT)) {
                throw new XPathException("validate{} expression cannot be applied to a comment node", "XQTY0030");
            }
            if (typeHierarchy.isSubType(itemType, NodeKindTest.PROCESSING_INSTRUCTION)) {
                throw new XPathException("validate{} expression cannot be applied to a processing instruction node", "XQTY0030");
            }
            if (typeHierarchy.isSubType(itemType, NodeKindTest.NAMESPACE)) {
                throw new XPathException("validate{} expression cannot be applied to a namespace node", "XQTY0030");
            }
        }
        return this;
    }
}
