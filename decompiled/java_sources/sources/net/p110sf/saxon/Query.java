package net.p110sf.saxon;

import androidx.core.provider.DocumentsContractCompat;
import com.couchbase.lite.internal.core.C4Constants;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.onyx.galaxy.note.DataBinderMapperImpl;
import com.sun.org.apache.xml.internal.serializer.SerializerConstants;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintStream;
import java.io.Reader;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import javax.xml.transform.Source;
import javax.xml.transform.TransformerException;
import javax.xml.transform.sax.SAXSource;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;
import kotlinx.coroutines.DebugKt;
import net.p110sf.saxon.Controller;
import net.p110sf.saxon.Query;
import net.p110sf.saxon.lib.AugmentedSource;
import net.p110sf.saxon.lib.Feature;
import net.p110sf.saxon.lib.Logger;
import net.p110sf.saxon.lib.ResourceRequest;
import net.p110sf.saxon.lib.StandardLogger;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.MutableNodeInfo;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.TreeModel;
import net.p110sf.saxon.query.QueryResult;
import net.p110sf.saxon.query.UpdateAgent;
import net.p110sf.saxon.query.XQueryExpression;
import net.p110sf.saxon.query.XQueryParser;
import net.p110sf.saxon.s9api.Destination;
import net.p110sf.saxon.s9api.DocumentBuilder;
import net.p110sf.saxon.s9api.Processor;
import net.p110sf.saxon.s9api.SaxonApiException;
import net.p110sf.saxon.s9api.Serializer;
import net.p110sf.saxon.s9api.XQueryEvaluator;
import net.p110sf.saxon.s9api.XQueryExecutable;
import net.p110sf.saxon.s9api.XdmValue;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trace.TimingCodeInjector;
import net.p110sf.saxon.trace.TimingTraceListener;
import net.p110sf.saxon.trace.XQueryTraceListener;
import net.p110sf.saxon.trans.CommandLineOptions;
import net.p110sf.saxon.trans.XPathException;
import org.apache.commons.lang3.SystemUtils;
import org.apache.http.cookie.ClientCookie;
import org.xml.sax.InputSource;
import org.xmlresolver.logging.AbstractLogger;

/* loaded from: classes11.dex */
public class Query {

    /* renamed from: a */
    public Processor f98853a;
    protected Configuration config;
    protected boolean showTime = false;
    protected int repeat = 1;
    protected String sourceXmlFileName = null;
    protected String sourceJsonFileName = null;
    protected String queryFileName = null;
    protected boolean useURLs = false;
    protected String outputFileName = null;
    protected String moduleURIResolverClass = null;
    protected boolean explaining = false;
    protected boolean wrap = false;
    protected boolean projection = false;
    protected boolean streaming = false;
    protected boolean updating = false;
    protected boolean writeback = false;
    protected boolean backup = true;
    protected String explainOutputFileName = null;

    /* renamed from: b */
    public Logger f98854b = new StandardLogger();

    /* renamed from: c */
    public boolean f98855c = false;

    /* renamed from: d */
    public boolean f98856d = true;
    protected String languageVersion = XQueryParser.XQUERY31;

    public static void createFileIfNecessary(File file) throws IOException {
        if (file.exists()) {
            return;
        }
        File parentFile = file.getParentFile();
        if (parentFile != null && !parentFile.exists()) {
            parentFile.mkdirs();
        }
        file.createNewFile();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public /* synthetic */ void m62435f(Serializer serializer, List list, NodeInfo nodeInfo, Controller controller) throws XPathException {
        try {
            if (controller.getDocumentPool().getDocumentURI(nodeInfo) != null) {
                m62437j(nodeInfo, serializer, this.backup, this.showTime ? this.config.getLogger() : null);
            } else if (this.showTime) {
                this.config.getLogger().warning("Updated document discarded because it was not read using doc()");
            }
        } catch (SaxonApiException e) {
            this.config.getLogger().warning(e.getMessage());
            list.add(e);
        }
    }

    /* renamed from: h */
    public static XdmValue m62436h(Processor processor, Reader reader) throws SaxonApiException {
        return processor.newJsonBuilder().parseJson(reader);
    }

    /* renamed from: j */
    public static void m62437j(NodeInfo nodeInfo, Serializer serializer, boolean z, Logger logger) throws SaxonApiException {
        int nodeKind = nodeInfo.getNodeKind();
        if (nodeKind == 1) {
            NodeInfo parent = nodeInfo.getParent();
            if (parent != null && parent.getNodeKind() != 9) {
                throw new SaxonApiException("Cannot rewrite an element node unless it is top-level");
            }
        } else if (nodeKind != 9) {
            throw new SaxonApiException("Node to be rewritten must be a document or element node");
        }
        String systemId = nodeInfo.getSystemId();
        if (systemId == null || systemId.isEmpty()) {
            throw new SaxonApiException("Cannot rewrite a document with no known URI");
        }
        try {
            File file = new File(new URI(systemId));
            File parentFile = file.getParentFile();
            if (z && file.exists()) {
                File file2 = new File(parentFile, file.getName() + ".bak");
                if (logger != null) {
                    logger.info("Creating backup file " + file2);
                }
                if (!file.renameTo(file2)) {
                    throw new SaxonApiException("Failed to create backup file of " + file2);
                }
            }
            if (!file.exists()) {
                if (logger != null) {
                    logger.info("Creating file " + file);
                }
                try {
                    file.createNewFile();
                } catch (IOException unused) {
                    throw new SaxonApiException("Failed to create new file " + file);
                }
            } else if (logger != null) {
                logger.info("Overwriting file " + file);
            }
            serializer.setOutputFile(file);
            serializer.getProcessor().writeXdmValue(XdmValue.wrap(nodeInfo), serializer);
        } catch (URISyntaxException unused2) {
            throw new SaxonApiException("SystemId of updated document is not a valid URI: " + systemId);
        }
    }

    public static void main(String[] strArr) {
        new Query().doQuery(strArr, "java net.sf.saxon.Query");
    }

    public void applyLocalOptions(CommandLineOptions commandLineOptions, Configuration configuration) {
    }

    public void badUsage(String str) {
        Logger logger = this.config.getLogger();
        if (!"".equals(str)) {
            logger.error(str);
        }
        if (!this.showTime) {
            logger.info(this.config.getProductTitle());
        }
        logger.info("Usage: see http://www.saxonica.com/documentation/index.html#!using-xquery/commandline");
        logger.info("Format: " + CommandLineOptions.getCommandName(this) + " options params");
        CommandLineOptions commandLineOptions = new CommandLineOptions();
        m62442k(commandLineOptions);
        logger.info("Options available:" + commandLineOptions.displayPermittedOptions());
        logger.info("Use -XYZ:? for details of option XYZ or --? to list configuration features");
        logger.info("Params: ");
        logger.info("  param=value           Set query string parameter");
        logger.info("  +param=filename       Set query document parameter");
        logger.info("  ?param=expression     Set query parameter using XPath");
        logger.info("  !param=value          Set serialization parameter");
        if (!this.f98856d) {
            throw new RuntimeException(str);
        }
        System.exit("".equals(str) ? 0 : 2);
    }

    /* renamed from: c */
    public final StreamResult m62438c(String str) throws FileNotFoundException {
        return new StreamResult(new FileOutputStream(str));
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00b2 A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x00a9 -> B:33:0x0092). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public net.p110sf.saxon.s9api.XQueryExecutable compileQuery(net.p110sf.saxon.s9api.XQueryCompiler r6, java.lang.String r7, boolean r8) throws net.p110sf.saxon.s9api.SaxonApiException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 246
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.Query.compileQuery(net.sf.saxon.s9api.XQueryCompiler, java.lang.String, boolean):net.sf.saxon.s9api.XQueryExecutable");
    }

    /* renamed from: d */
    public final String m62439d() {
        String name = getClass().getName();
        return name.equals("cli.Saxon.Cmd.DotNetQuery") ? C4Constants.LogDomain.QUERY : name;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(33:(41:207|208|7|(1:10)|11|(1:13)|14|15|16|17|18|(2:175|176)|20|(5:22|(1:24)|25|(1:27)|28)|29|(2:33|(1:35)(1:36))|37|(1:39)|40|(1:42)(1:174)|43|(1:45)|46|47|48|49|(1:51)|53|(6:56|(4:61|62|(1:64)|65)|66|62|(0)|65)|67|(2:69|(1:71)(1:72))|73|(3:142|143|(8:145|76|(11:79|80|(3:82|(1:84)|85)(1:124)|86|87|88|(1:119)(1:92)|93|(6:95|(1:97)|98|(1:100)(2:104|(2:106|107))|101|102)(2:117|118)|103|77)|141|108|(1:110)|111|(2:113|114)(1:116)))|75|76|(1:77)|141|108|(0)|111|(0)(0))|17|18|(0)|20|(0)|29|(3:31|33|(0)(0))|37|(0)|40|(0)(0)|43|(0)|46|47|48|49|(0)|53|(6:56|(5:58|61|62|(0)|65)|66|62|(0)|65)|67|(0)|73|(0)|75|76|(1:77)|141|108|(0)|111|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x0167, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x0168, code lost:
    
        r9 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x0173, code lost:
    
        if ((r9.getCause() instanceof net.p110sf.saxon.trans.XPathException) != false) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x0175, code lost:
    
        r8 = (net.p110sf.saxon.trans.XPathException) r9.getCause();
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x0180, code lost:
    
        if (r8.getLocator() != null) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x0182, code lost:
    
        r9 = r8.getLocator().getLineNumber();
        r11 = r8.getLocator().getSystemId();
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x0199, code lost:
    
        if (r8.hasBeenReported() != false) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:160:0x019b, code lost:
    
        quit("Static error(s) in query", 2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x01f8, code lost:
    
        if (r18.f98856d != false) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:163:0x01fa, code lost:
    
        java.lang.System.exit(2);
        r8 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x0208, code lost:
    
        throw new java.lang.RuntimeException(r8.getMessage());
     */
    /* JADX WARN: Code restructure failed: missing block: B:166:0x01a1, code lost:
    
        if (r9 == (-1)) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:167:0x01a3, code lost:
    
        r18.config.getLogger().error("Static error in query: " + r8.getMessage());
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:0x01c2, code lost:
    
        r18.config.getLogger().error("Static error at line " + r9 + " of " + r11 + ':');
        r18.config.getLogger().error(r8.getMessage());
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x0193, code lost:
    
        r9 = -1;
        r11 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:170:0x0209, code lost:
    
        quit(r9.getMessage(), 2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:172:0x016a, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:173:0x016b, code lost:
    
        r9 = r0;
        r8 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0420 A[Catch: TransformerFactoryConfigurationError -> 0x0453, SchemaException -> 0x0457, Exception -> 0x045b, SaxonApiException | LicenseException | XPathException -> 0x049f, SaxonApiException | LicenseException | XPathException -> 0x049f, SaxonApiException | LicenseException | XPathException -> 0x049f, TerminationException -> 0x04d7, TryCatch #11 {SaxonApiException | LicenseException | XPathException -> 0x049f, blocks: (B:16:0x006e, B:18:0x0071, B:18:0x0071, B:18:0x0071, B:176:0x0083, B:176:0x0083, B:176:0x0083, B:20:0x0091, B:20:0x0091, B:20:0x0091, B:22:0x0095, B:22:0x0095, B:22:0x0095, B:24:0x009f, B:24:0x009f, B:24:0x009f, B:25:0x00b5, B:25:0x00b5, B:25:0x00b5, B:27:0x00b9, B:27:0x00b9, B:27:0x00b9, B:28:0x00c1, B:28:0x00c1, B:28:0x00c1, B:29:0x00c6, B:29:0x00c6, B:29:0x00c6, B:31:0x00cd, B:31:0x00cd, B:31:0x00cd, B:33:0x00d5, B:33:0x00d5, B:33:0x00d5, B:35:0x00e3, B:35:0x00e3, B:35:0x00e3, B:36:0x00e9, B:36:0x00e9, B:36:0x00e9, B:37:0x00ee, B:37:0x00ee, B:37:0x00ee, B:39:0x00f2, B:39:0x00f2, B:39:0x00f2, B:40:0x00f9, B:40:0x00f9, B:40:0x00f9, B:42:0x0102, B:42:0x0102, B:42:0x0102, B:43:0x010a, B:43:0x010a, B:43:0x010a, B:45:0x0112, B:45:0x0112, B:45:0x0112, B:47:0x012e, B:47:0x012e, B:49:0x0136, B:49:0x0136, B:51:0x013a, B:51:0x013a, B:53:0x0210, B:53:0x0210, B:53:0x0210, B:56:0x0216, B:56:0x0216, B:56:0x0216, B:58:0x021a, B:58:0x021a, B:58:0x021a, B:61:0x0223, B:61:0x0223, B:61:0x0223, B:62:0x0239, B:62:0x0239, B:62:0x0239, B:64:0x0256, B:64:0x0256, B:64:0x0256, B:65:0x025d, B:65:0x025d, B:65:0x025d, B:66:0x0231, B:66:0x0231, B:66:0x0231, B:67:0x0260, B:67:0x0260, B:67:0x0260, B:69:0x0278, B:69:0x0278, B:69:0x0278, B:71:0x028e, B:71:0x028e, B:71:0x028e, B:72:0x0298, B:72:0x0298, B:72:0x0298, B:73:0x02b7, B:73:0x02b7, B:73:0x02b7, B:143:0x02be, B:143:0x02be, B:143:0x02be, B:145:0x02dd, B:145:0x02dd, B:145:0x02dd, B:76:0x0304, B:76:0x0304, B:76:0x0304, B:77:0x0314, B:77:0x0314, B:77:0x0314, B:80:0x0318, B:80:0x0318, B:82:0x031c, B:82:0x031c, B:84:0x0329, B:84:0x0329, B:85:0x032e, B:85:0x032e, B:87:0x033d, B:87:0x033d, B:123:0x0343, B:123:0x0343, B:88:0x034a, B:88:0x034a, B:90:0x034e, B:90:0x034e, B:92:0x0354, B:92:0x0354, B:93:0x03bb, B:93:0x03bb, B:93:0x03bb, B:95:0x03bf, B:95:0x03bf, B:95:0x03bf, B:97:0x03c6, B:97:0x03c6, B:97:0x03c6, B:98:0x03ca, B:98:0x03ca, B:98:0x03ca, B:100:0x03d0, B:100:0x03d0, B:100:0x03d0, B:103:0x0413, B:103:0x0413, B:103:0x0413, B:119:0x036b, B:119:0x036b, B:124:0x0335, B:124:0x0335, B:108:0x041b, B:108:0x041b, B:108:0x041b, B:110:0x0420, B:110:0x0420, B:110:0x0420, B:111:0x0442, B:111:0x0442, B:111:0x0442, B:113:0x0448, B:113:0x0448, B:113:0x0448, B:128:0x0371, B:128:0x0371, B:128:0x0371, B:130:0x0379, B:130:0x0379, B:130:0x0379, B:132:0x0385, B:132:0x0385, B:132:0x0385, B:135:0x0396, B:135:0x0396, B:135:0x0396, B:138:0x041a, B:138:0x041a, B:138:0x041a, B:149:0x02e8, B:149:0x02e8, B:149:0x02e8, B:150:0x0302, B:150:0x0302, B:150:0x0302, B:153:0x016d, B:153:0x016d, B:153:0x016d, B:155:0x0175, B:155:0x0175, B:155:0x0175, B:157:0x0182, B:157:0x0182, B:157:0x0182, B:158:0x0195, B:158:0x0195, B:158:0x0195, B:160:0x019b, B:160:0x019b, B:160:0x019b, B:161:0x01f6, B:161:0x01f6, B:161:0x01f6, B:163:0x01fa, B:163:0x01fa, B:163:0x01fa, B:164:0x01ff, B:164:0x01ff, B:164:0x01ff, B:165:0x0208, B:165:0x0208, B:165:0x0208, B:167:0x01a3, B:167:0x01a3, B:167:0x01a3, B:168:0x01c2, B:168:0x01c2, B:168:0x01c2, B:170:0x0209, B:170:0x0209, B:170:0x0209), top: B:15:0x006e }] */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0448 A[Catch: TransformerFactoryConfigurationError -> 0x0453, SchemaException -> 0x0457, Exception -> 0x045b, SaxonApiException | LicenseException | XPathException -> 0x049f, SaxonApiException | LicenseException | XPathException -> 0x049f, SaxonApiException | LicenseException | XPathException -> 0x049f, TerminationException -> 0x04d7, TRY_LEAVE, TryCatch #11 {SaxonApiException | LicenseException | XPathException -> 0x049f, blocks: (B:16:0x006e, B:18:0x0071, B:18:0x0071, B:18:0x0071, B:176:0x0083, B:176:0x0083, B:176:0x0083, B:20:0x0091, B:20:0x0091, B:20:0x0091, B:22:0x0095, B:22:0x0095, B:22:0x0095, B:24:0x009f, B:24:0x009f, B:24:0x009f, B:25:0x00b5, B:25:0x00b5, B:25:0x00b5, B:27:0x00b9, B:27:0x00b9, B:27:0x00b9, B:28:0x00c1, B:28:0x00c1, B:28:0x00c1, B:29:0x00c6, B:29:0x00c6, B:29:0x00c6, B:31:0x00cd, B:31:0x00cd, B:31:0x00cd, B:33:0x00d5, B:33:0x00d5, B:33:0x00d5, B:35:0x00e3, B:35:0x00e3, B:35:0x00e3, B:36:0x00e9, B:36:0x00e9, B:36:0x00e9, B:37:0x00ee, B:37:0x00ee, B:37:0x00ee, B:39:0x00f2, B:39:0x00f2, B:39:0x00f2, B:40:0x00f9, B:40:0x00f9, B:40:0x00f9, B:42:0x0102, B:42:0x0102, B:42:0x0102, B:43:0x010a, B:43:0x010a, B:43:0x010a, B:45:0x0112, B:45:0x0112, B:45:0x0112, B:47:0x012e, B:47:0x012e, B:49:0x0136, B:49:0x0136, B:51:0x013a, B:51:0x013a, B:53:0x0210, B:53:0x0210, B:53:0x0210, B:56:0x0216, B:56:0x0216, B:56:0x0216, B:58:0x021a, B:58:0x021a, B:58:0x021a, B:61:0x0223, B:61:0x0223, B:61:0x0223, B:62:0x0239, B:62:0x0239, B:62:0x0239, B:64:0x0256, B:64:0x0256, B:64:0x0256, B:65:0x025d, B:65:0x025d, B:65:0x025d, B:66:0x0231, B:66:0x0231, B:66:0x0231, B:67:0x0260, B:67:0x0260, B:67:0x0260, B:69:0x0278, B:69:0x0278, B:69:0x0278, B:71:0x028e, B:71:0x028e, B:71:0x028e, B:72:0x0298, B:72:0x0298, B:72:0x0298, B:73:0x02b7, B:73:0x02b7, B:73:0x02b7, B:143:0x02be, B:143:0x02be, B:143:0x02be, B:145:0x02dd, B:145:0x02dd, B:145:0x02dd, B:76:0x0304, B:76:0x0304, B:76:0x0304, B:77:0x0314, B:77:0x0314, B:77:0x0314, B:80:0x0318, B:80:0x0318, B:82:0x031c, B:82:0x031c, B:84:0x0329, B:84:0x0329, B:85:0x032e, B:85:0x032e, B:87:0x033d, B:87:0x033d, B:123:0x0343, B:123:0x0343, B:88:0x034a, B:88:0x034a, B:90:0x034e, B:90:0x034e, B:92:0x0354, B:92:0x0354, B:93:0x03bb, B:93:0x03bb, B:93:0x03bb, B:95:0x03bf, B:95:0x03bf, B:95:0x03bf, B:97:0x03c6, B:97:0x03c6, B:97:0x03c6, B:98:0x03ca, B:98:0x03ca, B:98:0x03ca, B:100:0x03d0, B:100:0x03d0, B:100:0x03d0, B:103:0x0413, B:103:0x0413, B:103:0x0413, B:119:0x036b, B:119:0x036b, B:124:0x0335, B:124:0x0335, B:108:0x041b, B:108:0x041b, B:108:0x041b, B:110:0x0420, B:110:0x0420, B:110:0x0420, B:111:0x0442, B:111:0x0442, B:111:0x0442, B:113:0x0448, B:113:0x0448, B:113:0x0448, B:128:0x0371, B:128:0x0371, B:128:0x0371, B:130:0x0379, B:130:0x0379, B:130:0x0379, B:132:0x0385, B:132:0x0385, B:132:0x0385, B:135:0x0396, B:135:0x0396, B:135:0x0396, B:138:0x041a, B:138:0x041a, B:138:0x041a, B:149:0x02e8, B:149:0x02e8, B:149:0x02e8, B:150:0x0302, B:150:0x0302, B:150:0x0302, B:153:0x016d, B:153:0x016d, B:153:0x016d, B:155:0x0175, B:155:0x0175, B:155:0x0175, B:157:0x0182, B:157:0x0182, B:157:0x0182, B:158:0x0195, B:158:0x0195, B:158:0x0195, B:160:0x019b, B:160:0x019b, B:160:0x019b, B:161:0x01f6, B:161:0x01f6, B:161:0x01f6, B:163:0x01fa, B:163:0x01fa, B:163:0x01fa, B:164:0x01ff, B:164:0x01ff, B:164:0x01ff, B:165:0x0208, B:165:0x0208, B:165:0x0208, B:167:0x01a3, B:167:0x01a3, B:167:0x01a3, B:168:0x01c2, B:168:0x01c2, B:168:0x01c2, B:170:0x0209, B:170:0x0209, B:170:0x0209), top: B:15:0x006e }] */
    /* JADX WARN: Removed duplicated region for block: B:116:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x02be A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:174:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x0083 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0095 A[Catch: TransformerFactoryConfigurationError -> 0x0087, SchemaException -> 0x008c, Exception -> 0x045b, SaxonApiException | LicenseException | XPathException -> 0x049f, SaxonApiException | LicenseException | XPathException -> 0x049f, SaxonApiException | LicenseException | XPathException -> 0x049f, TerminationException -> 0x04d7, TRY_ENTER, TryCatch #11 {SaxonApiException | LicenseException | XPathException -> 0x049f, blocks: (B:16:0x006e, B:18:0x0071, B:18:0x0071, B:18:0x0071, B:176:0x0083, B:176:0x0083, B:176:0x0083, B:20:0x0091, B:20:0x0091, B:20:0x0091, B:22:0x0095, B:22:0x0095, B:22:0x0095, B:24:0x009f, B:24:0x009f, B:24:0x009f, B:25:0x00b5, B:25:0x00b5, B:25:0x00b5, B:27:0x00b9, B:27:0x00b9, B:27:0x00b9, B:28:0x00c1, B:28:0x00c1, B:28:0x00c1, B:29:0x00c6, B:29:0x00c6, B:29:0x00c6, B:31:0x00cd, B:31:0x00cd, B:31:0x00cd, B:33:0x00d5, B:33:0x00d5, B:33:0x00d5, B:35:0x00e3, B:35:0x00e3, B:35:0x00e3, B:36:0x00e9, B:36:0x00e9, B:36:0x00e9, B:37:0x00ee, B:37:0x00ee, B:37:0x00ee, B:39:0x00f2, B:39:0x00f2, B:39:0x00f2, B:40:0x00f9, B:40:0x00f9, B:40:0x00f9, B:42:0x0102, B:42:0x0102, B:42:0x0102, B:43:0x010a, B:43:0x010a, B:43:0x010a, B:45:0x0112, B:45:0x0112, B:45:0x0112, B:47:0x012e, B:47:0x012e, B:49:0x0136, B:49:0x0136, B:51:0x013a, B:51:0x013a, B:53:0x0210, B:53:0x0210, B:53:0x0210, B:56:0x0216, B:56:0x0216, B:56:0x0216, B:58:0x021a, B:58:0x021a, B:58:0x021a, B:61:0x0223, B:61:0x0223, B:61:0x0223, B:62:0x0239, B:62:0x0239, B:62:0x0239, B:64:0x0256, B:64:0x0256, B:64:0x0256, B:65:0x025d, B:65:0x025d, B:65:0x025d, B:66:0x0231, B:66:0x0231, B:66:0x0231, B:67:0x0260, B:67:0x0260, B:67:0x0260, B:69:0x0278, B:69:0x0278, B:69:0x0278, B:71:0x028e, B:71:0x028e, B:71:0x028e, B:72:0x0298, B:72:0x0298, B:72:0x0298, B:73:0x02b7, B:73:0x02b7, B:73:0x02b7, B:143:0x02be, B:143:0x02be, B:143:0x02be, B:145:0x02dd, B:145:0x02dd, B:145:0x02dd, B:76:0x0304, B:76:0x0304, B:76:0x0304, B:77:0x0314, B:77:0x0314, B:77:0x0314, B:80:0x0318, B:80:0x0318, B:82:0x031c, B:82:0x031c, B:84:0x0329, B:84:0x0329, B:85:0x032e, B:85:0x032e, B:87:0x033d, B:87:0x033d, B:123:0x0343, B:123:0x0343, B:88:0x034a, B:88:0x034a, B:90:0x034e, B:90:0x034e, B:92:0x0354, B:92:0x0354, B:93:0x03bb, B:93:0x03bb, B:93:0x03bb, B:95:0x03bf, B:95:0x03bf, B:95:0x03bf, B:97:0x03c6, B:97:0x03c6, B:97:0x03c6, B:98:0x03ca, B:98:0x03ca, B:98:0x03ca, B:100:0x03d0, B:100:0x03d0, B:100:0x03d0, B:103:0x0413, B:103:0x0413, B:103:0x0413, B:119:0x036b, B:119:0x036b, B:124:0x0335, B:124:0x0335, B:108:0x041b, B:108:0x041b, B:108:0x041b, B:110:0x0420, B:110:0x0420, B:110:0x0420, B:111:0x0442, B:111:0x0442, B:111:0x0442, B:113:0x0448, B:113:0x0448, B:113:0x0448, B:128:0x0371, B:128:0x0371, B:128:0x0371, B:130:0x0379, B:130:0x0379, B:130:0x0379, B:132:0x0385, B:132:0x0385, B:132:0x0385, B:135:0x0396, B:135:0x0396, B:135:0x0396, B:138:0x041a, B:138:0x041a, B:138:0x041a, B:149:0x02e8, B:149:0x02e8, B:149:0x02e8, B:150:0x0302, B:150:0x0302, B:150:0x0302, B:153:0x016d, B:153:0x016d, B:153:0x016d, B:155:0x0175, B:155:0x0175, B:155:0x0175, B:157:0x0182, B:157:0x0182, B:157:0x0182, B:158:0x0195, B:158:0x0195, B:158:0x0195, B:160:0x019b, B:160:0x019b, B:160:0x019b, B:161:0x01f6, B:161:0x01f6, B:161:0x01f6, B:163:0x01fa, B:163:0x01fa, B:163:0x01fa, B:164:0x01ff, B:164:0x01ff, B:164:0x01ff, B:165:0x0208, B:165:0x0208, B:165:0x0208, B:167:0x01a3, B:167:0x01a3, B:167:0x01a3, B:168:0x01c2, B:168:0x01c2, B:168:0x01c2, B:170:0x0209, B:170:0x0209, B:170:0x0209), top: B:15:0x006e }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00e3 A[Catch: TransformerFactoryConfigurationError -> 0x0087, SchemaException -> 0x008c, Exception -> 0x045b, SaxonApiException | LicenseException | XPathException -> 0x049f, SaxonApiException | LicenseException | XPathException -> 0x049f, SaxonApiException | LicenseException | XPathException -> 0x049f, TerminationException -> 0x04d7, TryCatch #11 {SaxonApiException | LicenseException | XPathException -> 0x049f, blocks: (B:16:0x006e, B:18:0x0071, B:18:0x0071, B:18:0x0071, B:176:0x0083, B:176:0x0083, B:176:0x0083, B:20:0x0091, B:20:0x0091, B:20:0x0091, B:22:0x0095, B:22:0x0095, B:22:0x0095, B:24:0x009f, B:24:0x009f, B:24:0x009f, B:25:0x00b5, B:25:0x00b5, B:25:0x00b5, B:27:0x00b9, B:27:0x00b9, B:27:0x00b9, B:28:0x00c1, B:28:0x00c1, B:28:0x00c1, B:29:0x00c6, B:29:0x00c6, B:29:0x00c6, B:31:0x00cd, B:31:0x00cd, B:31:0x00cd, B:33:0x00d5, B:33:0x00d5, B:33:0x00d5, B:35:0x00e3, B:35:0x00e3, B:35:0x00e3, B:36:0x00e9, B:36:0x00e9, B:36:0x00e9, B:37:0x00ee, B:37:0x00ee, B:37:0x00ee, B:39:0x00f2, B:39:0x00f2, B:39:0x00f2, B:40:0x00f9, B:40:0x00f9, B:40:0x00f9, B:42:0x0102, B:42:0x0102, B:42:0x0102, B:43:0x010a, B:43:0x010a, B:43:0x010a, B:45:0x0112, B:45:0x0112, B:45:0x0112, B:47:0x012e, B:47:0x012e, B:49:0x0136, B:49:0x0136, B:51:0x013a, B:51:0x013a, B:53:0x0210, B:53:0x0210, B:53:0x0210, B:56:0x0216, B:56:0x0216, B:56:0x0216, B:58:0x021a, B:58:0x021a, B:58:0x021a, B:61:0x0223, B:61:0x0223, B:61:0x0223, B:62:0x0239, B:62:0x0239, B:62:0x0239, B:64:0x0256, B:64:0x0256, B:64:0x0256, B:65:0x025d, B:65:0x025d, B:65:0x025d, B:66:0x0231, B:66:0x0231, B:66:0x0231, B:67:0x0260, B:67:0x0260, B:67:0x0260, B:69:0x0278, B:69:0x0278, B:69:0x0278, B:71:0x028e, B:71:0x028e, B:71:0x028e, B:72:0x0298, B:72:0x0298, B:72:0x0298, B:73:0x02b7, B:73:0x02b7, B:73:0x02b7, B:143:0x02be, B:143:0x02be, B:143:0x02be, B:145:0x02dd, B:145:0x02dd, B:145:0x02dd, B:76:0x0304, B:76:0x0304, B:76:0x0304, B:77:0x0314, B:77:0x0314, B:77:0x0314, B:80:0x0318, B:80:0x0318, B:82:0x031c, B:82:0x031c, B:84:0x0329, B:84:0x0329, B:85:0x032e, B:85:0x032e, B:87:0x033d, B:87:0x033d, B:123:0x0343, B:123:0x0343, B:88:0x034a, B:88:0x034a, B:90:0x034e, B:90:0x034e, B:92:0x0354, B:92:0x0354, B:93:0x03bb, B:93:0x03bb, B:93:0x03bb, B:95:0x03bf, B:95:0x03bf, B:95:0x03bf, B:97:0x03c6, B:97:0x03c6, B:97:0x03c6, B:98:0x03ca, B:98:0x03ca, B:98:0x03ca, B:100:0x03d0, B:100:0x03d0, B:100:0x03d0, B:103:0x0413, B:103:0x0413, B:103:0x0413, B:119:0x036b, B:119:0x036b, B:124:0x0335, B:124:0x0335, B:108:0x041b, B:108:0x041b, B:108:0x041b, B:110:0x0420, B:110:0x0420, B:110:0x0420, B:111:0x0442, B:111:0x0442, B:111:0x0442, B:113:0x0448, B:113:0x0448, B:113:0x0448, B:128:0x0371, B:128:0x0371, B:128:0x0371, B:130:0x0379, B:130:0x0379, B:130:0x0379, B:132:0x0385, B:132:0x0385, B:132:0x0385, B:135:0x0396, B:135:0x0396, B:135:0x0396, B:138:0x041a, B:138:0x041a, B:138:0x041a, B:149:0x02e8, B:149:0x02e8, B:149:0x02e8, B:150:0x0302, B:150:0x0302, B:150:0x0302, B:153:0x016d, B:153:0x016d, B:153:0x016d, B:155:0x0175, B:155:0x0175, B:155:0x0175, B:157:0x0182, B:157:0x0182, B:157:0x0182, B:158:0x0195, B:158:0x0195, B:158:0x0195, B:160:0x019b, B:160:0x019b, B:160:0x019b, B:161:0x01f6, B:161:0x01f6, B:161:0x01f6, B:163:0x01fa, B:163:0x01fa, B:163:0x01fa, B:164:0x01ff, B:164:0x01ff, B:164:0x01ff, B:165:0x0208, B:165:0x0208, B:165:0x0208, B:167:0x01a3, B:167:0x01a3, B:167:0x01a3, B:168:0x01c2, B:168:0x01c2, B:168:0x01c2, B:170:0x0209, B:170:0x0209, B:170:0x0209), top: B:15:0x006e }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00e9 A[Catch: TransformerFactoryConfigurationError -> 0x0087, SchemaException -> 0x008c, Exception -> 0x045b, SaxonApiException | LicenseException | XPathException -> 0x049f, SaxonApiException | LicenseException | XPathException -> 0x049f, SaxonApiException | LicenseException | XPathException -> 0x049f, TerminationException -> 0x04d7, TRY_LEAVE, TryCatch #11 {SaxonApiException | LicenseException | XPathException -> 0x049f, blocks: (B:16:0x006e, B:18:0x0071, B:18:0x0071, B:18:0x0071, B:176:0x0083, B:176:0x0083, B:176:0x0083, B:20:0x0091, B:20:0x0091, B:20:0x0091, B:22:0x0095, B:22:0x0095, B:22:0x0095, B:24:0x009f, B:24:0x009f, B:24:0x009f, B:25:0x00b5, B:25:0x00b5, B:25:0x00b5, B:27:0x00b9, B:27:0x00b9, B:27:0x00b9, B:28:0x00c1, B:28:0x00c1, B:28:0x00c1, B:29:0x00c6, B:29:0x00c6, B:29:0x00c6, B:31:0x00cd, B:31:0x00cd, B:31:0x00cd, B:33:0x00d5, B:33:0x00d5, B:33:0x00d5, B:35:0x00e3, B:35:0x00e3, B:35:0x00e3, B:36:0x00e9, B:36:0x00e9, B:36:0x00e9, B:37:0x00ee, B:37:0x00ee, B:37:0x00ee, B:39:0x00f2, B:39:0x00f2, B:39:0x00f2, B:40:0x00f9, B:40:0x00f9, B:40:0x00f9, B:42:0x0102, B:42:0x0102, B:42:0x0102, B:43:0x010a, B:43:0x010a, B:43:0x010a, B:45:0x0112, B:45:0x0112, B:45:0x0112, B:47:0x012e, B:47:0x012e, B:49:0x0136, B:49:0x0136, B:51:0x013a, B:51:0x013a, B:53:0x0210, B:53:0x0210, B:53:0x0210, B:56:0x0216, B:56:0x0216, B:56:0x0216, B:58:0x021a, B:58:0x021a, B:58:0x021a, B:61:0x0223, B:61:0x0223, B:61:0x0223, B:62:0x0239, B:62:0x0239, B:62:0x0239, B:64:0x0256, B:64:0x0256, B:64:0x0256, B:65:0x025d, B:65:0x025d, B:65:0x025d, B:66:0x0231, B:66:0x0231, B:66:0x0231, B:67:0x0260, B:67:0x0260, B:67:0x0260, B:69:0x0278, B:69:0x0278, B:69:0x0278, B:71:0x028e, B:71:0x028e, B:71:0x028e, B:72:0x0298, B:72:0x0298, B:72:0x0298, B:73:0x02b7, B:73:0x02b7, B:73:0x02b7, B:143:0x02be, B:143:0x02be, B:143:0x02be, B:145:0x02dd, B:145:0x02dd, B:145:0x02dd, B:76:0x0304, B:76:0x0304, B:76:0x0304, B:77:0x0314, B:77:0x0314, B:77:0x0314, B:80:0x0318, B:80:0x0318, B:82:0x031c, B:82:0x031c, B:84:0x0329, B:84:0x0329, B:85:0x032e, B:85:0x032e, B:87:0x033d, B:87:0x033d, B:123:0x0343, B:123:0x0343, B:88:0x034a, B:88:0x034a, B:90:0x034e, B:90:0x034e, B:92:0x0354, B:92:0x0354, B:93:0x03bb, B:93:0x03bb, B:93:0x03bb, B:95:0x03bf, B:95:0x03bf, B:95:0x03bf, B:97:0x03c6, B:97:0x03c6, B:97:0x03c6, B:98:0x03ca, B:98:0x03ca, B:98:0x03ca, B:100:0x03d0, B:100:0x03d0, B:100:0x03d0, B:103:0x0413, B:103:0x0413, B:103:0x0413, B:119:0x036b, B:119:0x036b, B:124:0x0335, B:124:0x0335, B:108:0x041b, B:108:0x041b, B:108:0x041b, B:110:0x0420, B:110:0x0420, B:110:0x0420, B:111:0x0442, B:111:0x0442, B:111:0x0442, B:113:0x0448, B:113:0x0448, B:113:0x0448, B:128:0x0371, B:128:0x0371, B:128:0x0371, B:130:0x0379, B:130:0x0379, B:130:0x0379, B:132:0x0385, B:132:0x0385, B:132:0x0385, B:135:0x0396, B:135:0x0396, B:135:0x0396, B:138:0x041a, B:138:0x041a, B:138:0x041a, B:149:0x02e8, B:149:0x02e8, B:149:0x02e8, B:150:0x0302, B:150:0x0302, B:150:0x0302, B:153:0x016d, B:153:0x016d, B:153:0x016d, B:155:0x0175, B:155:0x0175, B:155:0x0175, B:157:0x0182, B:157:0x0182, B:157:0x0182, B:158:0x0195, B:158:0x0195, B:158:0x0195, B:160:0x019b, B:160:0x019b, B:160:0x019b, B:161:0x01f6, B:161:0x01f6, B:161:0x01f6, B:163:0x01fa, B:163:0x01fa, B:163:0x01fa, B:164:0x01ff, B:164:0x01ff, B:164:0x01ff, B:165:0x0208, B:165:0x0208, B:165:0x0208, B:167:0x01a3, B:167:0x01a3, B:167:0x01a3, B:168:0x01c2, B:168:0x01c2, B:168:0x01c2, B:170:0x0209, B:170:0x0209, B:170:0x0209), top: B:15:0x006e }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00f2 A[Catch: TransformerFactoryConfigurationError -> 0x0087, SchemaException -> 0x008c, Exception -> 0x045b, SaxonApiException | LicenseException | XPathException -> 0x049f, SaxonApiException | LicenseException | XPathException -> 0x049f, SaxonApiException | LicenseException | XPathException -> 0x049f, TerminationException -> 0x04d7, TRY_ENTER, TRY_LEAVE, TryCatch #11 {SaxonApiException | LicenseException | XPathException -> 0x049f, blocks: (B:16:0x006e, B:18:0x0071, B:18:0x0071, B:18:0x0071, B:176:0x0083, B:176:0x0083, B:176:0x0083, B:20:0x0091, B:20:0x0091, B:20:0x0091, B:22:0x0095, B:22:0x0095, B:22:0x0095, B:24:0x009f, B:24:0x009f, B:24:0x009f, B:25:0x00b5, B:25:0x00b5, B:25:0x00b5, B:27:0x00b9, B:27:0x00b9, B:27:0x00b9, B:28:0x00c1, B:28:0x00c1, B:28:0x00c1, B:29:0x00c6, B:29:0x00c6, B:29:0x00c6, B:31:0x00cd, B:31:0x00cd, B:31:0x00cd, B:33:0x00d5, B:33:0x00d5, B:33:0x00d5, B:35:0x00e3, B:35:0x00e3, B:35:0x00e3, B:36:0x00e9, B:36:0x00e9, B:36:0x00e9, B:37:0x00ee, B:37:0x00ee, B:37:0x00ee, B:39:0x00f2, B:39:0x00f2, B:39:0x00f2, B:40:0x00f9, B:40:0x00f9, B:40:0x00f9, B:42:0x0102, B:42:0x0102, B:42:0x0102, B:43:0x010a, B:43:0x010a, B:43:0x010a, B:45:0x0112, B:45:0x0112, B:45:0x0112, B:47:0x012e, B:47:0x012e, B:49:0x0136, B:49:0x0136, B:51:0x013a, B:51:0x013a, B:53:0x0210, B:53:0x0210, B:53:0x0210, B:56:0x0216, B:56:0x0216, B:56:0x0216, B:58:0x021a, B:58:0x021a, B:58:0x021a, B:61:0x0223, B:61:0x0223, B:61:0x0223, B:62:0x0239, B:62:0x0239, B:62:0x0239, B:64:0x0256, B:64:0x0256, B:64:0x0256, B:65:0x025d, B:65:0x025d, B:65:0x025d, B:66:0x0231, B:66:0x0231, B:66:0x0231, B:67:0x0260, B:67:0x0260, B:67:0x0260, B:69:0x0278, B:69:0x0278, B:69:0x0278, B:71:0x028e, B:71:0x028e, B:71:0x028e, B:72:0x0298, B:72:0x0298, B:72:0x0298, B:73:0x02b7, B:73:0x02b7, B:73:0x02b7, B:143:0x02be, B:143:0x02be, B:143:0x02be, B:145:0x02dd, B:145:0x02dd, B:145:0x02dd, B:76:0x0304, B:76:0x0304, B:76:0x0304, B:77:0x0314, B:77:0x0314, B:77:0x0314, B:80:0x0318, B:80:0x0318, B:82:0x031c, B:82:0x031c, B:84:0x0329, B:84:0x0329, B:85:0x032e, B:85:0x032e, B:87:0x033d, B:87:0x033d, B:123:0x0343, B:123:0x0343, B:88:0x034a, B:88:0x034a, B:90:0x034e, B:90:0x034e, B:92:0x0354, B:92:0x0354, B:93:0x03bb, B:93:0x03bb, B:93:0x03bb, B:95:0x03bf, B:95:0x03bf, B:95:0x03bf, B:97:0x03c6, B:97:0x03c6, B:97:0x03c6, B:98:0x03ca, B:98:0x03ca, B:98:0x03ca, B:100:0x03d0, B:100:0x03d0, B:100:0x03d0, B:103:0x0413, B:103:0x0413, B:103:0x0413, B:119:0x036b, B:119:0x036b, B:124:0x0335, B:124:0x0335, B:108:0x041b, B:108:0x041b, B:108:0x041b, B:110:0x0420, B:110:0x0420, B:110:0x0420, B:111:0x0442, B:111:0x0442, B:111:0x0442, B:113:0x0448, B:113:0x0448, B:113:0x0448, B:128:0x0371, B:128:0x0371, B:128:0x0371, B:130:0x0379, B:130:0x0379, B:130:0x0379, B:132:0x0385, B:132:0x0385, B:132:0x0385, B:135:0x0396, B:135:0x0396, B:135:0x0396, B:138:0x041a, B:138:0x041a, B:138:0x041a, B:149:0x02e8, B:149:0x02e8, B:149:0x02e8, B:150:0x0302, B:150:0x0302, B:150:0x0302, B:153:0x016d, B:153:0x016d, B:153:0x016d, B:155:0x0175, B:155:0x0175, B:155:0x0175, B:157:0x0182, B:157:0x0182, B:157:0x0182, B:158:0x0195, B:158:0x0195, B:158:0x0195, B:160:0x019b, B:160:0x019b, B:160:0x019b, B:161:0x01f6, B:161:0x01f6, B:161:0x01f6, B:163:0x01fa, B:163:0x01fa, B:163:0x01fa, B:164:0x01ff, B:164:0x01ff, B:164:0x01ff, B:165:0x0208, B:165:0x0208, B:165:0x0208, B:167:0x01a3, B:167:0x01a3, B:167:0x01a3, B:168:0x01c2, B:168:0x01c2, B:168:0x01c2, B:170:0x0209, B:170:0x0209, B:170:0x0209), top: B:15:0x006e }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0102 A[Catch: TransformerFactoryConfigurationError -> 0x0087, SchemaException -> 0x008c, Exception -> 0x045b, SaxonApiException | LicenseException | XPathException -> 0x049f, SaxonApiException | LicenseException | XPathException -> 0x049f, SaxonApiException | LicenseException | XPathException -> 0x049f, TerminationException -> 0x04d7, TRY_ENTER, TRY_LEAVE, TryCatch #11 {SaxonApiException | LicenseException | XPathException -> 0x049f, blocks: (B:16:0x006e, B:18:0x0071, B:18:0x0071, B:18:0x0071, B:176:0x0083, B:176:0x0083, B:176:0x0083, B:20:0x0091, B:20:0x0091, B:20:0x0091, B:22:0x0095, B:22:0x0095, B:22:0x0095, B:24:0x009f, B:24:0x009f, B:24:0x009f, B:25:0x00b5, B:25:0x00b5, B:25:0x00b5, B:27:0x00b9, B:27:0x00b9, B:27:0x00b9, B:28:0x00c1, B:28:0x00c1, B:28:0x00c1, B:29:0x00c6, B:29:0x00c6, B:29:0x00c6, B:31:0x00cd, B:31:0x00cd, B:31:0x00cd, B:33:0x00d5, B:33:0x00d5, B:33:0x00d5, B:35:0x00e3, B:35:0x00e3, B:35:0x00e3, B:36:0x00e9, B:36:0x00e9, B:36:0x00e9, B:37:0x00ee, B:37:0x00ee, B:37:0x00ee, B:39:0x00f2, B:39:0x00f2, B:39:0x00f2, B:40:0x00f9, B:40:0x00f9, B:40:0x00f9, B:42:0x0102, B:42:0x0102, B:42:0x0102, B:43:0x010a, B:43:0x010a, B:43:0x010a, B:45:0x0112, B:45:0x0112, B:45:0x0112, B:47:0x012e, B:47:0x012e, B:49:0x0136, B:49:0x0136, B:51:0x013a, B:51:0x013a, B:53:0x0210, B:53:0x0210, B:53:0x0210, B:56:0x0216, B:56:0x0216, B:56:0x0216, B:58:0x021a, B:58:0x021a, B:58:0x021a, B:61:0x0223, B:61:0x0223, B:61:0x0223, B:62:0x0239, B:62:0x0239, B:62:0x0239, B:64:0x0256, B:64:0x0256, B:64:0x0256, B:65:0x025d, B:65:0x025d, B:65:0x025d, B:66:0x0231, B:66:0x0231, B:66:0x0231, B:67:0x0260, B:67:0x0260, B:67:0x0260, B:69:0x0278, B:69:0x0278, B:69:0x0278, B:71:0x028e, B:71:0x028e, B:71:0x028e, B:72:0x0298, B:72:0x0298, B:72:0x0298, B:73:0x02b7, B:73:0x02b7, B:73:0x02b7, B:143:0x02be, B:143:0x02be, B:143:0x02be, B:145:0x02dd, B:145:0x02dd, B:145:0x02dd, B:76:0x0304, B:76:0x0304, B:76:0x0304, B:77:0x0314, B:77:0x0314, B:77:0x0314, B:80:0x0318, B:80:0x0318, B:82:0x031c, B:82:0x031c, B:84:0x0329, B:84:0x0329, B:85:0x032e, B:85:0x032e, B:87:0x033d, B:87:0x033d, B:123:0x0343, B:123:0x0343, B:88:0x034a, B:88:0x034a, B:90:0x034e, B:90:0x034e, B:92:0x0354, B:92:0x0354, B:93:0x03bb, B:93:0x03bb, B:93:0x03bb, B:95:0x03bf, B:95:0x03bf, B:95:0x03bf, B:97:0x03c6, B:97:0x03c6, B:97:0x03c6, B:98:0x03ca, B:98:0x03ca, B:98:0x03ca, B:100:0x03d0, B:100:0x03d0, B:100:0x03d0, B:103:0x0413, B:103:0x0413, B:103:0x0413, B:119:0x036b, B:119:0x036b, B:124:0x0335, B:124:0x0335, B:108:0x041b, B:108:0x041b, B:108:0x041b, B:110:0x0420, B:110:0x0420, B:110:0x0420, B:111:0x0442, B:111:0x0442, B:111:0x0442, B:113:0x0448, B:113:0x0448, B:113:0x0448, B:128:0x0371, B:128:0x0371, B:128:0x0371, B:130:0x0379, B:130:0x0379, B:130:0x0379, B:132:0x0385, B:132:0x0385, B:132:0x0385, B:135:0x0396, B:135:0x0396, B:135:0x0396, B:138:0x041a, B:138:0x041a, B:138:0x041a, B:149:0x02e8, B:149:0x02e8, B:149:0x02e8, B:150:0x0302, B:150:0x0302, B:150:0x0302, B:153:0x016d, B:153:0x016d, B:153:0x016d, B:155:0x0175, B:155:0x0175, B:155:0x0175, B:157:0x0182, B:157:0x0182, B:157:0x0182, B:158:0x0195, B:158:0x0195, B:158:0x0195, B:160:0x019b, B:160:0x019b, B:160:0x019b, B:161:0x01f6, B:161:0x01f6, B:161:0x01f6, B:163:0x01fa, B:163:0x01fa, B:163:0x01fa, B:164:0x01ff, B:164:0x01ff, B:164:0x01ff, B:165:0x0208, B:165:0x0208, B:165:0x0208, B:167:0x01a3, B:167:0x01a3, B:167:0x01a3, B:168:0x01c2, B:168:0x01c2, B:168:0x01c2, B:170:0x0209, B:170:0x0209, B:170:0x0209), top: B:15:0x006e }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0112 A[Catch: TransformerFactoryConfigurationError -> 0x0087, SchemaException -> 0x008c, Exception -> 0x045b, SaxonApiException | LicenseException | XPathException -> 0x049f, SaxonApiException | LicenseException | XPathException -> 0x049f, SaxonApiException | LicenseException | XPathException -> 0x049f, TerminationException -> 0x04d7, TRY_ENTER, TRY_LEAVE, TryCatch #11 {SaxonApiException | LicenseException | XPathException -> 0x049f, blocks: (B:16:0x006e, B:18:0x0071, B:18:0x0071, B:18:0x0071, B:176:0x0083, B:176:0x0083, B:176:0x0083, B:20:0x0091, B:20:0x0091, B:20:0x0091, B:22:0x0095, B:22:0x0095, B:22:0x0095, B:24:0x009f, B:24:0x009f, B:24:0x009f, B:25:0x00b5, B:25:0x00b5, B:25:0x00b5, B:27:0x00b9, B:27:0x00b9, B:27:0x00b9, B:28:0x00c1, B:28:0x00c1, B:28:0x00c1, B:29:0x00c6, B:29:0x00c6, B:29:0x00c6, B:31:0x00cd, B:31:0x00cd, B:31:0x00cd, B:33:0x00d5, B:33:0x00d5, B:33:0x00d5, B:35:0x00e3, B:35:0x00e3, B:35:0x00e3, B:36:0x00e9, B:36:0x00e9, B:36:0x00e9, B:37:0x00ee, B:37:0x00ee, B:37:0x00ee, B:39:0x00f2, B:39:0x00f2, B:39:0x00f2, B:40:0x00f9, B:40:0x00f9, B:40:0x00f9, B:42:0x0102, B:42:0x0102, B:42:0x0102, B:43:0x010a, B:43:0x010a, B:43:0x010a, B:45:0x0112, B:45:0x0112, B:45:0x0112, B:47:0x012e, B:47:0x012e, B:49:0x0136, B:49:0x0136, B:51:0x013a, B:51:0x013a, B:53:0x0210, B:53:0x0210, B:53:0x0210, B:56:0x0216, B:56:0x0216, B:56:0x0216, B:58:0x021a, B:58:0x021a, B:58:0x021a, B:61:0x0223, B:61:0x0223, B:61:0x0223, B:62:0x0239, B:62:0x0239, B:62:0x0239, B:64:0x0256, B:64:0x0256, B:64:0x0256, B:65:0x025d, B:65:0x025d, B:65:0x025d, B:66:0x0231, B:66:0x0231, B:66:0x0231, B:67:0x0260, B:67:0x0260, B:67:0x0260, B:69:0x0278, B:69:0x0278, B:69:0x0278, B:71:0x028e, B:71:0x028e, B:71:0x028e, B:72:0x0298, B:72:0x0298, B:72:0x0298, B:73:0x02b7, B:73:0x02b7, B:73:0x02b7, B:143:0x02be, B:143:0x02be, B:143:0x02be, B:145:0x02dd, B:145:0x02dd, B:145:0x02dd, B:76:0x0304, B:76:0x0304, B:76:0x0304, B:77:0x0314, B:77:0x0314, B:77:0x0314, B:80:0x0318, B:80:0x0318, B:82:0x031c, B:82:0x031c, B:84:0x0329, B:84:0x0329, B:85:0x032e, B:85:0x032e, B:87:0x033d, B:87:0x033d, B:123:0x0343, B:123:0x0343, B:88:0x034a, B:88:0x034a, B:90:0x034e, B:90:0x034e, B:92:0x0354, B:92:0x0354, B:93:0x03bb, B:93:0x03bb, B:93:0x03bb, B:95:0x03bf, B:95:0x03bf, B:95:0x03bf, B:97:0x03c6, B:97:0x03c6, B:97:0x03c6, B:98:0x03ca, B:98:0x03ca, B:98:0x03ca, B:100:0x03d0, B:100:0x03d0, B:100:0x03d0, B:103:0x0413, B:103:0x0413, B:103:0x0413, B:119:0x036b, B:119:0x036b, B:124:0x0335, B:124:0x0335, B:108:0x041b, B:108:0x041b, B:108:0x041b, B:110:0x0420, B:110:0x0420, B:110:0x0420, B:111:0x0442, B:111:0x0442, B:111:0x0442, B:113:0x0448, B:113:0x0448, B:113:0x0448, B:128:0x0371, B:128:0x0371, B:128:0x0371, B:130:0x0379, B:130:0x0379, B:130:0x0379, B:132:0x0385, B:132:0x0385, B:132:0x0385, B:135:0x0396, B:135:0x0396, B:135:0x0396, B:138:0x041a, B:138:0x041a, B:138:0x041a, B:149:0x02e8, B:149:0x02e8, B:149:0x02e8, B:150:0x0302, B:150:0x0302, B:150:0x0302, B:153:0x016d, B:153:0x016d, B:153:0x016d, B:155:0x0175, B:155:0x0175, B:155:0x0175, B:157:0x0182, B:157:0x0182, B:157:0x0182, B:158:0x0195, B:158:0x0195, B:158:0x0195, B:160:0x019b, B:160:0x019b, B:160:0x019b, B:161:0x01f6, B:161:0x01f6, B:161:0x01f6, B:163:0x01fa, B:163:0x01fa, B:163:0x01fa, B:164:0x01ff, B:164:0x01ff, B:164:0x01ff, B:165:0x0208, B:165:0x0208, B:165:0x0208, B:167:0x01a3, B:167:0x01a3, B:167:0x01a3, B:168:0x01c2, B:168:0x01c2, B:168:0x01c2, B:170:0x0209, B:170:0x0209, B:170:0x0209), top: B:15:0x006e }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x013a A[Catch: TransformerFactoryConfigurationError -> 0x0087, SchemaException -> 0x008c, SaxonApiException -> 0x0167, Exception -> 0x045b, SaxonApiException | LicenseException | XPathException -> 0x049f, SaxonApiException | LicenseException | XPathException -> 0x049f, TerminationException -> 0x04d7, TRY_LEAVE, TryCatch #11 {SaxonApiException | LicenseException | XPathException -> 0x049f, blocks: (B:16:0x006e, B:18:0x0071, B:18:0x0071, B:18:0x0071, B:176:0x0083, B:176:0x0083, B:176:0x0083, B:20:0x0091, B:20:0x0091, B:20:0x0091, B:22:0x0095, B:22:0x0095, B:22:0x0095, B:24:0x009f, B:24:0x009f, B:24:0x009f, B:25:0x00b5, B:25:0x00b5, B:25:0x00b5, B:27:0x00b9, B:27:0x00b9, B:27:0x00b9, B:28:0x00c1, B:28:0x00c1, B:28:0x00c1, B:29:0x00c6, B:29:0x00c6, B:29:0x00c6, B:31:0x00cd, B:31:0x00cd, B:31:0x00cd, B:33:0x00d5, B:33:0x00d5, B:33:0x00d5, B:35:0x00e3, B:35:0x00e3, B:35:0x00e3, B:36:0x00e9, B:36:0x00e9, B:36:0x00e9, B:37:0x00ee, B:37:0x00ee, B:37:0x00ee, B:39:0x00f2, B:39:0x00f2, B:39:0x00f2, B:40:0x00f9, B:40:0x00f9, B:40:0x00f9, B:42:0x0102, B:42:0x0102, B:42:0x0102, B:43:0x010a, B:43:0x010a, B:43:0x010a, B:45:0x0112, B:45:0x0112, B:45:0x0112, B:47:0x012e, B:47:0x012e, B:49:0x0136, B:49:0x0136, B:51:0x013a, B:51:0x013a, B:53:0x0210, B:53:0x0210, B:53:0x0210, B:56:0x0216, B:56:0x0216, B:56:0x0216, B:58:0x021a, B:58:0x021a, B:58:0x021a, B:61:0x0223, B:61:0x0223, B:61:0x0223, B:62:0x0239, B:62:0x0239, B:62:0x0239, B:64:0x0256, B:64:0x0256, B:64:0x0256, B:65:0x025d, B:65:0x025d, B:65:0x025d, B:66:0x0231, B:66:0x0231, B:66:0x0231, B:67:0x0260, B:67:0x0260, B:67:0x0260, B:69:0x0278, B:69:0x0278, B:69:0x0278, B:71:0x028e, B:71:0x028e, B:71:0x028e, B:72:0x0298, B:72:0x0298, B:72:0x0298, B:73:0x02b7, B:73:0x02b7, B:73:0x02b7, B:143:0x02be, B:143:0x02be, B:143:0x02be, B:145:0x02dd, B:145:0x02dd, B:145:0x02dd, B:76:0x0304, B:76:0x0304, B:76:0x0304, B:77:0x0314, B:77:0x0314, B:77:0x0314, B:80:0x0318, B:80:0x0318, B:82:0x031c, B:82:0x031c, B:84:0x0329, B:84:0x0329, B:85:0x032e, B:85:0x032e, B:87:0x033d, B:87:0x033d, B:123:0x0343, B:123:0x0343, B:88:0x034a, B:88:0x034a, B:90:0x034e, B:90:0x034e, B:92:0x0354, B:92:0x0354, B:93:0x03bb, B:93:0x03bb, B:93:0x03bb, B:95:0x03bf, B:95:0x03bf, B:95:0x03bf, B:97:0x03c6, B:97:0x03c6, B:97:0x03c6, B:98:0x03ca, B:98:0x03ca, B:98:0x03ca, B:100:0x03d0, B:100:0x03d0, B:100:0x03d0, B:103:0x0413, B:103:0x0413, B:103:0x0413, B:119:0x036b, B:119:0x036b, B:124:0x0335, B:124:0x0335, B:108:0x041b, B:108:0x041b, B:108:0x041b, B:110:0x0420, B:110:0x0420, B:110:0x0420, B:111:0x0442, B:111:0x0442, B:111:0x0442, B:113:0x0448, B:113:0x0448, B:113:0x0448, B:128:0x0371, B:128:0x0371, B:128:0x0371, B:130:0x0379, B:130:0x0379, B:130:0x0379, B:132:0x0385, B:132:0x0385, B:132:0x0385, B:135:0x0396, B:135:0x0396, B:135:0x0396, B:138:0x041a, B:138:0x041a, B:138:0x041a, B:149:0x02e8, B:149:0x02e8, B:149:0x02e8, B:150:0x0302, B:150:0x0302, B:150:0x0302, B:153:0x016d, B:153:0x016d, B:153:0x016d, B:155:0x0175, B:155:0x0175, B:155:0x0175, B:157:0x0182, B:157:0x0182, B:157:0x0182, B:158:0x0195, B:158:0x0195, B:158:0x0195, B:160:0x019b, B:160:0x019b, B:160:0x019b, B:161:0x01f6, B:161:0x01f6, B:161:0x01f6, B:163:0x01fa, B:163:0x01fa, B:163:0x01fa, B:164:0x01ff, B:164:0x01ff, B:164:0x01ff, B:165:0x0208, B:165:0x0208, B:165:0x0208, B:167:0x01a3, B:167:0x01a3, B:167:0x01a3, B:168:0x01c2, B:168:0x01c2, B:168:0x01c2, B:170:0x0209, B:170:0x0209, B:170:0x0209), top: B:15:0x006e }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0214 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0256 A[Catch: TransformerFactoryConfigurationError -> 0x0087, SchemaException -> 0x008c, Exception -> 0x045b, SaxonApiException | LicenseException | XPathException -> 0x049f, SaxonApiException | LicenseException | XPathException -> 0x049f, SaxonApiException | LicenseException | XPathException -> 0x049f, TerminationException -> 0x04d7, TryCatch #11 {SaxonApiException | LicenseException | XPathException -> 0x049f, blocks: (B:16:0x006e, B:18:0x0071, B:18:0x0071, B:18:0x0071, B:176:0x0083, B:176:0x0083, B:176:0x0083, B:20:0x0091, B:20:0x0091, B:20:0x0091, B:22:0x0095, B:22:0x0095, B:22:0x0095, B:24:0x009f, B:24:0x009f, B:24:0x009f, B:25:0x00b5, B:25:0x00b5, B:25:0x00b5, B:27:0x00b9, B:27:0x00b9, B:27:0x00b9, B:28:0x00c1, B:28:0x00c1, B:28:0x00c1, B:29:0x00c6, B:29:0x00c6, B:29:0x00c6, B:31:0x00cd, B:31:0x00cd, B:31:0x00cd, B:33:0x00d5, B:33:0x00d5, B:33:0x00d5, B:35:0x00e3, B:35:0x00e3, B:35:0x00e3, B:36:0x00e9, B:36:0x00e9, B:36:0x00e9, B:37:0x00ee, B:37:0x00ee, B:37:0x00ee, B:39:0x00f2, B:39:0x00f2, B:39:0x00f2, B:40:0x00f9, B:40:0x00f9, B:40:0x00f9, B:42:0x0102, B:42:0x0102, B:42:0x0102, B:43:0x010a, B:43:0x010a, B:43:0x010a, B:45:0x0112, B:45:0x0112, B:45:0x0112, B:47:0x012e, B:47:0x012e, B:49:0x0136, B:49:0x0136, B:51:0x013a, B:51:0x013a, B:53:0x0210, B:53:0x0210, B:53:0x0210, B:56:0x0216, B:56:0x0216, B:56:0x0216, B:58:0x021a, B:58:0x021a, B:58:0x021a, B:61:0x0223, B:61:0x0223, B:61:0x0223, B:62:0x0239, B:62:0x0239, B:62:0x0239, B:64:0x0256, B:64:0x0256, B:64:0x0256, B:65:0x025d, B:65:0x025d, B:65:0x025d, B:66:0x0231, B:66:0x0231, B:66:0x0231, B:67:0x0260, B:67:0x0260, B:67:0x0260, B:69:0x0278, B:69:0x0278, B:69:0x0278, B:71:0x028e, B:71:0x028e, B:71:0x028e, B:72:0x0298, B:72:0x0298, B:72:0x0298, B:73:0x02b7, B:73:0x02b7, B:73:0x02b7, B:143:0x02be, B:143:0x02be, B:143:0x02be, B:145:0x02dd, B:145:0x02dd, B:145:0x02dd, B:76:0x0304, B:76:0x0304, B:76:0x0304, B:77:0x0314, B:77:0x0314, B:77:0x0314, B:80:0x0318, B:80:0x0318, B:82:0x031c, B:82:0x031c, B:84:0x0329, B:84:0x0329, B:85:0x032e, B:85:0x032e, B:87:0x033d, B:87:0x033d, B:123:0x0343, B:123:0x0343, B:88:0x034a, B:88:0x034a, B:90:0x034e, B:90:0x034e, B:92:0x0354, B:92:0x0354, B:93:0x03bb, B:93:0x03bb, B:93:0x03bb, B:95:0x03bf, B:95:0x03bf, B:95:0x03bf, B:97:0x03c6, B:97:0x03c6, B:97:0x03c6, B:98:0x03ca, B:98:0x03ca, B:98:0x03ca, B:100:0x03d0, B:100:0x03d0, B:100:0x03d0, B:103:0x0413, B:103:0x0413, B:103:0x0413, B:119:0x036b, B:119:0x036b, B:124:0x0335, B:124:0x0335, B:108:0x041b, B:108:0x041b, B:108:0x041b, B:110:0x0420, B:110:0x0420, B:110:0x0420, B:111:0x0442, B:111:0x0442, B:111:0x0442, B:113:0x0448, B:113:0x0448, B:113:0x0448, B:128:0x0371, B:128:0x0371, B:128:0x0371, B:130:0x0379, B:130:0x0379, B:130:0x0379, B:132:0x0385, B:132:0x0385, B:132:0x0385, B:135:0x0396, B:135:0x0396, B:135:0x0396, B:138:0x041a, B:138:0x041a, B:138:0x041a, B:149:0x02e8, B:149:0x02e8, B:149:0x02e8, B:150:0x0302, B:150:0x0302, B:150:0x0302, B:153:0x016d, B:153:0x016d, B:153:0x016d, B:155:0x0175, B:155:0x0175, B:155:0x0175, B:157:0x0182, B:157:0x0182, B:157:0x0182, B:158:0x0195, B:158:0x0195, B:158:0x0195, B:160:0x019b, B:160:0x019b, B:160:0x019b, B:161:0x01f6, B:161:0x01f6, B:161:0x01f6, B:163:0x01fa, B:163:0x01fa, B:163:0x01fa, B:164:0x01ff, B:164:0x01ff, B:164:0x01ff, B:165:0x0208, B:165:0x0208, B:165:0x0208, B:167:0x01a3, B:167:0x01a3, B:167:0x01a3, B:168:0x01c2, B:168:0x01c2, B:168:0x01c2, B:170:0x0209, B:170:0x0209, B:170:0x0209), top: B:15:0x006e }] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0278 A[Catch: TransformerFactoryConfigurationError -> 0x0087, SchemaException -> 0x008c, Exception -> 0x045b, SaxonApiException | LicenseException | XPathException -> 0x049f, SaxonApiException | LicenseException | XPathException -> 0x049f, SaxonApiException | LicenseException | XPathException -> 0x049f, TerminationException -> 0x04d7, TRY_ENTER, TryCatch #11 {SaxonApiException | LicenseException | XPathException -> 0x049f, blocks: (B:16:0x006e, B:18:0x0071, B:18:0x0071, B:18:0x0071, B:176:0x0083, B:176:0x0083, B:176:0x0083, B:20:0x0091, B:20:0x0091, B:20:0x0091, B:22:0x0095, B:22:0x0095, B:22:0x0095, B:24:0x009f, B:24:0x009f, B:24:0x009f, B:25:0x00b5, B:25:0x00b5, B:25:0x00b5, B:27:0x00b9, B:27:0x00b9, B:27:0x00b9, B:28:0x00c1, B:28:0x00c1, B:28:0x00c1, B:29:0x00c6, B:29:0x00c6, B:29:0x00c6, B:31:0x00cd, B:31:0x00cd, B:31:0x00cd, B:33:0x00d5, B:33:0x00d5, B:33:0x00d5, B:35:0x00e3, B:35:0x00e3, B:35:0x00e3, B:36:0x00e9, B:36:0x00e9, B:36:0x00e9, B:37:0x00ee, B:37:0x00ee, B:37:0x00ee, B:39:0x00f2, B:39:0x00f2, B:39:0x00f2, B:40:0x00f9, B:40:0x00f9, B:40:0x00f9, B:42:0x0102, B:42:0x0102, B:42:0x0102, B:43:0x010a, B:43:0x010a, B:43:0x010a, B:45:0x0112, B:45:0x0112, B:45:0x0112, B:47:0x012e, B:47:0x012e, B:49:0x0136, B:49:0x0136, B:51:0x013a, B:51:0x013a, B:53:0x0210, B:53:0x0210, B:53:0x0210, B:56:0x0216, B:56:0x0216, B:56:0x0216, B:58:0x021a, B:58:0x021a, B:58:0x021a, B:61:0x0223, B:61:0x0223, B:61:0x0223, B:62:0x0239, B:62:0x0239, B:62:0x0239, B:64:0x0256, B:64:0x0256, B:64:0x0256, B:65:0x025d, B:65:0x025d, B:65:0x025d, B:66:0x0231, B:66:0x0231, B:66:0x0231, B:67:0x0260, B:67:0x0260, B:67:0x0260, B:69:0x0278, B:69:0x0278, B:69:0x0278, B:71:0x028e, B:71:0x028e, B:71:0x028e, B:72:0x0298, B:72:0x0298, B:72:0x0298, B:73:0x02b7, B:73:0x02b7, B:73:0x02b7, B:143:0x02be, B:143:0x02be, B:143:0x02be, B:145:0x02dd, B:145:0x02dd, B:145:0x02dd, B:76:0x0304, B:76:0x0304, B:76:0x0304, B:77:0x0314, B:77:0x0314, B:77:0x0314, B:80:0x0318, B:80:0x0318, B:82:0x031c, B:82:0x031c, B:84:0x0329, B:84:0x0329, B:85:0x032e, B:85:0x032e, B:87:0x033d, B:87:0x033d, B:123:0x0343, B:123:0x0343, B:88:0x034a, B:88:0x034a, B:90:0x034e, B:90:0x034e, B:92:0x0354, B:92:0x0354, B:93:0x03bb, B:93:0x03bb, B:93:0x03bb, B:95:0x03bf, B:95:0x03bf, B:95:0x03bf, B:97:0x03c6, B:97:0x03c6, B:97:0x03c6, B:98:0x03ca, B:98:0x03ca, B:98:0x03ca, B:100:0x03d0, B:100:0x03d0, B:100:0x03d0, B:103:0x0413, B:103:0x0413, B:103:0x0413, B:119:0x036b, B:119:0x036b, B:124:0x0335, B:124:0x0335, B:108:0x041b, B:108:0x041b, B:108:0x041b, B:110:0x0420, B:110:0x0420, B:110:0x0420, B:111:0x0442, B:111:0x0442, B:111:0x0442, B:113:0x0448, B:113:0x0448, B:113:0x0448, B:128:0x0371, B:128:0x0371, B:128:0x0371, B:130:0x0379, B:130:0x0379, B:130:0x0379, B:132:0x0385, B:132:0x0385, B:132:0x0385, B:135:0x0396, B:135:0x0396, B:135:0x0396, B:138:0x041a, B:138:0x041a, B:138:0x041a, B:149:0x02e8, B:149:0x02e8, B:149:0x02e8, B:150:0x0302, B:150:0x0302, B:150:0x0302, B:153:0x016d, B:153:0x016d, B:153:0x016d, B:155:0x0175, B:155:0x0175, B:155:0x0175, B:157:0x0182, B:157:0x0182, B:157:0x0182, B:158:0x0195, B:158:0x0195, B:158:0x0195, B:160:0x019b, B:160:0x019b, B:160:0x019b, B:161:0x01f6, B:161:0x01f6, B:161:0x01f6, B:163:0x01fa, B:163:0x01fa, B:163:0x01fa, B:164:0x01ff, B:164:0x01ff, B:164:0x01ff, B:165:0x0208, B:165:0x0208, B:165:0x0208, B:167:0x01a3, B:167:0x01a3, B:167:0x01a3, B:168:0x01c2, B:168:0x01c2, B:168:0x01c2, B:170:0x0209, B:170:0x0209, B:170:0x0209), top: B:15:0x006e }] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0318 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void doQuery(java.lang.String[] r19, java.lang.String r20) {
        /*
            Method dump skipped, instructions count: 1250
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.Query.doQuery(java.lang.String[], java.lang.String):void");
    }

    public void explain(XQueryExpression xQueryExpression) throws FileNotFoundException, XPathException {
        String str = this.explainOutputFileName;
        xQueryExpression.explain(new ExpressionPresenter(this.config, this.config.getSerializerFactory().getReceiver((str == null || "".equals(str)) ? m62443l() : m62438c(this.explainOutputFileName), ExpressionPresenter.makeDefaultProperties(this.config))));
    }

    /* renamed from: g */
    public final void m62440g(CommandLineOptions commandLineOptions) {
        XQueryTraceListener xQueryTraceListener = new XQueryTraceListener();
        String optionValue = commandLineOptions.getOptionValue("Tout");
        if (optionValue != null) {
            try {
                xQueryTraceListener.setOutputDestination(new StandardLogger(new PrintStream(optionValue)));
            } catch (FileNotFoundException unused) {
                badUsage("Cannot write to " + optionValue);
            }
        }
        String optionValue2 = commandLineOptions.getOptionValue("Tlevel");
        if (optionValue2 != null) {
            char c = 65535;
            switch (optionValue2.hashCode()) {
                case -1039745817:
                    if (optionValue2.equals("normal")) {
                        c = 0;
                        break;
                    }
                    break;
                case 107348:
                    if (optionValue2.equals("low")) {
                        c = 1;
                        break;
                    }
                    break;
                case 3202466:
                    if (optionValue2.equals("high")) {
                        c = 2;
                        break;
                    }
                    break;
                case 3387192:
                    if (optionValue2.equals("none")) {
                        c = 3;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    xQueryTraceListener.setLevelOfDetail(2);
                    break;
                case 1:
                    xQueryTraceListener.setLevelOfDetail(1);
                    break;
                case 2:
                    xQueryTraceListener.setLevelOfDetail(3);
                    break;
                case 3:
                    xQueryTraceListener.setLevelOfDetail(0);
                    break;
            }
        }
        this.config.setTraceListener(xQueryTraceListener);
    }

    public Configuration getConfiguration() {
        return this.config;
    }

    /* renamed from: i */
    public void m62441i(CommandLineOptions commandLineOptions) throws TransformerException {
        commandLineOptions.applyToConfiguration(this.f98853a);
        int i = 1;
        this.f98856d = !DebugKt.DEBUG_PROPERTY_VALUE_OFF.equals(commandLineOptions.getOptionValue("quit"));
        this.backup = DebugKt.DEBUG_PROPERTY_VALUE_ON.equals(commandLineOptions.getOptionValue("backup"));
        String optionValue = commandLineOptions.getOptionValue("explain");
        this.explainOutputFileName = optionValue;
        this.explaining = optionValue != null;
        this.moduleURIResolverClass = commandLineOptions.getOptionValue("mr");
        this.outputFileName = commandLineOptions.getOptionValue(C4921e.f26528e);
        this.streaming = DebugKt.DEBUG_PROPERTY_VALUE_ON.equals(commandLineOptions.getOptionValue("stream"));
        if (DebugKt.DEBUG_PROPERTY_VALUE_ON.equals(commandLineOptions.getOptionValue("p"))) {
            this.config.setBooleanProperty(Feature.RECOGNIZE_URI_QUERY_PARAMETERS, true);
            this.useURLs = true;
        }
        this.projection = DebugKt.DEBUG_PROPERTY_VALUE_ON.equals(commandLineOptions.getOptionValue("projection"));
        String optionValue2 = commandLineOptions.getOptionValue("q");
        if (optionValue2 != null) {
            this.queryFileName = optionValue2;
        }
        String optionValue3 = commandLineOptions.getOptionValue("qs");
        if (optionValue3 != null) {
            this.queryFileName = "{" + optionValue3 + "}";
        }
        String optionValue4 = commandLineOptions.getOptionValue("qversion");
        if (optionValue4 != null && !XQueryParser.XQUERY31.equals(optionValue4) && !XQueryParser.XQUERY40.equals(optionValue4)) {
            this.config.getLogger().warning("-qversion ignored: 3.1 is assumed");
        } else if (XQueryParser.XQUERY40.equals(optionValue4)) {
            this.languageVersion = XQueryParser.XQUERY40;
        }
        String optionValue5 = commandLineOptions.getOptionValue("repeat");
        if (optionValue5 != null) {
            try {
                this.repeat = Integer.parseInt(optionValue5);
            } catch (NumberFormatException unused) {
                badUsage("Bad number after -repeat");
            }
        }
        this.sourceXmlFileName = commandLineOptions.getOptionValue("s");
        this.sourceJsonFileName = commandLineOptions.getOptionValue("json");
        if (DebugKt.DEBUG_PROPERTY_VALUE_ON.equals(commandLineOptions.getOptionValue("t"))) {
            this.config.getLogger().info(this.config.getProductTitle());
            this.config.getLogger().info(Version.platform.getPlatformVersion());
            this.config.setTiming(true);
            this.showTime = true;
        }
        String optionValue6 = commandLineOptions.getOptionValue("traceout");
        if (optionValue6 != null) {
            char c = 65535;
            switch (optionValue6.hashCode()) {
                case 1143394:
                    if (optionValue6.equals("#err")) {
                        c = 0;
                        break;
                    }
                    break;
                case 1153099:
                    if (optionValue6.equals("#out")) {
                        c = 1;
                        break;
                    }
                    break;
                case 35716138:
                    if (optionValue6.equals("#null")) {
                        c = 2;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    break;
                case 1:
                    this.f98854b = new StandardLogger(System.out);
                    break;
                case 2:
                    this.f98854b = null;
                    break;
                default:
                    try {
                        this.f98854b = new StandardLogger(new File(optionValue6));
                        this.f98855c = true;
                        break;
                    } catch (FileNotFoundException unused2) {
                        badUsage("Trace output file " + optionValue6 + " cannot be created");
                        break;
                    }
            }
        }
        String optionValue7 = commandLineOptions.getOptionValue("T");
        if (optionValue7 != null) {
            if ("".equals(optionValue7)) {
                m62440g(commandLineOptions);
            } else {
                this.config.setTraceListenerClass(optionValue7);
            }
            this.config.setLineNumbering(true);
        }
        String optionValue8 = commandLineOptions.getOptionValue("Tout");
        if (optionValue8 != null) {
            this.config.setTraceListenerOutputFile(optionValue8);
            if (commandLineOptions.getOptionValue("T") == null) {
                m62440g(commandLineOptions);
            }
        }
        if (commandLineOptions.getOptionValue("TB") != null) {
            this.config.setBooleanProperty(Feature.MONITOR_HOT_SPOT_BYTE_CODE, true);
        }
        String optionValue9 = commandLineOptions.getOptionValue("TP");
        if (optionValue9 != null) {
            TimingTraceListener timingTraceListener = new TimingTraceListener();
            this.config.setTraceListener(timingTraceListener);
            this.config.setLineNumbering(true);
            this.config.getDefaultStaticQueryContext().setCodeInjector(new TimingCodeInjector());
            if (!optionValue9.isEmpty()) {
                try {
                    timingTraceListener.setOutputDestination(new StandardLogger(new File(optionValue9)));
                } catch (FileNotFoundException unused3) {
                    badUsage("Trace output file " + optionValue9 + " cannot be created");
                }
            }
        }
        String optionValue10 = commandLineOptions.getOptionValue("u");
        if (optionValue10 != null) {
            this.useURLs = DebugKt.DEBUG_PROPERTY_VALUE_ON.equals(optionValue10);
        }
        String optionValue11 = commandLineOptions.getOptionValue("update");
        if (optionValue11 != null) {
            if (!DebugKt.DEBUG_PROPERTY_VALUE_OFF.equals(optionValue11)) {
                this.updating = true;
            }
            this.writeback = !ClientCookie.DISCARD_ATTR.equals(optionValue11);
        }
        this.wrap = DebugKt.DEBUG_PROPERTY_VALUE_ON.equals(commandLineOptions.getOptionValue("wrap"));
        String optionValue12 = commandLineOptions.getOptionValue("x");
        if (optionValue12 != null) {
            this.config.setSourceParserClass(optionValue12);
        }
        String optionValue13 = commandLineOptions.getOptionValue("xsd");
        if (commandLineOptions.getOptionValue("?") != null) {
            badUsage("");
        }
        if (commandLineOptions.getOptionValue("xsiloc") != null && commandLineOptions.getOptionValue("val") == null) {
            this.config.getLogger().warning("-xsiloc is ignored when -val is absent");
        }
        if (this.sourceXmlFileName != null && this.sourceJsonFileName != null) {
            badUsage("Cannot supply both -s and -json");
        }
        applyLocalOptions(commandLineOptions, this.config);
        List<String> positionalOptions = commandLineOptions.getPositionalOptions();
        if (this.queryFileName == null) {
            if (positionalOptions.size() == 0) {
                badUsage("No query file name");
            }
            this.queryFileName = positionalOptions.get(0);
        } else {
            i = 0;
        }
        if (i < positionalOptions.size()) {
            badUsage("Unrecognized option: " + positionalOptions.get(i));
        }
        String optionValue14 = commandLineOptions.getOptionValue("scmin");
        if (optionValue14 != null) {
            this.config.importComponents(new StreamSource(optionValue14));
        }
        if (optionValue13 != null) {
            CommandLineOptions.loadAdditionalSchemas(this.config, optionValue13);
        }
    }

    public void initializeConfiguration(Configuration configuration) {
    }

    /* renamed from: k */
    public void m62442k(CommandLineOptions commandLineOptions) {
        commandLineOptions.addRecognizedOption("backup", 1, "Save updated documents before overwriting");
        commandLineOptions.addRecognizedOption("catalog", 258, "Use specified catalog file to resolve URIs");
        commandLineOptions.addRecognizedOption(AbstractLogger.CONFIG, 258, "Use specified configuration file");
        commandLineOptions.addRecognizedOption("cr", 259, "Use specified collection URI resolver class");
        commandLineOptions.addRecognizedOption("dtd", 4, "Validate using DTD");
        commandLineOptions.setPermittedValues("dtd", new String[]{DebugKt.DEBUG_PROPERTY_VALUE_ON, DebugKt.DEBUG_PROPERTY_VALUE_OFF, "recover"}, DebugKt.DEBUG_PROPERTY_VALUE_ON);
        commandLineOptions.addRecognizedOption("expand", 1, "Expand attribute defaults from DTD or Schema");
        commandLineOptions.addRecognizedOption("explain", 2, "Display compiled expression tree and optimization decisions");
        commandLineOptions.addRecognizedOption("ext", 1, "Allow calls to Java extension functions and xsl:result-document");
        commandLineOptions.addRecognizedOption("init", 3, "User-supplied net.sf.saxon.lib.Initializer class to initialize the Saxon Configuration");
        commandLineOptions.addRecognizedOption("json", 258, "Source file for primary JSON input");
        commandLineOptions.addRecognizedOption("l", 1, "Maintain line numbers for source documents");
        commandLineOptions.addRecognizedOption("mr", 259, "Use named ModuleURIResolver class");
        commandLineOptions.addRecognizedOption("now", 264, "Run with specified current date/time");
        commandLineOptions.addRecognizedOption(C4921e.f26528e, 258, "Use specified file for primary output");
        commandLineOptions.addRecognizedOption("opt", 265, "Enable/disable optimization options [-]cfgklmnsvwx");
        commandLineOptions.addRecognizedOption("outval", DataBinderMapperImpl.f53157Z3, "Action when validation of output file fails");
        commandLineOptions.setPermittedValues("outval", new String[]{"recover", "fatal"}, null);
        commandLineOptions.addRecognizedOption("p", 1, "Recognize query parameters in URI passed to doc()");
        commandLineOptions.addRecognizedOption("projection", 1, "Use source document projection");
        commandLineOptions.addRecognizedOption("q", 258, "Query filename");
        commandLineOptions.addRecognizedOption("qs", 265, "Query string (usually in quotes)");
        commandLineOptions.addRecognizedOption("quit", 257, "Quit JVM if query fails");
        commandLineOptions.addRecognizedOption("qversion", 265, "XQuery language version: 3.1 or 4.0. Default is 3.1");
        commandLineOptions.setPermittedValues("qversion", new String[]{XQueryParser.XQUERY31, XQueryParser.XQUERY40}, XQueryParser.XQUERY31);
        commandLineOptions.addRecognizedOption("r", 259, "Use named URIResolver class");
        commandLineOptions.addRecognizedOption("repeat", 261, "Run N times for performance measurement");
        commandLineOptions.addRecognizedOption("s", 258, "Source file for primary XML input");
        commandLineOptions.addRecognizedOption("sa", 1, "Run in schema-aware mode");
        commandLineOptions.addRecognizedOption("scmin", 2, "Pre-load schema in SCM format");
        commandLineOptions.addRecognizedOption("stream", 1, "Execute in streamed mode");
        commandLineOptions.addRecognizedOption("strip", DataBinderMapperImpl.f53157Z3, "Handling of whitespace text nodes in source documents");
        commandLineOptions.setPermittedValues("strip", new String[]{"none", "all", "ignorable"}, null);
        commandLineOptions.addRecognizedOption("t", 1, "Display version and timing information");
        commandLineOptions.addRecognizedOption("T", 3, "Use named TraceListener class, or standard TraceListener");
        commandLineOptions.addRecognizedOption("TB", 2, "Trace hotspot bytecode generation to specified XML file");
        commandLineOptions.addRecognizedOption("TJ", 1, "Debug binding and execution of extension functions");
        commandLineOptions.setPermittedValues("TJ", new String[]{DebugKt.DEBUG_PROPERTY_VALUE_ON, DebugKt.DEBUG_PROPERTY_VALUE_OFF}, DebugKt.DEBUG_PROPERTY_VALUE_ON);
        commandLineOptions.addRecognizedOption(DocumentsContractCompat.f5557a, DataBinderMapperImpl.f53157Z3, "Use specified tree model for source documents");
        commandLineOptions.addRecognizedOption("Tlevel", 9, "Level of detail for trace listener output");
        commandLineOptions.setPermittedValues("Tlevel", new String[]{"none", "low", "normal", "high"}, "normal");
        commandLineOptions.addRecognizedOption("Tout", 2, "File for trace listener output");
        commandLineOptions.addRecognizedOption("TP", 2, "Use profiling trace listener, with specified output file");
        commandLineOptions.addRecognizedOption("traceout", 258, "File for output of trace() messages");
        commandLineOptions.setPermittedValues(DocumentsContractCompat.f5557a, new String[]{"linked", "tiny", "tinyc"}, null);
        commandLineOptions.addRecognizedOption("u", 1, "Interpret filename arguments as URIs");
        commandLineOptions.setPermittedValues("u", new String[]{DebugKt.DEBUG_PROPERTY_VALUE_ON, DebugKt.DEBUG_PROPERTY_VALUE_OFF}, DebugKt.DEBUG_PROPERTY_VALUE_ON);
        commandLineOptions.addRecognizedOption("update", DataBinderMapperImpl.f53157Z3, "Enable or disable XQuery updates, or enable the syntax but discard the updates");
        commandLineOptions.setPermittedValues("update", new String[]{DebugKt.DEBUG_PROPERTY_VALUE_ON, DebugKt.DEBUG_PROPERTY_VALUE_OFF, ClientCookie.DISCARD_ATTR}, null);
        commandLineOptions.addRecognizedOption("val", 4, "Apply validation to source documents");
        commandLineOptions.setPermittedValues("val", new String[]{"strict", "lax"}, "strict");
        commandLineOptions.addRecognizedOption("wrap", 1, "Wrap result sequence in XML elements");
        commandLineOptions.addRecognizedOption("x", 259, "Use named XMLReader class for parsing source documents");
        commandLineOptions.addRecognizedOption("xi", 1, "Expand XInclude directives in source documents");
        commandLineOptions.addRecognizedOption("xmlversion", DataBinderMapperImpl.f53157Z3, "Indicate whether XML 1.1 is supported");
        commandLineOptions.setPermittedValues("xmlversion", new String[]{"1.0", SerializerConstants.XMLVERSION11}, null);
        commandLineOptions.addRecognizedOption("xsd", 263, "List of schema documents to be preloaded");
        commandLineOptions.addRecognizedOption("xsdversion", DataBinderMapperImpl.f53157Z3, "Indicate whether XSD 1.1 is supported");
        commandLineOptions.setPermittedValues("xsdversion", new String[]{"1.0", SerializerConstants.XMLVERSION11}, null);
        commandLineOptions.addRecognizedOption("xsiloc", 1, "Load schemas named in xsi:schemaLocation (default on)");
        commandLineOptions.addRecognizedOption("?", 512, "Display command line help text");
    }

    /* renamed from: l */
    public final StreamResult m62443l() {
        return new StreamResult(System.err);
    }

    /* renamed from: m */
    public final Reader m62444m() {
        return new InputStreamReader(System.in);
    }

    public void processSource(Source source, XQueryExecutable xQueryExecutable, XQueryEvaluator xQueryEvaluator) throws SaxonApiException {
        if (source == null || this.streaming) {
            return;
        }
        DocumentBuilder newDocumentBuilder = this.f98853a.newDocumentBuilder();
        if (xQueryExecutable.isUpdateQuery()) {
            newDocumentBuilder.setTreeModel(TreeModel.LINKED_TREE);
        }
        if (this.showTime) {
            this.config.getLogger().info("Processing " + source.getSystemId());
        }
        if (!xQueryExecutable.getUnderlyingCompiledQuery().usesContextItem()) {
            this.config.getLogger().warning("Source document ignored - query can be evaluated without reference to the context item");
            return;
        }
        if (this.projection) {
            newDocumentBuilder.setDocumentProjectionQuery(xQueryExecutable);
            if (this.explaining) {
                xQueryExecutable.getUnderlyingCompiledQuery().explainPathMap();
            }
        }
        newDocumentBuilder.setDTDValidation(getConfiguration().getBooleanProperty(Feature.DTD_VALIDATION));
        if (getConfiguration().getBooleanProperty(Feature.DTD_VALIDATION_RECOVERABLE)) {
            source = new AugmentedSource(source, getConfiguration().getParseOptions());
        }
        xQueryEvaluator.setContextItem(newDocumentBuilder.build(source));
    }

    public Source processSourceFile(String str, boolean z) throws TransformerException {
        if (z || CommandLineOptions.isImplicitURI(str)) {
            ResourceRequest resourceRequest = new ResourceRequest();
            resourceRequest.relativeUri = str;
            URI uri = new File(System.getProperty(SystemUtils.f107422c)).toURI();
            resourceRequest.baseUri = uri.toString();
            resourceRequest.uri = uri.resolve(str).toString();
            resourceRequest.nature = ResourceRequest.XML_NATURE;
            resourceRequest.purpose = "source document";
            return resourceRequest.resolve(this.config.getResourceResolver());
        }
        if (str.equals("-")) {
            return new StreamSource(System.in, new File(System.getProperty(SystemUtils.f107422c)).toURI().toASCIIString());
        }
        File file = new File(str);
        if (!file.exists()) {
            quit("Source file " + file + " does not exist", 2);
        }
        return Version.platform.isJava() ? new SAXSource(new InputSource(file.toURI().toString())) : new StreamSource(file.toURI().toString());
    }

    public void quit(String str, int i) {
        Configuration configuration = this.config;
        if (configuration == null || configuration.getLogger() == null) {
            System.err.println(str);
        } else {
            this.config.getLogger().warning(str);
        }
        if (!this.f98856d) {
            throw new RuntimeException(str);
        }
        System.exit(i);
    }

    public void runQuery(XQueryExecutable xQueryExecutable, XQueryEvaluator xQueryEvaluator, Source source, Destination destination) throws SaxonApiException {
        Logger logger;
        try {
            if (this.wrap) {
                try {
                    this.f98853a.writeXdmValue(XdmValue.wrap(QueryResult.wrap(xQueryExecutable.getUnderlyingCompiledQuery().iterator(xQueryEvaluator.getUnderlyingQueryContext()), this.config)), destination);
                    destination.closeAndNotify();
                } catch (XPathException e) {
                    throw new SaxonApiException(e);
                }
            } else if (this.streaming) {
                xQueryEvaluator.runStreamed(source, destination);
            } else {
                xQueryEvaluator.run(destination);
            }
        } finally {
            if (this.f98855c && (logger = this.f98854b) != null) {
                logger.close();
            }
        }
    }

    public void runUpdate(XQueryExecutable xQueryExecutable, XQueryEvaluator xQueryEvaluator, final Serializer serializer) throws SaxonApiException {
        Logger logger;
        boolean z;
        try {
            Serializer.Property property = Serializer.Property.METHOD;
            if (serializer.getOutputProperty(property) == null) {
                serializer.setOutputProperty(property, "xml");
            }
            if (this.writeback) {
                final ArrayList arrayList = new ArrayList(3);
                UpdateAgent updateAgent = new UpdateAgent() { // from class: com.sunia.HTREnginev2.jal
                    @Override // net.p110sf.saxon.query.UpdateAgent
                    public final void update(NodeInfo nodeInfo, Controller controller) {
                        Query.this.m62435f(serializer, arrayList, nodeInfo, controller);
                    }
                };
                xQueryEvaluator.run();
                try {
                    xQueryExecutable.getUnderlyingCompiledQuery().runUpdate(xQueryEvaluator.getUnderlyingQueryContext(), updateAgent);
                    if (!arrayList.isEmpty()) {
                        throw ((SaxonApiException) arrayList.get(0));
                    }
                    if (z || logger == null) {
                    } else {
                        return;
                    }
                } catch (XPathException e) {
                    throw new SaxonApiException(e);
                }
            }
            try {
                if (xQueryEvaluator.getContextItem() != null) {
                    Set<MutableNodeInfo> runUpdate = xQueryExecutable.getUnderlyingCompiledQuery().runUpdate(xQueryEvaluator.getUnderlyingQueryContext());
                    Item head = xQueryEvaluator.getContextItem().getUnderlyingValue().head();
                    if ((head instanceof NodeInfo) && runUpdate.contains(head)) {
                        this.f98853a.writeXdmValue(xQueryEvaluator.getContextItem(), serializer);
                    }
                }
            } catch (XPathException e2) {
                throw new SaxonApiException(e2);
            }
        } finally {
            if (this.f98855c && (logger = this.f98854b) != null) {
                logger.close();
            }
        }
    }
}
