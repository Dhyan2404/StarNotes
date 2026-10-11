package net.p110sf.saxon.style;

import java.io.File;
import java.io.StringReader;
import java.math.BigDecimal;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Stack;
import java.util.function.Function;
import javax.xml.transform.Source;
import javax.xml.transform.stream.StreamSource;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.Controller;
import net.p110sf.saxon.event.ProxyReceiver;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.XPathContextMajor;
import net.p110sf.saxon.expr.instruct.SlotManager;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.functions.DocumentFn;
import net.p110sf.saxon.functions.FunctionLibraryList;
import net.p110sf.saxon.lib.DirectResourceResolver;
import net.p110sf.saxon.lib.EmptySource;
import net.p110sf.saxon.lib.NamespaceConstant;
import net.p110sf.saxon.lib.ResourceRequest;
import net.p110sf.saxon.lib.ResourceResolver;
import net.p110sf.saxon.lib.ResourceResolverDelegate;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.AttributeMap;
import net.p110sf.saxon.om.DocumentKey;
import net.p110sf.saxon.om.EmptyAttributeMap;
import net.p110sf.saxon.om.FingerprintedQName;
import net.p110sf.saxon.om.NamespaceResolver;
import net.p110sf.saxon.om.NoNamespaceName;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.om.TreeInfo;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.style.UseWhenFilter;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.trans.XmlProcessingException;
import net.p110sf.saxon.tree.AttributeLocation;
import net.p110sf.saxon.tree.jiter.TopDownStackIterable;
import net.p110sf.saxon.tree.linked.DocumentImpl;
import net.p110sf.saxon.tree.linked.LinkedTreeBuilder;
import net.p110sf.saxon.type.ConversionResult;
import net.p110sf.saxon.type.Type;
import net.p110sf.saxon.type.ValidationFailure;
import net.p110sf.saxon.value.BigDecimalValue;
import net.p110sf.saxon.value.DateTimeValue;
import net.p110sf.saxon.value.NestedIntegerValue;

/* loaded from: classes11.dex */
public class UseWhenFilter extends ProxyReceiver {

    /* renamed from: q */
    public static final /* synthetic */ boolean f101846q = false;

    /* renamed from: e */
    public int f101847e;

    /* renamed from: f */
    public boolean f101848f;

    /* renamed from: g */
    public final Stack<String> f101849g;

    /* renamed from: h */
    public final Stack<Integer> f101850h;

    /* renamed from: i */
    public final DateTimeValue f101851i;

    /* renamed from: j */
    public final Compilation f101852j;

    /* renamed from: k */
    public final Stack<String> f101853k;

    /* renamed from: l */
    public final Stack<URI> f101854l;

    /* renamed from: m */
    public final NestedIntegerValue f101855m;

    /* renamed from: n */
    public int f101856n;

    /* renamed from: o */
    public boolean f101857o;

    /* renamed from: p */
    public final LinkedTreeBuilder f101858p;

    public UseWhenFilter(Compilation compilation, Receiver receiver, NestedIntegerValue nestedIntegerValue) {
        super(receiver);
        this.f101847e = 0;
        this.f101848f = false;
        this.f101849g = new Stack<>();
        this.f101850h = new Stack<>();
        this.f101851i = DateTimeValue.getCurrentDateTime(null);
        this.f101853k = new Stack<>();
        this.f101854l = new Stack<>();
        this.f101856n = 0;
        this.f101852j = compilation;
        this.f101855m = nestedIntegerValue;
        this.f101858p = (LinkedTreeBuilder) receiver;
    }

    /* renamed from: g */
    public static /* synthetic */ Source m64007g(ResourceRequest resourceRequest) {
        throw new UncheckedXPathException("No external documents are available within an [xsl]use-when expression");
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void characters(UnicodeString unicodeString, Location location, int i) throws XPathException {
        if (this.f101847e == 0) {
            this.nextReceiver.characters(unicodeString, location, i);
        }
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void comment(UnicodeString unicodeString, Location location, int i) throws XPathException {
    }

    /* renamed from: d */
    public final SlotManager m64008d(String str, Expression expression) {
        SlotManager makeSlotManager = getPipelineConfiguration().getConfiguration().makeSlotManager();
        if (str.indexOf(36) >= 0) {
            ExpressionTool.allocateSlots(expression, makeSlotManager.getNumberOfVariables(), makeSlotManager);
        }
        return makeSlotManager;
    }

    /* renamed from: e */
    public final XPathException m64009e(String str, String str2, Location location) {
        XPathException xPathException = new XPathException(str);
        xPathException.setErrorCode(str2);
        xPathException.setIsStaticError(true);
        xPathException.setLocator(location.saveLocation());
        getPipelineConfiguration().getErrorReporter().report(new XmlProcessingException(xPathException));
        xPathException.setHasBeenReported(true);
        return xPathException;
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void endElement() throws XPathException {
        this.f101849g.pop();
        int i = this.f101847e;
        if (i > 0) {
            this.f101847e = i - 1;
            return;
        }
        this.f101853k.pop();
        this.f101854l.pop();
        this.f101850h.pop();
        this.nextReceiver.endElement();
    }

    public Sequence evaluateStatic(String str, Location location, UseWhenStaticContext useWhenStaticContext) throws XPathException {
        m64018o(useWhenStaticContext);
        Expression m64019p = m64019p(ExpressionTool.make(str, useWhenStaticContext, 0, 0, null), useWhenStaticContext);
        SlotManager makeSlotManager = getPipelineConfiguration().getConfiguration().makeSlotManager();
        ExpressionTool.allocateSlots(m64019p, makeSlotManager.getNumberOfVariables(), makeSlotManager);
        XPathContext m64011h = m64011h(useWhenStaticContext);
        ((XPathContextMajor) m64011h).openStackFrame(makeSlotManager);
        return SequenceTool.toGroundedValue(m64019p.iterate(m64011h));
    }

    /* renamed from: f */
    public final boolean m64010f(String str, AttributeLocation attributeLocation, String str2, NamespaceResolver namespaceResolver) throws XPathException {
        UseWhenStaticContext useWhenStaticContext = new UseWhenStaticContext(this.f101852j, namespaceResolver);
        useWhenStaticContext.setBaseURI(str2);
        useWhenStaticContext.setContainingLocation(attributeLocation);
        m64018o(useWhenStaticContext);
        Expression make = ExpressionTool.make(str, useWhenStaticContext, 0, 0, null);
        make.setRetainedStaticContext(useWhenStaticContext.makeRetainedStaticContext());
        Expression m64019p = m64019p(make, useWhenStaticContext);
        SlotManager m64008d = m64008d(str, m64019p);
        XPathContext m64011h = m64011h(useWhenStaticContext);
        ((XPathContextMajor) m64011h).openStackFrame(m64008d);
        return m64019p.effectiveBooleanValue(m64011h);
    }

    /* renamed from: h */
    public final XPathContext m64011h(UseWhenStaticContext useWhenStaticContext) throws XPathException {
        Controller controller = new Controller(getConfiguration());
        controller.getExecutable().setFunctionLibrary((FunctionLibraryList) useWhenStaticContext.getFunctionLibrary());
        if (useWhenStaticContext.getXPathVersion() < 30) {
            controller.setResourceResolver(new ResourceResolverDelegate(new Function() { // from class: com.sunia.HTREnginev2.eyn
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    Source m64007g;
                    m64007g = UseWhenFilter.m64007g((ResourceRequest) obj);
                    return m64007g;
                }
            }));
        }
        controller.setCurrentDateTime(this.f101851i);
        return controller.newXPathContext().newCleanContext();
    }

    /* renamed from: i */
    public final URI m64012i(Location location, String str) throws XPathException {
        URI peek;
        String systemId = location.getSystemId();
        if (systemId == null) {
            systemId = getSystemId();
        }
        if (systemId == null || systemId.equals(this.f101853k.peek())) {
            peek = this.f101854l.peek();
        } else {
            try {
                peek = new URI(systemId);
            } catch (URISyntaxException unused) {
                throw new XPathException("Invalid URI for stylesheet entity: " + systemId);
            }
        }
        if (str != null) {
            try {
                peek = peek.resolve(str);
            } catch (IllegalArgumentException e) {
                throw new XPathException("Invalid URI in xml:base attribute: " + str + ". " + e.getMessage());
            }
        }
        this.f101854l.push(peek);
        this.f101853k.push(systemId);
        return peek;
    }

    /* renamed from: j */
    public final DocumentImpl m64013j(NodeName nodeName, Location location, URI uri, String str, boolean z) throws XPathException {
        if (str == null) {
            throw new XPathException("Missing href attribute on " + nodeName.getDisplayName(), "XTSE0010");
        }
        Configuration configuration = getConfiguration();
        ResourceResolver resourceResolver = this.f101852j.getCompilerInfo().getResourceResolver();
        String uri2 = uri.toString();
        DocumentKey computeDocumentKey = DocumentFn.computeDocumentKey(str, uri2, this.f101852j.getPackageData(), false);
        Map<DocumentKey, TreeInfo> stylesheetModules = this.f101852j.getStylesheetModules();
        if (stylesheetModules.containsKey(computeDocumentKey)) {
            return (DocumentImpl) stylesheetModules.get(computeDocumentKey);
        }
        ResourceRequest resourceRequest = new ResourceRequest();
        resourceRequest.relativeUri = str;
        resourceRequest.baseUri = uri2;
        resourceRequest.uri = computeDocumentKey.getAbsoluteURI();
        resourceRequest.nature = "http://www.w3.org/1999/XSL/Transform";
        resourceRequest.purpose = "stylesheet module";
        Source resolve = resourceRequest.resolve(resourceResolver, configuration.getResourceResolver(), new DirectResourceResolver(configuration));
        if (resolve == null) {
            XPathException xPathException = new XPathException("Unable to resolve " + nodeName.getDisplayName() + " stylesheet URI " + str, "XTSE0165");
            xPathException.setLocation(location);
            throw xPathException;
        }
        if (resolve instanceof EmptySource) {
            resolve = new StreamSource(new StringReader("<xsl:transform version='3.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform'/>"));
        }
        NestedIntegerValue nestedIntegerValue = this.f101855m;
        if (z) {
            NestedIntegerValue append = nestedIntegerValue.getStem().append(this.f101855m.getLeaf() - 1);
            int i = this.f101856n + 1;
            this.f101856n = i;
            nestedIntegerValue = append.append(i * 2);
        }
        try {
            DocumentImpl loadStylesheetModule = StylesheetModule.loadStylesheetModule(resolve, false, this.f101852j, nestedIntegerValue);
            stylesheetModules.put(computeDocumentKey, loadStylesheetModule);
            return loadStylesheetModule;
        } catch (XPathException e) {
            e.maybeSetLocation(location);
            e.maybeSetErrorCode("XTSE0165");
            if ("XTSE0180".equals(e.getErrorCodeLocalPart()) && z) {
                e.setErrorCode("XTSE0210");
            }
            if (!e.hasBeenReported()) {
                this.f101852j.reportError(e);
            }
            throw e;
        }
    }

    /* renamed from: k */
    public final String m64014k(String str, String str2, NamespaceResolver namespaceResolver, AttributeLocation attributeLocation) throws XPathException {
        UseWhenStaticContext useWhenStaticContext = new UseWhenStaticContext(this.f101852j, namespaceResolver);
        useWhenStaticContext.setBaseURI(str2);
        useWhenStaticContext.setContainingLocation(attributeLocation);
        m64018o(useWhenStaticContext);
        Expression m64019p = m64019p(AttributeValueTemplate.make(str, useWhenStaticContext), useWhenStaticContext);
        SlotManager m64008d = m64008d(str, m64019p);
        XPathContext m64011h = m64011h(useWhenStaticContext);
        ((XPathContextMajor) m64011h).openStackFrame(m64008d);
        return m64019p.evaluateAsString(m64011h).toString();
    }

    /* renamed from: l */
    public final AttributeMap m64015l(NodeName nodeName, AttributeMap attributeMap, NamespaceResolver namespaceResolver, Location location, URI uri) throws XPathException {
        HashMap hashMap = new HashMap();
        for (AttributeInfo attributeInfo : attributeMap) {
            hashMap.put(attributeInfo.getNodeName(), attributeInfo);
        }
        for (AttributeInfo attributeInfo2 : attributeMap) {
            NodeName nodeName2 = attributeInfo2.getNodeName();
            String localPart = nodeName2.getLocalPart();
            String uri2 = nodeName2.getURI();
            if (localPart.startsWith("_") && ((uri2.isEmpty() || uri2.equals(NamespaceConstant.SAXON)) && localPart.length() >= 2)) {
                String m64014k = m64014k(attributeInfo2.getValue(), uri.toString(), namespaceResolver, new AttributeLocation(nodeName.getStructuredQName(), nodeName2.getStructuredQName(), location));
                String substring = localPart.substring(1);
                NodeName noNamespaceName = uri2.isEmpty() ? new NoNamespaceName(substring) : new FingerprintedQName(nodeName2.getPrefix(), NamespaceConstant.SAXON, substring);
                hashMap.put(noNamespaceName, new AttributeInfo(noNamespaceName, attributeInfo2.getType(), m64014k, attributeInfo2.getLocation(), 0));
                hashMap.remove(nodeName2);
            }
        }
        AttributeMap emptyAttributeMap = EmptyAttributeMap.getInstance();
        for (AttributeInfo attributeInfo3 : hashMap.values()) {
            emptyAttributeMap = emptyAttributeMap.put(new AttributeInfo(attributeInfo3.getNodeName(), attributeInfo3.getType(), attributeInfo3.getValue(), attributeInfo3.getLocation(), attributeInfo3.getProperties()));
        }
        return emptyAttributeMap;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0137  */
    /* renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m64016m(net.p110sf.saxon.om.NodeName r19, net.p110sf.saxon.om.AttributeMap r20, net.p110sf.saxon.om.NamespaceResolver r21, net.p110sf.saxon.s9api.Location r22, java.net.URI r23, net.p110sf.saxon.value.NestedIntegerValue r24) throws net.p110sf.saxon.trans.XPathException {
        /*
            Method dump skipped, instructions count: 459
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.style.UseWhenFilter.m64016m(net.sf.saxon.om.NodeName, net.sf.saxon.om.AttributeMap, net.sf.saxon.om.NamespaceResolver, net.sf.saxon.s9api.Location, java.net.URI, net.sf.saxon.value.NestedIntegerValue):void");
    }

    /* renamed from: n */
    public final int m64017n(String str) throws XPathException {
        if (str == null) {
            return Integer.MIN_VALUE;
        }
        ConversionResult makeDecimalValue = BigDecimalValue.makeDecimalValue(str, true);
        if (!(makeDecimalValue instanceof ValidationFailure)) {
            return ((BigDecimalValue) makeDecimalValue.asAtomic()).getDecimalValue().multiply(BigDecimal.TEN).intValue();
        }
        throw new XPathException("Invalid version number: " + str, "XTSE0110");
    }

    /* renamed from: o */
    public final void m64018o(UseWhenStaticContext useWhenStaticContext) {
        useWhenStaticContext.setDefaultElementNamespace("");
        Iterator it2 = new TopDownStackIterable(this.f101849g).iterator();
        while (it2.hasNext()) {
            String str = (String) it2.next();
            if (str != null) {
                useWhenStaticContext.setDefaultElementNamespace(str);
                return;
            }
        }
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.SequenceReceiver, net.p110sf.saxon.event.Receiver
    public void open() throws XPathException {
        this.nextReceiver.open();
        String systemId = getSystemId();
        if (systemId == null) {
            systemId = "";
        }
        this.f101853k.push(systemId);
        try {
            try {
                this.f101854l.push(new URI(systemId));
            } catch (Exception unused) {
            }
        } catch (URISyntaxException unused2) {
            this.f101854l.push(new File(systemId).toURI());
        }
    }

    /* renamed from: p */
    public final Expression m64019p(Expression expression, UseWhenStaticContext useWhenStaticContext) throws XPathException {
        return expression.typeCheck(ExpressionVisitor.make(useWhenStaticContext), getConfiguration().makeContextItemStaticInfo(Type.ITEM_TYPE, true));
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void processingInstruction(String str, UnicodeString unicodeString, Location location, int i) {
    }

    /* JADX WARN: Code restructure failed: missing block: B:85:0x016b, code lost:
    
        if (r2 != null) goto L90;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:12:0x0092. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:117:0x025c  */
    /* JADX WARN: Removed duplicated region for block: B:119:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v17, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r1v19 */
    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void startElement(net.p110sf.saxon.om.NodeName r25, net.p110sf.saxon.type.SchemaType r26, net.p110sf.saxon.om.AttributeMap r27, net.p110sf.saxon.om.NamespaceMap r28, net.p110sf.saxon.s9api.Location r29, int r30) throws net.p110sf.saxon.trans.XPathException {
        /*
            Method dump skipped, instructions count: 662
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.style.UseWhenFilter.startElement(net.sf.saxon.om.NodeName, net.sf.saxon.type.SchemaType, net.sf.saxon.om.AttributeMap, net.sf.saxon.om.NamespaceMap, net.sf.saxon.s9api.Location, int):void");
    }
}
