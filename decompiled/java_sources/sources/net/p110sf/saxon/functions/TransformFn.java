package net.p110sf.saxon.functions;

import com.caverock.androidsvg.SVGParser;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.sun.org.apache.xalan.internal.xsltc.trax.TransformerFactoryImpl;
import java.io.StringReader;
import java.io.StringWriter;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import javax.xml.transform.Source;
import javax.xml.transform.TransformerException;
import javax.xml.transform.stream.StreamSource;
import kotlinx.coroutines.DebugKt;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.Version;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.expr.Callable;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.functions.TransformFn;
import net.p110sf.saxon.lib.AugmentedSource;
import net.p110sf.saxon.lib.DirectResourceResolver;
import net.p110sf.saxon.lib.ErrorReporter;
import net.p110sf.saxon.lib.Feature;
import net.p110sf.saxon.lib.ParseOptions;
import net.p110sf.saxon.lib.ResourceRequest;
import net.p110sf.saxon.lib.ResultDocumentResolver;
import net.p110sf.saxon.ma.arrays.ArrayItemType;
import net.p110sf.saxon.ma.map.HashTrieMap;
import net.p110sf.saxon.ma.map.MapItem;
import net.p110sf.saxon.ma.map.MapType;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.s9api.Action;
import net.p110sf.saxon.s9api.Destination;
import net.p110sf.saxon.s9api.Processor;
import net.p110sf.saxon.s9api.QName;
import net.p110sf.saxon.s9api.RawDestination;
import net.p110sf.saxon.s9api.SaxonApiException;
import net.p110sf.saxon.s9api.Serializer;
import net.p110sf.saxon.s9api.XdmDestination;
import net.p110sf.saxon.s9api.XdmNode;
import net.p110sf.saxon.s9api.XdmValue;
import net.p110sf.saxon.s9api.XmlProcessingError;
import net.p110sf.saxon.s9api.Xslt30Transformer;
import net.p110sf.saxon.s9api.XsltCompiler;
import net.p110sf.saxon.s9api.XsltExecutable;
import net.p110sf.saxon.s9api.XsltPackage;
import net.p110sf.saxon.serialize.SerializationProperties;
import net.p110sf.saxon.trans.StylesheetCache;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.AtomicIterator;
import net.p110sf.saxon.tree.wrapper.RebasedDocument;
import net.p110sf.saxon.type.SpecificFunctionType;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.BooleanValue;
import net.p110sf.saxon.value.QNameValue;
import net.p110sf.saxon.value.SequenceType;
import net.p110sf.saxon.value.StringValue;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public class TransformFn extends SystemFunction implements Callable {

    /* renamed from: h */
    public static final String[] f100331h = {TransformerFactoryImpl.PACKAGE_NAME, "package-version", "package-node", "package-location", "static-params", "global-context-item", "template-params", "tunnel-params", "initial-function", "function-params"};

    /* renamed from: i */
    public static final String f100332i = "dummy";

    /* renamed from: net.sf.saxon.functions.TransformFn$b */
    /* loaded from: classes11.dex */
    public static abstract class AbstractC18380b implements ResultDocumentResolver {

        /* renamed from: a */
        public Xslt30Transformer f100333a;

        /* renamed from: b */
        public String f100334b;

        /* renamed from: c */
        public String f100335c;

        /* renamed from: d */
        public Function f100336d;

        /* renamed from: e */
        public XPathContext f100337e;

        /* renamed from: f */
        public HashTrieMap f100338f;

        public AbstractC18380b() {
            this.f100338f = new HashTrieMap();
        }

        /* renamed from: d */
        public static AbstractC18380b m63198d(Processor processor, String str) {
            str.hashCode();
            char c = 65535;
            switch (str.hashCode()) {
                case -597985916:
                    if (str.equals("serialized")) {
                        c = 0;
                        break;
                    }
                    break;
                case 112680:
                    if (str.equals("raw")) {
                        c = 1;
                        break;
                    }
                    break;
                case 861720859:
                    if (str.equals("document")) {
                        c = 2;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    return new C18383e(processor);
                case 1:
                    return new C18382d();
                case 2:
                    return new C18381c();
                default:
                    throw new IllegalArgumentException("delivery-format");
            }
        }

        /* renamed from: a */
        public URI m63199a(String str, String str2) throws XPathException {
            try {
                return ResolveURI.makeAbsolute(str, str2);
            } catch (URISyntaxException e) {
                throw XPathException.makeXPathException(e);
            }
        }

        /* renamed from: b */
        public abstract Destination mo63200b(MapItem mapItem) throws XPathException;

        /* renamed from: c */
        public abstract Sequence mo63201c() throws XPathException;

        /* JADX WARN: Removed duplicated region for block: B:39:0x00dd  */
        /* JADX WARN: Removed duplicated region for block: B:57:0x0157 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:60:0x0152 A[SYNTHETIC] */
        /* renamed from: e */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public net.p110sf.saxon.s9api.Serializer m63202e(net.p110sf.saxon.s9api.Processor r8, net.p110sf.saxon.ma.map.MapItem r9) throws net.p110sf.saxon.trans.XPathException {
            /*
                Method dump skipped, instructions count: 372
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.functions.TransformFn.AbstractC18380b.m63202e(net.sf.saxon.s9api.Processor, net.sf.saxon.ma.map.MapItem):net.sf.saxon.s9api.Serializer");
        }

        /* renamed from: f */
        public abstract MapItem mo63203f(MapItem mapItem) throws XPathException;

        /* renamed from: g */
        public GroundedValue m63204g(String str, Sequence sequence) throws XPathException {
            Function function = this.f100336d;
            if (function != null) {
                sequence = function.call(this.f100337e.newCleanContext(), new Sequence[]{new StringValue(str), sequence});
            }
            return sequence.materialize();
        }

        /* renamed from: h */
        public final void m63205h(String str) {
            this.f100334b = str;
        }

        /* renamed from: i */
        public void m63206i(Function function, XPathContext xPathContext) {
            this.f100336d = function;
            this.f100337e = xPathContext;
        }

        /* renamed from: j */
        public final void m63207j(String str) {
            this.f100335c = str;
        }

        /* renamed from: k */
        public final void m63208k(Xslt30Transformer xslt30Transformer) {
            this.f100333a = xslt30Transformer;
        }
    }

    /* renamed from: net.sf.saxon.functions.TransformFn$c */
    /* loaded from: classes11.dex */
    public static class C18381c extends AbstractC18380b {

        /* renamed from: g */
        public final Map<String, GroundedValue> f100339g;

        /* renamed from: h */
        public final XdmDestination f100340h;

        public C18381c() {
            super();
            this.f100339g = new ConcurrentHashMap();
            this.f100340h = new XdmDestination();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: m */
        public /* synthetic */ void m63210m(XdmDestination xdmDestination, URI uri) throws SaxonApiException {
            try {
                this.f100339g.put(uri.toASCIIString(), m63204g(uri.toASCIIString(), xdmDestination.getXdmNode().getUnderlyingValue()));
            } catch (XPathException e) {
                throw new UncheckedXPathException(e);
            }
        }

        @Override // net.p110sf.saxon.functions.TransformFn.AbstractC18380b
        /* renamed from: b */
        public Destination mo63200b(MapItem mapItem) {
            return this.f100340h;
        }

        @Override // net.p110sf.saxon.functions.TransformFn.AbstractC18380b
        /* renamed from: c */
        public Sequence mo63201c() throws XPathException {
            XdmNode xdmNode = this.f100340h.getXdmNode();
            if (xdmNode == null) {
                return null;
            }
            return m63204g(this.f100334b, xdmNode.getUnderlyingNode());
        }

        @Override // net.p110sf.saxon.functions.TransformFn.AbstractC18380b
        /* renamed from: f */
        public MapItem mo63203f(MapItem mapItem) {
            for (Map.Entry<String, GroundedValue> entry : this.f100339g.entrySet()) {
                mapItem = mapItem.addEntry(new StringValue(entry.getKey()), entry.getValue());
            }
            return mapItem;
        }

        @Override // net.p110sf.saxon.lib.ResultDocumentResolver
        public Receiver resolve(XPathContext xPathContext, String str, String str2, SerializationProperties serializationProperties) throws XPathException {
            final URI m63199a = m63199a(str, str2);
            final XdmDestination xdmDestination = new XdmDestination();
            xdmDestination.setDestinationBaseURI(m63199a);
            xdmDestination.onClose(new Action() { // from class: com.sunia.HTREnginev2.pln
                @Override // net.p110sf.saxon.s9api.Action
                public final void act() {
                    TransformFn.C18381c.this.m63210m(xdmDestination, m63199a);
                }
            });
            return xdmDestination.getReceiver(xPathContext.getController().makePipelineConfiguration(), serializationProperties);
        }
    }

    /* renamed from: net.sf.saxon.functions.TransformFn$d */
    /* loaded from: classes11.dex */
    public static class C18382d extends AbstractC18380b {

        /* renamed from: g */
        public final Map<String, GroundedValue> f100341g;

        /* renamed from: h */
        public final RawDestination f100342h;

        public C18382d() {
            super();
            this.f100341g = new ConcurrentHashMap();
            this.f100342h = new RawDestination();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: m */
        public /* synthetic */ void m63212m(RawDestination rawDestination, URI uri) throws SaxonApiException {
            try {
                rawDestination.close();
                this.f100341g.put(uri.toASCIIString(), m63204g(uri.toASCIIString(), rawDestination.getXdmValue().getUnderlyingValue()));
            } catch (XPathException e) {
                throw new UncheckedXPathException(e);
            }
        }

        @Override // net.p110sf.saxon.functions.TransformFn.AbstractC18380b
        /* renamed from: b */
        public Destination mo63200b(MapItem mapItem) {
            return this.f100342h;
        }

        @Override // net.p110sf.saxon.functions.TransformFn.AbstractC18380b
        /* renamed from: c */
        public Sequence mo63201c() throws XPathException {
            return m63204g(this.f100334b, this.f100342h.getXdmValue().getUnderlyingValue());
        }

        @Override // net.p110sf.saxon.functions.TransformFn.AbstractC18380b
        /* renamed from: f */
        public MapItem mo63203f(MapItem mapItem) {
            for (Map.Entry<String, GroundedValue> entry : this.f100341g.entrySet()) {
                mapItem = mapItem.addEntry(new StringValue(entry.getKey()), entry.getValue());
            }
            return mapItem;
        }

        @Override // net.p110sf.saxon.lib.ResultDocumentResolver
        public Receiver resolve(XPathContext xPathContext, String str, String str2, SerializationProperties serializationProperties) throws XPathException {
            final URI m63199a = m63199a(str, str2);
            final RawDestination rawDestination = new RawDestination();
            rawDestination.onClose(new Action() { // from class: com.sunia.HTREnginev2.qln
                @Override // net.p110sf.saxon.s9api.Action
                public final void act() {
                    TransformFn.C18382d.this.m63212m(rawDestination, m63199a);
                }
            });
            return rawDestination.getReceiver(xPathContext.getController().makePipelineConfiguration(), serializationProperties);
        }
    }

    /* renamed from: net.sf.saxon.functions.TransformFn$e */
    /* loaded from: classes11.dex */
    public static class C18383e extends AbstractC18380b {

        /* renamed from: g */
        public final Processor f100343g;

        /* renamed from: h */
        public final Map<String, GroundedValue> f100344h;

        /* renamed from: i */
        public StringWriter f100345i;

        public C18383e(Processor processor) {
            super();
            this.f100344h = new ConcurrentHashMap();
            this.f100343g = processor;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: m */
        public /* synthetic */ void m63214m(URI uri, StringWriter stringWriter) throws SaxonApiException {
            try {
                this.f100344h.put(uri.toASCIIString(), m63204g(uri.toASCIIString(), new StringValue(stringWriter.toString())));
            } catch (XPathException e) {
                throw new UncheckedXPathException(e);
            }
        }

        @Override // net.p110sf.saxon.functions.TransformFn.AbstractC18380b
        /* renamed from: b */
        public Destination mo63200b(MapItem mapItem) throws XPathException {
            Serializer m63202e = m63202e(this.f100343g, mapItem);
            StringWriter stringWriter = new StringWriter();
            this.f100345i = stringWriter;
            m63202e.setOutputWriter(stringWriter);
            return m63202e;
        }

        @Override // net.p110sf.saxon.functions.TransformFn.AbstractC18380b
        /* renamed from: c */
        public Sequence mo63201c() throws XPathException {
            String stringWriter = this.f100345i.toString();
            if (stringWriter.isEmpty()) {
                return null;
            }
            return m63204g(this.f100334b, new StringValue(stringWriter));
        }

        @Override // net.p110sf.saxon.functions.TransformFn.AbstractC18380b
        /* renamed from: f */
        public MapItem mo63203f(MapItem mapItem) {
            for (Map.Entry<String, GroundedValue> entry : this.f100344h.entrySet()) {
                mapItem = mapItem.addEntry(new StringValue(entry.getKey()), entry.getValue());
            }
            return mapItem;
        }

        @Override // net.p110sf.saxon.lib.ResultDocumentResolver
        public Receiver resolve(XPathContext xPathContext, String str, String str2, SerializationProperties serializationProperties) throws XPathException {
            final URI m63199a = m63199a(str, str2);
            if (m63199a.getScheme().equals("dummy")) {
                throw new XPathException("The location of output documents is undefined: use the transform option base-output-uri", "FOXT0002");
            }
            final StringWriter stringWriter = new StringWriter();
            Serializer m63202e = m63202e(this.f100343g, null);
            m63202e.setCharacterMap(serializationProperties.getCharacterMapIndex());
            m63202e.setOutputWriter(stringWriter);
            m63202e.onClose(new Action() { // from class: com.sunia.HTREnginev2.rln
                @Override // net.p110sf.saxon.s9api.Action
                public final void act() {
                    TransformFn.C18383e.this.m63214m(m63199a, stringWriter);
                }
            });
            try {
                Receiver receiver = m63202e.getReceiver(xPathContext.getController().makePipelineConfiguration(), serializationProperties);
                receiver.setSystemId(m63199a.toASCIIString());
                return receiver;
            } catch (SaxonApiException e) {
                throw XPathException.makeXPathException(e);
            }
        }
    }

    /* renamed from: net.sf.saxon.functions.TransformFn$f */
    /* loaded from: classes11.dex */
    public static class C18384f implements ErrorReporter {

        /* renamed from: e */
        public final List<XmlProcessingError> f100346e;

        /* renamed from: f */
        public final ErrorReporter f100347f;

        public C18384f(List<XmlProcessingError> list, ErrorReporter errorReporter) {
            this.f100346e = list;
            this.f100347f = errorReporter;
        }

        @Override // net.p110sf.saxon.lib.ErrorReporter
        public void report(XmlProcessingError xmlProcessingError) {
            if (!xmlProcessingError.isWarning()) {
                this.f100346e.add(xmlProcessingError);
            }
            this.f100347f.report(xmlProcessingError);
        }
    }

    public static OptionsParameter makeOptionsParameter() {
        OptionsParameter optionsParameter = new OptionsParameter();
        optionsParameter.addAllowedOption("xslt-version", SequenceType.SINGLE_DECIMAL);
        SequenceType sequenceType = SequenceType.SINGLE_STRING;
        optionsParameter.addAllowedOption("stylesheet-location", sequenceType);
        SequenceType sequenceType2 = SequenceType.SINGLE_NODE;
        optionsParameter.addAllowedOption("stylesheet-node", sequenceType2);
        optionsParameter.addAllowedOption("stylesheet-text", sequenceType);
        optionsParameter.addAllowedOption("stylesheet-base-uri", sequenceType);
        optionsParameter.addAllowedOption("base-output-uri", sequenceType);
        MapType mapType = MapType.ANY_MAP_TYPE;
        optionsParameter.addAllowedOption("stylesheet-params", SequenceType.makeSequenceType(mapType, 16384));
        optionsParameter.addAllowedOption("source-node", sequenceType2);
        optionsParameter.addAllowedOption("source-location", sequenceType);
        SequenceType sequenceType3 = SequenceType.SINGLE_QNAME;
        optionsParameter.addAllowedOption("initial-mode", sequenceType3);
        SequenceType sequenceType4 = SequenceType.ANY_SEQUENCE;
        optionsParameter.addAllowedOption("initial-match-selection", sequenceType4);
        optionsParameter.addAllowedOption("initial-template", sequenceType3);
        optionsParameter.addAllowedOption("delivery-format", sequenceType);
        optionsParameter.addAllowedOption("serialization-params", SequenceType.makeSequenceType(mapType, 16384));
        optionsParameter.addAllowedOption("vendor-options", SequenceType.makeSequenceType(mapType, 16384));
        optionsParameter.addAllowedOption("cache", SequenceType.SINGLE_BOOLEAN);
        optionsParameter.addAllowedOption(TransformerFactoryImpl.PACKAGE_NAME, sequenceType);
        optionsParameter.addAllowedOption("package-version", sequenceType);
        optionsParameter.addAllowedOption("package-node", sequenceType2);
        optionsParameter.addAllowedOption("package-location", sequenceType);
        optionsParameter.addAllowedOption("static-params", SequenceType.makeSequenceType(mapType, 16384));
        optionsParameter.addAllowedOption("global-context-item", SequenceType.SINGLE_ITEM);
        optionsParameter.addAllowedOption("template-params", SequenceType.makeSequenceType(mapType, 16384));
        optionsParameter.addAllowedOption("tunnel-params", SequenceType.makeSequenceType(mapType, 16384));
        optionsParameter.addAllowedOption("initial-function", sequenceType3);
        optionsParameter.addAllowedOption("function-params", ArrayItemType.SINGLE_ARRAY);
        optionsParameter.addAllowedOption("requested-properties", SequenceType.makeSequenceType(mapType, 16384));
        optionsParameter.addAllowedOption("post-process", SequenceType.makeSequenceType(new SpecificFunctionType(new SequenceType[]{sequenceType, sequenceType4}, sequenceType4), 16384));
        return optionsParameter;
    }

    /* renamed from: n */
    public static /* synthetic */ String m63178n(String str, NodeInfo nodeInfo) {
        return str;
    }

    /* renamed from: o */
    public static /* synthetic */ String m63179o(String str, NodeInfo nodeInfo) {
        return str;
    }

    /* renamed from: v */
    public static NodeInfo m63180v(NodeInfo nodeInfo, Configuration configuration, int i) throws XPathException {
        ParseOptions parseOptions = new ParseOptions(configuration.getParseOptions());
        parseOptions.setSchemaValidationMode(i);
        return configuration.buildDocumentTree(nodeInfo.asActiveSource(), parseOptions).getRootNode();
    }

    /* renamed from: c */
    public final boolean m63181c(AtomicValue atomicValue) throws XPathException {
        if (atomicValue instanceof BooleanValue) {
            return ((BooleanValue) atomicValue).getBooleanValue();
        }
        if (atomicValue instanceof StringValue) {
            String obj = Whitespace.normalizeWhitespace(atomicValue.getUnicodeStringValue()).toString();
            if (obj.equals("yes") || obj.equals("true") || obj.equals("1")) {
                return true;
            }
            if (obj.equals(SVGParser.f16048t) || obj.equals("false") || obj.equals("0")) {
                return false;
            }
        }
        throw new XPathException("Unrecognized boolean value " + atomicValue, "FOXT0002");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:55:0x02a4. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:168:0x04c2 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:171:0x04d2 A[Catch: SaxonApiException -> 0x0543, TryCatch #5 {SaxonApiException -> 0x0543, blocks: (B:161:0x03f4, B:169:0x04c4, B:171:0x04d2, B:174:0x04d9, B:182:0x04e5, B:185:0x04f3, B:188:0x04fa, B:192:0x0504, B:194:0x0517, B:195:0x051e, B:196:0x051b, B:197:0x0523, B:200:0x0414, B:203:0x04a3, B:205:0x04a7, B:211:0x0424, B:213:0x0439, B:215:0x0444, B:217:0x047b, B:220:0x0490, B:221:0x0493, B:224:0x0499, B:225:0x049c), top: B:160:0x03f4 }] */
    /* JADX WARN: Removed duplicated region for block: B:174:0x04d9 A[Catch: SaxonApiException -> 0x0543, TryCatch #5 {SaxonApiException -> 0x0543, blocks: (B:161:0x03f4, B:169:0x04c4, B:171:0x04d2, B:174:0x04d9, B:182:0x04e5, B:185:0x04f3, B:188:0x04fa, B:192:0x0504, B:194:0x0517, B:195:0x051e, B:196:0x051b, B:197:0x0523, B:200:0x0414, B:203:0x04a3, B:205:0x04a7, B:211:0x0424, B:213:0x0439, B:215:0x0444, B:217:0x047b, B:220:0x0490, B:221:0x0493, B:224:0x0499, B:225:0x049c), top: B:160:0x03f4 }] */
    /* JADX WARN: Removed duplicated region for block: B:177:0x0535  */
    /* JADX WARN: Removed duplicated region for block: B:179:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:180:0x04e1  */
    /* JADX WARN: Removed duplicated region for block: B:205:0x04a7 A[Catch: SaxonApiException -> 0x0543, TryCatch #5 {SaxonApiException -> 0x0543, blocks: (B:161:0x03f4, B:169:0x04c4, B:171:0x04d2, B:174:0x04d9, B:182:0x04e5, B:185:0x04f3, B:188:0x04fa, B:192:0x0504, B:194:0x0517, B:195:0x051e, B:196:0x051b, B:197:0x0523, B:200:0x0414, B:203:0x04a3, B:205:0x04a7, B:211:0x0424, B:213:0x0439, B:215:0x0444, B:217:0x047b, B:220:0x0490, B:221:0x0493, B:224:0x0499, B:225:0x049c), top: B:160:0x03f4 }] */
    /* JADX WARN: Removed duplicated region for block: B:206:0x04bd  */
    @Override // net.p110sf.saxon.expr.Callable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public net.p110sf.saxon.om.Sequence call(net.p110sf.saxon.expr.XPathContext r41, net.p110sf.saxon.om.Sequence[] r42) throws net.p110sf.saxon.trans.XPathException {
        /*
            Method dump skipped, instructions count: 1494
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.functions.TransformFn.call(net.sf.saxon.expr.XPathContext, net.sf.saxon.om.Sequence[]):net.sf.saxon.om.Sequence");
    }

    /* renamed from: d */
    public final String m63182d(Map<String, Sequence> map) throws XPathException {
        return m63192p(map, "initial-mode", "initial-template");
    }

    /* renamed from: e */
    public final String m63183e(Map<String, Sequence> map) throws XPathException {
        return m63192p(map, "initial-mode", "initial-template", "initial-function");
    }

    /* renamed from: f */
    public final void m63184f(Sequence sequence) throws XPathException {
        SequenceIterator iterate = sequence.iterate();
        while (true) {
            Item next = iterate.next();
            if (next == null) {
                return;
            }
            if ((next instanceof NodeInfo) && ((NodeInfo) next).getTreeInfo().isTyped()) {
                throw new XPathException("Schema-validated nodes cannot be passed to fn:transform() when it runs under a different Saxon Configuration", "FOXT0002");
            }
        }
    }

    /* renamed from: g */
    public final String m63185g(Map<String, Sequence> map) throws XPathException {
        return m63189k(map, "stylesheet-location", "stylesheet-node", "stylesheet-text");
    }

    /* renamed from: h */
    public final String m63186h(Map<String, Sequence> map) throws XPathException {
        String m63189k = m63189k(map, "stylesheet-location", "stylesheet-node", "stylesheet-text", TransformerFactoryImpl.PACKAGE_NAME, "package-node", "package-location");
        if (!m63189k.equals("package-location")) {
            return m63189k;
        }
        throw new XPathException("The transform option " + m63189k + " is not implemented in Saxon", "FOXT0002");
    }

    /* renamed from: i */
    public final void m63187i(Map<String, Sequence> map, XPathContext xPathContext, int i) throws XPathException {
        if (map.isEmpty()) {
            throw new XPathException("No transformation options supplied", "FOXT0002");
        }
        for (String str : map.keySet()) {
            if (m63191m(str) && i < 30) {
                throw new XPathException("The transform option " + str + " is only available when using an XSLT 3.0 processor", "FOXT0002");
            }
        }
    }

    /* renamed from: j */
    public final String m63188j(String... strArr) {
        StringBuilder sb = new StringBuilder(256);
        boolean z = true;
        for (String str : strArr) {
            if (z) {
                z = false;
            } else {
                sb.append(" | ");
            }
            sb.append(str);
        }
        return sb.toString();
    }

    /* renamed from: k */
    public final String m63189k(Map<String, Sequence> map, String... strArr) throws XPathException {
        String m63192p = m63192p(map, strArr);
        if (m63192p != null) {
            return m63192p;
        }
        throw new XPathException("One of the following transform options must be present: " + m63188j(strArr));
    }

    /* renamed from: l */
    public final XsltExecutable m63190l(Map<String, Sequence> map, XsltCompiler xsltCompiler, String str, XPathContext xPathContext) throws XPathException {
        URI uri;
        Item head = map.get(str).head();
        Sequence sequence = map.get("stylesheet-base-uri");
        if (sequence != null) {
            String stringValue = sequence.head().getStringValue();
            uri = URI.create(stringValue);
            if (!uri.isAbsolute()) {
                uri = getRetainedStaticContext().getStaticBaseUri().resolve(stringValue);
            }
        } else {
            uri = null;
        }
        ArrayList arrayList = new ArrayList();
        xsltCompiler.setErrorReporter(new C18384f(arrayList, xsltCompiler.getErrorReporter()));
        boolean z = map.get("static-params") == null;
        if (map.get("cache") != null) {
            z &= ((BooleanValue) map.get("cache").head()).getBooleanValue();
        }
        StylesheetCache stylesheetCache = xPathContext.getController().getStylesheetCache();
        Configuration underlyingConfiguration = xsltCompiler.getProcessor().getUnderlyingConfiguration();
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case -1999358892:
                if (str.equals("stylesheet-location")) {
                    c = 0;
                    break;
                }
                break;
            case -1923341390:
                if (str.equals(TransformerFactoryImpl.PACKAGE_NAME)) {
                    c = 1;
                    break;
                }
                break;
            case -1923328215:
                if (str.equals("package-node")) {
                    c = 2;
                    break;
                }
                break;
            case 188836385:
                if (str.equals("stylesheet-node")) {
                    c = 3;
                    break;
                }
                break;
            case 189006156:
                if (str.equals("stylesheet-text")) {
                    c = 4;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                String stringValue2 = head.getStringValue();
                XsltExecutable stylesheetByLocation = z ? stylesheetCache.getStylesheetByLocation(stringValue2) : null;
                if (stylesheetByLocation != null) {
                    return stylesheetByLocation;
                }
                try {
                    String staticBaseUriString = getStaticBaseUriString();
                    ResourceRequest resourceRequest = new ResourceRequest();
                    resourceRequest.baseUri = staticBaseUriString;
                    resourceRequest.relativeUri = stringValue2;
                    resourceRequest.uri = ResolveURI.makeAbsolute(stringValue2, staticBaseUriString).toString();
                    resourceRequest.nature = "http://www.w3.org/1999/XSL/Transform";
                    resourceRequest.purpose = "transformation";
                    try {
                        XsltExecutable compile = xsltCompiler.compile(resourceRequest.resolve(xsltCompiler.getResourceResolver(), underlyingConfiguration.getResourceResolver(), new DirectResourceResolver(underlyingConfiguration)));
                        if (!z) {
                            return compile;
                        }
                        stylesheetCache.setStylesheetByLocation(stringValue2, compile);
                        return compile;
                    } catch (SaxonApiException e) {
                        return m63194r(e, arrayList);
                    }
                } catch (URISyntaxException e2) {
                    throw new XPathException("Failed to resolve stylesheet-location in fn:transform: " + e2.getMessage());
                } catch (TransformerException e3) {
                    throw new XPathException(e3);
                }
            case 1:
                String trim = Whitespace.trim(head.getStringValue());
                String stringValue3 = map.get("package-version") != null ? map.get("package-version").head().getStringValue() : null;
                try {
                    XsltPackage obtainPackage = xsltCompiler.obtainPackage(trim, stringValue3);
                    if (obtainPackage != null) {
                        return obtainPackage.link();
                    }
                    throw new XPathException("Cannot locate package " + trim + " version " + stringValue3, "FOXT0002");
                } catch (SaxonApiException e4) {
                    if (e4.getCause() instanceof XPathException) {
                        throw ((XPathException) e4.getCause());
                    }
                    throw new XPathException(e4);
                }
            case 2:
            case 3:
                NodeInfo nodeInfo = (NodeInfo) head;
                if (uri != null && !nodeInfo.getBaseURI().equals(uri.toASCIIString())) {
                    final String aSCIIString = uri.toASCIIString();
                    nodeInfo = new RebasedDocument(nodeInfo.getTreeInfo(), new java.util.function.Function() { // from class: com.sunia.HTREnginev2.nln
                        @Override // java.util.function.Function
                        public final Object apply(Object obj) {
                            String m63178n;
                            m63178n = TransformFn.m63178n(aSCIIString, (NodeInfo) obj);
                            return m63178n;
                        }
                    }, new java.util.function.Function() { // from class: com.sunia.HTREnginev2.oln
                        @Override // java.util.function.Function
                        public final Object apply(Object obj) {
                            String m63179o;
                            m63179o = TransformFn.m63179o(aSCIIString, (NodeInfo) obj);
                            return m63179o;
                        }
                    }).getRootNode();
                }
                XsltExecutable stylesheetByNode = z ? stylesheetCache.getStylesheetByNode(nodeInfo) : null;
                if (stylesheetByNode != null) {
                    return stylesheetByNode;
                }
                Source asActiveSource = nodeInfo.asActiveSource();
                if (uri != null) {
                    asActiveSource = AugmentedSource.makeAugmentedSource(asActiveSource);
                    asActiveSource.setSystemId(uri.toASCIIString());
                }
                try {
                    stylesheetByNode = xsltCompiler.compile(asActiveSource);
                } catch (SaxonApiException e5) {
                    m63194r(e5, arrayList);
                }
                if (!z) {
                    return stylesheetByNode;
                }
                stylesheetCache.setStylesheetByNode(nodeInfo, stylesheetByNode);
                return stylesheetByNode;
            case 4:
                String stringValue4 = head.getStringValue();
                XsltExecutable stylesheetByText = z ? stylesheetCache.getStylesheetByText(stringValue4) : null;
                if (stylesheetByText != null) {
                    return stylesheetByText;
                }
                StreamSource streamSource = new StreamSource(new StringReader(stringValue4));
                if (uri != null) {
                    streamSource.setSystemId(uri.toASCIIString());
                }
                try {
                    stylesheetByText = xsltCompiler.compile(streamSource);
                } catch (SaxonApiException e6) {
                    m63194r(e6, arrayList);
                }
                if (!z) {
                    return stylesheetByText;
                }
                stylesheetCache.setStylesheetByText(stringValue4, stylesheetByText);
                return stylesheetByText;
            default:
                return null;
        }
    }

    /* renamed from: m */
    public final boolean m63191m(String str) {
        for (String str2 : f100331h) {
            if (str2.equals(str)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: p */
    public final String m63192p(Map<String, Sequence> map, String... strArr) throws XPathException {
        String str = null;
        for (String str2 : strArr) {
            if (map.get(str2) != null) {
                if (str != null) {
                    throw new XPathException("The following transform options are mutually exclusive: " + m63188j(strArr), "FOXT0002");
                }
                str = str2;
            }
        }
        return str;
    }

    /* renamed from: q */
    public final void m63193q(MapItem mapItem, Map<QName, XdmValue> map, boolean z) throws XPathException {
        AtomicIterator keys = mapItem.keys();
        while (true) {
            AtomicValue next = keys.next();
            if (next == null) {
                return;
            }
            if (!(next instanceof QNameValue)) {
                throw new XPathException("The names of parameters must be supplied as QNames", "FOXT0002");
            }
            QName qName = new QName(((QNameValue) next).getStructuredQName());
            GroundedValue groundedValue = mapItem.get(next);
            if (!z) {
                m63184f(groundedValue);
            }
            map.put(qName, XdmValue.wrap(groundedValue));
        }
    }

    /* renamed from: r */
    public final XsltExecutable m63194r(SaxonApiException saxonApiException, List<XmlProcessingError> list) throws XPathException {
        Iterator<XmlProcessingError> it2 = list.iterator();
        if (it2.hasNext()) {
            XPathException fromXmlProcessingError = XPathException.fromXmlProcessingError(it2.next());
            fromXmlProcessingError.maybeSetErrorCode("FOXT0002");
            throw fromXmlProcessingError;
        }
        if (saxonApiException.getCause() instanceof XPathException) {
            throw ((XPathException) saxonApiException.getCause());
        }
        throw new XPathException(saxonApiException);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:7:0x0064. Please report as an issue. */
    /* renamed from: s */
    public final void m63195s(Map<String, Sequence> map, Processor processor) throws XPathException {
        Processor processor2;
        MapItem mapItem;
        AtomicIterator atomicIterator;
        Processor processor3 = processor;
        MapItem mapItem2 = (MapItem) map.get("requested-properties").head();
        AtomicIterator keys = mapItem2.keys();
        while (true) {
            AtomicValue next = keys.next();
            if (next == null) {
                return;
            }
            StructuredQName structuredQName = ((QNameValue) next.head()).getStructuredQName();
            AtomicValue atomicValue = (AtomicValue) mapItem2.get(next).head();
            if (structuredQName.hasURI("http://www.w3.org/1999/XSL/Transform")) {
                String localPart = structuredQName.getLocalPart();
                String stringValue = atomicValue.getStringValue();
                localPart.hashCode();
                mapItem = mapItem2;
                atomicIterator = keys;
                char c = 65535;
                switch (localPart.hashCode()) {
                    case -1915608999:
                        if (localPart.equals("supports-streaming")) {
                            c = 0;
                            break;
                        }
                        break;
                    case -1725812932:
                        if (localPart.equals("supports-namespace-axis")) {
                            c = 1;
                            break;
                        }
                        break;
                    case -1712941753:
                        if (localPart.equals("supports-higher-order-functions")) {
                            c = 2;
                            break;
                        }
                        break;
                    case -1657695499:
                        if (localPart.equals("is-schema-aware")) {
                            c = 3;
                            break;
                        }
                        break;
                    case -898172972:
                        if (localPart.equals("xsd-version")) {
                            c = 4;
                            break;
                        }
                        break;
                    case -630621272:
                        if (localPart.equals("xpath-version")) {
                            c = 5;
                            break;
                        }
                        break;
                    case -454573197:
                        if (localPart.equals("supports-dynamic-evaluation")) {
                            c = 6;
                            break;
                        }
                        break;
                    case 652222567:
                        if (localPart.equals("supports-serialization")) {
                            c = 7;
                            break;
                        }
                        break;
                    case 693173098:
                        if (localPart.equals("vendor-url")) {
                            c = '\b';
                            break;
                        }
                        break;
                    case 968199337:
                        if (localPart.equals("product-name")) {
                            c = '\t';
                            break;
                        }
                        break;
                    case 1185271562:
                        if (localPart.equals("supports-backwards-compatibility")) {
                            c = '\n';
                            break;
                        }
                        break;
                    case 1550806522:
                        if (localPart.equals("product-version")) {
                            c = 11;
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        processor2 = processor;
                        if (!m63181c(atomicValue)) {
                            if (!processor.getUnderlyingConfiguration().isLicensedFeature(2)) {
                                break;
                            } else {
                                processor2.setConfigurationProperty((Feature<Feature<String>>) Feature.STREAMABILITY, (Feature<String>) DebugKt.DEBUG_PROPERTY_VALUE_OFF);
                                break;
                            }
                        } else if (!processor.getUnderlyingConfiguration().isLicensedFeature(2)) {
                            m63197u("supports-streaming", stringValue);
                            break;
                        } else {
                            continue;
                        }
                    case 1:
                        processor2 = processor;
                        if (!m63181c(atomicValue)) {
                            m63197u("supports-namespace-axis", stringValue);
                            break;
                        } else {
                            continue;
                        }
                    case 2:
                        processor2 = processor;
                        if (!m63181c(atomicValue)) {
                            m63197u("supports-higher-order-functions", stringValue);
                            break;
                        } else {
                            continue;
                        }
                    case 3:
                        processor2 = processor;
                        if (!m63181c(atomicValue)) {
                            if (!processor.getUnderlyingConfiguration().isLicensedFeature(2)) {
                                break;
                            } else {
                                m63197u("is-schema-aware", stringValue);
                                break;
                            }
                        } else if (!processor.getUnderlyingConfiguration().isLicensedFeature(2)) {
                            m63197u("is-schema-aware", stringValue);
                            break;
                        } else {
                            processor2.setConfigurationProperty((Feature<Feature<Boolean>>) Feature.XSLT_SCHEMA_AWARE, (Feature<Boolean>) Boolean.TRUE);
                            continue;
                        }
                    case 4:
                        processor2 = processor;
                        try {
                            if (Double.parseDouble(stringValue) > 1.1d) {
                                m63197u("xsd-version", stringValue);
                                break;
                            } else {
                                continue;
                            }
                        } catch (NumberFormatException unused) {
                            m63197u("xsd-version", stringValue);
                            break;
                        }
                    case 5:
                        processor2 = processor;
                        try {
                            if (Double.parseDouble(stringValue) > 3.1d) {
                                m63197u("xpath-version", stringValue);
                                break;
                            } else {
                                continue;
                            }
                        } catch (NumberFormatException unused2) {
                            m63197u("xpath-version", stringValue);
                            break;
                        }
                    case 6:
                        if (!m63181c(atomicValue)) {
                            processor2 = processor;
                            processor2.setConfigurationProperty((Feature<Feature<Boolean>>) Feature.DISABLE_XSL_EVALUATE, (Feature<Boolean>) Boolean.TRUE);
                            break;
                        }
                        break;
                    case 7:
                        if (!m63181c(atomicValue)) {
                            m63197u("supports-serialization", stringValue);
                            break;
                        }
                        break;
                    case '\b':
                        if (!stringValue.contains("saxonica.com") && !atomicValue.getUnicodeStringValue().equals("Saxonica")) {
                            m63197u("vendor-url", stringValue);
                            break;
                        }
                        break;
                    case '\t':
                        if (!stringValue.equals("SAXON")) {
                            m63197u("vendor-url", stringValue);
                            break;
                        }
                        break;
                    case '\n':
                        if (!m63181c(atomicValue)) {
                            m63197u("supports-backwards-compatibility", stringValue);
                            break;
                        }
                        break;
                    case 11:
                        if (!Version.getProductVersion().startsWith(stringValue)) {
                            m63197u("product-version", stringValue);
                            break;
                        }
                        break;
                }
                processor2 = processor;
            } else {
                processor2 = processor3;
                mapItem = mapItem2;
                atomicIterator = keys;
            }
            mapItem2 = mapItem;
            processor3 = processor2;
            keys = atomicIterator;
        }
    }

    /* renamed from: t */
    public final void m63196t(Map<String, Sequence> map, XsltCompiler xsltCompiler, boolean z) throws XPathException {
        MapItem mapItem = (MapItem) map.get("static-params").head();
        AtomicIterator keys = mapItem.keys();
        while (true) {
            AtomicValue next = keys.next();
            if (next == null) {
                return;
            }
            if (!(next instanceof QNameValue)) {
                throw new XPathException("Parameter names in static-params must be supplied as QNames", "FOXT0002");
            }
            QName qName = new QName(((QNameValue) next).getStructuredQName());
            GroundedValue groundedValue = mapItem.get(next);
            if (!z) {
                m63184f(groundedValue);
            }
            xsltCompiler.setParameter(qName, XdmValue.wrap(groundedValue));
        }
    }

    /* renamed from: u */
    public final void m63197u(String str, String str2) throws XPathException {
        throw new XPathException("No XSLT processor is available with xsl:" + str + CloudStorageConstants.OPERATION_EQUAL + str2, "FOXT0001");
    }
}
