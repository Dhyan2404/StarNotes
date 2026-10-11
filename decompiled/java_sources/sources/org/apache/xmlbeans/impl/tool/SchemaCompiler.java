package org.apache.xmlbeans.impl.tool;

import java.io.File;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.net.URI;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.apache.xmlbeans.ResourceLoader;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SchemaTypeLoader;
import org.apache.xmlbeans.SchemaTypeSystem;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlBeans;
import org.apache.xmlbeans.XmlError;
import org.apache.xmlbeans.XmlErrorCodes;
import org.apache.xmlbeans.XmlException;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlOptions;
import org.apache.xmlbeans.impl.common.XmlErrorWatcher;
import org.apache.xmlbeans.impl.config.BindingConfigImpl;
import org.apache.xmlbeans.impl.p119xb.substwsdl.DefinitionsDocument;
import org.apache.xmlbeans.impl.p119xb.xmlconfig.ConfigDocument;
import org.apache.xmlbeans.impl.p119xb.xmlconfig.Extensionconfig;
import org.apache.xmlbeans.impl.p119xb.xsdschema.SchemaDocument;
import org.apache.xmlbeans.impl.schema.SchemaTypeLoaderImpl;
import org.apache.xmlbeans.impl.schema.SchemaTypeSystemCompiler;
import org.apache.xmlbeans.impl.schema.StscState;
import org.apache.xmlbeans.impl.tool.Extension;
import org.xml.sax.EntityResolver;

/* loaded from: classes13.dex */
public class SchemaCompiler {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final String COMPATIBILITY_CONFIG_URI = "http://www.bea.com/2002/09/xbean/config";
    private static final String CONFIG_URI = "http://xml.apache.org/xmlbeans/2004/02/xbean/config";
    private static final Map<String, String> MAP_COMPATIBILITY_CONFIG_URIS = Collections.singletonMap(COMPATIBILITY_CONFIG_URI, CONFIG_URI);

    private static void addSchema(String str, SchemaDocument schemaDocument, XmlErrorWatcher xmlErrorWatcher, boolean z, List<SchemaDocument.Schema> list) {
        StscState.addInfo(xmlErrorWatcher, "Loading schema file " + str);
        XmlOptions errorListener = new XmlOptions().setErrorListener(xmlErrorWatcher);
        if (z) {
            errorListener.setValidateTreatLaxAsSkip();
        }
        if (schemaDocument.validate(errorListener)) {
            list.add(schemaDocument.getSchema());
        }
    }

    private static void addWsdlSchemas(String str, DefinitionsDocument definitionsDocument, XmlErrorWatcher xmlErrorWatcher, boolean z, List<SchemaDocument.Schema> list) {
        if (wsdlContainsEncoded(definitionsDocument)) {
            StscState.addWarning(xmlErrorWatcher, "The WSDL " + str + " uses SOAP encoding. SOAP encoding is not compatible with literal XML Schema.", 60, definitionsDocument);
        }
        StscState.addInfo(xmlErrorWatcher, "Loading wsdl file " + str);
        XmlOptions errorListener = new XmlOptions().setErrorListener(xmlErrorWatcher);
        if (z) {
            errorListener.setValidateTreatLaxAsSkip();
        }
        int i = 0;
        for (XmlObject xmlObject : definitionsDocument.getDefinitions().getTypesArray()) {
            XmlObject[] selectPath = xmlObject.selectPath("declare namespace xs=\"http://www.w3.org/2001/XMLSchema\" xs:schema");
            if (selectPath.length == 0) {
                StscState.addWarning(xmlErrorWatcher, "The WSDL " + str + " did not have any schema documents in namespace 'http://www.w3.org/2001/XMLSchema'", 60, definitionsDocument);
            } else {
                for (XmlObject xmlObject2 : selectPath) {
                    if (xmlObject2.validate(errorListener)) {
                        i++;
                        list.add((SchemaDocument.Schema) xmlObject2);
                    }
                }
            }
        }
        StscState.addInfo(xmlErrorWatcher, "Processing " + i + " schema(s) in " + str);
    }

    /* JADX WARN: Removed duplicated region for block: B:60:0x02ae A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x02bf  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean compile(org.apache.xmlbeans.impl.tool.Parameters r49) {
        /*
            Method dump skipped, instructions count: 715
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xmlbeans.impl.tool.SchemaCompiler.compile(org.apache.xmlbeans.impl.tool.Parameters):boolean");
    }

    private static SchemaTypeSystem loadTypeSystem(String str, File[] fileArr, File[] fileArr2, URL[] urlArr, File[] fileArr3, File[] fileArr4, ResourceLoader resourceLoader, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, Set<String> set, File file, Map<String, String> map, Collection<XmlError> collection, File file2, EntityResolver entityResolver, File[] fileArr5) {
        String str2;
        File[] fileArr6 = fileArr;
        File[] fileArr7 = fileArr2;
        String str3 = "xsd config";
        XmlErrorWatcher xmlErrorWatcher = new XmlErrorWatcher(collection);
        try {
            StscState.start().setErrorListener(xmlErrorWatcher);
            SchemaTypeLoader typeLoaderForClassLoader = XmlBeans.typeLoaderForClassLoader(SchemaDocument.class.getClassLoader());
            ArrayList arrayList = new ArrayList();
            if (fileArr6 != null) {
                int length = fileArr6.length;
                int i = 0;
                while (i < length) {
                    int i2 = length;
                    File file3 = fileArr6[i];
                    try {
                        XmlOptions xmlOptions = new XmlOptions();
                        xmlOptions.setLoadLineNumbers();
                        xmlOptions.setLoadMessageDigest();
                        xmlOptions.setEntityResolver(entityResolver);
                        XmlObject parse = typeLoaderForClassLoader.parse(file3, (SchemaType) null, xmlOptions);
                        if (parse instanceof SchemaDocument) {
                            str2 = str3;
                            addSchema(file3.toString(), (SchemaDocument) parse, xmlErrorWatcher, z5, arrayList);
                        } else {
                            str2 = str3;
                            try {
                                StscState.addError(xmlErrorWatcher, XmlErrorCodes.INVALID_DOCUMENT_TYPE, new Object[]{file3, "schema"}, parse);
                            } catch (XmlException e) {
                                e = e;
                                xmlErrorWatcher.add(e.getError());
                                i++;
                                fileArr6 = fileArr;
                                length = i2;
                                str3 = str2;
                            } catch (Exception e2) {
                                e = e2;
                                StscState.addError(xmlErrorWatcher, XmlErrorCodes.CANNOT_LOAD_FILE, new Object[]{"xsd", file3, e.getMessage()}, file3);
                                i++;
                                fileArr6 = fileArr;
                                length = i2;
                                str3 = str2;
                            }
                        }
                    } catch (XmlException e3) {
                        e = e3;
                        str2 = str3;
                    } catch (Exception e4) {
                        e = e4;
                        str2 = str3;
                    }
                    i++;
                    fileArr6 = fileArr;
                    length = i2;
                    str3 = str2;
                }
            }
            String str4 = str3;
            if (fileArr7 != null) {
                int length2 = fileArr7.length;
                int i3 = 0;
                while (i3 < length2) {
                    int i4 = length2;
                    File file4 = fileArr7[i3];
                    try {
                        try {
                            XmlOptions xmlOptions2 = new XmlOptions();
                            xmlOptions2.setLoadLineNumbers();
                            xmlOptions2.setLoadSubstituteNamespaces(Collections.singletonMap("http://schemas.xmlsoap.org/wsdl/", "http://www.apache.org/internal/xmlbeans/wsdlsubst"));
                            xmlOptions2.setEntityResolver(entityResolver);
                            XmlObject parse2 = typeLoaderForClassLoader.parse(file4, (SchemaType) null, xmlOptions2);
                            if (parse2 instanceof DefinitionsDocument) {
                                addWsdlSchemas(file4.toString(), (DefinitionsDocument) parse2, xmlErrorWatcher, z5, arrayList);
                            } else {
                                StscState.addError(xmlErrorWatcher, XmlErrorCodes.INVALID_DOCUMENT_TYPE, new Object[]{file4, "wsdl"}, parse2);
                            }
                        } catch (XmlException e5) {
                            xmlErrorWatcher.add(e5.getError());
                        }
                    } catch (Exception e6) {
                        StscState.addError(xmlErrorWatcher, XmlErrorCodes.CANNOT_LOAD_FILE, new Object[]{"wsdl", file4, e6.getMessage()}, file4);
                    }
                    i3++;
                    fileArr7 = fileArr2;
                    length2 = i4;
                }
            }
            if (urlArr != null) {
                for (URL url : urlArr) {
                    try {
                        try {
                            XmlOptions xmlOptions3 = new XmlOptions();
                            xmlOptions3.setLoadLineNumbers();
                            xmlOptions3.setLoadSubstituteNamespaces(Collections.singletonMap("http://schemas.xmlsoap.org/wsdl/", "http://www.apache.org/internal/xmlbeans/wsdlsubst"));
                            xmlOptions3.setEntityResolver(entityResolver);
                            XmlObject parse3 = typeLoaderForClassLoader.parse(url, (SchemaType) null, xmlOptions3);
                            if (parse3 instanceof DefinitionsDocument) {
                                addWsdlSchemas(url.toString(), (DefinitionsDocument) parse3, xmlErrorWatcher, z5, arrayList);
                            } else if (parse3 instanceof SchemaDocument) {
                                addSchema(url.toString(), (SchemaDocument) parse3, xmlErrorWatcher, z5, arrayList);
                            } else {
                                StscState.addError(xmlErrorWatcher, XmlErrorCodes.INVALID_DOCUMENT_TYPE, new Object[]{url, "wsdl or schema"}, parse3);
                            }
                        } catch (Exception e7) {
                            StscState.addError(xmlErrorWatcher, XmlErrorCodes.CANNOT_LOAD_FILE, new Object[]{"url", url, e7.getMessage()}, url);
                        }
                    } catch (XmlException e8) {
                        xmlErrorWatcher.add(e8.getError());
                    }
                }
            }
            SchemaDocument.Schema[] schemaArr = (SchemaDocument.Schema[]) arrayList.toArray(new SchemaDocument.Schema[0]);
            ArrayList arrayList2 = new ArrayList();
            if (fileArr3 != null) {
                if (z6) {
                    System.out.println("Pre/Post and Interface extensions will be ignored.");
                }
                for (File file5 : fileArr3) {
                    try {
                        try {
                            XmlOptions xmlOptions4 = new XmlOptions();
                            xmlOptions4.setLoadLineNumbers();
                            xmlOptions4.setEntityResolver(entityResolver);
                            xmlOptions4.setLoadSubstituteNamespaces(MAP_COMPATIBILITY_CONFIG_URIS);
                            XmlObject parse4 = typeLoaderForClassLoader.parse(file5, (SchemaType) null, xmlOptions4);
                            if (parse4 instanceof ConfigDocument) {
                                StscState.addInfo(xmlErrorWatcher, "Loading config file " + file5);
                                if (parse4.validate(new XmlOptions().setErrorListener(xmlErrorWatcher))) {
                                    ConfigDocument.Config config = ((ConfigDocument) parse4).getConfig();
                                    arrayList2.add(config);
                                    if (z6) {
                                        config.setExtensionArray(new Extensionconfig[0]);
                                    }
                                }
                            } else {
                                StscState.addError(xmlErrorWatcher, XmlErrorCodes.INVALID_DOCUMENT_TYPE, new Object[]{file5, str4}, parse4);
                            }
                        } catch (Exception e9) {
                            StscState.addError(xmlErrorWatcher, XmlErrorCodes.CANNOT_LOAD_FILE, new Object[]{str4, file5, e9.getMessage()}, file5);
                        }
                    } catch (XmlException e10) {
                        xmlErrorWatcher.add(e10.getError());
                    }
                }
            }
            ConfigDocument.Config[] configArr = (ConfigDocument.Config[]) arrayList2.toArray(new ConfigDocument.Config[0]);
            SchemaTypeLoader build = SchemaTypeLoaderImpl.build(null, resourceLoader, null);
            URI uri = file != null ? file.toURI() : null;
            XmlOptions xmlOptions5 = new XmlOptions();
            if (z) {
                xmlOptions5.setCompileDownloadUrls();
            }
            if (z2) {
                xmlOptions5.setCompileNoUpaRule();
            }
            if (z3) {
                xmlOptions5.setCompileNoPvrRule();
            }
            if (z4) {
                xmlOptions5.setCompileNoAnnotations();
            }
            if (set != null) {
                xmlOptions5.setCompileMdefNamespaces(set);
            }
            xmlOptions5.setCompileNoValidation();
            xmlOptions5.setEntityResolver(entityResolver);
            SchemaTypeSystemCompiler.Parameters parameters = new SchemaTypeSystemCompiler.Parameters();
            parameters.setName(str);
            parameters.setSchemas(schemaArr);
            parameters.setConfig(BindingConfigImpl.forConfigDocuments(configArr, fileArr4, fileArr5));
            parameters.setLinkTo(build);
            parameters.setOptions(xmlOptions5);
            parameters.setErrorListener(xmlErrorWatcher);
            parameters.setJavaize(true);
            parameters.setBaseURI(uri);
            parameters.setSourcesToCopyMap(map);
            parameters.setSchemasDir(file2);
            return SchemaTypeSystemCompiler.compile(parameters);
        } finally {
            StscState.end();
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(59:28|(1:30)(1:186)|31|(1:33)(1:185)|(1:35)(1:184)|(1:37)|38|(50:180|181|41|(1:43)(1:179)|44|(1:46)(1:178)|47|(1:49)(1:177)|50|(1:52)(1:176)|53|(1:55)(1:175)|56|(1:58)(1:174)|59|(1:61)(1:173)|62|(1:64)(1:172)|65|(1:67)(1:171)|68|(1:70)(1:170)|71|(12:73|74|75|76|77|78|79|80|81|82|83|84)(1:169)|85|(3:89|(4:92|(2:94|95)(2:97|98)|96|90)|99)|100|(1:102)(1:158)|103|(1:105)(1:157)|(1:109)|(20:151|152|153|(1:117)|(1:119)(1:150)|(1:121)|(1:123)|124|(4:126|(1:128)|129|130)(1:149)|131|(1:134)|135|(1:137)|138|(1:140)(1:148)|141|(1:143)|(1:145)|146|147)(1:112)|113|(1:117)|(0)(0)|(0)|(0)|124|(0)(0)|131|(1:134)|135|(0)|138|(0)(0)|141|(0)|(0)|146|147)|40|41|(0)(0)|44|(0)(0)|47|(0)(0)|50|(0)(0)|53|(0)(0)|56|(0)(0)|59|(0)(0)|62|(0)(0)|65|(0)(0)|68|(0)(0)|71|(0)(0)|85|(4:87|89|(1:90)|99)|100|(0)(0)|103|(0)(0)|(1:109)|(0)|151|152|153|(0)|(0)(0)|(0)|(0)|124|(0)(0)|131|(0)|135|(0)|138|(0)(0)|141|(0)|(0)|146|147) */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x030a, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x030b, code lost:
    
        r0 = java.lang.System.err;
        r20 = r7;
        r7 = new java.lang.StringBuilder();
        r22 = r12;
        r7.append("Error creating temp dir ");
        r7.append(r0);
        r0.println(r7.toString());
        java.lang.System.exit(1);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:102:0x02d8  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x02e9  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x02f2 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:111:0x02f9 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:115:0x032d A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0335  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x033e  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0344  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0352  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0392 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:137:0x03d8  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x03e9  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x0497  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x049c  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x03ed  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x0380  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x033b  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x02ef  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x02e0  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x026e  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x0200  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x01f0  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x01e3  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x01d7  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x01ca  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x01bd  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x01b0  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x01a5  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x019c  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x0193  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0191  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x019a  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01a3  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x01ac  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x01b9  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01c6  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x01d3  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01e0  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01ed  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x01fa  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x021c  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x027c  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x029c  */
    /* JADX WARN: Type inference failed for: r0v64, types: [java.util.Set] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void main(java.lang.String[] r34) {
        /*
            Method dump skipped, instructions count: 1197
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xmlbeans.impl.tool.SchemaCompiler.main(java.lang.String[]):void");
    }

    public static Set<XmlOptions.BeanMethod> parsePartialMethods(String str) {
        HashSet hashSet = new HashSet();
        if (str != null) {
            for (String str2 : str.split(",")) {
                if ("ALL".equals(str2)) {
                    hashSet.addAll(Arrays.asList(XmlOptions.BeanMethod.values()));
                } else {
                    boolean startsWith = str2.startsWith("-");
                    XmlOptions.BeanMethod valueOf = XmlOptions.BeanMethod.valueOf(str2.substring(startsWith ? 1 : 0));
                    if (startsWith) {
                        hashSet.remove(valueOf);
                    } else {
                        hashSet.add(valueOf);
                    }
                }
            }
        }
        if (hashSet.isEmpty()) {
            return null;
        }
        return hashSet;
    }

    public static void printUsage() {
        System.out.println("Compiles a schema into XML Bean classes and metadata.");
        System.out.println("Usage: scomp [opts] [dirs]* [schema.xsd]* [service.wsdl]* [config.xsdconfig]*");
        System.out.println("Options include:");
        System.out.println("    -cp [a;b;c] - classpath");
        System.out.println("    -d [dir] - target binary directory for .class and .xsb files");
        System.out.println("    -src [dir] - target directory for generated .java files");
        System.out.println("    -srconly - do not compile .java files or jar the output.");
        System.out.println("    -out [xmltypes.jar] - the name of the output jar");
        System.out.println("    -name - the name of the schema type - defaults to autogenerated name");
        System.out.println("    -dl - permit network downloads for imports and includes (default is off)");
        System.out.println("    -noupa - do not enforce the unique particle attribution rule");
        System.out.println("    -nopvr - do not enforce the particle valid (restriction) rule");
        System.out.println("    -noann - ignore annotations");
        System.out.println("    -novdoc - do not validate contents of <documentation>");
        System.out.println("    -noext - ignore all extension (Pre/Post and Interface) found in .xsdconfig files");
        System.out.println("    -compiler - path to external java compiler");
        System.out.println("    -ms - initial memory for external java compiler (default '8m')");
        System.out.println("    -mx - maximum memory for external java compiler (default '256m')");
        System.out.println("    -debug - compile with debug symbols");
        System.out.println("    -quiet - print fewer informational messages");
        System.out.println("    -verbose - print more informational messages");
        System.out.println("    -version - prints version information");
        System.out.println("    -license - prints license information");
        System.out.println("    -allowmdef \"[ns] [ns] [ns]\" - ignores multiple defs in given namespaces (use ##local for no-namespace)");
        System.out.println("    -catalog [file] -  catalog file for org.apache.xml.resolver.tools.CatalogResolver. (Note: needs resolver.jar from http://xml.apache.org/commons/components/resolver/index.html)");
        System.out.println("    -partialMethods [list] -  comma separated list of bean methods to be generated. Use \"-\" to negate and \"ALL\" for all.");
        System.out.println("                              processed left-to-right, e.g. \"ALL,-GET_LIST\" exclude java.util.List getters - see XmlOptions.BeanMethod");
        System.out.println("    -repackage - repackage specification, e.g. \"org.apache.xmlbeans.metadata:mypackage.metadata\" to change the metadata directory");
        System.out.println("    -copyann - copy schema annotations to javadoc (default false) - don't activate on untrusted schema sources!");
        System.out.println();
    }

    private static void runExtensions(List<Extension> list, SchemaTypeSystem schemaTypeSystem, File file) {
        String absolutePath;
        if (list == null || list.size() <= 0) {
            return;
        }
        try {
            absolutePath = file.getCanonicalPath();
        } catch (IOException unused) {
            System.out.println("WARNING: Unable to get the path for schema jar file");
            absolutePath = file.getAbsolutePath();
        }
        for (Extension extension : list) {
            try {
                SchemaCompilerExtension schemaCompilerExtension = (SchemaCompilerExtension) extension.getClassName().getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                System.out.println("Running Extension: " + schemaCompilerExtension.getExtensionName());
                HashMap hashMap = new HashMap();
                for (Extension.Param param : extension.getParams()) {
                    hashMap.put(param.getName(), param.getValue());
                }
                hashMap.put("classesDir", absolutePath);
                schemaCompilerExtension.schemaCompilerExtension(schemaTypeSystem, hashMap);
            } catch (IllegalAccessException | InvocationTargetException unused2) {
                System.out.println("ILLEGAL ACCESS Exception when attempting to instantiate schema compiler extension: " + extension.getClassName().getName());
                System.out.println("EXTENSION Class was not run");
                return;
            } catch (InstantiationException | NoSuchMethodException unused3) {
                System.out.println("UNABLE to instantiate schema compiler extension:" + extension.getClassName().getName());
                System.out.println("EXTENSION Class was not run");
                return;
            }
        }
    }

    private static boolean wsdlContainsEncoded(XmlObject xmlObject) {
        for (XmlObject xmlObject2 : xmlObject.selectPath("declare namespace soap='http://schemas.xmlsoap.org/wsdl/soap/' .//soap:body/@use|.//soap:header/@use|.//soap:fault/@use")) {
            if ("encoded".equals(((SimpleValue) xmlObject2).getStringValue())) {
                return true;
            }
        }
        return false;
    }
}
