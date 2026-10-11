package net.p110sf.saxon.expr.instruct;

import com.caverock.androidsvg.SVGParser;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.Predicate;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.Controller;
import net.p110sf.saxon.event.ContentHandlerProxy;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.LocalVariableReference;
import net.p110sf.saxon.expr.Operand;
import net.p110sf.saxon.expr.OperandRole;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.XPathContextMajor;
import net.p110sf.saxon.expr.instruct.EvaluateInstr;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.PathMap;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.expr.sort.LFUCache;
import net.p110sf.saxon.functions.ExecutableFunctionLibrary;
import net.p110sf.saxon.functions.FunctionLibrary;
import net.p110sf.saxon.functions.FunctionLibraryList;
import net.p110sf.saxon.functions.registry.BuiltInFunctionSet;
import net.p110sf.saxon.functions.registry.XPath31FunctionSet;
import net.p110sf.saxon.functions.registry.XPath40FunctionSet;
import net.p110sf.saxon.lib.Feature;
import net.p110sf.saxon.ma.map.HashTrieMap;
import net.p110sf.saxon.ma.map.MapItem;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.ItemConsumer;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.style.PublicStylesheetFunctionLibrary;
import net.p110sf.saxon.style.StylesheetFunctionLibrary;
import net.p110sf.saxon.style.StylesheetPackage;
import net.p110sf.saxon.sxpath.IndependentContext;
import net.p110sf.saxon.sxpath.XPathVariable;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.AtomicIterator;
import net.p110sf.saxon.tree.iter.ManualIterator;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.Type;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.QNameValue;
import net.p110sf.saxon.value.SequenceType;
import net.p110sf.saxon.value.StringValue;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public final class EvaluateInstr extends Expression {

    /* renamed from: n */
    public Operand f99688n;

    /* renamed from: o */
    public final SequenceType f99689o;

    /* renamed from: p */
    public Operand f99690p;

    /* renamed from: q */
    public Operand f99691q;

    /* renamed from: r */
    public Operand f99692r;

    /* renamed from: s */
    public Operand f99693s;

    /* renamed from: t */
    public Operand f99694t;

    /* renamed from: v */
    public WithParam[] f99696v;

    /* renamed from: w */
    public Operand f99697w;

    /* renamed from: u */
    public Set<String> f99695u = new HashSet();

    /* renamed from: x */
    public String f99698x = null;

    public EvaluateInstr(Expression expression, SequenceType sequenceType, Expression expression2, Expression expression3, Expression expression4, Expression expression5) {
        if (expression != null) {
            this.f99688n = new Operand(this, expression, OperandRole.SINGLE_ATOMIC);
        }
        if (expression2 != null) {
            this.f99690p = new Operand(this, expression2, OperandRole.NAVIGATE);
        }
        if (expression3 != null) {
            this.f99691q = new Operand(this, expression3, OperandRole.SINGLE_ATOMIC);
        }
        if (expression4 != null) {
            this.f99692r = new Operand(this, expression4, OperandRole.INSPECT);
        }
        if (expression5 != null) {
            this.f99693s = new Operand(this, expression5, OperandRole.SINGLE_ATOMIC);
        }
        this.f99689o = sequenceType;
    }

    /* renamed from: h */
    public static /* synthetic */ void m62754h(String str, XPathContext xPathContext, String str2, Location location) {
        xPathContext.getController().warning("In dynamic expression {" + str + "}: " + str2, null, location);
    }

    /* renamed from: i */
    public static /* synthetic */ void m62755i(IndependentContext independentContext, Map map, Item item) throws XPathException {
        if (item instanceof QNameValue) {
            QNameValue qNameValue = (QNameValue) item;
            map.put(qNameValue.getStructuredQName(), Integer.valueOf(independentContext.declareVariable(qNameValue).getLocalSlotNumber()));
        } else {
            XPathException xPathException = new XPathException("Parameter names supplied to xsl:evaluate must have type xs:QName, not " + ((AtomicValue) item).getPrimitiveType().getDisplayName(), "XTTE3165");
            xPathException.setIsTypeError(true);
            throw xPathException;
        }
    }

    /* renamed from: j */
    public static /* synthetic */ boolean m62756j(StructuredQName structuredQName, Expression expression) {
        if (expression instanceof LocalVariableReference) {
            LocalVariableReference localVariableReference = (LocalVariableReference) expression;
            if (localVariableReference.getVariableName().equals(structuredQName) && (localVariableReference.getBinding() instanceof XPathVariable)) {
                return true;
            }
        }
        return false;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public PathMap.PathMapNodeSet addToPathMap(PathMap pathMap, PathMap.PathMapNodeSet pathMapNodeSet) {
        throw new UnsupportedOperationException("Cannot do document projection when xsl:evaluate is used");
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeCardinality() {
        return this.f99689o.getCardinality();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        EvaluateInstr evaluateInstr = new EvaluateInstr(getXpath().copy(rebindingMap), this.f99689o, getContextItemExpr().copy(rebindingMap), getBaseUriExpr() == null ? null : getBaseUriExpr().copy(rebindingMap), getNamespaceContextExpr() == null ? null : getNamespaceContextExpr().copy(rebindingMap), getSchemaAwareExpr() == null ? null : getSchemaAwareExpr().copy(rebindingMap));
        ExpressionTool.copyLocationInfo(this, evaluateInstr);
        evaluateInstr.setRetainedStaticContext(getRetainedStaticContext());
        evaluateInstr.f99695u = this.f99695u;
        evaluateInstr.setActualParams(WithParam.copy(evaluateInstr, getActualParams(), rebindingMap));
        Operand operand = this.f99694t;
        if (operand != null) {
            evaluateInstr.setOptionsExpression(operand.getChildExpression().copy(rebindingMap));
        }
        Operand operand2 = this.f99697w;
        if (operand2 != null) {
            evaluateInstr.setDynamicParams(operand2.getChildExpression().copy(rebindingMap));
        }
        return evaluateInstr;
    }

    @Override // net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("evaluate", this);
        if (!SequenceType.ANY_SEQUENCE.equals(this.f99689o)) {
            expressionPresenter.emitAttribute("as", this.f99689o.toAlphaCode());
        }
        Set<String> set = this.f99695u;
        if (set != null && !set.isEmpty()) {
            StringBuilder sb = new StringBuilder(256);
            for (String str : this.f99695u) {
                if (str.isEmpty()) {
                    str = ContentHandlerProxy.f98951n;
                }
                sb.append(str);
                sb.append(' ');
            }
            sb.setLength(sb.length() - 1);
            expressionPresenter.emitAttribute("schNS", sb.toString());
        }
        String str2 = this.f99698x;
        if (str2 != null) {
            expressionPresenter.emitAttribute("dxns", str2);
        }
        expressionPresenter.setChildRole("xpath");
        getXpath().export(expressionPresenter);
        if (getContextItemExpr() != null) {
            expressionPresenter.setChildRole("cxt");
            getContextItemExpr().export(expressionPresenter);
        }
        if (getBaseUriExpr() != null) {
            expressionPresenter.setChildRole("baseUri");
            getBaseUriExpr().export(expressionPresenter);
        }
        if (getNamespaceContextExpr() != null) {
            expressionPresenter.setChildRole("nsCxt");
            getNamespaceContextExpr().export(expressionPresenter);
        }
        if (getSchemaAwareExpr() != null) {
            expressionPresenter.setChildRole("sa");
            getSchemaAwareExpr().export(expressionPresenter);
        }
        if (this.f99694t != null) {
            expressionPresenter.setChildRole("options");
            this.f99694t.getChildExpression().export(expressionPresenter);
        }
        WithParam.exportParameters(this.f99696v, expressionPresenter, false);
        if (this.f99697w != null) {
            expressionPresenter.setChildRole("wp");
            getDynamicParams().export(expressionPresenter);
        }
        expressionPresenter.endElement();
    }

    public WithParam[] getActualParams() {
        return this.f99696v;
    }

    public Expression getBaseUriExpr() {
        Operand operand = this.f99691q;
        if (operand == null) {
            return null;
        }
        return operand.getChildExpression();
    }

    public Expression getContextItemExpr() {
        Operand operand = this.f99690p;
        if (operand == null) {
            return null;
        }
        return operand.getChildExpression();
    }

    public Expression getDynamicParams() {
        return this.f99697w.getChildExpression();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getImplementationMethod() {
        return 2;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getIntrinsicDependencies() {
        return 639;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public final ItemType getItemType() {
        return this.f99689o.getPrimaryType();
    }

    public Expression getNamespaceContextExpr() {
        Operand operand = this.f99692r;
        if (operand == null) {
            return null;
        }
        return operand.getChildExpression();
    }

    public Expression getSchemaAwareExpr() {
        Operand operand = this.f99693s;
        if (operand == null) {
            return null;
        }
        return operand.getChildExpression();
    }

    public Expression getXpath() {
        return this.f99688n.getChildExpression();
    }

    public void importSchemaNamespace(String str) {
        if (this.f99695u == null) {
            this.f99695u = new HashSet();
        }
        this.f99695u.add(str);
    }

    public boolean isActualParam(StructuredQName structuredQName) {
        for (WithParam withParam : this.f99696v) {
            if (withParam.getVariableQName().equals(structuredQName)) {
                return true;
            }
        }
        return false;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean isInstruction() {
        return true;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public SequenceIterator iterate(final XPathContext xPathContext) throws XPathException {
        boolean z;
        LFUCache lFUCache;
        Expression expression;
        SlotManager slotManager;
        Collection<XPathVariable> collection;
        SlotManager slotManager2;
        Collection<XPathVariable> collection2;
        Configuration configuration = xPathContext.getConfiguration();
        if (configuration.getBooleanProperty(Feature.DISABLE_XSL_EVALUATE)) {
            throw new XPathException("xsl:evaluate has been disabled", "XTDE3175");
        }
        final String obj = getXpath().evaluateAsString(xPathContext).toString();
        String staticBaseURIString = getBaseUriExpr() == null ? getStaticBaseURIString() : Whitespace.trim(getBaseUriExpr().evaluateAsString(xPathContext).toString());
        Item evaluateItem = getContextItemExpr().evaluateItem(xPathContext);
        NodeInfo nodeInfo = getNamespaceContextExpr() != null ? (NodeInfo) getNamespaceContextExpr().evaluateItem(xPathContext) : null;
        String trim = Whitespace.trim(getSchemaAwareExpr().evaluateAsString(xPathContext).toString());
        if ("yes".equals(trim) || "true".equals(trim) || "1".equals(trim)) {
            z = true;
        } else {
            if (!SVGParser.f16048t.equals(trim) && !"false".equals(trim) && !"0".equals(trim)) {
                XPathException xPathException = new XPathException("The schema-aware attribute of xsl:evaluate must be yes|no|true|false|0|1");
                xPathException.setErrorCode("XTDE0030");
                xPathException.setLocation(getLocation());
                xPathException.setXPathContext(xPathContext);
                throw xPathException;
            }
            z = false;
        }
        StringBuilder sb = new StringBuilder(obj.length() + (staticBaseURIString == null ? 4 : staticBaseURIString.length()) + 40);
        sb.append(staticBaseURIString);
        sb.append(ContentHandlerProxy.f98951n);
        sb.append(trim);
        sb.append(ContentHandlerProxy.f98951n);
        sb.append(obj);
        if (nodeInfo != null) {
            sb.append(ContentHandlerProxy.f98951n);
            nodeInfo.generateId(sb);
        }
        String sb2 = sb.toString();
        Controller controller = xPathContext.getController();
        synchronized (controller) {
            lFUCache = (LFUCache) controller.getUserData(getLocation(), "xsl:evaluate");
            if (lFUCache == null) {
                lFUCache = new LFUCache(100);
                controller.setUserData(getLocation(), "xsl:evaluate", lFUCache);
            } else {
                Object[] objArr = (Object[]) lFUCache.get(sb2);
                if (objArr != null) {
                    expression = (Expression) objArr[0];
                    slotManager = (SlotManager) objArr[1];
                    collection = (Collection) objArr[2];
                }
            }
            collection = null;
            expression = null;
            slotManager = null;
        }
        Operand operand = this.f99697w;
        MapItem mapItem = operand != null ? (MapItem) operand.getChildExpression().evaluateItem(xPathContext) : null;
        if (expression == null) {
            int hostLanguageVersion = getRetainedStaticContext().getPackageData().getHostLanguageVersion();
            Operand operand2 = this.f99694t;
            MapItem hashTrieMap = operand2 == null ? new HashTrieMap() : (MapItem) operand2.getChildExpression().evaluateItem(xPathContext);
            final IndependentContext independentContext = new IndependentContext(configuration);
            independentContext.setWarningHandler(new BiConsumer() { // from class: com.sunia.HTREnginev2.uwf
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj2, Object obj3) {
                    EvaluateInstr.m62754h(obj, xPathContext, (String) obj2, (Location) obj3);
                }
            });
            independentContext.setBaseURI(staticBaseURIString);
            independentContext.setExecutable(xPathContext.getController().getExecutable());
            independentContext.setXPathLanguageLevel(hostLanguageVersion == 40 ? 40 : ((Integer) configuration.getConfigurationProperty(Feature.XPATH_VERSION_FOR_XSLT)).intValue());
            independentContext.setDefaultCollationName(getRetainedStaticContext().getDefaultCollationName());
            if (getNamespaceContextExpr() != null) {
                independentContext.setNamespaces(nodeInfo);
            } else {
                independentContext.setNamespaceResolver(getRetainedStaticContext());
                independentContext.setDefaultElementNamespace(getRetainedStaticContext().getDefaultElementNamespace());
            }
            FunctionLibraryList functionLibrary = ((StylesheetPackage) getRetainedStaticContext().getPackageData()).getFunctionLibrary();
            FunctionLibraryList functionLibraryList = new FunctionLibraryList();
            Iterator<FunctionLibrary> it2 = functionLibrary.getLibraryList().iterator();
            while (it2.hasNext()) {
                FunctionLibrary next = it2.next();
                Iterator<FunctionLibrary> it3 = it2;
                if (next instanceof BuiltInFunctionSet) {
                    collection2 = collection;
                    if (((BuiltInFunctionSet) next).getNamespace().equals("http://www.w3.org/2005/xpath-functions")) {
                        functionLibraryList.addFunctionLibrary(hostLanguageVersion == 40 ? XPath40FunctionSet.getInstance() : XPath31FunctionSet.getInstance());
                        it2 = it3;
                        collection = collection2;
                    }
                } else {
                    collection2 = collection;
                }
                if ((next instanceof StylesheetFunctionLibrary) || (next instanceof ExecutableFunctionLibrary)) {
                    functionLibraryList.addFunctionLibrary(new PublicStylesheetFunctionLibrary(next));
                } else {
                    functionLibraryList.addFunctionLibrary(next);
                }
                it2 = it3;
                collection = collection2;
            }
            Collection<XPathVariable> collection3 = collection;
            independentContext.setFunctionLibrary(functionLibraryList);
            independentContext.setDecimalFormatManager(getRetainedStaticContext().getDecimalFormatManager());
            if (z) {
                GroundedValue groundedValue = hashTrieMap.get(StringValue.bmp("allow-any-namespace"));
                if (groundedValue == null || !groundedValue.effectiveBooleanValue()) {
                    independentContext.setImportedSchemaNamespaces(this.f99695u);
                } else {
                    independentContext.setImportedSchemaNamespaces(configuration.getImportedNamespaces());
                }
            }
            GroundedValue groundedValue2 = hashTrieMap.get(StringValue.bmp("default-collation"));
            if (groundedValue2 != null) {
                independentContext.setDefaultCollationName(groundedValue2.head().getStringValue());
            }
            final HashMap hashMap = new HashMap();
            if (mapItem != null) {
                SequenceTool.supply(mapItem.keys(), new ItemConsumer() { // from class: com.sunia.HTREnginev2.vwf
                    @Override // net.p110sf.saxon.om.ItemConsumer
                    public final void accept(Item item) {
                        EvaluateInstr.m62755i(IndependentContext.this, hashMap, item);
                    }
                });
            }
            if (getActualParams() != null) {
                for (WithParam withParam : getActualParams()) {
                    StructuredQName variableQName = withParam.getVariableQName();
                    if (!hashMap.containsKey(variableQName)) {
                        hashMap.put(variableQName, Integer.valueOf(independentContext.declareVariable(variableQName).getLocalSlotNumber()));
                    }
                }
            }
            try {
                Expression make = ExpressionTool.make(obj, independentContext, 0, 0, null);
                make.setRetainedStaticContext(independentContext.makeRetainedStaticContext());
                RoleDiagnostic roleDiagnostic = new RoleDiagnostic(12, obj, 0);
                ExpressionVisitor make2 = ExpressionVisitor.make(independentContext);
                Expression staticTypeCheck = configuration.getTypeChecker(false).staticTypeCheck(make, this.f99689o, roleDiagnostic, make2);
                ItemType itemType = Type.ITEM_TYPE;
                Expression resolveCallsToCurrentFunction = ExpressionTool.resolveCallsToCurrentFunction(staticTypeCheck);
                ContextItemStaticInfo makeContextItemStaticInfo = configuration.makeContextItemStaticInfo(itemType, xPathContext.getContextItem() == null);
                expression = resolveCallsToCurrentFunction.typeCheck(make2, makeContextItemStaticInfo).optimize(make2, makeContextItemStaticInfo);
                slotManager2 = independentContext.getStackFrameMap();
                ExpressionTool.allocateSlots(expression, slotManager2.getNumberOfVariables(), slotManager2);
                if (sb2 != null) {
                    collection = independentContext.getDeclaredVariables();
                    lFUCache.put(sb2, new Object[]{expression, slotManager2, collection});
                } else {
                    collection = collection3;
                }
            } catch (XPathException e) {
                XPathException xPathException2 = new XPathException("Static error in XPath expression supplied to xsl:evaluate: " + e.getMessage() + ". Expression: {" + obj + "}");
                xPathException2.setErrorCode("XTDE3160");
                xPathException2.setLocation(getLocation());
                throw xPathException2;
            }
        } else {
            slotManager2 = slotManager;
        }
        XPathContextMajor newContext = xPathContext.newContext();
        if (evaluateItem == null) {
            newContext.setCurrentIterator(null);
        } else {
            newContext.setCurrentIterator(new ManualIterator(evaluateItem));
        }
        newContext.openStackFrame(slotManager2);
        if (getActualParams() != null) {
            for (int i = 0; i < getActualParams().length; i++) {
                newContext.setLocalVariable(slotManager2.getVariableMap().indexOf(getActualParams()[i].getVariableQName()), getActualParams()[i].getSelectValue(xPathContext));
            }
        }
        if (mapItem != null) {
            AtomicIterator keys = mapItem.keys();
            while (true) {
                QNameValue qNameValue = (QNameValue) keys.next();
                if (qNameValue == null) {
                    break;
                }
                int indexOf = slotManager2.getVariableMap().indexOf(qNameValue.getStructuredQName());
                if (indexOf >= 0) {
                    newContext.setLocalVariable(indexOf, mapItem.get(qNameValue));
                }
            }
        }
        Iterator<XPathVariable> it4 = collection.iterator();
        while (it4.hasNext()) {
            final StructuredQName variableQName2 = it4.next().getVariableQName();
            Predicate predicate = new Predicate() { // from class: com.sunia.HTREnginev2.wwf
                @Override // java.util.function.Predicate
                public final boolean test(Object obj2) {
                    boolean m62756j;
                    m62756j = EvaluateInstr.m62756j(StructuredQName.this, (Expression) obj2);
                    return m62756j;
                }
            };
            if (mapItem != null && mapItem.get(new QNameValue(variableQName2, BuiltInAtomicType.QNAME)) == null && !isActualParam(variableQName2)) {
                if (ExpressionTool.contains(expression, false, predicate)) {
                    throw new XPathException("No value has been supplied for variable " + variableQName2.getDisplayName(), "XPST0008");
                }
            }
        }
        try {
            return expression.iterate(newContext);
        } catch (XPathException e2) {
            XPathException xPathException3 = new XPathException("Dynamic error in expression {" + obj + "} called using xsl:evaluate", e2);
            xPathException3.setLocation(getLocation());
            xPathException3.setErrorCodeQName(e2.getErrorCodeQName());
            throw xPathException3;
        }
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Iterable<Operand> operands() {
        ArrayList arrayList = new ArrayList(8);
        Operand operand = this.f99688n;
        if (operand != null) {
            arrayList.add(operand);
        }
        Operand operand2 = this.f99690p;
        if (operand2 != null) {
            arrayList.add(operand2);
        }
        Operand operand3 = this.f99691q;
        if (operand3 != null) {
            arrayList.add(operand3);
        }
        Operand operand4 = this.f99692r;
        if (operand4 != null) {
            arrayList.add(operand4);
        }
        Operand operand5 = this.f99693s;
        if (operand5 != null) {
            arrayList.add(operand5);
        }
        Operand operand6 = this.f99697w;
        if (operand6 != null) {
            arrayList.add(operand6);
        }
        Operand operand7 = this.f99694t;
        if (operand7 != null) {
            arrayList.add(operand7);
        }
        WithParam.gatherOperands(this, getActualParams(), arrayList);
        return arrayList;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        optimizeChildren(expressionVisitor, contextItemStaticInfo);
        return this;
    }

    public void setActualParameters(WithParam[] withParamArr) {
        setActualParams(withParamArr);
    }

    public void setActualParams(WithParam[] withParamArr) {
        this.f99696v = withParamArr;
    }

    public void setBaseUriExpr(Expression expression) {
        Operand operand = this.f99691q;
        if (operand == null) {
            this.f99691q = new Operand(this, expression, OperandRole.SINGLE_ATOMIC);
        } else {
            operand.setChildExpression(expression);
        }
    }

    public void setContextItemExpr(Expression expression) {
        Operand operand = this.f99690p;
        if (operand == null) {
            this.f99690p = new Operand(this, expression, OperandRole.NAVIGATE);
        } else {
            operand.setChildExpression(expression);
        }
    }

    public void setDefaultXPathNamespace(String str) {
        this.f99698x = str;
    }

    public void setDynamicParams(Expression expression) {
        Operand operand = this.f99697w;
        if (operand == null) {
            this.f99697w = new Operand(this, expression, OperandRole.SINGLE_ATOMIC);
        } else {
            operand.setChildExpression(expression);
        }
    }

    public void setNamespaceContextExpr(Expression expression) {
        Operand operand = this.f99692r;
        if (operand == null) {
            this.f99692r = new Operand(this, expression, OperandRole.INSPECT);
        } else {
            operand.setChildExpression(expression);
        }
    }

    public void setOptionsExpression(Expression expression) {
        this.f99694t = new Operand(this, expression, OperandRole.ABSORB);
    }

    public void setSchemaAwareExpr(Expression expression) {
        Operand operand = this.f99693s;
        if (operand == null) {
            this.f99693s = new Operand(this, expression, OperandRole.SINGLE_ATOMIC);
        } else {
            operand.setChildExpression(expression);
        }
    }

    public void setXpath(Expression expression) {
        Operand operand = this.f99688n;
        if (operand == null) {
            this.f99688n = new Operand(this, expression, OperandRole.SINGLE_ATOMIC);
        } else {
            operand.setChildExpression(expression);
        }
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        this.f99695u = expressionVisitor.getStaticContext().getImportedSchemaNamespaces();
        typeCheckChildren(expressionVisitor, contextItemStaticInfo);
        WithParam.typeCheck(getActualParams(), expressionVisitor, contextItemStaticInfo);
        return this;
    }
}
