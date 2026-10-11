package com.sun.org.apache.xerces.internal.impl;

import com.google.zxing.common.StringUtils;
import com.sun.org.apache.xerces.internal.impl.io.ASCIIReader;
import com.sun.org.apache.xerces.internal.impl.io.UCSReader;
import com.sun.org.apache.xerces.internal.impl.io.UTF8Reader;
import com.sun.org.apache.xerces.internal.impl.validation.ValidationManager;
import com.sun.org.apache.xerces.internal.util.AugmentationsImpl;
import com.sun.org.apache.xerces.internal.util.EncodingMap;
import com.sun.org.apache.xerces.internal.util.HTTPInputSource;
import com.sun.org.apache.xerces.internal.util.SecurityManager;
import com.sun.org.apache.xerces.internal.util.SymbolTable;
import com.sun.org.apache.xerces.internal.util.URI;
import com.sun.org.apache.xerces.internal.util.XMLChar;
import com.sun.org.apache.xerces.internal.util.XMLEntityDescriptionImpl;
import com.sun.org.apache.xerces.internal.util.XMLResourceIdentifierImpl;
import com.sun.org.apache.xerces.internal.xni.Augmentations;
import com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier;
import com.sun.org.apache.xerces.internal.xni.XNIException;
import com.sun.org.apache.xerces.internal.xni.parser.XMLComponent;
import com.sun.org.apache.xerces.internal.xni.parser.XMLComponentManager;
import com.sun.org.apache.xerces.internal.xni.parser.XMLConfigurationException;
import com.sun.org.apache.xerces.internal.xni.parser.XMLEntityResolver;
import com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource;
import com.sun.xml.internal.stream.Entity;
import com.sun.xml.internal.stream.StaxEntityResolverWrapper;
import com.sun.xml.internal.stream.StaxXMLInputSource;
import com.sun.xml.internal.stream.XMLEntityStorage;
import java.io.BufferedReader;
import java.io.EOFException;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.io.StringReader;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Method;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Stack;
import java.util.Vector;
import org.apache.commons.lang3.SystemUtils;
import org.apache.commons.text.AlphabetConverter;

/* loaded from: classes10.dex */
public class XMLEntityManager implements XMLComponent, XMLEntityResolver {
    protected static final String BUFFER_SIZE = "http://apache.org/xml/properties/input-buffer-size";
    private static final boolean DEBUG_BUFFER = false;
    private static final boolean DEBUG_ENCODINGS = false;
    private static final boolean DEBUG_ENTITIES = false;
    private static final boolean DEBUG_RESOLVER = false;
    public static final int DEFAULT_BUFFER_SIZE = 8192;
    public static final int DEFAULT_INTERNAL_BUFFER_SIZE = 1024;
    public static final int DEFAULT_XMLDECL_BUFFER_SIZE = 64;
    private static final String DTDEntity;
    protected static final String ENTITY_RESOLVER = "http://apache.org/xml/properties/internal/entity-resolver";
    protected static final String ERROR_REPORTER = "http://apache.org/xml/properties/internal/error-reporter";
    protected static final String EXTERNAL_GENERAL_ENTITIES = "http://xml.org/sax/features/external-general-entities";
    protected static final String EXTERNAL_PARAMETER_ENTITIES = "http://xml.org/sax/features/external-parameter-entities";
    private static final Boolean[] FEATURE_DEFAULTS;
    protected static final String PARSER_SETTINGS = "http://apache.org/xml/features/internal/parser-settings";
    private static final Object[] PROPERTY_DEFAULTS;
    private static final String[] RECOGNIZED_PROPERTIES;
    protected static final String SECURITY_MANAGER = "http://apache.org/xml/properties/security-manager";
    protected static final String STANDARD_URI_CONFORMANT = "http://apache.org/xml/features/standard-uri-conformant";
    protected static final String STAX_ENTITY_RESOLVER = "http://apache.org/xml/properties/internal/stax-entity-resolver";
    protected static final String SYMBOL_TABLE = "http://apache.org/xml/properties/internal/symbol-table";
    protected static final String VALIDATION = "http://xml.org/sax/features/validation";
    protected static final String VALIDATION_MANAGER = "http://apache.org/xml/properties/internal/validation-manager";
    private static final String XMLEntity;
    private static char[] gAfterEscaping1;
    private static char[] gAfterEscaping2;
    private static char[] gHexChs;
    private static boolean[] gNeedEscaping;
    private static String gUserDir;
    private static URI gUserDirURI;
    protected final Object[] defaultEncoding;
    protected boolean fAllowJavaEncodings;
    private CharacterBufferPool fBufferPool;
    protected int fBufferSize;
    protected Entity.ScannedEntity fCurrentEntity;
    protected Hashtable fDeclaredEntities;
    protected Hashtable fEntities;
    private final Augmentations fEntityAugs;
    protected int fEntityExpansionCount;
    protected int fEntityExpansionLimit;
    protected XMLEntityHandler fEntityHandler;
    protected XMLEntityResolver fEntityResolver;
    protected XMLEntityScanner fEntityScanner;
    protected Stack fEntityStack;
    protected XMLEntityStorage fEntityStorage;
    protected XMLErrorReporter fErrorReporter;
    protected boolean fExternalGeneralEntities;
    protected boolean fExternalParameterEntities;
    protected boolean fInExternalSubset;
    protected Vector fOwnReaders;
    protected PropertyManager fPropertyManager;
    private final XMLResourceIdentifierImpl fResourceIdentifier;
    protected SecurityManager fSecurityManager;
    protected boolean fStandalone;
    protected StaxEntityResolverWrapper fStaxEntityResolver;
    protected boolean fStrictURI;
    protected SymbolTable fSymbolTable;
    protected boolean fValidation;
    protected ValidationManager fValidationManager;
    protected boolean fWarnDuplicateEntityDef;
    protected XMLEntityScanner fXML10EntityScanner;
    protected XMLEntityScanner fXML11EntityScanner;
    protected static final String ALLOW_JAVA_ENCODINGS = "http://apache.org/xml/features/allow-java-encodings";
    protected static final String WARN_ON_DUPLICATE_ENTITYDEF = "http://apache.org/xml/features/warn-on-duplicate-entitydef";
    private static final String[] RECOGNIZED_FEATURES = {"http://xml.org/sax/features/validation", "http://xml.org/sax/features/external-general-entities", "http://xml.org/sax/features/external-parameter-entities", ALLOW_JAVA_ENCODINGS, WARN_ON_DUPLICATE_ENTITYDEF};

    /* loaded from: classes10.dex */
    public static class CharacterBuffer {

        /* renamed from: ch */
        private char[] f64113ch;
        private boolean isExternal;

        public CharacterBuffer(boolean z, int i) {
            this.isExternal = z;
            this.f64113ch = new char[i];
        }
    }

    /* loaded from: classes10.dex */
    public static class CharacterBufferPool {
        private static final int DEFAULT_POOL_SIZE = 3;
        private CharacterBuffer[] fExternalBufferPool;
        private int fExternalBufferSize;
        private int fExternalTop;
        private CharacterBuffer[] fInternalBufferPool;
        private int fInternalBufferSize;
        private int fInternalTop;
        private int poolSize;

        public CharacterBufferPool(int i, int i2) {
            this(3, i, i2);
        }

        private void init() {
            int i = this.poolSize;
            this.fInternalBufferPool = new CharacterBuffer[i];
            this.fExternalBufferPool = new CharacterBuffer[i];
            this.fInternalTop = -1;
            this.fExternalTop = -1;
        }

        public CharacterBuffer getBuffer(boolean z) {
            if (z) {
                int i = this.fExternalTop;
                if (i <= -1) {
                    return new CharacterBuffer(true, this.fExternalBufferSize);
                }
                CharacterBuffer[] characterBufferArr = this.fExternalBufferPool;
                this.fExternalTop = i - 1;
                return characterBufferArr[i];
            }
            int i2 = this.fInternalTop;
            if (i2 <= -1) {
                return new CharacterBuffer(false, this.fInternalBufferSize);
            }
            CharacterBuffer[] characterBufferArr2 = this.fInternalBufferPool;
            this.fInternalTop = i2 - 1;
            return characterBufferArr2[i2];
        }

        public void returnToPool(CharacterBuffer characterBuffer) {
            if (characterBuffer.isExternal) {
                int i = this.fExternalTop;
                CharacterBuffer[] characterBufferArr = this.fExternalBufferPool;
                if (i < characterBufferArr.length - 1) {
                    int i2 = i + 1;
                    this.fExternalTop = i2;
                    characterBufferArr[i2] = characterBuffer;
                    return;
                }
                return;
            }
            int i3 = this.fInternalTop;
            CharacterBuffer[] characterBufferArr2 = this.fInternalBufferPool;
            if (i3 < characterBufferArr2.length - 1) {
                int i4 = i3 + 1;
                this.fInternalTop = i4;
                characterBufferArr2[i4] = characterBuffer;
            }
        }

        public void setExternalBufferSize(int i) {
            this.fExternalBufferSize = i;
            this.fExternalBufferPool = new CharacterBuffer[this.poolSize];
            this.fExternalTop = -1;
        }

        public CharacterBufferPool(int i, int i2, int i3) {
            this.fExternalBufferSize = i2;
            this.fInternalBufferSize = i3;
            this.poolSize = i;
            init();
        }
    }

    static {
        Boolean bool = Boolean.TRUE;
        FEATURE_DEFAULTS = new Boolean[]{null, bool, bool, bool, Boolean.FALSE};
        RECOGNIZED_PROPERTIES = new String[]{"http://apache.org/xml/properties/internal/symbol-table", "http://apache.org/xml/properties/internal/error-reporter", "http://apache.org/xml/properties/internal/entity-resolver", "http://apache.org/xml/properties/internal/validation-manager", "http://apache.org/xml/properties/input-buffer-size", "http://apache.org/xml/properties/security-manager"};
        PROPERTY_DEFAULTS = new Object[]{null, null, null, null, new Integer(8192), null};
        XMLEntity = "[xml]".intern();
        DTDEntity = "[dtd]".intern();
        gNeedEscaping = new boolean[128];
        gAfterEscaping1 = new char[128];
        gAfterEscaping2 = new char[128];
        gHexChs = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
        for (int i = 0; i <= 31; i++) {
            gNeedEscaping[i] = true;
            char[] cArr = gAfterEscaping1;
            char[] cArr2 = gHexChs;
            cArr[i] = cArr2[i >> 4];
            gAfterEscaping2[i] = cArr2[i & 15];
        }
        gNeedEscaping[127] = true;
        gAfterEscaping1[127] = '7';
        gAfterEscaping2[127] = 'F';
        char[] cArr3 = {' ', '<', '>', '#', '%', '\"', '{', '}', '|', '\\', '^', '~', '[', ']', '`'};
        for (int i2 = 0; i2 < 15; i2++) {
            char c = cArr3[i2];
            gNeedEscaping[c] = true;
            char[] cArr4 = gAfterEscaping1;
            char[] cArr5 = gHexChs;
            cArr4[c] = cArr5[c >> 4];
            gAfterEscaping2[c] = cArr5[c & 15];
        }
    }

    public XMLEntityManager() {
        this.fAllowJavaEncodings = true;
        this.fBufferSize = 8192;
        this.fSecurityManager = null;
        this.fInExternalSubset = false;
        this.fEntityExpansionLimit = 0;
        this.fEntityExpansionCount = 0;
        this.fEntities = new Hashtable();
        this.fEntityStack = new Stack();
        this.fCurrentEntity = null;
        this.defaultEncoding = new Object[]{"UTF-8", null};
        this.fResourceIdentifier = new XMLResourceIdentifierImpl();
        this.fEntityAugs = new AugmentationsImpl();
        this.fBufferPool = new CharacterBufferPool(this.fBufferSize, 1024);
        this.fOwnReaders = new Vector();
        this.fEntityStorage = new XMLEntityStorage(this);
        setScannerVersion((short) 1);
    }

    public static void absolutizeAgainstUserDir(URI uri) throws URI.MalformedURIException {
        uri.absolutize(getUserDir());
    }

    public static String expandSystemId(String str) {
        return expandSystemId(str, null);
    }

    private static String expandSystemIdStrictOff(String str, String str2) throws URI.MalformedURIException {
        URI userDir;
        URI uri = new URI(str, true);
        if (uri.isAbsoluteURI()) {
            if (uri.getScheme().length() > 1) {
                return str;
            }
            throw new URI.MalformedURIException();
        }
        if (str2 == null || str2.length() == 0) {
            userDir = getUserDir();
        } else {
            userDir = new URI(str2, true);
            if (!userDir.isAbsoluteURI()) {
                userDir.absolutize(getUserDir());
            }
        }
        uri.absolutize(userDir);
        return uri.toString();
    }

    private static String expandSystemIdStrictOn(String str, String str2) throws URI.MalformedURIException {
        URI userDir;
        URI uri = new URI(str, true);
        if (uri.isAbsoluteURI()) {
            return str;
        }
        if (str2 == null || str2.length() == 0) {
            userDir = getUserDir();
        } else {
            userDir = new URI(str2, true);
            if (!userDir.isAbsoluteURI()) {
                userDir.absolutize(getUserDir());
            }
        }
        uri.absolutize(userDir);
        return uri.toString();
    }

    public static String fixURI(String str) {
        String replace = str.replace(File.separatorChar, '/');
        if (replace.length() < 2) {
            return replace;
        }
        char charAt = replace.charAt(1);
        if (charAt != ':') {
            if (charAt != '/' || replace.charAt(0) != '/') {
                return replace;
            }
            return "file:" + replace;
        }
        char upperCase = Character.toUpperCase(replace.charAt(0));
        if (upperCase < 'A' || upperCase > 'Z') {
            return replace;
        }
        return "/" + replace;
    }

    private static synchronized URI getUserDir() throws URI.MalformedURIException {
        char charAt;
        char upperCase;
        synchronized (XMLEntityManager.class) {
            String str = "";
            try {
                str = System.getProperty(SystemUtils.f107422c);
            } catch (SecurityException unused) {
            }
            if (str.length() == 0) {
                return new URI("file", "", "", null, null);
            }
            if (gUserDirURI != null && str.equals(gUserDir)) {
                return gUserDirURI;
            }
            gUserDir = str;
            String replace = str.replace(File.separatorChar, '/');
            int length = replace.length();
            StringBuffer stringBuffer = new StringBuffer(length * 3);
            if (length >= 2 && replace.charAt(1) == ':' && (upperCase = Character.toUpperCase(replace.charAt(0))) >= 'A' && upperCase <= 'Z') {
                stringBuffer.append('/');
            }
            int i = 0;
            while (i < length && (charAt = replace.charAt(i)) < 128) {
                if (gNeedEscaping[charAt]) {
                    stringBuffer.append('%');
                    stringBuffer.append(gAfterEscaping1[charAt]);
                    stringBuffer.append(gAfterEscaping2[charAt]);
                } else {
                    stringBuffer.append(charAt);
                }
                i++;
            }
            if (i < length) {
                try {
                    for (byte b : replace.substring(i).getBytes("UTF-8")) {
                        if (b < 0) {
                            int i2 = b + 256;
                            stringBuffer.append('%');
                            stringBuffer.append(gHexChs[i2 >> 4]);
                            stringBuffer.append(gHexChs[i2 & 15]);
                        } else if (gNeedEscaping[b]) {
                            stringBuffer.append('%');
                            stringBuffer.append(gAfterEscaping1[b]);
                            stringBuffer.append(gAfterEscaping2[b]);
                        } else {
                            stringBuffer.append((char) b);
                        }
                    }
                } catch (UnsupportedEncodingException unused2) {
                    return new URI("file", "", replace, null, null);
                }
            }
            if (!replace.endsWith("/")) {
                stringBuffer.append('/');
            }
            URI uri = new URI("file", "", stringBuffer.toString(), null, null);
            gUserDirURI = uri;
            return uri;
        }
    }

    public static void setInstanceFollowRedirects(HttpURLConnection httpURLConnection, boolean z) {
        try {
            Method method = HttpURLConnection.class.getMethod("setInstanceFollowRedirects", Boolean.TYPE);
            Object[] objArr = new Object[1];
            objArr[0] = z ? Boolean.TRUE : Boolean.FALSE;
            method.invoke(httpURLConnection, objArr);
        } catch (Exception unused) {
        }
    }

    public void addExternalEntity(String str, String str2, String str3, String str4) throws IOException {
        Entity.ScannedEntity scannedEntity;
        XMLResourceIdentifier xMLResourceIdentifier;
        if (this.fEntities.containsKey(str)) {
            if (this.fWarnDuplicateEntityDef) {
                this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_DUPLICATE_ENTITY_DEFINITION", new Object[]{str}, (short) 0);
                return;
            }
            return;
        }
        if (str4 == null) {
            int size = this.fEntityStack.size();
            if (size == 0 && (scannedEntity = this.fCurrentEntity) != null && (xMLResourceIdentifier = scannedEntity.entityLocation) != null) {
                str4 = xMLResourceIdentifier.getExpandedSystemId();
            }
            int i = size - 1;
            while (true) {
                if (i >= 0) {
                    Entity.ScannedEntity scannedEntity2 = (Entity.ScannedEntity) this.fEntityStack.elementAt(i);
                    XMLResourceIdentifier xMLResourceIdentifier2 = scannedEntity2.entityLocation;
                    if (xMLResourceIdentifier2 != null && xMLResourceIdentifier2.getExpandedSystemId() != null) {
                        str4 = scannedEntity2.entityLocation.getExpandedSystemId();
                        break;
                    }
                    i--;
                } else {
                    break;
                }
            }
        }
        String str5 = str4;
        this.fEntities.put(str, new Entity.ExternalEntity(str, new XMLEntityDescriptionImpl(str, str2, str3, str5, expandSystemId(str3, str5, false)), null, this.fInExternalSubset));
    }

    public void addInternalEntity(String str, String str2) {
        if (!this.fEntities.containsKey(str)) {
            this.fEntities.put(str, new Entity.InternalEntity(str, str2, this.fInExternalSubset));
        } else if (this.fWarnDuplicateEntityDef) {
            this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_DUPLICATE_ENTITY_DEFINITION", new Object[]{str}, (short) 0);
        }
    }

    public void addUnparsedEntity(String str, String str2, String str3, String str4, String str5) {
        if (!this.fEntities.containsKey(str)) {
            this.fEntities.put(str, new Entity.ExternalEntity(str, new XMLEntityDescriptionImpl(str, str2, str3, str4, null), str5, this.fInExternalSubset));
        } else if (this.fWarnDuplicateEntityDef) {
            this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_DUPLICATE_ENTITY_DEFINITION", new Object[]{str}, (short) 0);
        }
    }

    public void closeReaders() {
        for (int size = this.fOwnReaders.size() - 1; size >= 0; size--) {
            try {
                ((Reader) this.fOwnReaders.elementAt(size)).close();
            } catch (IOException unused) {
            }
        }
        this.fOwnReaders.removeAllElements();
    }

    public Reader createReader(InputStream inputStream, String str, Boolean bool) throws IOException {
        if (str == null) {
            str = "UTF-8";
        }
        String upperCase = str.toUpperCase(Locale.ENGLISH);
        if (upperCase.equals("UTF-8")) {
            return new UTF8Reader(inputStream, this.fBufferSize, this.fErrorReporter.getMessageFormatter("http://www.w3.org/TR/1998/REC-xml-19980210"), this.fErrorReporter.getLocale());
        }
        if (upperCase.equals("US-ASCII")) {
            return new ASCIIReader(inputStream, this.fBufferSize, this.fErrorReporter.getMessageFormatter("http://www.w3.org/TR/1998/REC-xml-19980210"), this.fErrorReporter.getLocale());
        }
        if (upperCase.equals("ISO-10646-UCS-4")) {
            if (bool != null) {
                return bool.booleanValue() ? new UCSReader(inputStream, (short) 8) : new UCSReader(inputStream, (short) 4);
            }
            this.fErrorReporter.reportError(getEntityScanner(), "http://www.w3.org/TR/1998/REC-xml-19980210", "EncodingByteOrderUnsupported", new Object[]{str}, (short) 2);
        }
        if (upperCase.equals("ISO-10646-UCS-2")) {
            if (bool != null) {
                return bool.booleanValue() ? new UCSReader(inputStream, (short) 2) : new UCSReader(inputStream, (short) 1);
            }
            this.fErrorReporter.reportError(getEntityScanner(), "http://www.w3.org/TR/1998/REC-xml-19980210", "EncodingByteOrderUnsupported", new Object[]{str}, (short) 2);
        }
        boolean isValidIANAEncoding = XMLChar.isValidIANAEncoding(str);
        boolean isValidJavaEncoding = XMLChar.isValidJavaEncoding(str);
        if (!isValidIANAEncoding || (this.fAllowJavaEncodings && !isValidJavaEncoding)) {
            this.fErrorReporter.reportError(getEntityScanner(), "http://www.w3.org/TR/1998/REC-xml-19980210", "EncodingDeclInvalid", new Object[]{str}, (short) 2);
            str = "ISO-8859-1";
        }
        String iANA2JavaMapping = EncodingMap.getIANA2JavaMapping(upperCase);
        if (iANA2JavaMapping != null) {
            str = iANA2JavaMapping;
        } else if (!this.fAllowJavaEncodings) {
            this.fErrorReporter.reportError(getEntityScanner(), "http://www.w3.org/TR/1998/REC-xml-19980210", "EncodingDeclInvalid", new Object[]{str}, (short) 2);
            str = StringUtils.f38416d;
        }
        return new BufferedReader(new InputStreamReader(inputStream, str));
    }

    public void endEntity() throws IOException, XNIException {
        Entity.ScannedEntity scannedEntity = this.fEntityStack.size() > 0 ? (Entity.ScannedEntity) this.fEntityStack.pop() : null;
        XMLEntityHandler xMLEntityHandler = this.fEntityHandler;
        if (xMLEntityHandler != null) {
            if (scannedEntity == null) {
                this.fEntityAugs.removeAllItems();
                this.fEntityAugs.putItem(Constants.LAST_ENTITY, Boolean.TRUE);
                this.fEntityHandler.endEntity(this.fCurrentEntity.name, this.fEntityAugs);
                this.fEntityAugs.removeAllItems();
            } else {
                xMLEntityHandler.endEntity(this.fCurrentEntity.name, null);
            }
        }
        Entity.ScannedEntity scannedEntity2 = this.fCurrentEntity;
        boolean z = scannedEntity2.name == XMLEntity;
        if (scannedEntity2 != null) {
            try {
                scannedEntity2.reader.close();
            } catch (IOException e) {
                throw new XNIException(e);
            }
        }
        this.fCurrentEntity = scannedEntity;
        this.fEntityScanner.setCurrentEntity(scannedEntity);
        if ((!z) && (this.fCurrentEntity == null)) {
            throw new EOFException();
        }
    }

    public void endExternalSubset() {
        this.fInExternalSubset = false;
    }

    public int getColumnNumber() {
        Entity.ScannedEntity scannedEntity = this.fCurrentEntity;
        if (scannedEntity == null) {
            return -1;
        }
        if (scannedEntity.isExternal()) {
            return this.fCurrentEntity.columnNumber;
        }
        for (int size = this.fEntityStack.size() - 1; size > 0; size--) {
            Entity.ScannedEntity scannedEntity2 = (Entity.ScannedEntity) this.fEntityStack.elementAt(size);
            if (scannedEntity2.isExternal()) {
                return scannedEntity2.columnNumber;
            }
        }
        return -1;
    }

    public Entity.ScannedEntity getCurrentEntity() {
        return this.fCurrentEntity;
    }

    public XMLResourceIdentifier getCurrentResourceIdentifier() {
        return this.fResourceIdentifier;
    }

    public Object[] getEncodingName(byte[] bArr, int i) {
        if (i < 2) {
            return this.defaultEncoding;
        }
        int i2 = bArr[0] & 255;
        int i3 = bArr[1] & 255;
        if (i2 == 254 && i3 == 255) {
            return new Object[]{"UTF-16BE", new Boolean(true)};
        }
        if (i2 == 255 && i3 == 254) {
            return new Object[]{"UTF-16LE", new Boolean(false)};
        }
        if (i < 3) {
            return this.defaultEncoding;
        }
        int i4 = bArr[2] & 255;
        if ((i2 != 239 || i3 != 187 || i4 != 191) && i >= 4) {
            int i5 = bArr[3] & 255;
            return (i2 == 0 && i3 == 0 && i4 == 0 && i5 == 60) ? new Object[]{"ISO-10646-UCS-4", new Boolean(true)} : (i2 == 60 && i3 == 0 && i4 == 0 && i5 == 0) ? new Object[]{"ISO-10646-UCS-4", new Boolean(false)} : (i2 == 0 && i3 == 0 && i4 == 60 && i5 == 0) ? new Object[]{"ISO-10646-UCS-4", null} : (i2 == 0 && i3 == 60 && i4 == 0 && i5 == 0) ? new Object[]{"ISO-10646-UCS-4", null} : (i2 == 0 && i3 == 60 && i4 == 0 && i5 == 63) ? new Object[]{"UTF-16BE", new Boolean(true)} : (i2 == 60 && i3 == 0 && i4 == 63 && i5 == 0) ? new Object[]{"UTF-16LE", new Boolean(false)} : (i2 == 76 && i3 == 111 && i4 == 167 && i5 == 148) ? new Object[]{"CP037", null} : this.defaultEncoding;
        }
        return this.defaultEncoding;
    }

    public XMLEntityScanner getEntityScanner() {
        if (this.fEntityScanner == null) {
            if (this.fXML10EntityScanner == null) {
                this.fXML10EntityScanner = new XMLEntityScanner();
            }
            this.fXML10EntityScanner.reset(this.fSymbolTable, this, this.fErrorReporter);
            this.fEntityScanner = this.fXML10EntityScanner;
        }
        return this.fEntityScanner;
    }

    public XMLEntityStorage getEntityStore() {
        return this.fEntityStorage;
    }

    public String getExpandedSystemId() {
        Entity.ScannedEntity scannedEntity = this.fCurrentEntity;
        if (scannedEntity == null) {
            return null;
        }
        XMLResourceIdentifier xMLResourceIdentifier = scannedEntity.entityLocation;
        if (xMLResourceIdentifier != null && xMLResourceIdentifier.getExpandedSystemId() != null) {
            return this.fCurrentEntity.entityLocation.getExpandedSystemId();
        }
        for (int size = this.fEntityStack.size() - 1; size >= 0; size--) {
            Entity.ScannedEntity scannedEntity2 = (Entity.ScannedEntity) this.fEntityStack.elementAt(size);
            XMLResourceIdentifier xMLResourceIdentifier2 = scannedEntity2.entityLocation;
            if (xMLResourceIdentifier2 != null && xMLResourceIdentifier2.getExpandedSystemId() != null) {
                return scannedEntity2.entityLocation.getExpandedSystemId();
            }
        }
        return null;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLComponent
    public Boolean getFeatureDefault(String str) {
        int i = 0;
        while (true) {
            String[] strArr = RECOGNIZED_FEATURES;
            if (i >= strArr.length) {
                return null;
            }
            if (strArr[i].equals(str)) {
                return FEATURE_DEFAULTS[i];
            }
            i++;
        }
    }

    public int getLineNumber() {
        Entity.ScannedEntity scannedEntity = this.fCurrentEntity;
        if (scannedEntity == null) {
            return -1;
        }
        if (scannedEntity.isExternal()) {
            return this.fCurrentEntity.lineNumber;
        }
        for (int size = this.fEntityStack.size() - 1; size > 0; size--) {
            Entity.ScannedEntity scannedEntity2 = (Entity.ScannedEntity) this.fEntityStack.elementAt(size);
            if (scannedEntity2.isExternal()) {
                return scannedEntity2.lineNumber;
            }
        }
        return -1;
    }

    public String getLiteralSystemId() {
        Entity.ScannedEntity scannedEntity = this.fCurrentEntity;
        if (scannedEntity == null) {
            return null;
        }
        XMLResourceIdentifier xMLResourceIdentifier = scannedEntity.entityLocation;
        if (xMLResourceIdentifier != null && xMLResourceIdentifier.getLiteralSystemId() != null) {
            return this.fCurrentEntity.entityLocation.getLiteralSystemId();
        }
        for (int size = this.fEntityStack.size() - 1; size >= 0; size--) {
            Entity.ScannedEntity scannedEntity2 = (Entity.ScannedEntity) this.fEntityStack.elementAt(size);
            XMLResourceIdentifier xMLResourceIdentifier2 = scannedEntity2.entityLocation;
            if (xMLResourceIdentifier2 != null && xMLResourceIdentifier2.getLiteralSystemId() != null) {
                return scannedEntity2.entityLocation.getLiteralSystemId();
            }
        }
        return null;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLComponent
    public Object getPropertyDefault(String str) {
        int i = 0;
        while (true) {
            String[] strArr = RECOGNIZED_PROPERTIES;
            if (i >= strArr.length) {
                return null;
            }
            if (strArr[i].equals(str)) {
                return PROPERTY_DEFAULTS[i];
            }
            i++;
        }
    }

    public String getPublicId() {
        XMLResourceIdentifier xMLResourceIdentifier;
        Entity.ScannedEntity scannedEntity = this.fCurrentEntity;
        if (scannedEntity == null || (xMLResourceIdentifier = scannedEntity.entityLocation) == null) {
            return null;
        }
        return xMLResourceIdentifier.getPublicId();
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLComponent
    public String[] getRecognizedFeatures() {
        return (String[]) RECOGNIZED_FEATURES.clone();
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLComponent
    public String[] getRecognizedProperties() {
        return (String[]) RECOGNIZED_PROPERTIES.clone();
    }

    public boolean isDeclaredEntity(String str) {
        return ((Entity) this.fEntities.get(str)) != null;
    }

    public boolean isEntityDeclInExternalSubset(String str) {
        Entity entity = (Entity) this.fEntities.get(str);
        if (entity == null) {
            return false;
        }
        return entity.isEntityDeclInExternalSubset();
    }

    public boolean isExternalEntity(String str) {
        Entity entity = (Entity) this.fEntities.get(str);
        if (entity == null) {
            return false;
        }
        return entity.isExternal();
    }

    public boolean isStandalone() {
        return this.fStandalone;
    }

    public boolean isUnparsedEntity(String str) {
        Entity entity = (Entity) this.fEntities.get(str);
        if (entity == null) {
            return false;
        }
        return entity.isUnparsed();
    }

    public final void print() {
    }

    public void reset(PropertyManager propertyManager) {
        this.fEntityStorage.reset(propertyManager);
        this.fEntityScanner.reset(propertyManager);
        this.fSymbolTable = (SymbolTable) propertyManager.getProperty("http://apache.org/xml/properties/internal/symbol-table");
        this.fErrorReporter = (XMLErrorReporter) propertyManager.getProperty("http://apache.org/xml/properties/internal/error-reporter");
        try {
            this.fStaxEntityResolver = (StaxEntityResolverWrapper) propertyManager.getProperty(STAX_ENTITY_RESOLVER);
        } catch (XMLConfigurationException unused) {
            this.fStaxEntityResolver = null;
        }
        this.fEntities.clear();
        this.fEntityStack.removeAllElements();
        this.fCurrentEntity = null;
        this.fValidation = false;
        this.fExternalGeneralEntities = false;
        this.fExternalParameterEntities = false;
        this.fAllowJavaEncodings = true;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLEntityResolver
    public XMLInputSource resolveEntity(XMLResourceIdentifier xMLResourceIdentifier) throws IOException, XNIException {
        Entity.ScannedEntity scannedEntity;
        XMLResourceIdentifier xMLResourceIdentifier2;
        XMLInputSource xMLInputSource = null;
        if (xMLResourceIdentifier == null) {
            return null;
        }
        String publicId = xMLResourceIdentifier.getPublicId();
        String literalSystemId = xMLResourceIdentifier.getLiteralSystemId();
        String baseSystemId = xMLResourceIdentifier.getBaseSystemId();
        String expandedSystemId = xMLResourceIdentifier.getExpandedSystemId();
        xMLResourceIdentifier.getNamespace();
        if ((baseSystemId != null || (scannedEntity = this.fCurrentEntity) == null || (xMLResourceIdentifier2 = scannedEntity.entityLocation) == null || (baseSystemId = xMLResourceIdentifier2.getExpandedSystemId()) == null) ? expandedSystemId == null : true) {
            expandedSystemId = expandSystemId(literalSystemId, baseSystemId, false);
        }
        if (this.fEntityResolver != null) {
            xMLResourceIdentifier.setBaseSystemId(baseSystemId);
            xMLResourceIdentifier.setExpandedSystemId(expandedSystemId);
            xMLInputSource = this.fEntityResolver.resolveEntity(xMLResourceIdentifier);
        }
        return xMLInputSource == null ? new XMLInputSource(publicId, literalSystemId, baseSystemId) : xMLInputSource;
    }

    public StaxXMLInputSource resolveEntityAsPerStax(XMLResourceIdentifier xMLResourceIdentifier) throws IOException {
        XMLResourceIdentifierImpl xMLResourceIdentifierImpl;
        Entity.ScannedEntity scannedEntity;
        XMLResourceIdentifier xMLResourceIdentifier2;
        if (xMLResourceIdentifier == null) {
            return null;
        }
        String publicId = xMLResourceIdentifier.getPublicId();
        String literalSystemId = xMLResourceIdentifier.getLiteralSystemId();
        String baseSystemId = xMLResourceIdentifier.getBaseSystemId();
        String expandedSystemId = xMLResourceIdentifier.getExpandedSystemId();
        if ((baseSystemId != null || (scannedEntity = this.fCurrentEntity) == null || (xMLResourceIdentifier2 = scannedEntity.entityLocation) == null || (baseSystemId = xMLResourceIdentifier2.getExpandedSystemId()) == null) ? expandedSystemId == null : true) {
            expandedSystemId = expandSystemId(literalSystemId, baseSystemId, false);
        }
        if (xMLResourceIdentifier instanceof XMLResourceIdentifierImpl) {
            xMLResourceIdentifierImpl = (XMLResourceIdentifierImpl) xMLResourceIdentifier;
        } else {
            this.fResourceIdentifier.clear();
            xMLResourceIdentifierImpl = this.fResourceIdentifier;
        }
        xMLResourceIdentifierImpl.setValues(publicId, literalSystemId, baseSystemId, expandedSystemId);
        StaxEntityResolverWrapper staxEntityResolverWrapper = this.fStaxEntityResolver;
        StaxXMLInputSource resolveEntity = staxEntityResolverWrapper != null ? staxEntityResolverWrapper.resolveEntity(xMLResourceIdentifierImpl) : null;
        XMLEntityResolver xMLEntityResolver = this.fEntityResolver;
        XMLInputSource resolveEntity2 = xMLEntityResolver != null ? xMLEntityResolver.resolveEntity(xMLResourceIdentifierImpl) : null;
        if (resolveEntity2 != null) {
            resolveEntity = new StaxXMLInputSource(resolveEntity2);
        }
        if (resolveEntity == null) {
            return new StaxXMLInputSource(new XMLInputSource(publicId, literalSystemId, baseSystemId));
        }
        resolveEntity.hasXMLStreamOrXMLEventReader();
        return resolveEntity;
    }

    public void setEntityHandler(XMLEntityHandler xMLEntityHandler) {
        this.fEntityHandler = xMLEntityHandler;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLComponent
    public void setFeature(String str, boolean z) throws XMLConfigurationException {
        if (str.startsWith("http://apache.org/xml/features/") && str.length() - 31 == 20 && str.endsWith("allow-java-encodings")) {
            this.fAllowJavaEncodings = z;
        }
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLComponent
    public void setProperty(String str, Object obj) {
        Integer num;
        if (str.startsWith("http://apache.org/xml/properties/")) {
            int length = str.length() - 33;
            if (length == 21 && str.endsWith("internal/symbol-table")) {
                this.fSymbolTable = (SymbolTable) obj;
                return;
            }
            if (length == 23 && str.endsWith("internal/error-reporter")) {
                this.fErrorReporter = (XMLErrorReporter) obj;
                return;
            }
            if (length == 24 && str.endsWith("internal/entity-resolver")) {
                this.fEntityResolver = (XMLEntityResolver) obj;
                return;
            }
            if (length == 17 && str.endsWith("input-buffer-size") && (num = (Integer) obj) != null && num.intValue() > 64) {
                int intValue = num.intValue();
                this.fBufferSize = intValue;
                this.fEntityScanner.setBufferSize(intValue);
                this.fBufferPool.setExternalBufferSize(this.fBufferSize);
            }
            if (length == 16 && str.endsWith("security-manager")) {
                SecurityManager securityManager = (SecurityManager) obj;
                this.fSecurityManager = securityManager;
                this.fEntityExpansionLimit = securityManager != null ? securityManager.getEntityExpansionLimit() : 0;
            }
        }
    }

    public void setScannerVersion(short s) {
        if (s == 1) {
            if (this.fXML10EntityScanner == null) {
                this.fXML10EntityScanner = new XMLEntityScanner();
            }
            this.fXML10EntityScanner.reset(this.fSymbolTable, this, this.fErrorReporter);
            XMLEntityScanner xMLEntityScanner = this.fXML10EntityScanner;
            this.fEntityScanner = xMLEntityScanner;
            xMLEntityScanner.setCurrentEntity(this.fCurrentEntity);
            return;
        }
        if (this.fXML11EntityScanner == null) {
            this.fXML11EntityScanner = new XML11EntityScanner();
        }
        this.fXML11EntityScanner.reset(this.fSymbolTable, this, this.fErrorReporter);
        XMLEntityScanner xMLEntityScanner2 = this.fXML11EntityScanner;
        this.fEntityScanner = xMLEntityScanner2;
        xMLEntityScanner2.setCurrentEntity(this.fCurrentEntity);
    }

    public void setStandalone(boolean z) {
        this.fStandalone = z;
    }

    public String setupCurrentEntity(String str, XMLInputSource xMLInputSource, boolean z, boolean z2) throws IOException, XNIException {
        Reader reader;
        String str2;
        RewindableInputStream rewindableInputStream;
        int i;
        int i2;
        Boolean bool;
        int i3;
        int i4;
        Boolean bool2;
        Boolean bool3;
        Reader createReader;
        boolean z3;
        String publicId = xMLInputSource.getPublicId();
        String systemId = xMLInputSource.getSystemId();
        String baseSystemId = xMLInputSource.getBaseSystemId();
        String encoding = xMLInputSource.getEncoding();
        boolean z4 = encoding != null;
        Reader characterStream = xMLInputSource.getCharacterStream();
        String expandSystemId = expandSystemId(systemId, baseSystemId, this.fStrictURI);
        if (baseSystemId == null) {
            baseSystemId = expandSystemId;
        }
        if (characterStream == null) {
            InputStream byteStream = xMLInputSource.getByteStream();
            if (byteStream == null) {
                URLConnection openConnection = new URL(expandSystemId).openConnection();
                if (openConnection instanceof HttpURLConnection) {
                    if (xMLInputSource instanceof HTTPInputSource) {
                        HttpURLConnection httpURLConnection = (HttpURLConnection) openConnection;
                        HTTPInputSource hTTPInputSource = (HTTPInputSource) xMLInputSource;
                        Iterator hTTPRequestProperties = hTTPInputSource.getHTTPRequestProperties();
                        while (hTTPRequestProperties.hasNext()) {
                            Map.Entry entry = (Map.Entry) hTTPRequestProperties.next();
                            httpURLConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
                        }
                        z3 = hTTPInputSource.getFollowHTTPRedirects();
                        if (!z3) {
                            setInstanceFollowRedirects(httpURLConnection, z3);
                        }
                    } else {
                        z3 = true;
                    }
                    InputStream inputStream = openConnection.getInputStream();
                    if (z3) {
                        String url = openConnection.getURL().toString();
                        if (!url.equals(expandSystemId)) {
                            systemId = url;
                            expandSystemId = systemId;
                        }
                    }
                    byteStream = inputStream;
                } else {
                    byteStream = openConnection.getInputStream();
                }
            }
            RewindableInputStream rewindableInputStream2 = new RewindableInputStream(byteStream);
            if (encoding == null) {
                byte[] bArr = new byte[4];
                int i5 = 0;
                while (i5 < 4) {
                    bArr[i5] = (byte) rewindableInputStream2.read();
                    i5++;
                }
                if (i5 == 4) {
                    Object[] encodingName = getEncodingName(bArr, i5);
                    String str3 = (String) encodingName[0];
                    Boolean bool4 = (Boolean) encodingName[1];
                    rewindableInputStream2.reset();
                    if (i5 > 2 && str3.equals("UTF-8")) {
                        int i6 = bArr[0] & 255;
                        int i7 = bArr[1] & 255;
                        int i8 = bArr[2] & 255;
                        if (i6 == 239 && i7 == 187 && i8 == 191) {
                            rewindableInputStream2.skip(3L);
                        }
                    }
                    createReader = createReader(rewindableInputStream2, str3, bool4);
                    encoding = str3;
                } else {
                    createReader = createReader(rewindableInputStream2, encoding, null);
                }
            } else {
                encoding = encoding.toUpperCase(Locale.ENGLISH);
                if (encoding.equals("UTF-8")) {
                    int[] iArr = new int[3];
                    int i9 = 0;
                    while (i9 < 3) {
                        int read = rewindableInputStream2.read();
                        iArr[i9] = read;
                        if (read == -1) {
                            break;
                        }
                        i9++;
                    }
                    if (i9 != 3) {
                        rewindableInputStream2.reset();
                    } else if (iArr[0] != 239 || iArr[1] != 187 || iArr[2] != 191) {
                        rewindableInputStream2.reset();
                    }
                } else {
                    String str4 = "UTF-16";
                    if (encoding.equals("UTF-16")) {
                        int[] iArr2 = new int[4];
                        int i10 = 0;
                        for (int i11 = 4; i10 < i11; i11 = 4) {
                            int read2 = rewindableInputStream2.read();
                            iArr2[i10] = read2;
                            if (read2 == -1) {
                                break;
                            }
                            i10++;
                        }
                        rewindableInputStream2.reset();
                        if (i10 >= 2) {
                            int i12 = iArr2[0];
                            int i13 = iArr2[1];
                            String str5 = "UTF-16BE";
                            if (i12 == 254 && i13 == 255) {
                                bool = Boolean.TRUE;
                            } else {
                                if (i12 == 255 && i13 == 254) {
                                    bool3 = Boolean.FALSE;
                                } else if (i10 == 4) {
                                    int i14 = iArr2[2];
                                    int i15 = iArr2[3];
                                    if (i12 == 0 && i13 == 60 && i14 == 0) {
                                        i4 = 63;
                                        if (i15 == 63) {
                                            bool2 = Boolean.TRUE;
                                            if (i12 != 60 && i13 == 0 && i14 == i4 && i15 == 0) {
                                                bool3 = Boolean.FALSE;
                                            } else {
                                                bool = bool2;
                                            }
                                        }
                                    } else {
                                        i4 = 63;
                                    }
                                    str5 = "UTF-16";
                                    bool2 = null;
                                    if (i12 != 60) {
                                    }
                                    bool = bool2;
                                }
                                bool = bool3;
                                str4 = "UTF-16LE";
                                createReader(rewindableInputStream2, str4, bool);
                            }
                            str4 = str5;
                            createReader(rewindableInputStream2, str4, bool);
                        }
                        bool = null;
                        createReader(rewindableInputStream2, str4, bool);
                    } else if (encoding.equals("ISO-10646-UCS-4")) {
                        int[] iArr3 = new int[4];
                        int i16 = 0;
                        while (i16 < 4) {
                            int read3 = rewindableInputStream2.read();
                            iArr3[i16] = read3;
                            if (read3 == -1) {
                                break;
                            }
                            i16++;
                        }
                        rewindableInputStream2.reset();
                        if (i16 == 4) {
                            int i17 = iArr3[0];
                            if (i17 == 0 && iArr3[1] == 0 && iArr3[2] == 0) {
                                i3 = 60;
                                if (iArr3[3] == 60) {
                                    bool = Boolean.TRUE;
                                }
                            } else {
                                i3 = 60;
                            }
                            if (i17 == i3 && iArr3[1] == 0 && iArr3[2] == 0 && iArr3[3] == 0) {
                                bool = Boolean.FALSE;
                            }
                        }
                    } else if (encoding.equals("ISO-10646-UCS-2")) {
                        int[] iArr4 = new int[4];
                        int i18 = 0;
                        while (i18 < 4) {
                            int read4 = rewindableInputStream2.read();
                            iArr4[i18] = read4;
                            if (read4 == -1) {
                                break;
                            }
                            i18++;
                        }
                        rewindableInputStream2.reset();
                        if (i18 == 4) {
                            int i19 = iArr4[0];
                            if (i19 == 0) {
                                i2 = 60;
                                if (iArr4[1] == 60 && iArr4[2] == 0) {
                                    i = 63;
                                    if (iArr4[3] == 63) {
                                        bool = Boolean.TRUE;
                                    }
                                } else {
                                    i = 63;
                                }
                            } else {
                                i = 63;
                                i2 = 60;
                            }
                            if (i19 == i2 && iArr4[1] == 0 && iArr4[2] == i && iArr4[3] == 0) {
                                bool = Boolean.FALSE;
                            }
                        }
                    }
                    createReader = createReader(rewindableInputStream2, encoding, bool);
                }
                bool = null;
                createReader = createReader(rewindableInputStream2, encoding, bool);
            }
            rewindableInputStream = rewindableInputStream2;
            reader = createReader;
            str2 = expandSystemId;
        } else {
            reader = characterStream;
            str2 = expandSystemId;
            rewindableInputStream = null;
        }
        Entity.ScannedEntity scannedEntity = this.fCurrentEntity;
        if (scannedEntity != null) {
            this.fEntityStack.push(scannedEntity);
        }
        boolean z5 = z4;
        Entity.ScannedEntity scannedEntity2 = new Entity.ScannedEntity(str, new XMLResourceIdentifierImpl(publicId, systemId, baseSystemId, str2), rewindableInputStream, reader, encoding, z, z5, z2);
        this.fCurrentEntity = scannedEntity2;
        scannedEntity2.setEncodingExternallySpecified(z5);
        this.fEntityScanner.setCurrentEntity(this.fCurrentEntity);
        this.fResourceIdentifier.setValues(publicId, systemId, baseSystemId, str2);
        return encoding;
    }

    public void startDTDEntity(XMLInputSource xMLInputSource) throws IOException, XNIException {
        startEntity(DTDEntity, xMLInputSource, false, true);
    }

    public void startDocumentEntity(XMLInputSource xMLInputSource) throws IOException, XNIException {
        startEntity(XMLEntity, xMLInputSource, false, true);
    }

    public void startEntity(String str, boolean z) throws IOException, XNIException {
        XMLInputSource xMLInputSource;
        Entity entity = (Entity) this.fEntityStorage.getDeclaredEntities().get(str);
        if (entity == null) {
            if (this.fEntityHandler != null) {
                this.fResourceIdentifier.clear();
                this.fEntityAugs.removeAllItems();
                Augmentations augmentations = this.fEntityAugs;
                Boolean bool = Boolean.TRUE;
                augmentations.putItem("ENTITY_SKIPPED", bool);
                this.fEntityHandler.startEntity(str, this.fResourceIdentifier, null, this.fEntityAugs);
                this.fEntityAugs.removeAllItems();
                this.fEntityAugs.putItem("ENTITY_SKIPPED", bool);
                this.fEntityHandler.endEntity(str, this.fEntityAugs);
                return;
            }
            return;
        }
        boolean isExternal = entity.isExternal();
        if (isExternal) {
            boolean isUnparsed = entity.isUnparsed();
            boolean startsWith = str.startsWith("%");
            boolean z2 = !startsWith;
            this.fExternalGeneralEntities = isExternal;
            if (isUnparsed || ((z2 && !isExternal) || (startsWith && !this.fExternalParameterEntities))) {
                if (this.fEntityHandler != null) {
                    this.fResourceIdentifier.clear();
                    Entity.ExternalEntity externalEntity = (Entity.ExternalEntity) entity;
                    XMLResourceIdentifier xMLResourceIdentifier = externalEntity.entityLocation;
                    String literalSystemId = xMLResourceIdentifier != null ? xMLResourceIdentifier.getLiteralSystemId() : null;
                    XMLResourceIdentifier xMLResourceIdentifier2 = externalEntity.entityLocation;
                    String baseSystemId = xMLResourceIdentifier2 != null ? xMLResourceIdentifier2.getBaseSystemId() : null;
                    String expandSystemId = expandSystemId(literalSystemId, baseSystemId);
                    XMLResourceIdentifierImpl xMLResourceIdentifierImpl = this.fResourceIdentifier;
                    XMLResourceIdentifier xMLResourceIdentifier3 = externalEntity.entityLocation;
                    xMLResourceIdentifierImpl.setValues(xMLResourceIdentifier3 != null ? xMLResourceIdentifier3.getPublicId() : null, literalSystemId, baseSystemId, expandSystemId);
                    this.fEntityAugs.removeAllItems();
                    Augmentations augmentations2 = this.fEntityAugs;
                    Boolean bool2 = Boolean.TRUE;
                    augmentations2.putItem("ENTITY_SKIPPED", bool2);
                    this.fEntityHandler.startEntity(str, this.fResourceIdentifier, null, this.fEntityAugs);
                    this.fEntityAugs.removeAllItems();
                    this.fEntityAugs.putItem("ENTITY_SKIPPED", bool2);
                    this.fEntityHandler.endEntity(str, this.fEntityAugs);
                    return;
                }
                return;
            }
        }
        int size = this.fEntityStack.size();
        int i = size;
        while (i >= 0) {
            if ((i == size ? this.fCurrentEntity : (Entity) this.fEntityStack.elementAt(i)).name == str) {
                String str2 = str;
                for (int i2 = i + 1; i2 < size; i2++) {
                    str2 = str2 + AlphabetConverter.f109940d + ((Entity) this.fEntityStack.elementAt(i2)).name;
                }
                this.fErrorReporter.reportError(getEntityScanner(), "http://www.w3.org/TR/1998/REC-xml-19980210", "RecursiveReference", new Object[]{str, (str2 + AlphabetConverter.f109940d + this.fCurrentEntity.name) + AlphabetConverter.f109940d + str}, (short) 2);
                if (this.fEntityHandler != null) {
                    this.fResourceIdentifier.clear();
                    if (isExternal) {
                        Entity.ExternalEntity externalEntity2 = (Entity.ExternalEntity) entity;
                        XMLResourceIdentifier xMLResourceIdentifier4 = externalEntity2.entityLocation;
                        String literalSystemId2 = xMLResourceIdentifier4 != null ? xMLResourceIdentifier4.getLiteralSystemId() : null;
                        XMLResourceIdentifier xMLResourceIdentifier5 = externalEntity2.entityLocation;
                        String baseSystemId2 = xMLResourceIdentifier5 != null ? xMLResourceIdentifier5.getBaseSystemId() : null;
                        String expandSystemId2 = expandSystemId(literalSystemId2, baseSystemId2);
                        XMLResourceIdentifierImpl xMLResourceIdentifierImpl2 = this.fResourceIdentifier;
                        XMLResourceIdentifier xMLResourceIdentifier6 = externalEntity2.entityLocation;
                        xMLResourceIdentifierImpl2.setValues(xMLResourceIdentifier6 != null ? xMLResourceIdentifier6.getPublicId() : null, literalSystemId2, baseSystemId2, expandSystemId2);
                    }
                    this.fEntityAugs.removeAllItems();
                    Augmentations augmentations3 = this.fEntityAugs;
                    Boolean bool3 = Boolean.TRUE;
                    augmentations3.putItem("ENTITY_SKIPPED", bool3);
                    this.fEntityHandler.startEntity(str, this.fResourceIdentifier, null, this.fEntityAugs);
                    this.fEntityAugs.removeAllItems();
                    this.fEntityAugs.putItem("ENTITY_SKIPPED", bool3);
                    this.fEntityHandler.endEntity(str, this.fEntityAugs);
                    return;
                }
                return;
            }
            i--;
        }
        if (isExternal) {
            xMLInputSource = resolveEntityAsPerStax(((Entity.ExternalEntity) entity).entityLocation).getXMLInputSource();
        } else {
            xMLInputSource = new XMLInputSource((String) null, (String) null, (String) null, new StringReader(((Entity.InternalEntity) entity).text), (String) null);
        }
        startEntity(str, xMLInputSource, z, isExternal);
    }

    public void startExternalSubset() {
        this.fInExternalSubset = true;
    }

    public void test() {
        this.fEntityStorage.addExternalEntity("entityUsecase1", null, "/space/home/stax/sun/6thJan2004/zephyr/data/test.txt", "/space/home/stax/sun/6thJan2004/zephyr/data/entity.xml");
        this.fEntityStorage.addInternalEntity("entityUsecase2", "<Test>value</Test>");
        this.fEntityStorage.addInternalEntity("entityUsecase3", "value3");
        this.fEntityStorage.addInternalEntity("text", "Hello World.");
        this.fEntityStorage.addInternalEntity("empty-element", "<foo/>");
        this.fEntityStorage.addInternalEntity("balanced-element", "<foo></foo>");
        this.fEntityStorage.addInternalEntity("balanced-element-with-text", "<foo>Hello, World</foo>");
        this.fEntityStorage.addInternalEntity("balanced-element-with-entity", "<foo>&text;</foo>");
        this.fEntityStorage.addInternalEntity("unbalanced-entity", "<foo>");
        this.fEntityStorage.addInternalEntity("recursive-entity", "<foo>&recursive-entity2;</foo>");
        this.fEntityStorage.addInternalEntity("recursive-entity2", "<bar>&recursive-entity3;</bar>");
        this.fEntityStorage.addInternalEntity("recursive-entity3", "<baz>&recursive-entity;</baz>");
        this.fEntityStorage.addInternalEntity("ch", "&#x00A9;");
        this.fEntityStorage.addInternalEntity("ch1", "&#84;");
        this.fEntityStorage.addInternalEntity("% ch2", com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_PARAMVARIABLE_STRING);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x008d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x008e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String expandSystemId(java.lang.String r9, java.lang.String r10) {
        /*
            if (r9 == 0) goto L92
            int r0 = r9.length()
            if (r0 != 0) goto La
            goto L92
        La:
            com.sun.org.apache.xerces.internal.util.URI r0 = new com.sun.org.apache.xerces.internal.util.URI     // Catch: com.sun.org.apache.xerces.internal.util.URI.MalformedURIException -> L10
            r0.<init>(r9)     // Catch: com.sun.org.apache.xerces.internal.util.URI.MalformedURIException -> L10
            return r9
        L10:
            java.lang.String r0 = fixURI(r9)
            if (r10 == 0) goto L6f
            int r1 = r10.length()     // Catch: java.lang.Exception -> L8a
            if (r1 == 0) goto L6f
            boolean r1 = r10.equals(r9)     // Catch: java.lang.Exception -> L8a
            if (r1 == 0) goto L23
            goto L6f
        L23:
            com.sun.org.apache.xerces.internal.util.URI r1 = new com.sun.org.apache.xerces.internal.util.URI     // Catch: com.sun.org.apache.xerces.internal.util.URI.MalformedURIException -> L2d java.lang.Exception -> L8a
            java.lang.String r2 = fixURI(r10)     // Catch: com.sun.org.apache.xerces.internal.util.URI.MalformedURIException -> L2d java.lang.Exception -> L8a
            r1.<init>(r2)     // Catch: com.sun.org.apache.xerces.internal.util.URI.MalformedURIException -> L2d java.lang.Exception -> L8a
            goto L84
        L2d:
            r1 = 58
            int r1 = r10.indexOf(r1)     // Catch: java.lang.Exception -> L8a
            r2 = -1
            if (r1 == r2) goto L47
            com.sun.org.apache.xerces.internal.util.URI r1 = new com.sun.org.apache.xerces.internal.util.URI     // Catch: java.lang.Exception -> L8a
            java.lang.String r4 = "file"
            java.lang.String r5 = ""
            java.lang.String r6 = fixURI(r10)     // Catch: java.lang.Exception -> L8a
            r7 = 0
            r8 = 0
            r3 = r1
            r3.<init>(r4, r5, r6, r7, r8)     // Catch: java.lang.Exception -> L8a
            goto L84
        L47:
            com.sun.org.apache.xerces.internal.util.URI r1 = getUserDir()     // Catch: java.lang.Exception -> L8a
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Exception -> L8a
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L8a
            r2.<init>()     // Catch: java.lang.Exception -> L8a
            r2.append(r1)     // Catch: java.lang.Exception -> L8a
            java.lang.String r10 = fixURI(r10)     // Catch: java.lang.Exception -> L8a
            r2.append(r10)     // Catch: java.lang.Exception -> L8a
            java.lang.String r6 = r2.toString()     // Catch: java.lang.Exception -> L8a
            com.sun.org.apache.xerces.internal.util.URI r1 = new com.sun.org.apache.xerces.internal.util.URI     // Catch: java.lang.Exception -> L8a
            java.lang.String r4 = "file"
            java.lang.String r5 = ""
            r7 = 0
            r8 = 0
            r3 = r1
            r3.<init>(r4, r5, r6, r7, r8)     // Catch: java.lang.Exception -> L8a
            goto L84
        L6f:
            com.sun.org.apache.xerces.internal.util.URI r10 = getUserDir()     // Catch: java.lang.Exception -> L8a
            java.lang.String r4 = r10.toString()     // Catch: java.lang.Exception -> L8a
            com.sun.org.apache.xerces.internal.util.URI r10 = new com.sun.org.apache.xerces.internal.util.URI     // Catch: java.lang.Exception -> L8a
            java.lang.String r2 = "file"
            java.lang.String r3 = ""
            r5 = 0
            r6 = 0
            r1 = r10
            r1.<init>(r2, r3, r4, r5, r6)     // Catch: java.lang.Exception -> L8a
            r1 = r10
        L84:
            com.sun.org.apache.xerces.internal.util.URI r10 = new com.sun.org.apache.xerces.internal.util.URI     // Catch: java.lang.Exception -> L8a
            r10.<init>(r1, r0)     // Catch: java.lang.Exception -> L8a
            goto L8b
        L8a:
            r10 = 0
        L8b:
            if (r10 != 0) goto L8e
            return r9
        L8e:
            java.lang.String r9 = r10.toString()
        L92:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xerces.internal.impl.XMLEntityManager.expandSystemId(java.lang.String, java.lang.String):java.lang.String");
    }

    /* loaded from: classes10.dex */
    public final class RewindableInputStream extends InputStream {
        private InputStream fInputStream;
        private byte[] fData = new byte[64];
        private int fStartOffset = 0;
        private int fEndOffset = -1;
        private int fOffset = 0;
        private int fLength = 0;
        private int fMark = 0;

        public RewindableInputStream(InputStream inputStream) {
            this.fInputStream = inputStream;
        }

        @Override // java.io.InputStream
        public int available() throws IOException {
            int i = this.fLength;
            int i2 = this.fOffset;
            int i3 = i - i2;
            if (i3 != 0) {
                return i3;
            }
            if (i2 == this.fEndOffset) {
                return -1;
            }
            if (XMLEntityManager.this.fCurrentEntity.mayReadChunks) {
                return this.fInputStream.available();
            }
            return 0;
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            InputStream inputStream = this.fInputStream;
            if (inputStream != null) {
                inputStream.close();
                this.fInputStream = null;
            }
        }

        @Override // java.io.InputStream
        public void mark(int i) {
            this.fMark = this.fOffset;
        }

        @Override // java.io.InputStream
        public boolean markSupported() {
            return true;
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            int i = this.fOffset;
            if (i < this.fLength) {
                byte[] bArr = this.fData;
                this.fOffset = i + 1;
                return bArr[i] & 255;
            }
            if (i == this.fEndOffset) {
                return -1;
            }
            byte[] bArr2 = this.fData;
            if (i == bArr2.length) {
                byte[] bArr3 = new byte[i << 1];
                System.arraycopy(bArr2, 0, bArr3, 0, i);
                this.fData = bArr3;
            }
            int read = this.fInputStream.read();
            if (read == -1) {
                this.fEndOffset = this.fOffset;
                return -1;
            }
            byte[] bArr4 = this.fData;
            int i2 = this.fLength;
            this.fLength = i2 + 1;
            bArr4[i2] = (byte) read;
            this.fOffset++;
            return read & 255;
        }

        @Override // java.io.InputStream
        public void reset() {
            this.fOffset = this.fMark;
        }

        public void rewind() {
            this.fOffset = this.fStartOffset;
        }

        public void setStartOffset(int i) {
            this.fStartOffset = i;
        }

        @Override // java.io.InputStream
        public long skip(long j) throws IOException {
            if (j <= 0) {
                return 0L;
            }
            int i = this.fLength;
            int i2 = this.fOffset;
            int i3 = i - i2;
            if (i3 == 0) {
                if (i2 == this.fEndOffset) {
                    return 0L;
                }
                return this.fInputStream.skip(j);
            }
            long j2 = i3;
            if (j <= j2) {
                this.fOffset = (int) (i2 + j);
                return j;
            }
            int i4 = i2 + i3;
            this.fOffset = i4;
            if (i4 == this.fEndOffset) {
                return j2;
            }
            return this.fInputStream.skip(j - j2) + j2;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i, int i2) throws IOException {
            int i3 = this.fLength;
            int i4 = this.fOffset;
            int i5 = i3 - i4;
            if (i5 == 0) {
                if (i4 == this.fEndOffset) {
                    return -1;
                }
                Entity.ScannedEntity scannedEntity = XMLEntityManager.this.fCurrentEntity;
                if (!scannedEntity.mayReadChunks && scannedEntity.xmlDeclChunkRead) {
                    int read = read();
                    if (read == -1) {
                        this.fEndOffset = this.fOffset;
                        return -1;
                    }
                    bArr[i] = (byte) read;
                    return 1;
                }
                if (!scannedEntity.xmlDeclChunkRead) {
                    scannedEntity.xmlDeclChunkRead = true;
                    i2 = 28;
                }
                return this.fInputStream.read(bArr, i, i2);
            }
            if (i2 >= i5) {
                i2 = i5;
            } else if (i2 <= 0) {
                return 0;
            }
            if (bArr != null) {
                System.arraycopy(this.fData, i4, bArr, i, i2);
            }
            this.fOffset += i2;
            return i2;
        }
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLComponent
    public void reset(XMLComponentManager xMLComponentManager) throws XMLConfigurationException {
        boolean z;
        try {
            z = xMLComponentManager.getFeature("http://apache.org/xml/features/internal/parser-settings");
        } catch (XMLConfigurationException unused) {
            z = true;
        }
        if (!z) {
            reset();
            XMLEntityScanner xMLEntityScanner = this.fEntityScanner;
            if (xMLEntityScanner != null) {
                xMLEntityScanner.reset(xMLComponentManager);
            }
            XMLEntityStorage xMLEntityStorage = this.fEntityStorage;
            if (xMLEntityStorage != null) {
                xMLEntityStorage.reset(xMLComponentManager);
                return;
            }
            return;
        }
        try {
            this.fValidation = xMLComponentManager.getFeature("http://xml.org/sax/features/validation");
        } catch (XMLConfigurationException unused2) {
            this.fValidation = false;
        }
        try {
            this.fExternalGeneralEntities = xMLComponentManager.getFeature("http://xml.org/sax/features/external-general-entities");
        } catch (XMLConfigurationException unused3) {
            this.fExternalGeneralEntities = true;
        }
        try {
            this.fExternalParameterEntities = xMLComponentManager.getFeature("http://xml.org/sax/features/external-parameter-entities");
        } catch (XMLConfigurationException unused4) {
            this.fExternalParameterEntities = true;
        }
        try {
            this.fAllowJavaEncodings = xMLComponentManager.getFeature(ALLOW_JAVA_ENCODINGS);
        } catch (XMLConfigurationException unused5) {
            this.fAllowJavaEncodings = false;
        }
        try {
            this.fWarnDuplicateEntityDef = xMLComponentManager.getFeature(WARN_ON_DUPLICATE_ENTITYDEF);
        } catch (XMLConfigurationException unused6) {
            this.fWarnDuplicateEntityDef = false;
        }
        try {
            this.fStrictURI = xMLComponentManager.getFeature(STANDARD_URI_CONFORMANT);
        } catch (XMLConfigurationException unused7) {
            this.fStrictURI = false;
        }
        this.fSymbolTable = (SymbolTable) xMLComponentManager.getProperty("http://apache.org/xml/properties/internal/symbol-table");
        this.fErrorReporter = (XMLErrorReporter) xMLComponentManager.getProperty("http://apache.org/xml/properties/internal/error-reporter");
        try {
            this.fEntityResolver = (XMLEntityResolver) xMLComponentManager.getProperty("http://apache.org/xml/properties/internal/entity-resolver");
        } catch (XMLConfigurationException unused8) {
            this.fEntityResolver = null;
        }
        try {
            this.fStaxEntityResolver = (StaxEntityResolverWrapper) xMLComponentManager.getProperty(STAX_ENTITY_RESOLVER);
        } catch (XMLConfigurationException unused9) {
            this.fStaxEntityResolver = null;
        }
        try {
            this.fValidationManager = (ValidationManager) xMLComponentManager.getProperty("http://apache.org/xml/properties/internal/validation-manager");
        } catch (XMLConfigurationException unused10) {
            this.fValidationManager = null;
        }
        try {
            this.fSecurityManager = (SecurityManager) xMLComponentManager.getProperty("http://apache.org/xml/properties/security-manager");
        } catch (XMLConfigurationException unused11) {
            this.fSecurityManager = null;
        }
        reset();
        this.fEntityScanner.reset(xMLComponentManager);
        this.fEntityStorage.reset(xMLComponentManager);
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00c6 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00c7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String expandSystemId(java.lang.String r13, java.lang.String r14, boolean r15) throws com.sun.org.apache.xerces.internal.util.URI.MalformedURIException {
        /*
            r0 = 0
            if (r13 != 0) goto L4
            return r0
        L4:
            if (r15 == 0) goto L5d
            com.sun.org.apache.xerces.internal.util.URI r15 = new com.sun.org.apache.xerces.internal.util.URI     // Catch: com.sun.org.apache.xerces.internal.util.URI.MalformedURIException -> Lc
            r15.<init>(r13)     // Catch: com.sun.org.apache.xerces.internal.util.URI.MalformedURIException -> Lc
            return r13
        Lc:
            if (r14 == 0) goto L3f
            int r15 = r14.length()
            if (r15 != 0) goto L15
            goto L3f
        L15:
            com.sun.org.apache.xerces.internal.util.URI r15 = new com.sun.org.apache.xerces.internal.util.URI     // Catch: com.sun.org.apache.xerces.internal.util.URI.MalformedURIException -> L1b
            r15.<init>(r14)     // Catch: com.sun.org.apache.xerces.internal.util.URI.MalformedURIException -> L1b
            goto L53
        L1b:
            com.sun.org.apache.xerces.internal.util.URI r15 = getUserDir()
            java.lang.String r15 = r15.toString()
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            r0.append(r15)
            r0.append(r14)
            java.lang.String r4 = r0.toString()
            com.sun.org.apache.xerces.internal.util.URI r15 = new com.sun.org.apache.xerces.internal.util.URI
            java.lang.String r2 = "file"
            java.lang.String r3 = ""
            r5 = 0
            r6 = 0
            r1 = r15
            r1.<init>(r2, r3, r4, r5, r6)
            goto L53
        L3f:
            com.sun.org.apache.xerces.internal.util.URI r15 = new com.sun.org.apache.xerces.internal.util.URI
            java.lang.String r8 = "file"
            java.lang.String r9 = ""
            com.sun.org.apache.xerces.internal.util.URI r14 = getUserDir()
            java.lang.String r10 = r14.toString()
            r11 = 0
            r12 = 0
            r7 = r15
            r7.<init>(r8, r9, r10, r11, r12)
        L53:
            com.sun.org.apache.xerces.internal.util.URI r14 = new com.sun.org.apache.xerces.internal.util.URI
            r14.<init>(r15, r13)
            java.lang.String r13 = r14.toString()
            return r13
        L5d:
            java.lang.String r13 = expandSystemIdStrictOff(r13, r14)     // Catch: com.sun.org.apache.xerces.internal.util.URI.MalformedURIException -> L62
            return r13
        L62:
            int r15 = r13.length()
            if (r15 != 0) goto L69
            return r13
        L69:
            java.lang.String r15 = fixURI(r13)
            if (r14 == 0) goto Lb6
            int r1 = r14.length()     // Catch: java.lang.Exception -> Lc4
            if (r1 == 0) goto Lb6
            boolean r1 = r14.equals(r13)     // Catch: java.lang.Exception -> Lc4
            if (r1 == 0) goto L7c
            goto Lb6
        L7c:
            com.sun.org.apache.xerces.internal.util.URI r1 = new com.sun.org.apache.xerces.internal.util.URI     // Catch: com.sun.org.apache.xerces.internal.util.URI.MalformedURIException -> L8a java.lang.Exception -> Lc4
            java.lang.String r2 = fixURI(r14)     // Catch: com.sun.org.apache.xerces.internal.util.URI.MalformedURIException -> L8a java.lang.Exception -> Lc4
            java.lang.String r2 = r2.trim()     // Catch: com.sun.org.apache.xerces.internal.util.URI.MalformedURIException -> L8a java.lang.Exception -> Lc4
            r1.<init>(r2)     // Catch: com.sun.org.apache.xerces.internal.util.URI.MalformedURIException -> L8a java.lang.Exception -> Lc4
            goto Lba
        L8a:
            r1 = 58
            int r1 = r14.indexOf(r1)     // Catch: java.lang.Exception -> Lc4
            r2 = -1
            if (r1 == r2) goto La8
            com.sun.org.apache.xerces.internal.util.URI r1 = new com.sun.org.apache.xerces.internal.util.URI     // Catch: java.lang.Exception -> Lc4
            java.lang.String r4 = "file"
            java.lang.String r5 = ""
            java.lang.String r14 = fixURI(r14)     // Catch: java.lang.Exception -> Lc4
            java.lang.String r6 = r14.trim()     // Catch: java.lang.Exception -> Lc4
            r7 = 0
            r8 = 0
            r3 = r1
            r3.<init>(r4, r5, r6, r7, r8)     // Catch: java.lang.Exception -> Lc4
            goto Lba
        La8:
            com.sun.org.apache.xerces.internal.util.URI r1 = new com.sun.org.apache.xerces.internal.util.URI     // Catch: java.lang.Exception -> Lc4
            com.sun.org.apache.xerces.internal.util.URI r2 = getUserDir()     // Catch: java.lang.Exception -> Lc4
            java.lang.String r14 = fixURI(r14)     // Catch: java.lang.Exception -> Lc4
            r1.<init>(r2, r14)     // Catch: java.lang.Exception -> Lc4
            goto Lba
        Lb6:
            com.sun.org.apache.xerces.internal.util.URI r1 = getUserDir()     // Catch: java.lang.Exception -> Lc4
        Lba:
            com.sun.org.apache.xerces.internal.util.URI r14 = new com.sun.org.apache.xerces.internal.util.URI     // Catch: java.lang.Exception -> Lc4
            java.lang.String r15 = r15.trim()     // Catch: java.lang.Exception -> Lc4
            r14.<init>(r1, r15)     // Catch: java.lang.Exception -> Lc4
            r0 = r14
        Lc4:
            if (r0 != 0) goto Lc7
            return r13
        Lc7:
            java.lang.String r13 = r0.toString()
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xerces.internal.impl.XMLEntityManager.expandSystemId(java.lang.String, java.lang.String, boolean):java.lang.String");
    }

    public XMLEntityManager(PropertyManager propertyManager) {
        this.fAllowJavaEncodings = true;
        this.fBufferSize = 8192;
        this.fSecurityManager = null;
        this.fInExternalSubset = false;
        this.fEntityExpansionLimit = 0;
        this.fEntityExpansionCount = 0;
        this.fEntities = new Hashtable();
        this.fEntityStack = new Stack();
        this.fCurrentEntity = null;
        this.defaultEncoding = new Object[]{"UTF-8", null};
        this.fResourceIdentifier = new XMLResourceIdentifierImpl();
        this.fEntityAugs = new AugmentationsImpl();
        this.fBufferPool = new CharacterBufferPool(this.fBufferSize, 1024);
        this.fOwnReaders = new Vector();
        this.fPropertyManager = propertyManager;
        this.fEntityStorage = new XMLEntityStorage(this);
        this.fEntityScanner = new XMLEntityScanner(propertyManager, this);
        reset(propertyManager);
    }

    public XMLEntityManager(XMLEntityManager xMLEntityManager) {
        this.fAllowJavaEncodings = true;
        this.fBufferSize = 8192;
        this.fSecurityManager = null;
        this.fInExternalSubset = false;
        this.fEntityExpansionLimit = 0;
        this.fEntityExpansionCount = 0;
        this.fEntities = new Hashtable();
        this.fEntityStack = new Stack();
        this.fCurrentEntity = null;
        this.defaultEncoding = new Object[]{"UTF-8", null};
        this.fResourceIdentifier = new XMLResourceIdentifierImpl();
        this.fEntityAugs = new AugmentationsImpl();
        this.fBufferPool = new CharacterBufferPool(this.fBufferSize, 1024);
        this.fOwnReaders = new Vector();
        this.fDeclaredEntities = xMLEntityManager != null ? xMLEntityManager.getEntityStore().getDeclaredEntities() : null;
        setScannerVersion((short) 1);
    }

    public void reset() {
        SecurityManager securityManager = this.fSecurityManager;
        this.fEntityExpansionLimit = securityManager != null ? securityManager.getEntityExpansionLimit() : 0;
        this.fStandalone = false;
        this.fEntities.clear();
        this.fEntityStack.removeAllElements();
        this.fEntityExpansionCount = 0;
        this.fCurrentEntity = null;
        XMLEntityScanner xMLEntityScanner = this.fXML10EntityScanner;
        if (xMLEntityScanner != null) {
            xMLEntityScanner.reset(this.fSymbolTable, this, this.fErrorReporter);
        }
        XMLEntityScanner xMLEntityScanner2 = this.fXML11EntityScanner;
        if (xMLEntityScanner2 != null) {
            xMLEntityScanner2.reset(this.fSymbolTable, this, this.fErrorReporter);
        }
        Hashtable hashtable = this.fDeclaredEntities;
        if (hashtable != null) {
            Enumeration keys = hashtable.keys();
            while (keys.hasMoreElements()) {
                Object nextElement = keys.nextElement();
                this.fEntities.put(nextElement, this.fDeclaredEntities.get(nextElement));
            }
        }
        this.fEntityHandler = null;
    }

    public void startEntity(String str, XMLInputSource xMLInputSource, boolean z, boolean z2) throws IOException, XNIException {
        int i;
        String str2 = setupCurrentEntity(str, xMLInputSource, z, z2);
        int i2 = this.fEntityExpansionCount + 1;
        this.fEntityExpansionCount = i2;
        if (this.fSecurityManager != null && i2 > (i = this.fEntityExpansionLimit)) {
            this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "EntityExpansionLimitExceeded", new Object[]{new Integer(i)}, (short) 2);
            this.fEntityExpansionCount = 0;
        }
        XMLEntityHandler xMLEntityHandler = this.fEntityHandler;
        if (xMLEntityHandler != null) {
            xMLEntityHandler.startEntity(str, this.fResourceIdentifier, str2, null);
        }
    }
}
