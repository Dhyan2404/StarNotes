package net.p110sf.saxon.query;

import androidx.core.app.NotificationCompat;
import com.google.android.gms.common.internal.ImagesContract;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import javax.xml.transform.ErrorListener;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.instruct.Executable;
import net.p110sf.saxon.expr.instruct.GlobalParam;
import net.p110sf.saxon.expr.instruct.GlobalVariable;
import net.p110sf.saxon.expr.parser.CodeInjector;
import net.p110sf.saxon.expr.parser.OptimizerOptions;
import net.p110sf.saxon.functions.FunctionLibrary;
import net.p110sf.saxon.lib.ErrorReporter;
import net.p110sf.saxon.lib.ErrorReporterToListener;
import net.p110sf.saxon.lib.ModuleURIResolver;
import net.p110sf.saxon.lib.NamespaceConstant;
import net.p110sf.saxon.lib.StringCollator;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.NamePool;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.s9api.HostLanguage;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.trace.TraceCodeInjector;
import net.p110sf.saxon.trace.XQueryTraceCodeInjector;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.AnyItemType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class StaticQueryContext {

    /* renamed from: a */
    public Configuration f101050a;

    /* renamed from: b */
    public NamePool f101051b;

    /* renamed from: c */
    public String f101052c;

    /* renamed from: d */
    public HashMap<String, String> f101053d;

    /* renamed from: e */
    public Set<GlobalVariable> f101054e;

    /* renamed from: f */
    public boolean f101055f;

    /* renamed from: g */
    public boolean f101056g;

    /* renamed from: h */
    public int f101057h;

    /* renamed from: i */
    public String f101058i;

    /* renamed from: j */
    public String f101059j;

    /* renamed from: k */
    public ItemType f101060k;

    /* renamed from: l */
    public boolean f101061l;

    /* renamed from: m */
    public boolean f101062m;

    /* renamed from: n */
    public ModuleURIResolver f101063n;

    /* renamed from: o */
    public ErrorReporter f101064o;

    /* renamed from: p */
    public CodeInjector f101065p;

    /* renamed from: q */
    public boolean f101066q;

    /* renamed from: r */
    public String f101067r;

    /* renamed from: s */
    public Location f101068s;

    /* renamed from: t */
    public OptimizerOptions f101069t;

    /* renamed from: u */
    public int f101070u;

    public StaticQueryContext() {
        this.f101055f = true;
        this.f101056g = true;
        this.f101057h = 3;
        this.f101058i = "http://www.w3.org/2005/xpath-functions";
        this.f101059j = "";
        this.f101060k = AnyItemType.getInstance();
        this.f101061l = false;
        this.f101062m = true;
        this.f101066q = false;
        this.f101070u = 31;
    }

    public void clearDeclaredGlobalVariables() {
        this.f101054e = null;
    }

    public void clearNamespaces() {
        this.f101053d.clear();
        declareNamespace("xml", "http://www.w3.org/XML/1998/namespace");
        declareNamespace("xs", "http://www.w3.org/2001/XMLSchema");
        declareNamespace("xsi", "http://www.w3.org/2001/XMLSchema-instance");
        declareNamespace("fn", "http://www.w3.org/2005/xpath-functions");
        declareNamespace(ImagesContract.LOCAL, NamespaceConstant.LOCAL);
        declareNamespace(NotificationCompat.CATEGORY_ERROR, NamespaceConstant.ERR);
        declareNamespace("saxon", NamespaceConstant.SAXON);
        declareNamespace("", "");
    }

    public void compileLibrary(String str) throws XPathException {
        throw new XPathException("Separate compilation of query libraries requires Saxon-EE");
    }

    public XQueryExpression compileQuery(String str) throws XPathException {
        XQueryParser xQueryParser = (XQueryParser) this.f101050a.newExpressionParser("XQ", this.f101066q, this.f101070u);
        CodeInjector codeInjector = this.f101065p;
        if (codeInjector != null) {
            xQueryParser.setCodeInjector(codeInjector);
        } else if (this.f101050a.isCompileWithTracing()) {
            xQueryParser.setCodeInjector(new TraceCodeInjector());
        }
        xQueryParser.setStreaming(isStreaming());
        return xQueryParser.makeXQueryExpression(str, new QueryModule(this), this.f101050a);
    }

    public void copyFrom(StaticQueryContext staticQueryContext) {
        this.f101050a = staticQueryContext.f101050a;
        this.f101051b = staticQueryContext.f101051b;
        this.f101052c = staticQueryContext.f101052c;
        this.f101063n = staticQueryContext.f101063n;
        if (staticQueryContext.f101053d != null) {
            this.f101053d = new HashMap<>(staticQueryContext.f101053d);
        }
        if (staticQueryContext.f101054e != null) {
            this.f101054e = new HashSet(staticQueryContext.f101054e);
        }
        this.f101055f = staticQueryContext.f101055f;
        this.f101056g = staticQueryContext.f101056g;
        this.f101057h = staticQueryContext.f101057h;
        this.f101059j = staticQueryContext.f101059j;
        this.f101058i = staticQueryContext.f101058i;
        this.f101060k = staticQueryContext.f101060k;
        this.f101061l = staticQueryContext.f101061l;
        this.f101062m = staticQueryContext.f101062m;
        this.f101063n = staticQueryContext.f101063n;
        this.f101064o = staticQueryContext.f101064o;
        this.f101065p = staticQueryContext.f101065p;
        this.f101066q = staticQueryContext.f101066q;
        this.f101069t = staticQueryContext.f101069t;
    }

    public void declareDefaultCollation(String str) {
        StringCollator stringCollator;
        str.getClass();
        try {
            stringCollator = getConfiguration().getCollation(str);
        } catch (XPathException unused) {
            stringCollator = null;
        }
        if (stringCollator != null) {
            this.f101067r = str;
            return;
        }
        throw new IllegalStateException("Unknown collation " + str);
    }

    public void declareGlobalVariable(StructuredQName structuredQName, SequenceType sequenceType, GroundedValue groundedValue, boolean z) throws XPathException {
        if (groundedValue == null && !z) {
            throw new NullPointerException("No initial value for declared variable");
        }
        if (groundedValue != null && !sequenceType.matches(groundedValue, getConfiguration().getTypeHierarchy())) {
            throw new XPathException("Value of declared variable does not match its type");
        }
        GlobalVariable globalParam = z ? new GlobalParam() : new GlobalVariable();
        globalParam.setVariableQName(structuredQName);
        globalParam.setRequiredType(sequenceType);
        if (groundedValue != null) {
            globalParam.setBody(Literal.makeLiteral(groundedValue.materialize()));
        }
        if (this.f101054e == null) {
            this.f101054e = new HashSet();
        }
        this.f101054e.add(globalParam);
    }

    public void declareNamespace(String str, String str2) {
        if (str == null) {
            throw new NullPointerException("Null prefix supplied to declareNamespace()");
        }
        if (str2 == null) {
            throw new NullPointerException("Null namespace URI supplied to declareNamespace()");
        }
        if (str.equals("xml") != str2.equals("http://www.w3.org/XML/1998/namespace")) {
            throw new IllegalArgumentException("Misdeclaration of XML namespace");
        }
        if (str.equals("xmlns") || str2.equals("http://www.w3.org/2000/xmlns/")) {
            throw new IllegalArgumentException("Misdeclaration of xmlns namespace");
        }
        if (str.isEmpty()) {
            this.f101059j = str2;
        }
        if (str2.isEmpty()) {
            this.f101053d.remove(str);
        } else {
            this.f101053d.put(str, str2);
        }
    }

    public String getBaseURI() {
        return this.f101052c;
    }

    public CodeInjector getCodeInjector() {
        return this.f101065p;
    }

    public Iterable<QueryLibrary> getCompiledLibraries() {
        return Collections.emptySet();
    }

    public QueryLibrary getCompiledLibrary(String str) {
        return null;
    }

    public Configuration getConfiguration() {
        return this.f101050a;
    }

    public int getConstructionMode() {
        return this.f101057h;
    }

    public String getDefaultCollationName() {
        return this.f101067r;
    }

    public String getDefaultElementNamespace() {
        return this.f101059j;
    }

    public String getDefaultFunctionNamespace() {
        return this.f101058i;
    }

    @Deprecated
    public ErrorListener getErrorListener() {
        ErrorReporter errorReporter = this.f101064o;
        if (errorReporter instanceof ErrorReporterToListener) {
            return ((ErrorReporterToListener) errorReporter).getErrorListener();
        }
        return null;
    }

    public ErrorReporter getErrorReporter() {
        return this.f101064o;
    }

    public FunctionLibrary getExtensionFunctionLibrary() {
        return null;
    }

    public int getLanguageVersion() {
        return this.f101070u;
    }

    public Location getModuleLocation() {
        return this.f101068s;
    }

    public ModuleURIResolver getModuleURIResolver() {
        return this.f101063n;
    }

    public NamePool getNamePool() {
        return this.f101051b;
    }

    public String getNamespaceForPrefix(String str) {
        return this.f101053d.get(str);
    }

    public OptimizerOptions getOptimizerOptions() {
        return this.f101069t;
    }

    public ItemType getRequiredContextItemType() {
        return this.f101060k;
    }

    public String getSystemId() {
        return this.f101052c;
    }

    public HashMap<String, String> getUserDeclaredNamespaces() {
        return this.f101053d;
    }

    public boolean isCompileWithTracing() {
        return this.f101065p instanceof TraceCodeInjector;
    }

    public boolean isEmptyLeast() {
        return this.f101062m;
    }

    public boolean isInheritNamespaces() {
        return this.f101055f;
    }

    public boolean isPreserveBoundarySpace() {
        return this.f101061l;
    }

    public boolean isPreserveNamespaces() {
        return this.f101056g;
    }

    public boolean isSchemaAware() {
        return false;
    }

    public boolean isStreaming() {
        return false;
    }

    public boolean isUpdating() {
        return this.f101066q;
    }

    public boolean isUpdatingEnabled() {
        return this.f101066q;
    }

    public Iterable<GlobalVariable> iterateDeclaredGlobalVariables() {
        Set<GlobalVariable> set = this.f101054e;
        return set == null ? Collections.emptyList() : set;
    }

    public Iterator<String> iterateDeclaredPrefixes() {
        return this.f101053d.keySet().iterator();
    }

    public Executable makeExecutable() {
        Executable executable = new Executable(this.f101050a);
        executable.setSchemaAware(isSchemaAware());
        executable.setHostLanguage(HostLanguage.XQUERY);
        return executable;
    }

    public void reset() {
        this.f101053d = new HashMap<>(10);
        this.f101064o = this.f101050a.makeErrorReporter();
        this.f101057h = getConfiguration().isLicensedFeature(4) ? 3 : 4;
        this.f101061l = false;
        this.f101062m = true;
        this.f101060k = AnyItemType.getInstance();
        this.f101058i = "http://www.w3.org/2005/xpath-functions";
        this.f101059j = "";
        this.f101063n = null;
        this.f101067r = this.f101050a.getDefaultCollationName();
        clearNamespaces();
        this.f101066q = false;
        this.f101069t = this.f101050a.getOptimizerOptions();
    }

    public void setBaseURI(String str) {
        this.f101052c = str;
    }

    public void setCodeInjector(CodeInjector codeInjector) {
        this.f101065p = codeInjector;
    }

    public void setCompileWithTracing(boolean z) {
        this.f101065p = z ? new XQueryTraceCodeInjector() : null;
    }

    public void setConfiguration(Configuration configuration) {
        Configuration configuration2 = this.f101050a;
        if (configuration2 != null && configuration2 != configuration) {
            throw new IllegalArgumentException("Configuration cannot be changed dynamically");
        }
        this.f101050a = configuration;
        this.f101051b = configuration.getNamePool();
    }

    public void setConstructionMode(int i) {
        this.f101057h = i;
    }

    public void setDefaultElementNamespace(String str) {
        this.f101059j = str;
        declareNamespace("", str);
    }

    public void setDefaultFunctionNamespace(String str) {
        this.f101058i = str;
    }

    public void setEmptyLeast(boolean z) {
        this.f101062m = z;
    }

    @Deprecated
    public void setErrorListener(ErrorListener errorListener) {
        setErrorReporter(new ErrorReporterToListener(errorListener));
    }

    public void setErrorReporter(ErrorReporter errorReporter) {
        this.f101064o = errorReporter;
    }

    public void setInheritNamespaces(boolean z) {
        this.f101055f = z;
    }

    public void setLanguageVersion(int i) {
        if (i == 10 || i == 30 || i == 31) {
            this.f101070u = 31;
        } else {
            if (i == 40) {
                this.f101070u = 40;
                return;
            }
            throw new IllegalArgumentException("languageVersion = " + i);
        }
    }

    public void setModuleLocation(Location location) {
        this.f101068s = location;
    }

    public void setModuleURIResolver(ModuleURIResolver moduleURIResolver) {
        this.f101063n = moduleURIResolver;
    }

    public void setOptimizerOptions(OptimizerOptions optimizerOptions) {
        this.f101069t = optimizerOptions;
    }

    public void setPreserveBoundarySpace(boolean z) {
        this.f101061l = z;
    }

    public void setPreserveNamespaces(boolean z) {
        this.f101056g = z;
    }

    public void setRequiredContextItemType(ItemType itemType) {
        this.f101060k = itemType;
    }

    public void setSchemaAware(boolean z) {
        if (z) {
            throw new UnsupportedOperationException("Schema-awareness requires Saxon-EE");
        }
    }

    public void setStreaming(boolean z) {
        if (z) {
            throw new UnsupportedOperationException("Streaming requires Saxon-EE");
        }
    }

    public void setUpdatingEnabled(boolean z) {
        this.f101066q = z;
    }

    public void compileLibrary(Reader reader) throws XPathException, IOException {
        throw new XPathException("Separate compilation of query libraries requires Saxon-EE");
    }

    public void compileLibrary(InputStream inputStream, String str) throws XPathException, IOException {
        throw new UnsupportedOperationException("Separate compilation of query libraries requires Saxon-EE");
    }

    public synchronized XQueryExpression compileQuery(Reader reader) throws XPathException, IOException {
        StringBuilder sb;
        char[] cArr = new char[4096];
        sb = new StringBuilder(4096);
        while (true) {
            int read = reader.read(cArr);
            if (read > 0) {
                sb.append(cArr, 0, read);
            }
        }
        return compileQuery(sb.toString());
    }

    public StaticQueryContext(Configuration configuration) {
        this(configuration, true);
    }

    public StaticQueryContext(Configuration configuration, boolean z) {
        this.f101055f = true;
        this.f101056g = true;
        this.f101057h = 3;
        this.f101058i = "http://www.w3.org/2005/xpath-functions";
        this.f101059j = "";
        this.f101060k = AnyItemType.getInstance();
        this.f101061l = false;
        this.f101062m = true;
        this.f101066q = false;
        this.f101070u = 31;
        this.f101050a = configuration;
        this.f101051b = configuration.getNamePool();
        this.f101064o = configuration.makeErrorReporter();
        if (z) {
            copyFrom(configuration.getDefaultStaticQueryContext());
            return;
        }
        this.f101053d = new HashMap<>();
        this.f101054e = new HashSet();
        this.f101069t = configuration.getOptimizerOptions();
        clearNamespaces();
    }

    public synchronized XQueryExpression compileQuery(InputStream inputStream, String str) throws XPathException {
        try {
        } catch (UncheckedXPathException e) {
            throw e.getXPathException();
        }
        return compileQuery(QueryReader.readInputStream(inputStream, str, this.f101050a.getValidCharacterChecker()));
    }

    public StaticQueryContext(StaticQueryContext staticQueryContext) {
        this.f101055f = true;
        this.f101056g = true;
        this.f101057h = 3;
        this.f101058i = "http://www.w3.org/2005/xpath-functions";
        this.f101059j = "";
        this.f101060k = AnyItemType.getInstance();
        this.f101061l = false;
        this.f101062m = true;
        this.f101066q = false;
        this.f101070u = 31;
        copyFrom(staticQueryContext);
    }
}
