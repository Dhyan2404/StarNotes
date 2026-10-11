package net.p110sf.saxon.trans;

import androidx.core.provider.DocumentsContractCompat;
import com.onyx.android.sdk.base.data.Operators;
import com.onyx.android.sdk.p039ui.treeview.view.AndroidTreeView;
import java.io.File;
import java.text.Collator;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.Set;
import java.util.StringTokenizer;
import javax.xml.transform.Source;
import javax.xml.transform.TransformerException;
import javax.xml.transform.sax.SAXSource;
import javax.xml.transform.stream.StreamSource;
import kotlinx.coroutines.DebugKt;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.lib.ConfigurableResourceResolver;
import net.p110sf.saxon.lib.DirectResourceResolver;
import net.p110sf.saxon.lib.Feature;
import net.p110sf.saxon.lib.FeatureData;
import net.p110sf.saxon.lib.FeatureIndex;
import net.p110sf.saxon.lib.Initializer;
import net.p110sf.saxon.lib.OutputURIResolver;
import net.p110sf.saxon.lib.ResourceRequest;
import net.p110sf.saxon.lib.ResourceResolver;
import net.p110sf.saxon.om.StandardNames;
import net.p110sf.saxon.s9api.DocumentBuilder;
import net.p110sf.saxon.s9api.ItemType;
import net.p110sf.saxon.s9api.Processor;
import net.p110sf.saxon.s9api.QName;
import net.p110sf.saxon.s9api.SaxonApiException;
import net.p110sf.saxon.s9api.Serializer;
import net.p110sf.saxon.s9api.XdmAtomicValue;
import net.p110sf.saxon.s9api.XdmEmptySequence;
import net.p110sf.saxon.s9api.XdmValue;
import net.p110sf.saxon.s9api.Xslt30Transformer;
import net.p110sf.saxon.s9api.XsltCompiler;
import net.p110sf.saxon.trans.CommandLineOptions;
import net.p110sf.saxon.type.SchemaException;
import org.mortbay.util.URIUtil;
import org.xml.sax.InputSource;
import org.xml.sax.XMLReader;
import org.xmlresolver.ResolverFeature;

/* loaded from: classes11.dex */
public class CommandLineOptions {
    public static final int TYPE_BOOLEAN = 1;
    public static final int TYPE_CLASSNAME = 3;
    public static final int TYPE_DATETIME = 8;
    public static final int TYPE_ENUMERATION = 4;
    public static final int TYPE_FILENAME = 2;
    public static final int TYPE_FILENAME_LIST = 7;
    public static final int TYPE_INTEGER = 5;
    public static final int TYPE_INTEGER_PAIR = 10;
    public static final int TYPE_QNAME = 6;
    public static final int TYPE_STRING = 9;
    public static final int VALUE_PROHIBITED = 512;
    public static final int VALUE_REQUIRED = 256;

    /* renamed from: a */
    public final HashMap<String, Integer> f102214a = new HashMap<>();

    /* renamed from: b */
    public final HashMap<String, String> f102215b = new HashMap<>();

    /* renamed from: c */
    public final Properties f102216c = new Properties();

    /* renamed from: d */
    public final Properties f102217d = new Properties();

    /* renamed from: e */
    public final Map<String, Set<String>> f102218e = new HashMap();

    /* renamed from: f */
    public final Map<String, String> f102219f = new HashMap();

    /* renamed from: g */
    public final List<String> f102220g = new ArrayList();

    /* renamed from: h */
    public final Properties f102221h = new Properties();

    /* renamed from: i */
    public final Properties f102222i = new Properties();

    /* renamed from: j */
    public final Properties f102223j = new Properties();

    /* renamed from: k */
    public final Properties f102224k = new Properties();

    @FunctionalInterface
    /* loaded from: classes11.dex */
    public interface ParamSetter {
        void setParam(QName qName, XdmValue xdmValue);
    }

    /* renamed from: d */
    public static String m64085d(Set<String> set) {
        StringBuilder sb = new StringBuilder(20);
        for (String str : set) {
            if ("".equals(str)) {
                sb.append("\"\"");
            } else {
                sb.append(str);
            }
            sb.append('|');
        }
        sb.setLength(sb.length() - 1);
        return sb.toString();
    }

    /* renamed from: e */
    public static /* synthetic */ void m64086e(Map map, QName qName, XdmValue xdmValue) {
    }

    public static String featureKeys() {
        StringBuilder sb = new StringBuilder();
        for (String str : FeatureIndex.getNames()) {
            sb.append("\n  ");
            sb.append(str.substring(28));
        }
        return sb.toString();
    }

    public static String getCommandName(Object obj) {
        String name = obj.getClass().getName();
        return name.startsWith("cli.Saxon.Cmd.DotNet") ? name.substring(20) : name;
    }

    public static boolean isImplicitURI(String str) {
        return str.startsWith(URIUtil.HTTP_COLON) || str.startsWith(URIUtil.HTTPS_COLON) || str.startsWith("file:") || str.startsWith("classpath:");
    }

    public static void loadAdditionalSchemas(Configuration configuration, String str) throws SchemaException {
        StringTokenizer stringTokenizer = new StringTokenizer(str, File.pathSeparator);
        while (stringTokenizer.hasMoreTokens()) {
            String nextToken = stringTokenizer.nextToken();
            File file = new File(nextToken);
            if (!file.exists()) {
                throw new SchemaException("Schema document " + nextToken + " not found");
            }
            configuration.addSchemaSource(new StreamSource(file));
        }
    }

    public static boolean loadDocuments(String str, boolean z, Processor processor, boolean z2, List<Source> list) throws SaxonApiException {
        Configuration underlyingConfiguration = processor.getUnderlyingConfiguration();
        if (z || isImplicitURI(str)) {
            try {
                ResourceRequest resourceRequest = new ResourceRequest();
                resourceRequest.uri = str;
                resourceRequest.nature = ResourceRequest.XML_NATURE;
                resourceRequest.purpose = "source document";
                list.add(resourceRequest.resolve(underlyingConfiguration.getResourceResolver(), new DirectResourceResolver(underlyingConfiguration)));
                return false;
            } catch (XPathException e) {
                throw new SaxonApiException(e);
            }
        }
        if (str.equals("-")) {
            list.add(z2 ? new SAXSource(new InputSource(System.in)) : new StreamSource(System.in));
            return false;
        }
        File file = new File(str);
        if (!file.exists()) {
            throw new SaxonApiException("Source file " + file + " does not exist");
        }
        if (!file.isDirectory()) {
            list.add(z2 ? new SAXSource(new InputSource(file.toURI().toString())) : new StreamSource(file.toURI().toString()));
            return false;
        }
        XMLReader sourceParser = underlyingConfiguration.getSourceParser();
        String[] list2 = file.list();
        if (list2 != null) {
            for (String str2 : list2) {
                File file2 = new File(file, str2);
                if (!file2.isDirectory() && !file2.isHidden()) {
                    list.add(z2 ? new SAXSource(sourceParser, new InputSource(file2.toURI().toString())) : new StreamSource(file2.toURI().toString()));
                }
            }
        }
        return true;
    }

    public static void setCatalogFiles(ConfigurableResourceResolver configurableResourceResolver, List<String> list) {
        configurableResourceResolver.setFeature(ResolverFeature.CATALOG_FILES, list);
    }

    public void addRecognizedOption(String str, int i, String str2) {
        this.f102214a.put(str, Integer.valueOf(i));
        this.f102215b.put(str, str2);
        if ((i & 255) == 1) {
            setPermittedValues(str, new String[]{DebugKt.DEBUG_PROPERTY_VALUE_ON, DebugKt.DEBUG_PROPERTY_VALUE_OFF}, DebugKt.DEBUG_PROPERTY_VALUE_ON);
        }
    }

    public void applyFileParams(Processor processor, Xslt30Transformer xslt30Transformer) throws SaxonApiException {
        if (this.f102223j.isEmpty()) {
            return;
        }
        final HashMap hashMap = new HashMap();
        m64087b(processor, new ParamSetter() { // from class: com.sunia.HTREnginev2.y3e
            @Override // net.sf.saxon.trans.CommandLineOptions.ParamSetter
            public final void setParam(QName qName, XdmValue xdmValue) {
                CommandLineOptions.m64086e(hashMap, qName, xdmValue);
            }
        });
        xslt30Transformer.setStylesheetParameters(hashMap);
    }

    public void applyStaticParams(XsltCompiler xsltCompiler) throws SaxonApiException {
        Processor processor = xsltCompiler.getProcessor();
        for (String str : this.f102221h.stringPropertyNames()) {
            xsltCompiler.setParameter(QName.fromClarkName(str), new XdmAtomicValue(this.f102221h.getProperty(str), ItemType.UNTYPED_ATOMIC));
        }
        for (String str2 : this.f102222i.stringPropertyNames()) {
            xsltCompiler.setParameter(QName.fromClarkName(str2), processor.newXPathCompiler().compile(this.f102222i.getProperty(str2)).load().evaluate());
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public void applyToConfiguration(Processor processor) throws TransformerException {
        boolean z;
        Configuration underlyingConfiguration = processor.getUnderlyingConfiguration();
        for (String str : this.f102217d.stringPropertyNames()) {
            String property = this.f102217d.getProperty(str);
            String str2 = "http://saxon.sf.net/feature/" + str;
            if (!str.startsWith("parserFeature?") && !str.startsWith("parserProperty?")) {
                if (!FeatureIndex.exists(str2)) {
                    throw new XPathException("Unknown configuration property --" + str);
                }
                FeatureData data = FeatureIndex.getData(str2);
                if (data == null) {
                    throw new XPathException("Unknown configuration feature " + str);
                }
                Class<?> cls = data.type;
                if (cls == Boolean.class) {
                    Configuration.requireBoolean(str, property);
                } else if (cls == Integer.class) {
                    Integer.valueOf(property);
                } else if (cls != String.class) {
                    throw new XPathException("Property --" + str + " cannot be supplied as a string");
                }
            }
            try {
                processor.getUnderlyingConfiguration().setConfigurationProperty(str2, property);
            } catch (IllegalArgumentException e) {
                throw new XPathException("Incorrect value for --" + str + ": " + e.getMessage());
            }
        }
        String optionValue = getOptionValue("catalog");
        if (optionValue != null) {
            ArrayList arrayList = new ArrayList();
            if (getOptionValue("u") != null || isImplicitURI(optionValue)) {
                ResourceRequest resourceRequest = new ResourceRequest();
                resourceRequest.nature = "urn:oasis:names:tc:entity:xmlns:xml:catalog";
                resourceRequest.purpose = "catalog";
                for (String str3 : optionValue.split(AndroidTreeView.f47214k)) {
                    try {
                        resourceRequest.uri = str3;
                        arrayList.add(new DirectResourceResolver(underlyingConfiguration).resolve(resourceRequest).getSystemId());
                    } catch (XPathException e2) {
                        throw new XPathException("Catalog file not found: " + str3, e2);
                    }
                }
            } else {
                for (String str4 : optionValue.split(AndroidTreeView.f47214k)) {
                    File file = new File(str4);
                    if (!file.exists()) {
                        throw new XPathException("Catalog file not found: " + str4);
                    }
                    arrayList.add(file.toURI().toASCIIString());
                }
            }
            m64089f(underlyingConfiguration, arrayList);
        }
        String optionValue2 = getOptionValue("dtd");
        char c = 65535;
        if (optionValue2 != null) {
            switch (optionValue2.hashCode()) {
                case 3551:
                    if (optionValue2.equals(DebugKt.DEBUG_PROPERTY_VALUE_ON)) {
                        z = false;
                        break;
                    }
                    z = -1;
                    break;
                case 109935:
                    if (optionValue2.equals(DebugKt.DEBUG_PROPERTY_VALUE_OFF)) {
                        z = true;
                        break;
                    }
                    z = -1;
                    break;
                case 1082600804:
                    if (optionValue2.equals("recover")) {
                        z = 2;
                        break;
                    }
                    z = -1;
                    break;
                default:
                    z = -1;
                    break;
            }
            switch (z) {
                case false:
                    underlyingConfiguration.setBooleanProperty(Feature.DTD_VALIDATION, true);
                    underlyingConfiguration.getParseOptions().setDTDValidationMode(1);
                    break;
                case true:
                    underlyingConfiguration.setBooleanProperty(Feature.DTD_VALIDATION, false);
                    underlyingConfiguration.getParseOptions().setDTDValidationMode(4);
                    break;
                case true:
                    underlyingConfiguration.setBooleanProperty(Feature.DTD_VALIDATION, true);
                    underlyingConfiguration.setBooleanProperty(Feature.DTD_VALIDATION_RECOVERABLE, true);
                    underlyingConfiguration.getParseOptions().setDTDValidationMode(2);
                    break;
            }
        }
        String optionValue3 = getOptionValue("ea");
        if (optionValue3 != null) {
            underlyingConfiguration.getDefaultXsltCompilerInfo().setAssertionsEnabled(Configuration.requireBoolean("ea", optionValue3));
        }
        String optionValue4 = getOptionValue("expand");
        if (optionValue4 != null) {
            underlyingConfiguration.getParseOptions().setExpandAttributeDefaults(Configuration.requireBoolean("expand", optionValue4));
        }
        String optionValue5 = getOptionValue("ext");
        if (optionValue5 != null) {
            underlyingConfiguration.setBooleanProperty(Feature.ALLOW_EXTERNAL_FUNCTIONS, Configuration.requireBoolean("ext", optionValue5));
        }
        String optionValue6 = getOptionValue("l");
        if (optionValue6 != null) {
            underlyingConfiguration.setBooleanProperty(Feature.LINE_NUMBERING, Configuration.requireBoolean("l", optionValue6));
        }
        String optionValue7 = getOptionValue("m");
        if (optionValue7 != null) {
            underlyingConfiguration.setConfigurationProperty((Feature<Feature<String>>) Feature.MESSAGE_EMITTER_CLASS, (Feature<String>) optionValue7);
        }
        String optionValue8 = getOptionValue("opt");
        if (optionValue8 != null) {
            underlyingConfiguration.setConfigurationProperty((Feature<Feature<Object>>) Feature.OPTIMIZATION_LEVEL, (Feature<Object>) optionValue8);
        }
        String optionValue9 = getOptionValue(Operators.OR);
        if (optionValue9 != null) {
            Object configuration = underlyingConfiguration.getInstance(optionValue9);
            if (!(configuration instanceof OutputURIResolver)) {
                throw new XPathException("Class " + optionValue9 + " is not an OutputURIResolver");
            }
            underlyingConfiguration.setConfigurationProperty((Feature<Feature<OutputURIResolver>>) Feature.OUTPUT_URI_RESOLVER, (Feature<OutputURIResolver>) configuration);
        }
        String optionValue10 = getOptionValue("outval");
        if (optionValue10 != null) {
            Boolean valueOf = Boolean.valueOf("recover".equals(optionValue10));
            underlyingConfiguration.setConfigurationProperty((Feature<Feature<Boolean>>) Feature.VALIDATION_WARNINGS, (Feature<Boolean>) valueOf);
            underlyingConfiguration.setConfigurationProperty((Feature<Feature<Boolean>>) Feature.VALIDATION_COMMENTS, (Feature<Boolean>) valueOf);
        }
        String optionValue11 = getOptionValue("r");
        if (optionValue11 != null) {
            underlyingConfiguration.setResourceResolver(underlyingConfiguration.makeResourceResolver(optionValue11));
        }
        String optionValue12 = getOptionValue("strip");
        if (optionValue12 != null) {
            underlyingConfiguration.setConfigurationProperty((Feature<Feature<String>>) Feature.STRIP_WHITESPACE, (Feature<String>) optionValue12);
        }
        if (getOptionValue("T") != null) {
            underlyingConfiguration.setCompileWithTracing(true);
        }
        String optionValue13 = getOptionValue("TJ");
        if (optionValue13 != null) {
            underlyingConfiguration.setBooleanProperty(Feature.TRACE_EXTERNAL_FUNCTIONS, Configuration.requireBoolean("TJ", optionValue13));
        }
        String optionValue14 = getOptionValue(DocumentsContractCompat.f5557a);
        if (optionValue14 != null) {
            switch (optionValue14.hashCode()) {
                case -1102666215:
                    if (optionValue14.equals("linked")) {
                        c = 0;
                        break;
                    }
                    break;
                case 3560192:
                    if (optionValue14.equals("tiny")) {
                        c = 1;
                        break;
                    }
                    break;
                case 110366051:
                    if (optionValue14.equals("tinyc")) {
                        c = 2;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    underlyingConfiguration.setTreeModel(0);
                    break;
                case 1:
                    underlyingConfiguration.setTreeModel(1);
                    break;
                case 2:
                    underlyingConfiguration.setTreeModel(2);
                    break;
            }
        }
        String optionValue15 = getOptionValue("val");
        if (optionValue15 != null) {
            if ("strict".equals(optionValue15)) {
                processor.setConfigurationProperty((Feature<Feature<Integer>>) Feature.SCHEMA_VALIDATION, (Feature<Integer>) 1);
            } else if ("lax".equals(optionValue15)) {
                processor.setConfigurationProperty((Feature<Feature<Integer>>) Feature.SCHEMA_VALIDATION, (Feature<Integer>) 2);
            }
        }
        String optionValue16 = getOptionValue("x");
        if (optionValue16 != null) {
            processor.setConfigurationProperty((Feature<Feature<String>>) Feature.SOURCE_PARSER_CLASS, (Feature<String>) optionValue16);
        }
        String optionValue17 = getOptionValue("xi");
        if (optionValue17 != null) {
            processor.setConfigurationProperty((Feature<Feature<Boolean>>) Feature.XINCLUDE, (Feature<Boolean>) Boolean.valueOf(Configuration.requireBoolean("xi", optionValue17)));
        }
        String optionValue18 = getOptionValue("xmlversion");
        if (optionValue18 != null) {
            processor.setConfigurationProperty((Feature<Feature<String>>) Feature.XML_VERSION, (Feature<String>) optionValue18);
        }
        String optionValue19 = getOptionValue("xsdversion");
        if (optionValue19 != null) {
            processor.setConfigurationProperty((Feature<Feature<String>>) Feature.XSD_VERSION, (Feature<String>) optionValue19);
        }
        String optionValue20 = getOptionValue("xsiloc");
        if (optionValue20 != null) {
            processor.setConfigurationProperty((Feature<Feature<Boolean>>) Feature.USE_XSI_SCHEMA_LOCATION, (Feature<Boolean>) Boolean.valueOf(Configuration.requireBoolean("xsiloc", optionValue20)));
        }
        String optionValue21 = getOptionValue("y");
        if (optionValue21 != null) {
            processor.setConfigurationProperty((Feature<Feature<String>>) Feature.STYLE_PARSER_CLASS, (Feature<String>) optionValue21);
        }
        String optionValue22 = getOptionValue("init");
        if (optionValue22 != null) {
            ((Initializer) underlyingConfiguration.getInstance(optionValue22)).initialize(underlyingConfiguration);
        }
    }

    /* renamed from: b */
    public final void m64087b(Processor processor, ParamSetter paramSetter) throws SaxonApiException {
        boolean equals = DebugKt.DEBUG_PROPERTY_VALUE_ON.equals(getOptionValue("u"));
        for (String str : this.f102223j.stringPropertyNames()) {
            String property = this.f102223j.getProperty(str);
            ArrayList arrayList = new ArrayList();
            loadDocuments(property, equals, processor, true, arrayList);
            if (arrayList.isEmpty()) {
                paramSetter.setParam(QName.fromClarkName(str), XdmEmptySequence.getInstance());
            } else {
                ArrayList arrayList2 = new ArrayList(arrayList.size());
                DocumentBuilder newDocumentBuilder = processor.newDocumentBuilder();
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    arrayList2.add(newDocumentBuilder.build((Source) it2.next()));
                }
                paramSetter.setParam(QName.fromClarkName(str), new XdmValue(arrayList2));
            }
        }
    }

    /* renamed from: c */
    public final void m64088c(String str) {
        System.err.println("Help for -" + str + " option");
        int intValue = this.f102214a.get(str).intValue();
        if ((intValue & 512) == 0) {
            switch (intValue & 255) {
                case 1:
                    System.err.println("Value: on|off");
                    break;
                case 2:
                    System.err.println("Value: file name");
                    break;
                case 3:
                    System.err.println("Value: Java fully-qualified class name");
                    break;
                case 4:
                    System.err.println("Value: one of " + m64085d(this.f102218e.get(str)));
                    break;
                case 5:
                    System.err.println("Value: integer");
                    break;
                case 6:
                    System.err.println("Value: QName in Clark notation ({uri}local)");
                    break;
                case 7:
                    System.err.println("Value: list of file names, semicolon-separated");
                    break;
                case 9:
                    System.err.println("Value: string");
                    break;
                case 10:
                    System.err.println("Value: int,int");
                    break;
            }
        }
        System.err.println("Meaning: " + this.f102215b.get(str));
    }

    public boolean definesParameterValues() {
        return (this.f102224k.isEmpty() && this.f102222i.isEmpty() && this.f102223j.isEmpty() && this.f102221h.isEmpty()) ? false : true;
    }

    public String displayPermittedOptions() {
        String[] strArr = (String[]) new ArrayList(this.f102214a.keySet()).toArray(new String[this.f102214a.size()]);
        Arrays.sort(strArr, Collator.getInstance());
        StringBuilder sb = new StringBuilder(100);
        for (String str : strArr) {
            sb.append(" -");
            sb.append(str);
        }
        sb.append(" --?");
        return sb.toString();
    }

    /* renamed from: f */
    public final void m64089f(Configuration configuration, List<String> list) {
        ResourceResolver resourceResolver = configuration.getResourceResolver();
        if (!(resourceResolver instanceof ConfigurableResourceResolver)) {
            throw new IllegalStateException("The resolver in the Configuration is not a ConfigurableResourceResolver");
        }
        setCatalogFiles((ConfigurableResourceResolver) resourceResolver, list);
    }

    public String getOptionValue(String str) {
        return this.f102216c.getProperty(str);
    }

    public List<String> getPositionalOptions() {
        return this.f102220g;
    }

    public void setActualOptions(String[] strArr) throws XPathException {
        String substring;
        String str;
        for (String str2 : strArr) {
            if ("-".equals(str2)) {
                this.f102220g.add(str2);
            } else if (str2.equals("--?")) {
                System.err.println("Configuration features:" + featureKeys());
            } else if (str2.charAt(0) != '-') {
                int indexOf = str2.indexOf(61);
                if (indexOf >= 1) {
                    String substring2 = str2.substring(0, indexOf);
                    String substring3 = indexOf < str2.length() - 1 ? str2.substring(indexOf + 1) : "";
                    char charAt = str2.charAt(0);
                    if (charAt == '!' && indexOf >= 2) {
                        this.f102224k.setProperty(substring2.substring(1), substring3);
                    } else if (charAt == '?' && indexOf >= 2) {
                        this.f102222i.setProperty(substring2.substring(1), substring3);
                    } else if (charAt != '+' || indexOf < 2) {
                        this.f102221h.setProperty(substring2, substring3);
                    } else {
                        this.f102223j.setProperty(substring2.substring(1), substring3);
                    }
                } else {
                    this.f102220g.add(str2);
                }
            } else if (str2.length() <= 5 || str2.charAt(1) != '-') {
                int indexOf2 = str2.indexOf(58);
                if (indexOf2 <= 0 || indexOf2 >= str2.length() - 1) {
                    substring = str2.substring(1);
                    str = "";
                } else {
                    substring = str2.substring(1, indexOf2);
                    str = str2.substring(indexOf2 + 1);
                }
                if (this.f102214a.getOrDefault(substring, -1).intValue() == -1) {
                    throw new XPathException("Command line option -" + substring + " is not recognized. Options available: " + displayPermittedOptions());
                }
                if (this.f102216c.getProperty(substring) != null) {
                    throw new XPathException("Command line option -" + substring + " appears more than once");
                }
                if ("?".equals(str)) {
                    m64088c(substring);
                    throw new XPathException("No processing requested");
                }
                if ("".equals(str)) {
                    if ((this.f102214a.get(substring).intValue() & 256) != 0) {
                        String str3 = "Command line option -" + substring + " requires a value";
                        if (this.f102218e.get(substring) != null) {
                            str3 = str3 + ": permitted values are " + m64085d(this.f102218e.get(substring));
                        }
                        throw new XPathException(str3);
                    }
                    String str4 = this.f102219f.get(substring);
                    if (str4 != null) {
                        str = str4;
                    }
                } else if ((this.f102214a.get(substring).intValue() & 512) != 0) {
                    throw new XPathException("Command line option -" + substring + " does not expect a value");
                }
                Set<String> set = this.f102218e.get(substring);
                if (set != null && !set.contains(str)) {
                    throw new XPathException("Bad option value " + str2 + ": permitted values are " + m64085d(set));
                }
                this.f102216c.setProperty(substring, str);
            } else {
                int indexOf3 = str2.indexOf(58);
                if (indexOf3 > 0 && indexOf3 < str2.length() - 1) {
                    this.f102217d.setProperty(str2.substring(2, indexOf3), str2.substring(indexOf3 + 1));
                } else if (indexOf3 <= 0 || indexOf3 != str2.length() - 1) {
                    this.f102217d.setProperty(str2.substring(2), "true");
                } else {
                    this.f102217d.setProperty(str2.substring(2, indexOf3), "");
                }
            }
        }
    }

    public void setParams(Processor processor, ParamSetter paramSetter) throws SaxonApiException {
        for (String str : this.f102221h.stringPropertyNames()) {
            paramSetter.setParam(QName.fromClarkName(str), new XdmAtomicValue(this.f102221h.getProperty(str), ItemType.UNTYPED_ATOMIC));
        }
        m64087b(processor, paramSetter);
        for (String str2 : this.f102222i.stringPropertyNames()) {
            paramSetter.setParam(QName.fromClarkName(str2), processor.newXPathCompiler().compile(this.f102222i.getProperty(str2)).load().evaluate());
        }
    }

    public void setPermittedValues(String str, String[] strArr, String str2) {
        this.f102218e.put(str, new HashSet(Arrays.asList(strArr)));
        if (str2 != null) {
            this.f102219f.put(str, str2);
        }
    }

    public void setSerializationProperties(Serializer serializer) {
        for (String str : this.f102224k.stringPropertyNames()) {
            String property = this.f102224k.getProperty(str);
            if (str.startsWith("saxon:")) {
                str = StandardNames.f100862g + str.substring(6);
            }
            serializer.setOutputProperty(QName.fromClarkName(str), property);
        }
    }

    public boolean testIfSchemaAware() {
        return (getOptionValue("sa") == null && getOptionValue("outval") == null && getOptionValue("val") == null && getOptionValue("vlax") == null && getOptionValue("xsd") == null && getOptionValue("xsdversion") == null) ? false : true;
    }
}
