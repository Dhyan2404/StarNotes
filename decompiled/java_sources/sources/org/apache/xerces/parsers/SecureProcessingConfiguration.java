package org.apache.xerces.parsers;

import com.sunia.HTREnginev2.kdm;
import java.io.FilterInputStream;
import java.io.FilterReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintStream;
import java.io.Reader;
import java.net.URL;
import java.util.Properties;
import org.apache.xerces.impl.XMLEntityDescription;
import org.apache.xerces.util.SecurityManager;
import org.apache.xerces.util.SymbolTable;
import org.apache.xerces.xni.Augmentations;
import org.apache.xerces.xni.XMLDTDHandler;
import org.apache.xerces.xni.XMLLocator;
import org.apache.xerces.xni.XMLResourceIdentifier;
import org.apache.xerces.xni.XMLString;
import org.apache.xerces.xni.XNIException;
import org.apache.xerces.xni.grammars.XMLGrammarPool;
import org.apache.xerces.xni.parser.XMLComponentManager;
import org.apache.xerces.xni.parser.XMLConfigurationException;
import org.apache.xerces.xni.parser.XMLDTDFilter;
import org.apache.xerces.xni.parser.XMLDTDSource;
import org.apache.xerces.xni.parser.XMLEntityResolver;
import org.apache.xerces.xni.parser.XMLInputSource;

/* loaded from: classes13.dex */
public final class SecureProcessingConfiguration extends XIncludeAwareParserConfiguration {

    /* renamed from: J */
    public static final String f113380J = "jdk.xml.resolveExternalEntities";

    /* renamed from: O */
    public static final int f113381O = 64000;

    /* renamed from: Q */
    public static final int f113382Q = 5000;

    /* renamed from: Z */
    public static final int f113383Z = 50000000;

    /* renamed from: k0 */
    public static final int f113384k0 = Integer.MAX_VALUE;

    /* renamed from: l */
    public static final String f113385l = "http://apache.org/xml/properties/security-manager";

    /* renamed from: m */
    public static final String f113386m = "http://apache.org/xml/properties/internal/entity-resolver";

    /* renamed from: n */
    public static final String f113387n = "http://xml.org/sax/features/external-general-entities";

    /* renamed from: o */
    public static final String f113388o = "http://xml.org/sax/features/external-parameter-entities";

    /* renamed from: p */
    public static final String f113389p = "http://apache.org/xml/features/nonvalidating/load-external-dtd";

    /* renamed from: q0 */
    public static final int f113391q0 = Integer.MAX_VALUE;

    /* renamed from: t */
    public static final int f113394t = 100000;

    /* renamed from: t0 */
    public static final boolean f113395t0 = true;

    /* renamed from: u */
    public static final int f113396u = 3000;

    /* renamed from: u0 */
    public static /* synthetic */ Class f113397u0 = null;

    /* renamed from: v */
    public static final String f113398v = "jdk.xml.entityExpansionLimit";

    /* renamed from: w */
    public static final String f113399w = "jdk.xml.maxOccur";

    /* renamed from: x */
    public static final String f113400x = "jdk.xml.totalEntitySizeLimit";

    /* renamed from: y */
    public static final String f113401y = "jdk.xml.maxGeneralEntitySizeLimit";

    /* renamed from: z */
    public static final String f113402z = "jdk.xml.maxParameterEntitySizeLimit";
    protected final int ENTITY_EXPANSION_LIMIT_SYSTEM_VALUE;
    protected final int MAX_GENERAL_ENTITY_SIZE_LIMIT_SYSTEM_VALUE;
    protected final int MAX_OCCUR_LIMIT_SYSTEM_VALUE;
    protected final int MAX_PARAMETER_ENTITY_SIZE_LIMIT_SYSTEM_VALUE;
    protected final boolean RESOLVE_EXTERNAL_ENTITIES_SYSTEM_VALUE;
    protected final int TOTAL_ENTITY_SIZE_LIMIT_SYSTEM_VALUE;

    /* renamed from: f */
    public final boolean f113403f;

    /* renamed from: g */
    public boolean f113404g;

    /* renamed from: h */
    public SecurityManager f113405h;

    /* renamed from: i */
    public C20076b f113406i;

    /* renamed from: j */
    public final C20075a f113407j;

    /* renamed from: k */
    public int f113408k;

    /* renamed from: q */
    public static final boolean f113390q = m70543h();

    /* renamed from: r */
    public static Properties f113392r = null;

    /* renamed from: s */
    public static long f113393s = -1;

    /* renamed from: org.apache.xerces.parsers.SecureProcessingConfiguration$a */
    /* loaded from: classes13.dex */
    public final class C20075a implements XMLEntityResolver {

        /* renamed from: e */
        public XMLEntityResolver f113409e;

        /* renamed from: org.apache.xerces.parsers.SecureProcessingConfiguration$a$a */
        /* loaded from: classes13.dex */
        public final class a extends FilterInputStream {

            /* renamed from: e */
            public final boolean f113411e;

            /* renamed from: f */
            public int f113412f;

            /* renamed from: g */
            public final /* synthetic */ C20075a f113413g;

            public a(C20075a c20075a, InputStream inputStream, boolean z) {
                super(inputStream);
                this.f113413g = c20075a;
                this.f113412f = 0;
                this.f113411e = z;
            }

            @Override // java.io.FilterInputStream, java.io.InputStream
            public int read() throws IOException {
                int read = super.read();
                if (read != -1) {
                    this.f113412f++;
                    SecureProcessingConfiguration.this.checkEntitySizeLimits(this.f113412f, 1, this.f113411e);
                }
                return read;
            }

            @Override // java.io.FilterInputStream, java.io.InputStream
            public int read(byte[] bArr, int i, int i2) throws IOException {
                int read = super.read(bArr, i, i2);
                if (read > 0) {
                    this.f113412f += read;
                    SecureProcessingConfiguration.this.checkEntitySizeLimits(this.f113412f, read, this.f113411e);
                }
                return read;
            }
        }

        /* renamed from: org.apache.xerces.parsers.SecureProcessingConfiguration$a$b */
        /* loaded from: classes13.dex */
        public final class b extends FilterReader {

            /* renamed from: e */
            public final boolean f113414e;

            /* renamed from: f */
            public int f113415f;

            /* renamed from: g */
            public final /* synthetic */ C20075a f113416g;

            public b(C20075a c20075a, Reader reader, boolean z) {
                super(reader);
                this.f113416g = c20075a;
                this.f113415f = 0;
                this.f113414e = z;
            }

            @Override // java.io.FilterReader, java.io.Reader
            public int read() throws IOException {
                int read = super.read();
                if (read != -1) {
                    this.f113415f++;
                    SecureProcessingConfiguration.this.checkEntitySizeLimits(this.f113415f, 1, this.f113414e);
                }
                return read;
            }

            @Override // java.io.FilterReader, java.io.Reader
            public int read(char[] cArr, int i, int i2) throws IOException {
                int read = super.read(cArr, i, i2);
                if (read > 0) {
                    this.f113415f += read;
                    SecureProcessingConfiguration.this.checkEntitySizeLimits(this.f113415f, read, this.f113414e);
                }
                return read;
            }
        }

        public C20075a() {
        }

        /* renamed from: b */
        public XMLEntityResolver m70548b() {
            return this.f113409e;
        }

        /* renamed from: c */
        public void m70549c(XMLEntityResolver xMLEntityResolver) {
            this.f113409e = xMLEntityResolver;
        }

        @Override // org.apache.xerces.xni.parser.XMLEntityResolver
        public XMLInputSource resolveEntity(XMLResourceIdentifier xMLResourceIdentifier) throws XNIException, IOException {
            XMLEntityResolver xMLEntityResolver = this.f113409e;
            XMLInputSource resolveEntity = xMLEntityResolver != null ? xMLEntityResolver.resolveEntity(xMLResourceIdentifier) : null;
            if (SecureProcessingConfiguration.this.f113405h != null && (xMLResourceIdentifier instanceof XMLEntityDescription)) {
                String entityName = ((XMLEntityDescription) xMLResourceIdentifier).getEntityName();
                boolean z = entityName != null && entityName.startsWith("%");
                if (resolveEntity == null) {
                    resolveEntity = new XMLInputSource(xMLResourceIdentifier.getPublicId(), xMLResourceIdentifier.getExpandedSystemId(), xMLResourceIdentifier.getBaseSystemId());
                }
                Reader characterStream = resolveEntity.getCharacterStream();
                if (characterStream != null) {
                    resolveEntity.setCharacterStream(new b(this, characterStream, z));
                } else {
                    InputStream byteStream = resolveEntity.getByteStream();
                    if (byteStream != null) {
                        resolveEntity.setByteStream(new a(this, byteStream, z));
                    } else {
                        resolveEntity.setByteStream(new a(this, new URL(xMLResourceIdentifier.getExpandedSystemId()).openStream(), z));
                    }
                }
            }
            return resolveEntity;
        }
    }

    /* renamed from: org.apache.xerces.parsers.SecureProcessingConfiguration$b */
    /* loaded from: classes13.dex */
    public final class C20076b implements XMLDTDFilter {

        /* renamed from: e */
        public XMLDTDSource f113417e;

        /* renamed from: f */
        public XMLDTDHandler f113418f;

        public C20076b() {
        }

        @Override // org.apache.xerces.xni.XMLDTDHandler
        public void attributeDecl(String str, String str2, String str3, String[] strArr, String str4, XMLString xMLString, XMLString xMLString2, Augmentations augmentations) throws XNIException {
            XMLDTDHandler xMLDTDHandler = this.f113418f;
            if (xMLDTDHandler != null) {
                xMLDTDHandler.attributeDecl(str, str2, str3, strArr, str4, xMLString, xMLString2, augmentations);
            }
        }

        @Override // org.apache.xerces.xni.XMLDTDHandler
        public void comment(XMLString xMLString, Augmentations augmentations) throws XNIException {
            XMLDTDHandler xMLDTDHandler = this.f113418f;
            if (xMLDTDHandler != null) {
                xMLDTDHandler.comment(xMLString, augmentations);
            }
        }

        @Override // org.apache.xerces.xni.XMLDTDHandler
        public void elementDecl(String str, String str2, Augmentations augmentations) throws XNIException {
            XMLDTDHandler xMLDTDHandler = this.f113418f;
            if (xMLDTDHandler != null) {
                xMLDTDHandler.elementDecl(str, str2, augmentations);
            }
        }

        @Override // org.apache.xerces.xni.XMLDTDHandler
        public void endAttlist(Augmentations augmentations) throws XNIException {
            XMLDTDHandler xMLDTDHandler = this.f113418f;
            if (xMLDTDHandler != null) {
                xMLDTDHandler.endAttlist(augmentations);
            }
        }

        @Override // org.apache.xerces.xni.XMLDTDHandler
        public void endConditional(Augmentations augmentations) throws XNIException {
            XMLDTDHandler xMLDTDHandler = this.f113418f;
            if (xMLDTDHandler != null) {
                xMLDTDHandler.endConditional(augmentations);
            }
        }

        @Override // org.apache.xerces.xni.XMLDTDHandler
        public void endDTD(Augmentations augmentations) throws XNIException {
            XMLDTDHandler xMLDTDHandler = this.f113418f;
            if (xMLDTDHandler != null) {
                xMLDTDHandler.endDTD(augmentations);
            }
        }

        @Override // org.apache.xerces.xni.XMLDTDHandler
        public void endExternalSubset(Augmentations augmentations) throws XNIException {
            XMLDTDHandler xMLDTDHandler = this.f113418f;
            if (xMLDTDHandler != null) {
                xMLDTDHandler.endExternalSubset(augmentations);
            }
        }

        @Override // org.apache.xerces.xni.XMLDTDHandler
        public void endParameterEntity(String str, Augmentations augmentations) throws XNIException {
            XMLDTDHandler xMLDTDHandler = this.f113418f;
            if (xMLDTDHandler != null) {
                xMLDTDHandler.endParameterEntity(str, augmentations);
            }
        }

        @Override // org.apache.xerces.xni.XMLDTDHandler
        public void externalEntityDecl(String str, XMLResourceIdentifier xMLResourceIdentifier, Augmentations augmentations) throws XNIException {
            XMLDTDHandler xMLDTDHandler = this.f113418f;
            if (xMLDTDHandler != null) {
                xMLDTDHandler.externalEntityDecl(str, xMLResourceIdentifier, augmentations);
            }
        }

        @Override // org.apache.xerces.xni.parser.XMLDTDSource
        public XMLDTDHandler getDTDHandler() {
            return this.f113418f;
        }

        @Override // org.apache.xerces.xni.XMLDTDHandler
        public XMLDTDSource getDTDSource() {
            return this.f113417e;
        }

        @Override // org.apache.xerces.xni.XMLDTDHandler
        public void ignoredCharacters(XMLString xMLString, Augmentations augmentations) throws XNIException {
            XMLDTDHandler xMLDTDHandler = this.f113418f;
            if (xMLDTDHandler != null) {
                xMLDTDHandler.ignoredCharacters(xMLString, augmentations);
            }
        }

        @Override // org.apache.xerces.xni.XMLDTDHandler
        public void internalEntityDecl(String str, XMLString xMLString, XMLString xMLString2, Augmentations augmentations) throws XNIException {
            SecureProcessingConfiguration secureProcessingConfiguration = SecureProcessingConfiguration.this;
            int i = xMLString.length;
            secureProcessingConfiguration.checkEntitySizeLimits(i, i, str != null && str.startsWith("%"));
            XMLDTDHandler xMLDTDHandler = this.f113418f;
            if (xMLDTDHandler != null) {
                xMLDTDHandler.internalEntityDecl(str, xMLString, xMLString2, augmentations);
            }
        }

        @Override // org.apache.xerces.xni.XMLDTDHandler
        public void notationDecl(String str, XMLResourceIdentifier xMLResourceIdentifier, Augmentations augmentations) throws XNIException {
            XMLDTDHandler xMLDTDHandler = this.f113418f;
            if (xMLDTDHandler != null) {
                xMLDTDHandler.notationDecl(str, xMLResourceIdentifier, augmentations);
            }
        }

        @Override // org.apache.xerces.xni.XMLDTDHandler
        public void processingInstruction(String str, XMLString xMLString, Augmentations augmentations) throws XNIException {
            XMLDTDHandler xMLDTDHandler = this.f113418f;
            if (xMLDTDHandler != null) {
                xMLDTDHandler.processingInstruction(str, xMLString, augmentations);
            }
        }

        @Override // org.apache.xerces.xni.parser.XMLDTDSource
        public void setDTDHandler(XMLDTDHandler xMLDTDHandler) {
            this.f113418f = xMLDTDHandler;
        }

        @Override // org.apache.xerces.xni.XMLDTDHandler
        public void setDTDSource(XMLDTDSource xMLDTDSource) {
            this.f113417e = xMLDTDSource;
        }

        @Override // org.apache.xerces.xni.XMLDTDHandler
        public void startAttlist(String str, Augmentations augmentations) throws XNIException {
            XMLDTDHandler xMLDTDHandler = this.f113418f;
            if (xMLDTDHandler != null) {
                xMLDTDHandler.startAttlist(str, augmentations);
            }
        }

        @Override // org.apache.xerces.xni.XMLDTDHandler
        public void startConditional(short s, Augmentations augmentations) throws XNIException {
            XMLDTDHandler xMLDTDHandler = this.f113418f;
            if (xMLDTDHandler != null) {
                xMLDTDHandler.startConditional(s, augmentations);
            }
        }

        @Override // org.apache.xerces.xni.XMLDTDHandler
        public void startDTD(XMLLocator xMLLocator, Augmentations augmentations) throws XNIException {
            XMLDTDHandler xMLDTDHandler = this.f113418f;
            if (xMLDTDHandler != null) {
                xMLDTDHandler.startDTD(xMLLocator, augmentations);
            }
        }

        @Override // org.apache.xerces.xni.XMLDTDHandler
        public void startExternalSubset(XMLResourceIdentifier xMLResourceIdentifier, Augmentations augmentations) throws XNIException {
            XMLDTDHandler xMLDTDHandler = this.f113418f;
            if (xMLDTDHandler != null) {
                xMLDTDHandler.startExternalSubset(xMLResourceIdentifier, augmentations);
            }
        }

        @Override // org.apache.xerces.xni.XMLDTDHandler
        public void startParameterEntity(String str, XMLResourceIdentifier xMLResourceIdentifier, String str2, Augmentations augmentations) throws XNIException {
            XMLDTDHandler xMLDTDHandler = this.f113418f;
            if (xMLDTDHandler != null) {
                xMLDTDHandler.startParameterEntity(str, xMLResourceIdentifier, str2, augmentations);
            }
        }

        @Override // org.apache.xerces.xni.XMLDTDHandler
        public void textDecl(String str, String str2, Augmentations augmentations) throws XNIException {
            XMLDTDHandler xMLDTDHandler = this.f113418f;
            if (xMLDTDHandler != null) {
                xMLDTDHandler.textDecl(str, str2, augmentations);
            }
        }

        @Override // org.apache.xerces.xni.XMLDTDHandler
        public void unparsedEntityDecl(String str, XMLResourceIdentifier xMLResourceIdentifier, String str2, Augmentations augmentations) throws XNIException {
            XMLDTDHandler xMLDTDHandler = this.f113418f;
            if (xMLDTDHandler != null) {
                xMLDTDHandler.unparsedEntityDecl(str, xMLResourceIdentifier, str2, augmentations);
            }
        }
    }

    public SecureProcessingConfiguration() {
        this(null, null, null);
    }

    public static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError(e.getMessage());
        }
    }

    /* renamed from: e */
    public static void m70542e(String str) {
        if (f113390q) {
            PrintStream printStream = System.err;
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("XERCES: ");
            stringBuffer.append(str);
            printStream.println(stringBuffer.toString());
        }
    }

    /* renamed from: h */
    public static boolean m70543h() {
        try {
            String m55205h = kdm.m55205h("xerces.debug");
            if (m55205h != null) {
                return !"false".equals(m55205h);
            }
            return false;
        } catch (SecurityException unused) {
            return false;
        }
    }

    public void checkEntitySizeLimits(int i, int i2, boolean z) {
        int i3 = this.f113408k + i2;
        this.f113408k = i3;
        int i4 = this.TOTAL_ENTITY_SIZE_LIMIT_SYSTEM_VALUE;
        if (i3 > i4) {
            this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "TotalEntitySizeLimitExceeded", new Object[]{new Integer(i4)}, (short) 2);
        }
        if (z) {
            int i5 = this.MAX_PARAMETER_ENTITY_SIZE_LIMIT_SYSTEM_VALUE;
            if (i > i5) {
                this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "MaxParameterEntitySizeLimitExceeded", new Object[]{new Integer(i5)}, (short) 2);
                return;
            }
            return;
        }
        int i6 = this.MAX_GENERAL_ENTITY_SIZE_LIMIT_SYSTEM_VALUE;
        if (i > i6) {
            this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "MaxGeneralEntitySizeLimitExceeded", new Object[]{new Integer(i6)}, (short) 2);
        }
    }

    @Override // org.apache.xerces.parsers.XIncludeAwareParserConfiguration, org.apache.xerces.parsers.XML11Configuration
    public void configurePipeline() {
        super.configurePipeline();
        m70544d(true);
    }

    @Override // org.apache.xerces.parsers.XIncludeAwareParserConfiguration, org.apache.xerces.parsers.XML11Configuration
    public void configureXML11Pipeline() {
        super.configureXML11Pipeline();
        m70544d(false);
    }

    /* renamed from: d */
    public final void m70544d(boolean z) {
        XMLDTDSource xMLDTDSource;
        XMLDTDHandler xMLDTDHandler;
        if (this.f113405h != null) {
            this.f113408k = 0;
            if (this.f113406i == null) {
                this.f113406i = new C20076b();
            }
            if (z) {
                xMLDTDSource = this.fDTDScanner;
                xMLDTDHandler = this.fDTDProcessor;
            } else {
                xMLDTDSource = this.fXML11DTDScanner;
                xMLDTDHandler = this.fXML11DTDProcessor;
            }
            xMLDTDSource.setDTDHandler(this.f113406i);
            this.f113406i.setDTDSource(xMLDTDSource);
            this.f113406i.setDTDHandler(xMLDTDHandler);
            xMLDTDHandler.setDTDSource(this.f113406i);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x00aa A[Catch: all -> 0x0097, ThreadDeath -> 0x009a, VirtualMachineError -> 0x009d, TryCatch #12 {ThreadDeath -> 0x009a, VirtualMachineError -> 0x009d, all -> 0x0097, blocks: (B:18:0x0069, B:20:0x0092, B:21:0x00a6, B:23:0x00aa, B:25:0x00b2, B:47:0x00fe, B:49:0x0102, B:51:0x0108, B:53:0x010e, B:55:0x0112, B:56:0x012e, B:80:0x0143, B:81:0x0144, B:85:0x00a1), top: B:17:0x0069 }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00b3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00da A[Catch: all -> 0x00f1, Exception -> 0x00f3, TRY_LEAVE, TryCatch #13 {Exception -> 0x00f3, all -> 0x00f1, blocks: (B:27:0x00b3, B:30:0x00bd, B:35:0x00da, B:74:0x00ca, B:76:0x00d1), top: B:26:0x00b3 }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0112 A[Catch: all -> 0x0097, ThreadDeath -> 0x009a, VirtualMachineError -> 0x009d, TryCatch #12 {ThreadDeath -> 0x009a, VirtualMachineError -> 0x009d, all -> 0x0097, blocks: (B:18:0x0069, B:20:0x0092, B:21:0x00a6, B:23:0x00aa, B:25:0x00b2, B:47:0x00fe, B:49:0x0102, B:51:0x0108, B:53:0x010e, B:55:0x0112, B:56:0x012e, B:80:0x0143, B:81:0x0144, B:85:0x00a1), top: B:17:0x0069 }] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0136 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0137 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x013c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x00ed A[Catch: IOException -> 0x00fd, all -> 0x0140, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:43:0x00fa, B:46:0x00fd, B:67:0x013c, B:65:0x0142, B:72:0x00ed), top: B:24:0x00b2 }] */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m70545f(java.lang.String r14, int r15) {
        /*
            Method dump skipped, instructions count: 374
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.parsers.SecureProcessingConfiguration.m70545f(java.lang.String, int):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x00a8 A[Catch: all -> 0x0095, ThreadDeath -> 0x0098, VirtualMachineError -> 0x009b, TryCatch #11 {ThreadDeath -> 0x0098, VirtualMachineError -> 0x009b, all -> 0x0095, blocks: (B:16:0x0067, B:19:0x0090, B:20:0x00a4, B:22:0x00a8, B:24:0x00b0, B:46:0x00fc, B:48:0x0100, B:50:0x0106, B:52:0x010c, B:54:0x0110, B:55:0x012c, B:78:0x0142, B:79:0x0143, B:82:0x009f), top: B:15:0x0067 }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00b1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00d8 A[Catch: all -> 0x00ef, Exception -> 0x00f1, TRY_LEAVE, TryCatch #13 {Exception -> 0x00f1, all -> 0x00ef, blocks: (B:26:0x00b1, B:29:0x00bb, B:34:0x00d8, B:71:0x00c8, B:73:0x00cf), top: B:25:0x00b1 }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0110 A[Catch: all -> 0x0095, ThreadDeath -> 0x0098, VirtualMachineError -> 0x009b, TryCatch #11 {ThreadDeath -> 0x0098, VirtualMachineError -> 0x009b, all -> 0x0095, blocks: (B:16:0x0067, B:19:0x0090, B:20:0x00a4, B:22:0x00a8, B:24:0x00b0, B:46:0x00fc, B:48:0x0100, B:50:0x0106, B:52:0x010c, B:54:0x0110, B:55:0x012c, B:78:0x0142, B:79:0x0143, B:82:0x009f), top: B:15:0x0067 }] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x013b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00eb A[Catch: IOException -> 0x00fb, all -> 0x013f, TRY_ENTER, TRY_LEAVE, TryCatch #13 {IOException -> 0x00fb, blocks: (B:42:0x00f8, B:69:0x00eb), top: B:23:0x00b0 }] */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m70546g(java.lang.String r13, boolean r14) {
        /*
            Method dump skipped, instructions count: 373
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.parsers.SecureProcessingConfiguration.m70546g(java.lang.String, boolean):boolean");
    }

    @Override // org.apache.xerces.parsers.XML11Configuration, org.apache.xerces.util.ParserConfigurationSettings, org.apache.xerces.xni.parser.XMLComponentManager
    public Object getProperty(String str) throws XMLConfigurationException {
        return "http://apache.org/xml/properties/security-manager".equals(str) ? this.f113405h : "http://apache.org/xml/properties/internal/entity-resolver".equals(str) ? this.f113407j : super.getProperty(str);
    }

    @Override // org.apache.xerces.parsers.XML11Configuration, org.apache.xerces.util.ParserConfigurationSettings
    public void setProperty(String str, Object obj) throws XMLConfigurationException {
        if ("http://apache.org/xml/properties/security-manager".equals(str)) {
            if (obj == null && this.f113403f) {
                return;
            }
            SecurityManager securityManager = (SecurityManager) obj;
            this.f113405h = securityManager;
            if (securityManager != null) {
                if (securityManager.getEntityExpansionLimit() == 100000) {
                    this.f113405h.setEntityExpansionLimit(this.ENTITY_EXPANSION_LIMIT_SYSTEM_VALUE);
                }
                if (this.f113405h.getMaxOccurNodeLimit() == 3000) {
                    this.f113405h.setMaxOccurNodeLimit(this.MAX_OCCUR_LIMIT_SYSTEM_VALUE);
                }
            }
        } else if ("http://apache.org/xml/properties/internal/entity-resolver".equals(str)) {
            this.f113407j.m70549c((XMLEntityResolver) obj);
            return;
        }
        super.setProperty(str, obj);
    }

    public SecureProcessingConfiguration(SymbolTable symbolTable) {
        this(symbolTable, null, null);
    }

    public SecureProcessingConfiguration(SymbolTable symbolTable, XMLGrammarPool xMLGrammarPool) {
        this(symbolTable, xMLGrammarPool, null);
    }

    public SecureProcessingConfiguration(SymbolTable symbolTable, XMLGrammarPool xMLGrammarPool, XMLComponentManager xMLComponentManager) {
        super(symbolTable, xMLGrammarPool, xMLComponentManager);
        this.f113408k = 0;
        boolean z = System.getSecurityManager() != null;
        this.f113403f = z;
        int m70545f = m70545f(f113398v, 64000);
        this.ENTITY_EXPANSION_LIMIT_SYSTEM_VALUE = m70545f;
        int m70545f2 = m70545f(f113399w, 5000);
        this.MAX_OCCUR_LIMIT_SYSTEM_VALUE = m70545f2;
        this.TOTAL_ENTITY_SIZE_LIMIT_SYSTEM_VALUE = m70545f(f113400x, 50000000);
        this.MAX_GENERAL_ENTITY_SIZE_LIMIT_SYSTEM_VALUE = m70545f(f113401y, Integer.MAX_VALUE);
        this.MAX_PARAMETER_ENTITY_SIZE_LIMIT_SYSTEM_VALUE = m70545f(f113402z, Integer.MAX_VALUE);
        boolean m70546g = m70546g(f113380J, true);
        this.RESOLVE_EXTERNAL_ENTITIES_SYSTEM_VALUE = m70546g;
        if (z || this.f113404g) {
            if (!m70546g) {
                super.setFeature("http://xml.org/sax/features/external-general-entities", false);
                super.setFeature("http://xml.org/sax/features/external-parameter-entities", false);
                super.setFeature("http://apache.org/xml/features/nonvalidating/load-external-dtd", false);
            }
            SecurityManager securityManager = new SecurityManager();
            this.f113405h = securityManager;
            securityManager.setEntityExpansionLimit(m70545f);
            this.f113405h.setMaxOccurNodeLimit(m70545f2);
            super.setProperty("http://apache.org/xml/properties/security-manager", this.f113405h);
        }
        C20075a c20075a = new C20075a();
        this.f113407j = c20075a;
        super.setProperty("http://apache.org/xml/properties/internal/entity-resolver", c20075a);
    }
}
