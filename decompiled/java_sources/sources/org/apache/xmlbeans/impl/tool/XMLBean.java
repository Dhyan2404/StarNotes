package org.apache.xmlbeans.impl.tool;

import java.io.File;
import java.io.IOException;
import java.net.URI;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.StringTokenizer;
import org.apache.tools.ant.taskdefs.MatchingTask;
import org.apache.tools.ant.types.FileSet;
import org.apache.tools.ant.types.Path;
import org.apache.tools.ant.types.Reference;
import org.apache.xmlbeans.XmlError;

/* loaded from: classes13.dex */
public class XMLBean extends MatchingTask {
    private static final String JAVA = ".java";
    private static final String WSDL = ".wsdl";
    private static final String XSD = ".xsd";
    private static final String XSDCONFIG = ".xsdconfig";
    private String catalog;
    private File classgendir;
    private Path classpath;
    private String compiler;
    private boolean debug;
    private String debugLevel;
    private File destfile;
    private boolean download;
    private String forkedExecutable;
    private Set<String> mdefnamespaces;
    private String memoryInitialSize;
    private String memoryMaximumSize;
    private boolean noSrcRegen;
    private boolean noann;
    private boolean nopvr;
    private boolean noupa;
    private boolean novdoc;
    private boolean optimize;
    private String partialMethods;
    private boolean quiet;
    private String repackage;
    private File schema;
    private File srcgendir;
    private boolean srconly;
    private String typesystemname;
    private boolean verbose;
    private final List<FileSet> schemas = new ArrayList();
    private boolean noext = false;
    private boolean failonerror = true;
    private boolean fork = true;
    private boolean includeAntRuntime = true;
    private boolean includeJavaRuntime = false;
    private boolean nowarn = false;
    private final List<Extension> extensions = new ArrayList();
    private final Map<String, Set<File>> _extRouter = new HashMap(5);
    private String source = null;

    /* loaded from: classes13.dex */
    public class ErrorLogger extends AbstractCollection<XmlError> {
        private final URI _baseURI;
        private final boolean _noisy;

        public ErrorLogger(boolean z) {
            this._noisy = z;
            this._baseURI = XMLBean.uriFromFile(XMLBean.this.getProject().getBaseDir());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<XmlError> iterator() {
            return Collections.emptyIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return 0;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean add(XmlError xmlError) {
            if (xmlError.getSeverity() == 0) {
                XMLBean.this.log(xmlError.toString(this._baseURI), 0);
            } else if (xmlError.getSeverity() == 1) {
                XMLBean.this.log(xmlError.toString(this._baseURI), 1);
            } else if (this._noisy) {
                XMLBean.this.log(xmlError.toString(this._baseURI), 2);
            }
            return false;
        }
    }

    private void processPaths(String[] strArr, File file) {
        for (String str : strArr) {
            int lastIndexOf = str.lastIndexOf(46);
            if (lastIndexOf > -1) {
                Set<File> set = this._extRouter.get(str.substring(lastIndexOf).toLowerCase(Locale.ROOT));
                if (set != null) {
                    set.add(new File(file, str));
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static URI uriFromFile(File file) {
        if (file == null) {
            return null;
        }
        try {
            return file.getCanonicalFile().toURI();
        } catch (IOException unused) {
            return file.getAbsoluteFile().toURI();
        }
    }

    public void addFileset(FileSet fileSet) {
        this.schemas.add(fileSet);
    }

    public Path createClasspath() {
        if (this.classpath == null) {
            this.classpath = new Path(getProject());
        }
        return this.classpath.createPath();
    }

    public Extension createExtension() {
        Extension extension = new Extension();
        this.extensions.add(extension);
        return extension;
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x0156 A[Catch: all -> 0x0300, BuildException -> 0x034b, TryCatch #0 {all -> 0x0300, blocks: (B:49:0x0143, B:51:0x0147, B:55:0x0152, B:57:0x0156, B:58:0x015e, B:60:0x0162, B:61:0x016a, B:63:0x016e, B:64:0x017c, B:65:0x0191, B:67:0x0194, B:69:0x01a0, B:112:0x014e), top: B:48:0x0143 }] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0162 A[Catch: all -> 0x0300, BuildException -> 0x034b, TryCatch #0 {all -> 0x0300, blocks: (B:49:0x0143, B:51:0x0147, B:55:0x0152, B:57:0x0156, B:58:0x015e, B:60:0x0162, B:61:0x016a, B:63:0x016e, B:64:0x017c, B:65:0x0191, B:67:0x0194, B:69:0x01a0, B:112:0x014e), top: B:48:0x0143 }] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x016e A[Catch: all -> 0x0300, BuildException -> 0x034b, TryCatch #0 {all -> 0x0300, blocks: (B:49:0x0143, B:51:0x0147, B:55:0x0152, B:57:0x0156, B:58:0x015e, B:60:0x0162, B:61:0x016a, B:63:0x016e, B:64:0x017c, B:65:0x0191, B:67:0x0194, B:69:0x01a0, B:112:0x014e), top: B:48:0x0143 }] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0194 A[Catch: all -> 0x0300, BuildException -> 0x034b, LOOP:1: B:65:0x0191->B:67:0x0194, LOOP_END, TryCatch #0 {all -> 0x0300, blocks: (B:49:0x0143, B:51:0x0147, B:55:0x0152, B:57:0x0156, B:58:0x015e, B:60:0x0162, B:61:0x016a, B:63:0x016e, B:64:0x017c, B:65:0x0191, B:67:0x0194, B:69:0x01a0, B:112:0x014e), top: B:48:0x0143 }] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x02fc A[Catch: all -> 0x02f8, BuildException -> 0x034b, TRY_LEAVE, TryCatch #1 {all -> 0x02f8, blocks: (B:91:0x0221, B:93:0x0225, B:95:0x0245, B:96:0x0248, B:98:0x0251, B:99:0x0254, B:101:0x0293, B:102:0x0296, B:104:0x029a, B:105:0x029d, B:107:0x02b2, B:108:0x02d3, B:110:0x02d7, B:72:0x02fc), top: B:90:0x0221 }] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0339  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0344 A[ADDED_TO_REGION, ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0221 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void execute() throws org.apache.tools.ant.BuildException {
        /*
            Method dump skipped, instructions count: 845
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xmlbeans.impl.tool.XMLBean.execute():void");
    }

    public String getCatalog() {
        return this.catalog;
    }

    public File getClassgendir() {
        return this.classgendir;
    }

    public Path getClasspath() {
        return this.classpath;
    }

    public String getDebugLevel() {
        return this.debugLevel;
    }

    public File getDestfile() {
        return this.destfile;
    }

    public String getExecutable() {
        return this.forkedExecutable;
    }

    public String getIgnoreDuplicatesInNamespaces() {
        Set<String> set = this.mdefnamespaces;
        if (set == null) {
            return null;
        }
        return String.join(",", set);
    }

    public String getMemoryInitialSize() {
        return this.memoryInitialSize;
    }

    public String getMemoryMaximumSize() {
        return this.memoryMaximumSize;
    }

    public boolean getOptimize() {
        return this.optimize;
    }

    public String getPartialMethods() {
        return this.partialMethods;
    }

    public String getRepackage() {
        return this.repackage;
    }

    public File getSchema() {
        return this.schema;
    }

    public File getSrcgendir() {
        return this.srcgendir;
    }

    public String getTypesystemname() {
        return this.typesystemname;
    }

    public boolean isDebug() {
        return this.debug;
    }

    public boolean isDownload() {
        return this.download;
    }

    public boolean isFailonerror() {
        return this.failonerror;
    }

    public boolean isIncludeAntRuntime() {
        return this.includeAntRuntime;
    }

    public boolean isIncludeJavaRuntime() {
        return this.includeJavaRuntime;
    }

    public boolean isNoAnnotations() {
        return this.noann;
    }

    public boolean isNoExt() {
        return this.noext;
    }

    public boolean isNoPvr() {
        return this.nopvr;
    }

    public boolean isNoSrcRegen() {
        return this.noSrcRegen;
    }

    public boolean isNoUpa() {
        return this.noupa;
    }

    public boolean isNoValidateDoc() {
        return this.novdoc;
    }

    public boolean isNowarn() {
        return this.nowarn;
    }

    public boolean isQuiet() {
        return this.quiet;
    }

    public boolean isSrconly() {
        return this.srconly;
    }

    public boolean isVerbose() {
        return this.verbose;
    }

    public void setCatalog(String str) {
        this.catalog = str;
    }

    public void setClassgendir(File file) {
        this.classgendir = file;
    }

    public void setClasspath(Path path) {
        Path path2 = this.classpath;
        if (path2 != null) {
            path2.append(path);
        } else {
            this.classpath = path;
        }
    }

    public void setClasspathRef(Reference reference) {
        if (this.classpath == null) {
            this.classpath = new Path(getProject());
        }
        this.classpath.createPath().setRefid(reference);
    }

    public void setCompiler(String str) {
        this.compiler = str;
    }

    public void setDebug(boolean z) {
        this.debug = z;
    }

    public void setDebugLevel(String str) {
        this.debugLevel = str;
    }

    public void setDestfile(File file) {
        this.destfile = file;
    }

    public void setDownload(boolean z) {
        this.download = z;
    }

    public void setExecutable(String str) {
        this.forkedExecutable = str;
    }

    public void setFailonerror(boolean z) {
        this.failonerror = z;
    }

    public void setFork(boolean z) {
        this.fork = z;
    }

    public void setIgnoreDuplicatesInNamespaces(String str) {
        this.mdefnamespaces = new HashSet();
        StringTokenizer stringTokenizer = new StringTokenizer(str, ",");
        while (stringTokenizer.hasMoreTokens()) {
            this.mdefnamespaces.add(stringTokenizer.nextToken().trim());
        }
    }

    public void setIncludeAntRuntime(boolean z) {
        this.includeAntRuntime = z;
    }

    public void setIncludeJavaRuntime(boolean z) {
        this.includeJavaRuntime = z;
    }

    public void setMemoryInitialSize(String str) {
        this.memoryInitialSize = str;
    }

    public void setMemoryMaximumSize(String str) {
        this.memoryMaximumSize = str;
    }

    public void setNoAnnotations(boolean z) {
        this.noann = z;
    }

    public void setNoExt(boolean z) {
        this.noext = z;
    }

    public void setNoPvr(boolean z) {
        this.nopvr = z;
    }

    public void setNoSrcRegen(boolean z) {
        this.noSrcRegen = z;
    }

    public void setNoUpa(boolean z) {
        this.noupa = z;
    }

    public void setNoValidateDoc(boolean z) {
        this.novdoc = z;
    }

    public void setNowarn(boolean z) {
        this.nowarn = z;
    }

    public void setOptimize(boolean z) {
        this.optimize = z;
    }

    public void setPartialMethods(String str) {
        this.partialMethods = str;
    }

    public void setQuiet(boolean z) {
        this.quiet = z;
    }

    public void setRepackage(String str) {
        this.repackage = str;
    }

    public void setSchema(File file) {
        this.schema = file;
    }

    public void setSource(String str) {
        this.source = str;
    }

    public void setSrcgendir(File file) {
        this.srcgendir = file;
    }

    public void setSrconly(boolean z) {
        this.srconly = z;
    }

    public void setTypesystemname(String str) {
        this.typesystemname = str;
    }

    public void setVerbose(boolean z) {
        this.verbose = z;
    }
}
