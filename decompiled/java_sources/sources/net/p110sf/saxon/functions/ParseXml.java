package net.p110sf.saxon.functions;

import java.io.StringReader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.xml.transform.sax.SAXSource;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.Controller;
import net.p110sf.saxon.event.Builder;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.event.Sender;
import net.p110sf.saxon.expr.Callable;
import net.p110sf.saxon.expr.PackageData;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.lib.ParseOptions;
import net.p110sf.saxon.om.IgnorableSpaceStrippingRule;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.TreeModel;
import net.p110sf.saxon.style.StylesheetPackage;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.tiny.TinyDocumentImpl;
import net.p110sf.saxon.value.EmptySequence;
import net.p110sf.saxon.value.ObjectValue;
import net.p110sf.saxon.value.SequenceExtent;
import net.p110sf.saxon.value.StringValue;
import org.xml.sax.ErrorHandler;
import org.xml.sax.InputSource;
import org.xml.sax.SAXParseException;

/* loaded from: classes11.dex */
public class ParseXml extends SystemFunction implements Callable {

    /* loaded from: classes11.dex */
    public static class RetentiveErrorHandler implements ErrorHandler {
        public List<SAXParseException> errors = new ArrayList();
        public boolean failed = false;

        public void captureRetainedErrors(XPathException xPathException) {
            List<SAXParseException> list = this.errors;
            if (list.isEmpty()) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            Iterator<SAXParseException> it2 = list.iterator();
            while (it2.hasNext()) {
                arrayList.add(new ObjectValue(it2.next()));
            }
            xPathException.setErrorObject(SequenceExtent.makeSequenceExtent(arrayList));
        }

        @Override // org.xml.sax.ErrorHandler
        public void error(SAXParseException sAXParseException) {
            this.errors.add(sAXParseException);
        }

        @Override // org.xml.sax.ErrorHandler
        public void fatalError(SAXParseException sAXParseException) {
            this.errors.add(sAXParseException);
            this.failed = true;
        }

        @Override // org.xml.sax.ErrorHandler
        public void warning(SAXParseException sAXParseException) {
        }
    }

    /* renamed from: d */
    public static boolean m63044d() {
        return true;
    }

    /* renamed from: a */
    public final String m63045a(XPathException xPathException) {
        String str = "First argument to parse-xml() is not a well-formed and namespace-well-formed XML document. " + xPathException.getMessage();
        Throwable cause = xPathException.getCause();
        if (cause == null) {
            return str;
        }
        return str + cause.getMessage();
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x007a A[Catch: XPathException -> 0x00a5, TRY_ENTER, TryCatch #0 {XPathException -> 0x00a5, blocks: (B:3:0x0008, B:5:0x000e, B:7:0x0045, B:9:0x0057, B:10:0x0064, B:13:0x007a, B:14:0x0099, B:17:0x0088, B:19:0x008c, B:21:0x005c, B:22:0x009d, B:23:0x00a4), top: B:2:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0088 A[Catch: XPathException -> 0x00a5, TryCatch #0 {XPathException -> 0x00a5, blocks: (B:3:0x0008, B:5:0x000e, B:7:0x0045, B:9:0x0057, B:10:0x0064, B:13:0x007a, B:14:0x0099, B:17:0x0088, B:19:0x008c, B:21:0x005c, B:22:0x009d, B:23:0x00a4), top: B:2:0x0008 }] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final net.p110sf.saxon.om.NodeInfo m63046b(net.p110sf.saxon.value.StringValue r7, net.p110sf.saxon.expr.XPathContext r8) throws net.p110sf.saxon.trans.XPathException {
        /*
            r6 = this;
            net.sf.saxon.expr.parser.RetainedStaticContext r0 = r6.getRetainedStaticContext()
            java.lang.String r0 = r0.getStaticBaseUriString()
            net.sf.saxon.Controller r1 = r8.getController()     // Catch: net.p110sf.saxon.trans.XPathException -> La5
            if (r1 == 0) goto L9d
            net.sf.saxon.Configuration r2 = r8.getConfiguration()     // Catch: net.p110sf.saxon.trans.XPathException -> La5
            java.io.StringReader r3 = new java.io.StringReader     // Catch: net.p110sf.saxon.trans.XPathException -> La5
            java.lang.String r7 = r7.getStringValue()     // Catch: net.p110sf.saxon.trans.XPathException -> La5
            r3.<init>(r7)     // Catch: net.p110sf.saxon.trans.XPathException -> La5
            javax.xml.transform.stream.StreamSource r7 = new javax.xml.transform.stream.StreamSource     // Catch: net.p110sf.saxon.trans.XPathException -> La5
            r7.<init>(r3, r0)     // Catch: net.p110sf.saxon.trans.XPathException -> La5
            net.sf.saxon.Platform r3 = net.p110sf.saxon.Version.platform     // Catch: net.p110sf.saxon.trans.XPathException -> La5
            net.sf.saxon.lib.ActiveSource r7 = r3.resolveSource(r7, r2)     // Catch: net.p110sf.saxon.trans.XPathException -> La5
            net.sf.saxon.om.TreeModel r3 = net.p110sf.saxon.om.TreeModel.TINY_TREE     // Catch: net.p110sf.saxon.trans.XPathException -> La5
            net.sf.saxon.event.PipelineConfiguration r1 = r1.makePipelineConfiguration()     // Catch: net.p110sf.saxon.trans.XPathException -> La5
            net.sf.saxon.event.Builder r1 = r3.makeBuilder(r1)     // Catch: net.p110sf.saxon.trans.XPathException -> La5
            net.sf.saxon.lib.ParseOptions r3 = new net.sf.saxon.lib.ParseOptions     // Catch: net.p110sf.saxon.trans.XPathException -> La5
            net.sf.saxon.lib.ParseOptions r4 = r2.getParseOptions()     // Catch: net.p110sf.saxon.trans.XPathException -> La5
            r3.<init>(r4)     // Catch: net.p110sf.saxon.trans.XPathException -> La5
            net.sf.saxon.expr.parser.RetainedStaticContext r4 = r6.getRetainedStaticContext()     // Catch: net.p110sf.saxon.trans.XPathException -> La5
            net.sf.saxon.expr.PackageData r4 = r4.getPackageData()     // Catch: net.p110sf.saxon.trans.XPathException -> La5
            boolean r5 = r4 instanceof net.p110sf.saxon.style.StylesheetPackage     // Catch: net.p110sf.saxon.trans.XPathException -> La5
            if (r5 == 0) goto L5c
            r5 = r4
            net.sf.saxon.style.StylesheetPackage r5 = (net.p110sf.saxon.style.StylesheetPackage) r5     // Catch: net.p110sf.saxon.trans.XPathException -> La5
            net.sf.saxon.om.SpaceStrippingRule r5 = r5.getSpaceStrippingRule()     // Catch: net.p110sf.saxon.trans.XPathException -> La5
            r3.setSpaceStrippingRule(r5)     // Catch: net.p110sf.saxon.trans.XPathException -> La5
            net.sf.saxon.style.StylesheetPackage r4 = (net.p110sf.saxon.style.StylesheetPackage) r4     // Catch: net.p110sf.saxon.trans.XPathException -> La5
            boolean r4 = r4.isStripsTypeAnnotations()     // Catch: net.p110sf.saxon.trans.XPathException -> La5
            if (r4 == 0) goto L63
            net.sf.saxon.event.Receiver r2 = r2.getAnnotationStripper(r1)     // Catch: net.p110sf.saxon.trans.XPathException -> La5
            goto L64
        L5c:
            net.sf.saxon.om.IgnorableSpaceStrippingRule r2 = net.p110sf.saxon.om.IgnorableSpaceStrippingRule.getInstance()     // Catch: net.p110sf.saxon.trans.XPathException -> La5
            r3.setSpaceStrippingRule(r2)     // Catch: net.p110sf.saxon.trans.XPathException -> La5
        L63:
            r2 = r1
        L64:
            net.sf.saxon.event.PipelineConfiguration r4 = r1.getPipelineConfiguration()     // Catch: net.p110sf.saxon.trans.XPathException -> La5
            r2.setPipelineConfiguration(r4)     // Catch: net.p110sf.saxon.trans.XPathException -> La5
            net.p110sf.saxon.event.Sender.send(r7, r2, r3)     // Catch: net.p110sf.saxon.trans.XPathException -> La5
            net.sf.saxon.om.NodeInfo r7 = r1.getCurrentRoot()     // Catch: net.p110sf.saxon.trans.XPathException -> La5
            boolean r2 = r7 instanceof net.p110sf.saxon.tree.tiny.TinyDocumentImpl     // Catch: net.p110sf.saxon.trans.XPathException -> La5
            java.lang.String r3 = ""
            java.lang.String r4 = "saxon:document-uri"
            if (r2 == 0) goto L88
            r2 = r7
            net.sf.saxon.tree.tiny.TinyDocumentImpl r2 = (net.p110sf.saxon.tree.tiny.TinyDocumentImpl) r2     // Catch: net.p110sf.saxon.trans.XPathException -> La5
            r2.setBaseURI(r0)     // Catch: net.p110sf.saxon.trans.XPathException -> La5
            net.sf.saxon.om.TreeInfo r0 = r2.getTreeInfo()     // Catch: net.p110sf.saxon.trans.XPathException -> La5
            r0.setUserData(r4, r3)     // Catch: net.p110sf.saxon.trans.XPathException -> La5
            goto L99
        L88:
            boolean r2 = r7 instanceof net.p110sf.saxon.tree.linked.DocumentImpl     // Catch: net.p110sf.saxon.trans.XPathException -> La5
            if (r2 == 0) goto L99
            r2 = r7
            net.sf.saxon.tree.linked.DocumentImpl r2 = (net.p110sf.saxon.tree.linked.DocumentImpl) r2     // Catch: net.p110sf.saxon.trans.XPathException -> La5
            r2.setBaseURI(r0)     // Catch: net.p110sf.saxon.trans.XPathException -> La5
            net.sf.saxon.om.TreeInfo r0 = r2.getTreeInfo()     // Catch: net.p110sf.saxon.trans.XPathException -> La5
            r0.setUserData(r4, r3)     // Catch: net.p110sf.saxon.trans.XPathException -> La5
        L99:
            r1.reset()     // Catch: net.p110sf.saxon.trans.XPathException -> La5
            return r7
        L9d:
            net.sf.saxon.trans.XPathException r7 = new net.sf.saxon.trans.XPathException     // Catch: net.p110sf.saxon.trans.XPathException -> La5
            java.lang.String r0 = "parse-xml() function is not available in this environment"
            r7.<init>(r0)     // Catch: net.p110sf.saxon.trans.XPathException -> La5
            throw r7     // Catch: net.p110sf.saxon.trans.XPathException -> La5
        La5:
            r7 = move-exception
            java.lang.String r6 = r6.m63045a(r7)
            net.sf.saxon.trans.XPathException r7 = new net.sf.saxon.trans.XPathException
            java.lang.String r0 = "FODC0006"
            r7.<init>(r6, r0)
            r7.maybeSetContext(r8)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.functions.ParseXml.m63046b(net.sf.saxon.value.StringValue, net.sf.saxon.expr.XPathContext):net.sf.saxon.om.NodeInfo");
    }

    /* renamed from: c */
    public final NodeInfo m63047c(StringValue stringValue, XPathContext xPathContext) throws XPathException {
        Receiver receiver;
        String staticBaseUriString = getRetainedStaticContext().getStaticBaseUriString();
        RetentiveErrorHandler retentiveErrorHandler = new RetentiveErrorHandler();
        try {
            Controller controller = xPathContext.getController();
            if (controller == null) {
                throw new XPathException("parse-xml() function is not available in this environment");
            }
            Configuration configuration = controller.getConfiguration();
            InputSource inputSource = new InputSource(new StringReader(stringValue.getStringValue()));
            inputSource.setSystemId(staticBaseUriString);
            SAXSource sAXSource = new SAXSource(inputSource);
            sAXSource.setSystemId(staticBaseUriString);
            Builder makeBuilder = TreeModel.TINY_TREE.makeBuilder(controller.makePipelineConfiguration());
            ParseOptions parseOptions = new ParseOptions(configuration.getParseOptions());
            PackageData packageData = getRetainedStaticContext().getPackageData();
            if (packageData instanceof StylesheetPackage) {
                parseOptions.setSpaceStrippingRule(((StylesheetPackage) packageData).getSpaceStrippingRule());
                if (((StylesheetPackage) packageData).isStripsTypeAnnotations()) {
                    receiver = configuration.getAnnotationStripper(makeBuilder);
                    parseOptions.setErrorHandler(retentiveErrorHandler);
                    receiver.setPipelineConfiguration(makeBuilder.getPipelineConfiguration());
                    Sender.send(sAXSource, receiver, parseOptions);
                    TinyDocumentImpl tinyDocumentImpl = (TinyDocumentImpl) makeBuilder.getCurrentRoot();
                    tinyDocumentImpl.setBaseURI(staticBaseUriString);
                    makeBuilder.reset();
                    return tinyDocumentImpl;
                }
            } else {
                parseOptions.setSpaceStrippingRule(IgnorableSpaceStrippingRule.getInstance());
            }
            receiver = makeBuilder;
            parseOptions.setErrorHandler(retentiveErrorHandler);
            receiver.setPipelineConfiguration(makeBuilder.getPipelineConfiguration());
            Sender.send(sAXSource, receiver, parseOptions);
            TinyDocumentImpl tinyDocumentImpl2 = (TinyDocumentImpl) makeBuilder.getCurrentRoot();
            tinyDocumentImpl2.setBaseURI(staticBaseUriString);
            makeBuilder.reset();
            return tinyDocumentImpl2;
        } catch (XPathException e) {
            XPathException xPathException = new XPathException(m63045a(e), "FODC0006");
            retentiveErrorHandler.captureRetainedErrors(xPathException);
            xPathException.maybeSetContext(xPathContext);
            throw xPathException;
        }
    }

    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        StringValue stringValue = (StringValue) sequenceArr[0].head();
        return stringValue == null ? EmptySequence.getInstance() : m63044d() ? m63047c(stringValue, xPathContext) : m63046b(stringValue, xPathContext);
    }
}
