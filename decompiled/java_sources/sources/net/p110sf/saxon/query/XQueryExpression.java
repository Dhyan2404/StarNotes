package net.p110sf.saxon.query;

import com.google.android.gms.actions.SearchIntents;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Properties;
import java.util.Set;
import javax.xml.transform.Result;
import javax.xml.transform.Source;
import javax.xml.transform.TransformerException;
import javax.xml.transform.stream.StreamResult;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.Controller;
import net.p110sf.saxon.event.ComplexContentOutputter;
import net.p110sf.saxon.event.PipelineConfiguration;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.ExpressionOwner;
import net.p110sf.saxon.expr.PackageData;
import net.p110sf.saxon.expr.XPathContextMajor;
import net.p110sf.saxon.expr.instruct.Executable;
import net.p110sf.saxon.expr.instruct.GlobalContextRequirement;
import net.p110sf.saxon.expr.instruct.GlobalVariable;
import net.p110sf.saxon.expr.instruct.SlotManager;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.LoopLifter;
import net.p110sf.saxon.expr.parser.Optimizer;
import net.p110sf.saxon.lib.ErrorReporter;
import net.p110sf.saxon.lib.SerializerFactory;
import net.p110sf.saxon.lib.TraceListener;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.ItemConsumer;
import net.p110sf.saxon.om.MutableNodeInfo;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.query.XQueryExpression;
import net.p110sf.saxon.s9api.HostLanguage;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.serialize.SerializationProperties;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trace.TraceableComponent;
import net.p110sf.saxon.trans.SaxonErrorCode;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.trans.XmlProcessingException;
import net.p110sf.saxon.tree.iter.GroundedIterator;
import net.p110sf.saxon.tree.iter.ManualIterator;
import net.p110sf.saxon.type.AnyItemType;

/* loaded from: classes11.dex */
public class XQueryExpression implements Location, ExpressionOwner, TraceableComponent {
    protected Executable executable;
    protected Expression expression;
    protected QueryModule mainModule;
    protected SlotManager stackFrameMap;

    /* renamed from: net.sf.saxon.query.XQueryExpression$a */
    /* loaded from: classes11.dex */
    public static class C18436a implements SequenceIterator {

        /* renamed from: e */
        public final SequenceIterator f101075e;

        /* renamed from: f */
        public final ErrorReporter f101076f;

        /* renamed from: g */
        public final Location f101077g;

        public C18436a(SequenceIterator sequenceIterator, ErrorReporter errorReporter, Location location) {
            this.f101075e = sequenceIterator;
            this.f101076f = errorReporter;
            this.f101077g = location;
        }

        @Override // net.p110sf.saxon.om.SequenceIterator, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.f101075e.close();
        }

        @Override // net.p110sf.saxon.om.SequenceIterator
        public void discharge() {
            this.f101075e.discharge();
        }

        @Override // net.p110sf.saxon.om.SequenceIterator
        public Item next() {
            try {
                return this.f101075e.next();
            } catch (UncheckedXPathException e) {
                XPathException xPathException = e.getXPathException();
                xPathException.maybeSetLocation(this.f101077g);
                this.f101076f.report(new XmlProcessingException(xPathException));
                xPathException.setHasBeenReported(true);
                throw e;
            }
        }
    }

    public XQueryExpression(Expression expression, QueryModule queryModule, boolean z) throws XPathException {
        Expression process;
        Expression optimize;
        Executable executable = queryModule.getExecutable();
        Configuration configuration = queryModule.getConfiguration();
        this.stackFrameMap = configuration.makeSlotManager();
        this.executable = executable;
        this.mainModule = queryModule;
        expression.setRetainedStaticContext(queryModule.makeRetainedStaticContext());
        try {
            ExpressionVisitor make = ExpressionVisitor.make(queryModule);
            Optimizer obtainOptimizer = make.obtainOptimizer();
            make.setOptimizeForStreaming(z);
            Expression simplify = expression.simplify();
            simplify.checkForUpdatingSubexpressions();
            GlobalContextRequirement globalContextRequirement = executable.getGlobalContextRequirement();
            ContextItemStaticInfo makeContextItemStaticInfo = configuration.makeContextItemStaticInfo(globalContextRequirement == null ? AnyItemType.getInstance() : globalContextRequirement.getRequiredItemType(), true);
            Expression typeCheck = simplify.typeCheck(make, makeContextItemStaticInfo);
            if (typeCheck != simplify) {
                typeCheck.setRetainedStaticContext(simplify.getRetainedStaticContext());
                typeCheck.setParentExpression(null);
                simplify = typeCheck;
            }
            if (obtainOptimizer.isOptionSet(256) && (optimize = simplify.optimize(make, makeContextItemStaticInfo)) != simplify) {
                optimize.setRetainedStaticContext(simplify.getRetainedStaticContext());
                optimize.setParentExpression(null);
                simplify = optimize;
            }
            if (obtainOptimizer.isOptionSet(1) && (process = LoopLifter.process(simplify, make, makeContextItemStaticInfo)) != simplify) {
                process.setRetainedStaticContext(simplify.getRetainedStaticContext());
                process.setParentExpression(null);
                simplify = process;
            }
            ExpressionTool.allocateSlots(simplify, 0, this.stackFrameMap);
            ExpressionTool.computeEvaluationModesForUserFunctionCalls(simplify);
            Iterator<GlobalVariable> it2 = getPackageData().getGlobalVariableList().iterator();
            while (it2.hasNext()) {
                Expression body = it2.next().getBody();
                if (body != null) {
                    ExpressionTool.computeEvaluationModesForUserFunctionCalls(body);
                }
            }
            this.expression = simplify;
            this.executable.setConfiguration(configuration);
        } catch (XPathException e) {
            queryModule.reportStaticError(e);
            throw e;
        }
    }

    /* renamed from: b */
    public static /* synthetic */ void m63495b(ArrayList arrayList, Item item) throws XPathException {
        arrayList.add(SequenceTool.convertToJava(item));
    }

    public void closeStreamIfNecessary(StreamResult streamResult, boolean z) throws XPathException {
        OutputStream outputStream;
        if (!z || (outputStream = streamResult.getOutputStream()) == null) {
            return;
        }
        try {
            outputStream.close();
        } catch (IOException e) {
            throw new XPathException(e);
        }
    }

    public List<Object> evaluate(DynamicQueryContext dynamicQueryContext) throws XPathException {
        if (isUpdateQuery()) {
            throw new XPathException("Cannot call evaluate() on an updating query");
        }
        final ArrayList arrayList = new ArrayList(100);
        SequenceTool.supply(iterator(dynamicQueryContext), new ItemConsumer() { // from class: com.sunia.HTREnginev2.lmo
            @Override // net.p110sf.saxon.om.ItemConsumer
            public final void accept(Item item) {
                XQueryExpression.m63495b(arrayList, item);
            }
        });
        return arrayList;
    }

    public Object evaluateSingle(DynamicQueryContext dynamicQueryContext) throws XPathException {
        if (isUpdateQuery()) {
            throw new XPathException("Cannot call evaluateSingle() on an updating query");
        }
        Item next = iterator(dynamicQueryContext).next();
        if (next == null) {
            return null;
        }
        return SequenceTool.convertToJava(next);
    }

    public void explain(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement(SearchIntents.EXTRA_QUERY);
        this.mainModule.getKeyManager().exportKeys(expressionPresenter, null);
        getExecutable().explainGlobalVariables(expressionPresenter);
        this.mainModule.explainGlobalFunctions(expressionPresenter);
        expressionPresenter.startElement("body");
        this.expression.export(expressionPresenter);
        expressionPresenter.endElement();
        expressionPresenter.endElement();
        expressionPresenter.close();
    }

    public void explainPathMap() {
    }

    @Override // net.p110sf.saxon.trace.TraceableComponent
    public Expression getBody() {
        return getExpression();
    }

    @Override // net.p110sf.saxon.expr.ExpressionOwner
    public Expression getChildExpression() {
        return this.expression;
    }

    @Override // net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
    public int getColumnNumber() {
        return -1;
    }

    public Configuration getConfiguration() {
        return this.mainModule.getConfiguration();
    }

    public Executable getExecutable() {
        return this.executable;
    }

    public Expression getExpression() {
        return this.expression;
    }

    public StructuredQName[] getExternalVariableNames() {
        List<StructuredQName> variableMap = this.stackFrameMap.getVariableMap();
        int numberOfVariables = this.stackFrameMap.getNumberOfVariables();
        StructuredQName[] structuredQNameArr = new StructuredQName[numberOfVariables];
        for (int i = 0; i < numberOfVariables; i++) {
            structuredQNameArr[i] = variableMap.get(i);
        }
        return structuredQNameArr;
    }

    public HostLanguage getHostLanguage() {
        return HostLanguage.XQUERY;
    }

    @Override // net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
    public int getLineNumber() {
        return -1;
    }

    @Override // net.p110sf.saxon.expr.Locatable
    public Location getLocation() {
        return this;
    }

    public QueryModule getMainModule() {
        return this.mainModule;
    }

    @Override // net.p110sf.saxon.trace.Traceable
    public StructuredQName getObjectName() {
        return null;
    }

    public PackageData getPackageData() {
        return this.mainModule.getPackageData();
    }

    @Override // net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
    public String getPublicId() {
        return null;
    }

    public SlotManager getStackFrameMap() {
        return this.stackFrameMap;
    }

    @Override // net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
    public String getSystemId() {
        return this.mainModule.getSystemId();
    }

    @Override // net.p110sf.saxon.trace.TraceableComponent
    public String getTracingTag() {
        return SearchIntents.EXTRA_QUERY;
    }

    public XPathContextMajor initialContext(DynamicQueryContext dynamicQueryContext, Controller controller) throws XPathException {
        Item globalContextItem = controller.getGlobalContextItem();
        XPathContextMajor newXPathContext = controller.newXPathContext();
        if (globalContextItem != null) {
            newXPathContext.setCurrentIterator(new ManualIterator(globalContextItem));
            controller.setGlobalContextItem(globalContextItem);
        }
        return newXPathContext;
    }

    public boolean isDocumentProjectionAllowed() {
        return false;
    }

    public boolean isUpdateQuery() {
        return false;
    }

    public SequenceIterator iterator(DynamicQueryContext dynamicQueryContext) throws XPathException {
        if (isUpdateQuery()) {
            throw new XPathException("Cannot call iterator() on an updating query");
        }
        if (!dynamicQueryContext.getConfiguration().isCompatible(getExecutable().getConfiguration())) {
            throw new XPathException("The query must be compiled and executed under the same Configuration", SaxonErrorCode.SXXP0004);
        }
        Controller newController = newController(dynamicQueryContext);
        try {
            Item globalContextItem = newController.getGlobalContextItem();
            if ((globalContextItem instanceof NodeInfo) && ((NodeInfo) globalContextItem).getTreeInfo().isTyped() && !getExecutable().isSchemaAware()) {
                throw new XPathException("A typed input document can only be used with a schema-aware query");
            }
            XPathContextMajor initialContext = initialContext(dynamicQueryContext, newController);
            if (newController.getTraceListener() != null) {
                newController.preEvaluateGlobals(initialContext);
            }
            initialContext.openStackFrame(this.stackFrameMap);
            SequenceIterator iterate = this.expression.iterate(initialContext);
            return ((iterate instanceof GroundedIterator) && ((GroundedIterator) iterate).isActuallyGrounded()) ? iterate : new C18436a(iterate, newController.getErrorReporter(), getLocation());
        } catch (XPathException e) {
            e = e;
            while (e.getException() instanceof TransformerException) {
                e = (TransformerException) e.getException();
            }
            XPathException makeXPathException = XPathException.makeXPathException(e);
            newController.reportFatalError(makeXPathException);
            throw makeXPathException;
        }
    }

    public Controller newController(DynamicQueryContext dynamicQueryContext) throws XPathException {
        Controller controller = new Controller(this.executable.getConfiguration(), this.executable);
        dynamicQueryContext.initializeController(controller);
        return controller;
    }

    public void run(DynamicQueryContext dynamicQueryContext, Result result, Properties properties) throws XPathException {
        Receiver receiver;
        if (isUpdateQuery()) {
            throw new XPathException("Cannot call run() on an updating query");
        }
        if (!dynamicQueryContext.getConfiguration().isCompatible(getExecutable().getConfiguration())) {
            throw new XPathException("The query must be compiled and executed under the same Configuration", SaxonErrorCode.SXXP0004);
        }
        Item contextItem = dynamicQueryContext.getContextItem();
        if ((contextItem instanceof NodeInfo) && ((NodeInfo) contextItem).getTreeInfo().isTyped() && !getExecutable().isSchemaAware()) {
            throw new XPathException("A typed input document can only be used with a schema-aware query");
        }
        Controller newController = newController(dynamicQueryContext);
        boolean z = result instanceof Receiver;
        if (z) {
            ((Receiver) result).getPipelineConfiguration().setController(newController);
        }
        Properties validateOutputProperties = validateOutputProperties(newController, properties);
        XPathContextMajor initialContext = initialContext(dynamicQueryContext, newController);
        TraceListener traceListener = newController.getTraceListener();
        if (traceListener != null) {
            newController.preEvaluateGlobals(initialContext);
        }
        initialContext.openStackFrame(this.stackFrameMap);
        boolean z2 = result instanceof StreamResult;
        boolean z3 = z2 && ((StreamResult) result).getOutputStream() == null;
        if (z) {
            receiver = (Receiver) result;
        } else {
            SerializerFactory serializerFactory = initialContext.getConfiguration().getSerializerFactory();
            PipelineConfiguration makePipelineConfiguration = newController.makePipelineConfiguration();
            makePipelineConfiguration.setHostLanguage(HostLanguage.XQUERY);
            receiver = serializerFactory.getReceiver(result, new SerializationProperties(validateOutputProperties), makePipelineConfiguration);
        }
        ComplexContentOutputter complexContentOutputter = new ComplexContentOutputter(receiver);
        complexContentOutputter.open();
        try {
            try {
                this.expression.process(complexContentOutputter, initialContext);
                if (z2) {
                    closeStreamIfNecessary((StreamResult) result, z3);
                }
            } catch (XPathException e) {
                newController.reportFatalError(e);
                throw e;
            }
        } finally {
            if (traceListener != null) {
                try {
                    traceListener.close();
                } catch (XPathException e2) {
                    e2.printStackTrace();
                }
            }
            complexContentOutputter.close();
        }
    }

    public void runStreamed(DynamicQueryContext dynamicQueryContext, Source source, Result result, Properties properties) throws XPathException {
        throw new XPathException("Streaming requires Saxon-EE");
    }

    public Set<MutableNodeInfo> runUpdate(DynamicQueryContext dynamicQueryContext) throws XPathException {
        throw new XPathException("Calling runUpdate() on a non-updating query");
    }

    @Override // net.p110sf.saxon.s9api.Location
    public Location saveLocation() {
        return this;
    }

    public void setAllowDocumentProjection(boolean z) {
        if (z) {
            throw new UnsupportedOperationException("Document projection requires Saxon-EE");
        }
    }

    @Override // net.p110sf.saxon.trace.TraceableComponent
    public void setBody(Expression expression) {
        setChildExpression(expression);
    }

    @Override // net.p110sf.saxon.expr.ExpressionOwner
    public void setChildExpression(Expression expression) {
        this.expression = expression;
    }

    public boolean usesContextItem() {
        if (ExpressionTool.dependsOnFocus(this.expression)) {
            return true;
        }
        List<GlobalVariable> globalVariableList = getPackageData().getGlobalVariableList();
        if (globalVariableList == null) {
            return false;
        }
        Iterator<GlobalVariable> it2 = globalVariableList.iterator();
        while (it2.hasNext()) {
            Expression body = it2.next().getBody();
            if (body != null && ExpressionTool.dependsOnFocus(body)) {
                return true;
            }
        }
        return false;
    }

    public Properties validateOutputProperties(Controller controller, Properties properties) {
        Properties properties2 = controller.getExecutable().getPrimarySerializationProperties().getProperties();
        SerializerFactory serializerFactory = controller.getConfiguration().getSerializerFactory();
        if (properties != null) {
            for (String str : properties.stringPropertyNames()) {
                try {
                    properties2.setProperty(str, serializerFactory.checkOutputProperty(str, properties.getProperty(str)));
                } catch (XPathException e) {
                    properties.remove(str);
                    XmlProcessingException xmlProcessingException = new XmlProcessingException(e);
                    xmlProcessingException.setWarning(true);
                    controller.getErrorReporter().report(xmlProcessingException);
                }
            }
        }
        if (properties2.getProperty("method") == null) {
            properties2.setProperty("method", "xml");
        }
        return properties2;
    }

    public void runUpdate(DynamicQueryContext dynamicQueryContext, UpdateAgent updateAgent) throws XPathException {
        throw new XPathException("Calling runUpdate() on a non-updating query");
    }
}
