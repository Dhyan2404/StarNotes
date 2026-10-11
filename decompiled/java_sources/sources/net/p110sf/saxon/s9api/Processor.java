package net.p110sf.saxon.s9api;

import com.sun.org.apache.xml.internal.serializer.SerializerConstants;
import java.io.File;
import java.io.OutputStream;
import java.io.Writer;
import java.text.RuleBasedCollator;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Objects;
import javax.xml.transform.Source;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.Version;
import net.p110sf.saxon.event.ComplexContentOutputter;
import net.p110sf.saxon.event.PushToReceiver;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.Loc;
import net.p110sf.saxon.expr.sort.RuleBasedSubstringMatcher;
import net.p110sf.saxon.expr.sort.SimpleCollation;
import net.p110sf.saxon.lib.ConfigurableResourceResolver;
import net.p110sf.saxon.lib.ExtensionFunctionCall;
import net.p110sf.saxon.lib.ExtensionFunctionDefinition;
import net.p110sf.saxon.lib.Feature;
import net.p110sf.saxon.lib.FeatureKeys;
import net.p110sf.saxon.lib.NamespaceConstant;
import net.p110sf.saxon.lib.ResourceCollection;
import net.p110sf.saxon.lib.StringCollator;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.s9api.push.Push;
import net.p110sf.saxon.serialize.SerializationProperties;
import net.p110sf.saxon.trans.CommandLineOptions;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class Processor implements Configuration.ApiProvider {

    /* renamed from: e */
    public Configuration f101354e;

    /* renamed from: f */
    public SchemaManager f101355f;

    /* renamed from: net.sf.saxon.s9api.Processor$a */
    /* loaded from: classes11.dex */
    public static class C18475a extends ExtensionFunctionDefinition {

        /* renamed from: a */
        public final ExtensionFunction f101356a;

        /* renamed from: net.sf.saxon.s9api.Processor$a$a */
        /* loaded from: classes11.dex */
        public class a extends ExtensionFunctionCall {
            public a() {
            }

            @Override // net.p110sf.saxon.lib.ExtensionFunctionCall, net.p110sf.saxon.expr.Callable
            public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
                int length = sequenceArr.length;
                XdmValue[] xdmValueArr = new XdmValue[length];
                for (int i = 0; i < length; i++) {
                    xdmValueArr[i] = XdmValue.wrap(sequenceArr[i].materialize());
                }
                try {
                    return C18475a.this.f101356a.call(xdmValueArr).getUnderlyingValue();
                } catch (SaxonApiException e) {
                    throw new XPathException(e);
                }
            }
        }

        public C18475a(ExtensionFunction extensionFunction) {
            this.f101356a = extensionFunction;
        }

        @Override // net.p110sf.saxon.lib.ExtensionFunctionDefinition
        public boolean dependsOnFocus() {
            return false;
        }

        @Override // net.p110sf.saxon.lib.ExtensionFunctionDefinition
        public SequenceType[] getArgumentTypes() {
            SequenceType[] argumentTypes = this.f101356a.getArgumentTypes();
            SequenceType[] sequenceTypeArr = new SequenceType[argumentTypes.length];
            for (int i = 0; i < argumentTypes.length; i++) {
                sequenceTypeArr[i] = SequenceType.makeSequenceType(argumentTypes[i].getItemType().getUnderlyingItemType(), argumentTypes[i].getOccurrenceIndicator().getCardinality());
            }
            return sequenceTypeArr;
        }

        @Override // net.p110sf.saxon.lib.ExtensionFunctionDefinition
        public StructuredQName getFunctionQName() {
            return this.f101356a.getName().getStructuredQName();
        }

        @Override // net.p110sf.saxon.lib.ExtensionFunctionDefinition
        public int getMaximumNumberOfArguments() {
            return this.f101356a.getArgumentTypes().length;
        }

        @Override // net.p110sf.saxon.lib.ExtensionFunctionDefinition
        public int getMinimumNumberOfArguments() {
            return this.f101356a.getArgumentTypes().length;
        }

        @Override // net.p110sf.saxon.lib.ExtensionFunctionDefinition
        public SequenceType getResultType(SequenceType[] sequenceTypeArr) {
            SequenceType resultType = this.f101356a.getResultType();
            return SequenceType.makeSequenceType(resultType.getItemType().getUnderlyingItemType(), resultType.getOccurrenceIndicator().getCardinality());
        }

        @Override // net.p110sf.saxon.lib.ExtensionFunctionDefinition
        public boolean hasSideEffects() {
            return false;
        }

        @Override // net.p110sf.saxon.lib.ExtensionFunctionDefinition
        public ExtensionFunctionCall makeCallExpression() {
            return new a();
        }

        @Override // net.p110sf.saxon.lib.ExtensionFunctionDefinition
        public boolean trustResultType() {
            return false;
        }
    }

    public Processor(boolean z) {
        if (z) {
            Configuration newConfiguration = Configuration.newConfiguration();
            this.f101354e = newConfiguration;
            if (newConfiguration.getEditionCode().equals("EE")) {
                this.f101355f = m63659a();
            }
        } else {
            this.f101354e = new Configuration();
        }
        this.f101354e.setProcessor(this);
    }

    /* renamed from: b */
    public static StringCollator m63658b(String str, Comparator<? super String> comparator) {
        return comparator instanceof RuleBasedCollator ? new RuleBasedSubstringMatcher(str, (RuleBasedCollator) comparator) : new SimpleCollation(str, comparator);
    }

    /* renamed from: a */
    public final SchemaManager m63659a() {
        return null;
    }

    public void declareCollation(String str, Comparator<? super String> comparator) {
        if (str.equals(NamespaceConstant.CODEPOINT_COLLATION_URI)) {
            throw new IllegalArgumentException("Cannot redeclare the Unicode codepoint collation URI");
        }
        if (str.equals(NamespaceConstant.HTML5_CASE_BLIND_COLLATION_URI)) {
            throw new IllegalArgumentException("Cannot redeclare the HTML5 caseblind collation URI");
        }
        this.f101354e.registerCollation(str, m63658b(str, comparator));
    }

    @Deprecated
    public Object getConfigurationProperty(String str) {
        return this.f101354e.getConfigurationProperty(str);
    }

    public String getSaxonEdition() {
        return this.f101354e.getEditionCode();
    }

    public String getSaxonProductVersion() {
        return Version.getProductVersion();
    }

    public SchemaManager getSchemaManager() {
        return this.f101355f;
    }

    public Configuration getUnderlyingConfiguration() {
        return this.f101354e;
    }

    public String getXmlVersion() {
        return this.f101354e.getXMLVersion() == 10 ? "1.0" : SerializerConstants.XMLVERSION11;
    }

    public boolean isSchemaAware() {
        return this.f101354e.isLicensedFeature(1);
    }

    public DocumentBuilder newDocumentBuilder() {
        return new DocumentBuilder(this.f101354e);
    }

    public JsonBuilder newJsonBuilder() {
        return new JsonBuilder(getUnderlyingConfiguration());
    }

    public Push newPush(Destination destination) throws SaxonApiException {
        return new PushToReceiver(destination.getReceiver(getUnderlyingConfiguration().makePipelineConfiguration(), new SerializationProperties()));
    }

    public Serializer newSerializer() {
        return new Serializer(this);
    }

    public XPathCompiler newXPathCompiler() {
        return new XPathCompiler(this);
    }

    public XQueryCompiler newXQueryCompiler() {
        return new XQueryCompiler(this);
    }

    public XsltCompiler newXsltCompiler() {
        return new XsltCompiler(this);
    }

    public void registerCollection(String str, ResourceCollection resourceCollection) {
        this.f101354e.registerCollection(str, resourceCollection);
    }

    public void registerExtensionFunction(ExtensionFunction extensionFunction) {
        registerExtensionFunction(new C18475a(extensionFunction));
    }

    public void setCatalogFiles(String... strArr) {
        if (this.f101354e.getResourceResolver() instanceof ConfigurableResourceResolver) {
            CommandLineOptions.setCatalogFiles((ConfigurableResourceResolver) this.f101354e.getResourceResolver(), Arrays.asList(strArr));
        }
    }

    @Deprecated
    public void setConfigurationProperty(String str, Object obj) {
        if (str.equals(FeatureKeys.CONFIGURATION)) {
            this.f101354e = (Configuration) obj;
        } else {
            this.f101354e.setConfigurationProperty(str, obj);
        }
    }

    public void setXmlVersion(String str) {
        str.hashCode();
        if (str.equals("1.0")) {
            this.f101354e.setXMLVersion(10);
        } else {
            if (!str.equals(SerializerConstants.XMLVERSION11)) {
                throw new IllegalArgumentException("XmlVersion");
            }
            this.f101354e.setXMLVersion(11);
        }
    }

    public void writeXdmValue(XdmValue xdmValue, Destination destination) throws SaxonApiException {
        Objects.requireNonNull(xdmValue);
        Objects.requireNonNull(destination);
        try {
            if (destination instanceof Serializer) {
                ((Serializer) destination).serializeXdmValue(xdmValue);
                return;
            }
            ComplexContentOutputter complexContentOutputter = new ComplexContentOutputter(destination.getReceiver(this.f101354e.makePipelineConfiguration(), this.f101354e.obtainDefaultSerializationProperties()));
            complexContentOutputter.open();
            complexContentOutputter.startDocument(0);
            Iterator<XdmItem> it2 = xdmValue.iterator();
            while (it2.hasNext()) {
                complexContentOutputter.m62516b(it2.next().getUnderlyingValue(), Loc.NONE, 524288);
            }
            complexContentOutputter.endDocument();
            complexContentOutputter.close();
            destination.closeAndNotify();
        } catch (XPathException e) {
            throw new SaxonApiException(e);
        }
    }

    public <T> T getConfigurationProperty(Feature<T> feature) {
        return (T) this.f101354e.getConfigurationProperty(feature);
    }

    public Serializer newSerializer(OutputStream outputStream) {
        Serializer serializer = new Serializer(this);
        serializer.setOutputStream(outputStream);
        return serializer;
    }

    public void registerExtensionFunction(ExtensionFunctionDefinition extensionFunctionDefinition) {
        try {
            this.f101354e.registerExtensionFunction(extensionFunctionDefinition);
        } catch (Exception e) {
            throw new IllegalArgumentException(e);
        }
    }

    public Serializer newSerializer(Writer writer) {
        Serializer serializer = new Serializer(this);
        serializer.setOutputWriter(writer);
        return serializer;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> void setConfigurationProperty(Feature<T> feature, T t) {
        if (feature == Feature.CONFIGURATION) {
            this.f101354e = (Configuration) t;
        } else {
            this.f101354e.setConfigurationProperty((Feature<Feature<T>>) feature, (Feature<T>) t);
        }
    }

    public Serializer newSerializer(File file) {
        Serializer serializer = new Serializer(this);
        serializer.setOutputFile(file);
        return serializer;
    }

    public Processor(Configuration configuration) {
        this.f101354e = configuration;
        if (configuration.getEditionCode().equals("EE")) {
            this.f101355f = m63659a();
        }
    }

    public Processor(Source source) throws SaxonApiException {
        try {
            this.f101354e = Configuration.readConfiguration(source);
            this.f101355f = m63659a();
            this.f101354e.setProcessor(this);
        } catch (XPathException e) {
            throw new SaxonApiException(e);
        }
    }
}
