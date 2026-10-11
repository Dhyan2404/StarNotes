package org.apache.xerces.impl;

import com.google.zxing.common.StringUtils;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.Reader;
import java.io.StringReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.Hashtable;
import java.util.Locale;
import java.util.Map;
import java.util.Stack;
import java.util.StringTokenizer;
import org.apache.commons.text.AlphabetConverter;
import org.apache.xerces.impl.io.ASCIIReader;
import org.apache.xerces.impl.io.Latin1Reader;
import org.apache.xerces.impl.io.UCSReader;
import org.apache.xerces.impl.io.UTF16Reader;
import org.apache.xerces.impl.io.UTF8Reader;
import org.apache.xerces.impl.validation.ValidationManager;
import org.apache.xerces.util.AugmentationsImpl;
import org.apache.xerces.util.EncodingMap;
import org.apache.xerces.util.SecurityManager;
import org.apache.xerces.util.SymbolTable;
import org.apache.xerces.util.URI;
import org.apache.xerces.util.XMLChar;
import org.apache.xerces.util.XMLEntityDescriptionImpl;
import org.apache.xerces.util.XMLResourceIdentifierImpl;
import org.apache.xerces.xni.Augmentations;
import org.apache.xerces.xni.XMLResourceIdentifier;
import org.apache.xerces.xni.XNIException;
import org.apache.xerces.xni.parser.XMLComponent;
import org.apache.xerces.xni.parser.XMLComponentManager;
import org.apache.xerces.xni.parser.XMLConfigurationException;
import org.apache.xerces.xni.parser.XMLEntityResolver;
import org.apache.xerces.xni.parser.XMLInputSource;

/* loaded from: classes13.dex */
public class XMLEntityManager implements XMLComponent, XMLEntityResolver {
    protected static final String BUFFER_SIZE = "http://apache.org/xml/properties/input-buffer-size";
    public static final int DEFAULT_BUFFER_SIZE = 2048;
    public static final int DEFAULT_INTERNAL_BUFFER_SIZE = 512;
    public static final int DEFAULT_XMLDECL_BUFFER_SIZE = 64;
    protected static final String ENTITY_RESOLVER = "http://apache.org/xml/properties/internal/entity-resolver";
    protected static final String ERROR_REPORTER = "http://apache.org/xml/properties/internal/error-reporter";
    protected static final String EXTERNAL_GENERAL_ENTITIES = "http://xml.org/sax/features/external-general-entities";
    protected static final String EXTERNAL_PARAMETER_ENTITIES = "http://xml.org/sax/features/external-parameter-entities";

    /* renamed from: J */
    public static PrivilegedAction f112006J = null;
    protected static final String PARSER_SETTINGS = "http://apache.org/xml/features/internal/parser-settings";
    protected static final String SECURITY_MANAGER = "http://apache.org/xml/properties/security-manager";
    protected static final String SYMBOL_TABLE = "http://apache.org/xml/properties/internal/symbol-table";
    protected static final String VALIDATION = "http://xml.org/sax/features/validation";
    protected static final String VALIDATION_MANAGER = "http://apache.org/xml/properties/internal/validation-manager";

    /* renamed from: l */
    public static final Boolean[] f112008l;

    /* renamed from: m */
    public static final String[] f112009m;

    /* renamed from: n */
    public static final Object[] f112010n;

    /* renamed from: o */
    public static final String f112011o;

    /* renamed from: p */
    public static final String f112012p;

    /* renamed from: q */
    public static final boolean f112013q = false;

    /* renamed from: r */
    public static final boolean f112014r = false;

    /* renamed from: s */
    public static final boolean f112015s = false;

    /* renamed from: t */
    public static final boolean f112016t = false;

    /* renamed from: u */
    public static String f112017u;

    /* renamed from: v */
    public static URI f112018v;

    /* renamed from: w */
    public static final boolean[] f112019w;

    /* renamed from: x */
    public static final char[] f112020x;

    /* renamed from: y */
    public static final char[] f112021y;

    /* renamed from: z */
    public static final char[] f112022z;

    /* renamed from: e */
    public final XMLResourceIdentifierImpl f112023e;

    /* renamed from: f */
    public final Augmentations f112024f;
    protected boolean fAllowJavaEncodings;
    protected int fBufferSize;
    protected ScannedEntity fCurrentEntity;
    protected Hashtable fDeclaredEntities;
    protected final Hashtable fEntities;
    protected int fEntityExpansionCount;
    protected int fEntityExpansionLimit;
    protected XMLEntityHandler fEntityHandler;
    protected XMLEntityResolver fEntityResolver;
    protected XMLEntityScanner fEntityScanner;
    protected final Stack fEntityStack;
    protected XMLErrorReporter fErrorReporter;
    protected boolean fExternalGeneralEntities;
    protected boolean fExternalParameterEntities;
    protected boolean fHasPEReferences;
    protected boolean fInExternalSubset;
    protected Stack fReaderStack;
    protected SecurityManager fSecurityManager;
    protected boolean fStandalone;
    protected boolean fStrictURI;
    protected SymbolTable fSymbolTable;
    protected boolean fValidation;
    protected ValidationManager fValidationManager;
    protected boolean fWarnDuplicateEntityDef;
    protected XMLEntityScanner fXML10EntityScanner;
    protected XMLEntityScanner fXML11EntityScanner;

    /* renamed from: g */
    public final C20002a f112025g;

    /* renamed from: h */
    public final C20002a f112026h;

    /* renamed from: i */
    public byte[] f112027i;

    /* renamed from: j */
    public final C20004c f112028j;
    protected static final String ALLOW_JAVA_ENCODINGS = "http://apache.org/xml/features/allow-java-encodings";
    protected static final String WARN_ON_DUPLICATE_ENTITYDEF = "http://apache.org/xml/features/warn-on-duplicate-entitydef";
    protected static final String STANDARD_URI_CONFORMANT = "http://apache.org/xml/features/standard-uri-conformant";

    /* renamed from: k */
    public static final String[] f112007k = {"http://xml.org/sax/features/validation", "http://xml.org/sax/features/external-general-entities", "http://xml.org/sax/features/external-parameter-entities", ALLOW_JAVA_ENCODINGS, WARN_ON_DUPLICATE_ENTITYDEF, STANDARD_URI_CONFORMANT};

    /* loaded from: classes13.dex */
    public static abstract class Entity {
        public boolean inExternalSubset;
        public String name;

        public Entity() {
            clear();
        }

        public void clear() {
            this.name = null;
            this.inExternalSubset = false;
        }

        public boolean isEntityDeclInExternalSubset() {
            return this.inExternalSubset;
        }

        public abstract boolean isExternal();

        public abstract boolean isUnparsed();

        public void setValues(Entity entity) {
            this.name = entity.name;
            this.inExternalSubset = entity.inExternalSubset;
        }

        public Entity(String str, boolean z) {
            this.name = str;
            this.inExternalSubset = z;
        }
    }

    /* loaded from: classes13.dex */
    public static class ExternalEntity extends Entity {
        public XMLResourceIdentifier entityLocation;
        public String notation;

        public ExternalEntity() {
            clear();
        }

        @Override // org.apache.xerces.impl.XMLEntityManager.Entity
        public void clear() {
            super.clear();
            this.entityLocation = null;
            this.notation = null;
        }

        @Override // org.apache.xerces.impl.XMLEntityManager.Entity
        public final boolean isExternal() {
            return true;
        }

        @Override // org.apache.xerces.impl.XMLEntityManager.Entity
        public final boolean isUnparsed() {
            return this.notation != null;
        }

        @Override // org.apache.xerces.impl.XMLEntityManager.Entity
        public void setValues(Entity entity) {
            super.setValues(entity);
            this.entityLocation = null;
            this.notation = null;
        }

        public ExternalEntity(String str, XMLResourceIdentifier xMLResourceIdentifier, String str2, boolean z) {
            super(str, z);
            this.entityLocation = xMLResourceIdentifier;
            this.notation = str2;
        }

        public void setValues(ExternalEntity externalEntity) {
            super.setValues((Entity) externalEntity);
            this.entityLocation = externalEntity.entityLocation;
            this.notation = externalEntity.notation;
        }
    }

    /* loaded from: classes13.dex */
    public static class InternalEntity extends Entity {
        public int paramEntityRefs;
        public String text;

        public InternalEntity() {
            clear();
        }

        @Override // org.apache.xerces.impl.XMLEntityManager.Entity
        public void clear() {
            super.clear();
            this.text = null;
        }

        @Override // org.apache.xerces.impl.XMLEntityManager.Entity
        public final boolean isExternal() {
            return false;
        }

        @Override // org.apache.xerces.impl.XMLEntityManager.Entity
        public final boolean isUnparsed() {
            return false;
        }

        @Override // org.apache.xerces.impl.XMLEntityManager.Entity
        public void setValues(Entity entity) {
            super.setValues(entity);
            this.text = null;
        }

        public InternalEntity(String str, String str2, boolean z) {
            super(str, z);
            this.text = str2;
        }

        public void setValues(InternalEntity internalEntity) {
            super.setValues((Entity) internalEntity);
            this.text = internalEntity.text;
        }

        public InternalEntity(String str, String str2, boolean z, int i) {
            this(str, str2, z);
            this.paramEntityRefs = i;
        }
    }

    /* loaded from: classes13.dex */
    public final class RewindableInputStream extends InputStream {

        /* renamed from: e */
        public InputStream f112029e;

        /* renamed from: f */
        public byte[] f112030f = new byte[64];

        /* renamed from: g */
        public int f112031g = 0;

        /* renamed from: h */
        public int f112032h = -1;

        /* renamed from: i */
        public int f112033i = 0;

        /* renamed from: j */
        public int f112034j = 0;

        /* renamed from: k */
        public int f112035k = 0;

        public RewindableInputStream(InputStream inputStream) {
            this.f112029e = inputStream;
        }

        @Override // java.io.InputStream
        public int available() throws IOException {
            int i = this.f112034j;
            int i2 = this.f112033i;
            int i3 = i - i2;
            if (i3 != 0) {
                return i3;
            }
            if (i2 == this.f112032h) {
                return -1;
            }
            if (XMLEntityManager.this.fCurrentEntity.mayReadChunks) {
                return this.f112029e.available();
            }
            return 0;
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            InputStream inputStream = this.f112029e;
            if (inputStream != null) {
                inputStream.close();
                this.f112029e = null;
            }
        }

        @Override // java.io.InputStream
        public void mark(int i) {
            this.f112035k = this.f112033i;
        }

        @Override // java.io.InputStream
        public boolean markSupported() {
            return true;
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            int i = this.f112033i;
            if (i < this.f112034j) {
                byte[] bArr = this.f112030f;
                this.f112033i = i + 1;
                return bArr[i] & 255;
            }
            if (i == this.f112032h) {
                return -1;
            }
            return XMLEntityManager.this.fCurrentEntity.mayReadChunks ? this.f112029e.read() : readAndBuffer();
        }

        public int readAndBuffer() throws IOException {
            int i = this.f112033i;
            byte[] bArr = this.f112030f;
            if (i == bArr.length) {
                byte[] bArr2 = new byte[i << 1];
                System.arraycopy(bArr, 0, bArr2, 0, i);
                this.f112030f = bArr2;
            }
            int read = this.f112029e.read();
            if (read == -1) {
                this.f112032h = this.f112033i;
                return -1;
            }
            byte[] bArr3 = this.f112030f;
            int i2 = this.f112034j;
            this.f112034j = i2 + 1;
            bArr3[i2] = (byte) read;
            this.f112033i++;
            return read & 255;
        }

        @Override // java.io.InputStream
        public void reset() {
            this.f112033i = this.f112035k;
        }

        public void rewind() {
            this.f112033i = this.f112031g;
        }

        public void setStartOffset(int i) {
            this.f112031g = i;
        }

        @Override // java.io.InputStream
        public long skip(long j) throws IOException {
            if (j <= 0) {
                return 0L;
            }
            int i = this.f112034j;
            int i2 = this.f112033i;
            int i3 = i - i2;
            if (i3 == 0) {
                if (i2 == this.f112032h) {
                    return 0L;
                }
                return this.f112029e.skip(j);
            }
            long j2 = i3;
            if (j <= j2) {
                this.f112033i = (int) (i2 + j);
                return j;
            }
            int i4 = i2 + i3;
            this.f112033i = i4;
            if (i4 == this.f112032h) {
                return j2;
            }
            return this.f112029e.skip(j - j2) + j2;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i, int i2) throws IOException {
            int i3 = this.f112034j;
            int i4 = this.f112033i;
            int i5 = i3 - i4;
            if (i5 != 0) {
                if (i2 >= i5) {
                    i2 = i5;
                } else if (i2 <= 0) {
                    return 0;
                }
                if (bArr != null) {
                    System.arraycopy(this.f112030f, i4, bArr, i, i2);
                }
                this.f112033i += i2;
                return i2;
            }
            if (i4 == this.f112032h) {
                return -1;
            }
            if (XMLEntityManager.this.fCurrentEntity.mayReadChunks) {
                return this.f112029e.read(bArr, i, i2);
            }
            int readAndBuffer = readAndBuffer();
            if (readAndBuffer == -1) {
                this.f112032h = this.f112033i;
                return -1;
            }
            bArr[i] = (byte) readAndBuffer;
            return 1;
        }
    }

    /* loaded from: classes13.dex */
    public class ScannedEntity extends Entity {

        /* renamed from: a */
        public boolean f112037a;

        /* renamed from: b */
        public C20003b f112038b;
        public int baseCharOffset;

        /* renamed from: c */
        public byte[] f112039c;

        /* renamed from: ch */
        public char[] f112040ch;
        public int columnNumber;
        public int count;

        /* renamed from: d */
        public final /* synthetic */ XMLEntityManager f112041d;
        public String encoding;
        public XMLResourceIdentifier entityLocation;
        public boolean isExternal;
        public int lineNumber;
        public boolean literal;
        public boolean mayReadChunks;
        public int position;
        public Reader reader;
        public int startPosition;
        public InputStream stream;
        public String xmlVersion;

        public ScannedEntity(XMLEntityManager xMLEntityManager, String str, XMLResourceIdentifier xMLResourceIdentifier, InputStream inputStream, Reader reader, byte[] bArr, String str2, boolean z, boolean z2, boolean z3) {
            super(str, xMLEntityManager.fInExternalSubset);
            this.f112041d = xMLEntityManager;
            this.lineNumber = 1;
            this.columnNumber = 1;
            this.f112037a = false;
            this.xmlVersion = "1.0";
            this.f112040ch = null;
            this.entityLocation = xMLResourceIdentifier;
            this.stream = inputStream;
            this.reader = reader;
            this.encoding = str2;
            this.literal = z;
            this.mayReadChunks = z2;
            this.isExternal = z3;
            C20003b m69852a = xMLEntityManager.f112028j.m69852a(z3);
            this.f112038b = m69852a;
            this.f112040ch = m69852a.f112047a;
            this.f112039c = bArr;
        }

        public int getCharacterOffset() {
            for (int size = this.f112041d.fEntityStack.size() - 1; size >= 0; size--) {
                ScannedEntity scannedEntity = (ScannedEntity) this.f112041d.fEntityStack.elementAt(size);
                if (scannedEntity.isExternal()) {
                    return scannedEntity.baseCharOffset + (scannedEntity.position - scannedEntity.startPosition);
                }
            }
            return -1;
        }

        public int getColumnNumber() {
            for (int size = this.f112041d.fEntityStack.size() - 1; size >= 0; size--) {
                ScannedEntity scannedEntity = (ScannedEntity) this.f112041d.fEntityStack.elementAt(size);
                if (scannedEntity.isExternal()) {
                    return scannedEntity.columnNumber;
                }
            }
            return -1;
        }

        public String getEncoding() {
            for (int size = this.f112041d.fEntityStack.size() - 1; size >= 0; size--) {
                ScannedEntity scannedEntity = (ScannedEntity) this.f112041d.fEntityStack.elementAt(size);
                if (scannedEntity.isExternal()) {
                    return scannedEntity.encoding;
                }
            }
            return null;
        }

        public String getExpandedSystemId() {
            for (int size = this.f112041d.fEntityStack.size() - 1; size >= 0; size--) {
                ScannedEntity scannedEntity = (ScannedEntity) this.f112041d.fEntityStack.elementAt(size);
                XMLResourceIdentifier xMLResourceIdentifier = scannedEntity.entityLocation;
                if (xMLResourceIdentifier != null && xMLResourceIdentifier.getExpandedSystemId() != null) {
                    return scannedEntity.entityLocation.getExpandedSystemId();
                }
            }
            return null;
        }

        public int getLineNumber() {
            for (int size = this.f112041d.fEntityStack.size() - 1; size >= 0; size--) {
                ScannedEntity scannedEntity = (ScannedEntity) this.f112041d.fEntityStack.elementAt(size);
                if (scannedEntity.isExternal()) {
                    return scannedEntity.lineNumber;
                }
            }
            return -1;
        }

        public String getLiteralSystemId() {
            for (int size = this.f112041d.fEntityStack.size() - 1; size >= 0; size--) {
                ScannedEntity scannedEntity = (ScannedEntity) this.f112041d.fEntityStack.elementAt(size);
                XMLResourceIdentifier xMLResourceIdentifier = scannedEntity.entityLocation;
                if (xMLResourceIdentifier != null && xMLResourceIdentifier.getLiteralSystemId() != null) {
                    return scannedEntity.entityLocation.getLiteralSystemId();
                }
            }
            return null;
        }

        public String getXMLVersion() {
            for (int size = this.f112041d.fEntityStack.size() - 1; size >= 0; size--) {
                ScannedEntity scannedEntity = (ScannedEntity) this.f112041d.fEntityStack.elementAt(size);
                if (scannedEntity.isExternal()) {
                    return scannedEntity.xmlVersion;
                }
            }
            return null;
        }

        public boolean isEncodingExternallySpecified() {
            return this.f112037a;
        }

        @Override // org.apache.xerces.impl.XMLEntityManager.Entity
        public final boolean isExternal() {
            return this.isExternal;
        }

        @Override // org.apache.xerces.impl.XMLEntityManager.Entity
        public final boolean isUnparsed() {
            return false;
        }

        public void setEncodingExternallySpecified(boolean z) {
            this.f112037a = z;
        }

        public void setReader(InputStream inputStream, String str, Boolean bool) throws IOException {
            this.f112041d.f112027i = this.f112039c;
            this.reader = this.f112041d.createReader(inputStream, str, bool);
            this.f112039c = this.f112041d.f112027i;
        }

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("name=\"");
            stringBuffer.append(this.name);
            stringBuffer.append('\"');
            stringBuffer.append(",ch=");
            stringBuffer.append(this.f112040ch);
            stringBuffer.append(",position=");
            stringBuffer.append(this.position);
            stringBuffer.append(",count=");
            stringBuffer.append(this.count);
            stringBuffer.append(",baseCharOffset=");
            stringBuffer.append(this.baseCharOffset);
            stringBuffer.append(",startPosition=");
            stringBuffer.append(this.startPosition);
            return stringBuffer.toString();
        }
    }

    /* renamed from: org.apache.xerces.impl.XMLEntityManager$a */
    /* loaded from: classes13.dex */
    public static final class C20002a {

        /* renamed from: e */
        public static final int f112042e = 3;

        /* renamed from: a */
        public int f112043a;

        /* renamed from: b */
        public int f112044b;

        /* renamed from: c */
        public byte[][] f112045c;

        /* renamed from: d */
        public int f112046d;

        public C20002a(int i) {
            this(3, i);
        }

        /* renamed from: a */
        public byte[] m69847a() {
            int i = this.f112046d;
            if (i <= 0) {
                return new byte[this.f112044b];
            }
            byte[][] bArr = this.f112045c;
            int i2 = i - 1;
            this.f112046d = i2;
            return bArr[i2];
        }

        /* renamed from: b */
        public void m69848b(byte[] bArr) {
            int i = this.f112046d;
            byte[][] bArr2 = this.f112045c;
            if (i < bArr2.length) {
                this.f112046d = i + 1;
                bArr2[i] = bArr;
            }
        }

        /* renamed from: c */
        public void m69849c(int i) {
            this.f112044b = i;
            this.f112045c = new byte[this.f112043a];
            this.f112046d = 0;
        }

        public C20002a(int i, int i2) {
            this.f112043a = i;
            this.f112044b = i2;
            this.f112045c = new byte[i];
            this.f112046d = 0;
        }
    }

    /* renamed from: org.apache.xerces.impl.XMLEntityManager$b */
    /* loaded from: classes13.dex */
    public static final class C20003b {

        /* renamed from: a */
        public final char[] f112047a;

        /* renamed from: b */
        public final boolean f112048b;

        public C20003b(boolean z, int i) {
            this.f112048b = z;
            this.f112047a = new char[i];
        }
    }

    /* renamed from: org.apache.xerces.impl.XMLEntityManager$c */
    /* loaded from: classes13.dex */
    public static final class C20004c {

        /* renamed from: h */
        public static final int f112049h = 3;

        /* renamed from: a */
        public C20003b[] f112050a;

        /* renamed from: b */
        public C20003b[] f112051b;

        /* renamed from: c */
        public int f112052c;

        /* renamed from: d */
        public int f112053d;

        /* renamed from: e */
        public int f112054e;

        /* renamed from: f */
        public int f112055f;

        /* renamed from: g */
        public int f112056g;

        public C20004c(int i, int i2) {
            this(3, i, i2);
        }

        /* renamed from: a */
        public C20003b m69852a(boolean z) {
            if (z) {
                int i = this.f112056g;
                if (i <= -1) {
                    return new C20003b(true, this.f112052c);
                }
                C20003b[] c20003bArr = this.f112051b;
                this.f112056g = i - 1;
                return c20003bArr[i];
            }
            int i2 = this.f112055f;
            if (i2 <= -1) {
                return new C20003b(false, this.f112053d);
            }
            C20003b[] c20003bArr2 = this.f112050a;
            this.f112055f = i2 - 1;
            return c20003bArr2[i2];
        }

        /* renamed from: b */
        public final void m69853b() {
            int i = this.f112054e;
            this.f112050a = new C20003b[i];
            this.f112051b = new C20003b[i];
            this.f112055f = -1;
            this.f112056g = -1;
        }

        /* renamed from: c */
        public void m69854c(C20003b c20003b) {
            if (c20003b.f112048b) {
                int i = this.f112056g;
                C20003b[] c20003bArr = this.f112051b;
                if (i < c20003bArr.length - 1) {
                    int i2 = i + 1;
                    this.f112056g = i2;
                    c20003bArr[i2] = c20003b;
                    return;
                }
                return;
            }
            int i3 = this.f112055f;
            C20003b[] c20003bArr2 = this.f112050a;
            if (i3 < c20003bArr2.length - 1) {
                int i4 = i3 + 1;
                this.f112055f = i4;
                c20003bArr2[i4] = c20003b;
            }
        }

        /* renamed from: d */
        public void m69855d(int i) {
            this.f112052c = i;
            this.f112051b = new C20003b[this.f112054e];
            this.f112056g = -1;
        }

        public C20004c(int i, int i2, int i3) {
            this.f112052c = i2;
            this.f112053d = i3;
            this.f112054e = i;
            m69853b();
        }
    }

    /* renamed from: org.apache.xerces.impl.XMLEntityManager$d */
    /* loaded from: classes13.dex */
    public static class C20005d {

        /* renamed from: e */
        public static final C20005d f112057e = new C20005d("UTF-8", null, false);

        /* renamed from: f */
        public static final C20005d f112058f = new C20005d("UTF-8", null, true);

        /* renamed from: g */
        public static final C20005d f112059g;

        /* renamed from: h */
        public static final C20005d f112060h;

        /* renamed from: i */
        public static final C20005d f112061i;

        /* renamed from: j */
        public static final C20005d f112062j;

        /* renamed from: k */
        public static final C20005d f112063k;

        /* renamed from: l */
        public static final C20005d f112064l;

        /* renamed from: m */
        public static final C20005d f112065m;

        /* renamed from: n */
        public static final C20005d f112066n;

        /* renamed from: a */
        public final String f112067a;

        /* renamed from: b */
        public final String f112068b;

        /* renamed from: c */
        public final Boolean f112069c;

        /* renamed from: d */
        public final boolean f112070d;

        static {
            Boolean bool = Boolean.TRUE;
            f112059g = new C20005d("UTF-16BE", "UTF-16", bool, false);
            f112060h = new C20005d("UTF-16BE", "UTF-16", bool, true);
            Boolean bool2 = Boolean.FALSE;
            f112061i = new C20005d("UTF-16LE", "UTF-16", bool2, false);
            f112062j = new C20005d("UTF-16LE", "UTF-16", bool2, true);
            f112063k = new C20005d("ISO-10646-UCS-4", bool, false);
            f112064l = new C20005d("ISO-10646-UCS-4", bool2, false);
            f112065m = new C20005d("ISO-10646-UCS-4", null, false);
            f112066n = new C20005d("CP037", null, false);
        }

        public C20005d(String str, Boolean bool, boolean z) {
            this(str, str, bool, z);
        }

        public C20005d(String str, String str2, Boolean bool, boolean z) {
            this.f112067a = str;
            this.f112068b = str2;
            this.f112069c = bool;
            this.f112070d = z;
        }
    }

    static {
        Boolean bool = Boolean.TRUE;
        Boolean bool2 = Boolean.FALSE;
        f112008l = new Boolean[]{null, bool, bool, bool2, bool2, bool2};
        f112009m = new String[]{"http://apache.org/xml/properties/internal/symbol-table", "http://apache.org/xml/properties/internal/error-reporter", "http://apache.org/xml/properties/internal/entity-resolver", "http://apache.org/xml/properties/internal/validation-manager", "http://apache.org/xml/properties/input-buffer-size", "http://apache.org/xml/properties/security-manager"};
        f112010n = new Object[]{null, null, null, null, new Integer(2048), null};
        f112011o = "[xml]".intern();
        f112012p = "[dtd]".intern();
        f112019w = new boolean[128];
        f112020x = new char[128];
        f112021y = new char[128];
        f112022z = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
        for (int i = 0; i <= 31; i++) {
            f112019w[i] = true;
            char[] cArr = f112020x;
            char[] cArr2 = f112022z;
            cArr[i] = cArr2[i >> 4];
            f112021y[i] = cArr2[i & 15];
        }
        f112019w[127] = true;
        f112020x[127] = '7';
        f112021y[127] = 'F';
        char[] cArr3 = {' ', '<', '>', '#', '%', '\"', '{', '}', '|', '\\', '^', '~', '[', ']', '`'};
        for (int i2 = 0; i2 < 15; i2++) {
            char c = cArr3[i2];
            f112019w[c] = true;
            char[] cArr4 = f112020x;
            char[] cArr5 = f112022z;
            cArr4[c] = cArr5[c >> 4];
            f112021y[c] = cArr5[c & 15];
        }
        f112006J = new C20007a();
    }

    public XMLEntityManager() {
        this(null);
    }

    public static void absolutizeAgainstUserDir(URI uri) throws URI.MalformedURIException {
        uri.absolutize(m69835m());
    }

    public static OutputStream createOutputStream(String str) throws IOException {
        File parentFile;
        String expandSystemId = expandSystemId(str, null, true);
        if (expandSystemId != null) {
            str = expandSystemId;
        }
        URL url = new URL(str);
        String protocol = url.getProtocol();
        String host = url.getHost();
        if (protocol.equals("file") && (host == null || host.length() == 0 || host.equals("localhost"))) {
            File file = new File(m69834l(url.getPath()));
            if (!file.exists() && (parentFile = file.getParentFile()) != null && !parentFile.exists()) {
                parentFile.mkdirs();
            }
            return new FileOutputStream(file);
        }
        URLConnection openConnection = url.openConnection();
        openConnection.setDoInput(false);
        openConnection.setDoOutput(true);
        openConnection.setUseCaches(false);
        if (openConnection instanceof HttpURLConnection) {
            ((HttpURLConnection) openConnection).setRequestMethod("PUT");
        }
        return openConnection.getOutputStream();
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0074 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0075  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String expandSystemId(java.lang.String r9, java.lang.String r10, boolean r11) throws org.apache.xerces.util.URI.MalformedURIException {
        /*
            r0 = 0
            if (r9 != 0) goto L4
            return r0
        L4:
            if (r11 == 0) goto Lb
            java.lang.String r9 = m69833j(r9, r10)
            return r9
        Lb:
            java.lang.String r9 = m69832i(r9, r10)     // Catch: org.apache.xerces.util.URI.MalformedURIException -> L10
            return r9
        L10:
            int r11 = r9.length()
            if (r11 != 0) goto L17
            return r9
        L17:
            java.lang.String r11 = fixURI(r9)
            if (r10 == 0) goto L64
            int r1 = r10.length()     // Catch: java.lang.Exception -> L72
            if (r1 == 0) goto L64
            boolean r1 = r10.equals(r9)     // Catch: java.lang.Exception -> L72
            if (r1 == 0) goto L2a
            goto L64
        L2a:
            org.apache.xerces.util.URI r1 = new org.apache.xerces.util.URI     // Catch: org.apache.xerces.util.URI.MalformedURIException -> L38 java.lang.Exception -> L72
            java.lang.String r2 = fixURI(r10)     // Catch: org.apache.xerces.util.URI.MalformedURIException -> L38 java.lang.Exception -> L72
            java.lang.String r2 = r2.trim()     // Catch: org.apache.xerces.util.URI.MalformedURIException -> L38 java.lang.Exception -> L72
            r1.<init>(r2)     // Catch: org.apache.xerces.util.URI.MalformedURIException -> L38 java.lang.Exception -> L72
            goto L68
        L38:
            r1 = 58
            int r1 = r10.indexOf(r1)     // Catch: java.lang.Exception -> L72
            r2 = -1
            if (r1 == r2) goto L56
            org.apache.xerces.util.URI r1 = new org.apache.xerces.util.URI     // Catch: java.lang.Exception -> L72
            java.lang.String r4 = "file"
            java.lang.String r5 = ""
            java.lang.String r10 = fixURI(r10)     // Catch: java.lang.Exception -> L72
            java.lang.String r6 = r10.trim()     // Catch: java.lang.Exception -> L72
            r7 = 0
            r8 = 0
            r3 = r1
            r3.<init>(r4, r5, r6, r7, r8)     // Catch: java.lang.Exception -> L72
            goto L68
        L56:
            org.apache.xerces.util.URI r1 = new org.apache.xerces.util.URI     // Catch: java.lang.Exception -> L72
            org.apache.xerces.util.URI r2 = m69835m()     // Catch: java.lang.Exception -> L72
            java.lang.String r10 = fixURI(r10)     // Catch: java.lang.Exception -> L72
            r1.<init>(r2, r10)     // Catch: java.lang.Exception -> L72
            goto L68
        L64:
            org.apache.xerces.util.URI r1 = m69835m()     // Catch: java.lang.Exception -> L72
        L68:
            org.apache.xerces.util.URI r10 = new org.apache.xerces.util.URI     // Catch: java.lang.Exception -> L72
            java.lang.String r11 = r11.trim()     // Catch: java.lang.Exception -> L72
            r10.<init>(r1, r11)     // Catch: java.lang.Exception -> L72
            r0 = r10
        L72:
            if (r0 != 0) goto L75
            return r9
        L75:
            java.lang.String r9 = r0.toString()
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.XMLEntityManager.expandSystemId(java.lang.String, java.lang.String, boolean):java.lang.String");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0063  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String fixURI(java.lang.String r6) {
        /*
            char r0 = java.io.File.separatorChar
            r1 = 47
            java.lang.String r6 = r6.replace(r0, r1)
            int r0 = r6.length()
            r2 = 2
            r3 = 0
            r4 = 1
            if (r0 < r2) goto L50
            char r0 = r6.charAt(r4)
            r2 = 58
            if (r0 != r2) goto L37
            char r0 = r6.charAt(r3)
            char r0 = java.lang.Character.toUpperCase(r0)
            r1 = 65
            if (r0 < r1) goto L50
            r1 = 90
            if (r0 > r1) goto L50
            java.lang.StringBuffer r0 = new java.lang.StringBuffer
            int r1 = r6.length()
            int r1 = r1 + 8
            r0.<init>(r1)
            java.lang.String r1 = "file:///"
            goto L4c
        L37:
            if (r0 != r1) goto L50
            char r0 = r6.charAt(r3)
            if (r0 != r1) goto L50
            java.lang.StringBuffer r0 = new java.lang.StringBuffer
            int r1 = r6.length()
            int r1 = r1 + 5
            r0.<init>(r1)
            java.lang.String r1 = "file:"
        L4c:
            r0.append(r1)
            goto L51
        L50:
            r0 = 0
        L51:
            r1 = 32
            int r2 = r6.indexOf(r1)
            if (r2 >= 0) goto L63
            if (r0 == 0) goto L7d
            r0.append(r6)
        L5e:
            java.lang.String r6 = r0.toString()
            goto L7d
        L63:
            if (r0 != 0) goto L6e
            java.lang.StringBuffer r0 = new java.lang.StringBuffer
            int r5 = r6.length()
            r0.<init>(r5)
        L6e:
            if (r3 < r2) goto L92
            java.lang.String r5 = "%20"
            r0.append(r5)
            int r2 = r2 + r4
        L76:
            int r3 = r6.length()
            if (r2 < r3) goto L7e
            goto L5e
        L7d:
            return r6
        L7e:
            char r3 = r6.charAt(r2)
            if (r3 != r1) goto L88
            r0.append(r5)
            goto L8f
        L88:
            char r3 = r6.charAt(r2)
            r0.append(r3)
        L8f:
            int r2 = r2 + 1
            goto L76
        L92:
            char r5 = r6.charAt(r3)
            r0.append(r5)
            int r3 = r3 + 1
            goto L6e
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.XMLEntityManager.fixURI(java.lang.String):java.lang.String");
    }

    /* renamed from: i */
    public static String m69832i(String str, String str2) throws URI.MalformedURIException {
        URI m69835m;
        URI uri = new URI(str, true);
        if (uri.isAbsoluteURI()) {
            if (uri.getScheme().length() > 1) {
                return str;
            }
            throw new URI.MalformedURIException();
        }
        if (str2 == null || str2.length() == 0) {
            m69835m = m69835m();
        } else {
            m69835m = new URI(str2, true);
            if (!m69835m.isAbsoluteURI()) {
                m69835m.absolutize(m69835m());
            }
        }
        uri.absolutize(m69835m);
        return uri.toString();
    }

    /* renamed from: j */
    public static String m69833j(String str, String str2) throws URI.MalformedURIException {
        URI m69835m;
        URI uri = new URI(str, true);
        if (uri.isAbsoluteURI()) {
            return str;
        }
        if (str2 == null || str2.length() == 0) {
            m69835m = m69835m();
        } else {
            m69835m = new URI(str2, true);
            if (!m69835m.isAbsoluteURI()) {
                m69835m.absolutize(m69835m());
            }
        }
        uri.absolutize(m69835m);
        return uri.toString();
    }

    /* renamed from: l */
    public static String m69834l(String str) {
        if (str == null || str.length() == 0 || str.indexOf(37) == -1) {
            return str;
        }
        StringTokenizer stringTokenizer = new StringTokenizer(str, "%");
        StringBuffer stringBuffer = new StringBuffer(str.length());
        int countTokens = stringTokenizer.countTokens();
        stringBuffer.append(stringTokenizer.nextToken());
        for (int i = 1; i < countTokens; i++) {
            String nextToken = stringTokenizer.nextToken();
            stringBuffer.append((char) Integer.valueOf(nextToken.substring(0, 2), 16).intValue());
            stringBuffer.append(nextToken.substring(2));
        }
        return stringBuffer.toString();
    }

    /* renamed from: m */
    public static synchronized URI m69835m() throws URI.MalformedURIException {
        char c;
        char upperCase;
        synchronized (XMLEntityManager.class) {
            String str = "";
            try {
                str = (String) AccessController.doPrivileged(f112006J);
            } catch (SecurityException unused) {
            }
            if (str.length() == 0) {
                return new URI("file", "", "", null, null);
            }
            if (f112018v != null && str.equals(f112017u)) {
                return f112018v;
            }
            f112017u = str;
            String replace = str.replace(File.separatorChar, '/');
            int length = replace.length();
            StringBuffer stringBuffer = new StringBuffer(length * 3);
            if (length >= 2 && replace.charAt(1) == ':' && (upperCase = Character.toUpperCase(replace.charAt(0))) >= 'A' && upperCase <= 'Z') {
                stringBuffer.append('/');
            }
            int i = 0;
            while (i < length) {
                char charAt = replace.charAt(i);
                if (charAt >= 128) {
                    break;
                }
                if (f112019w[charAt]) {
                    stringBuffer.append('%');
                    stringBuffer.append(f112020x[charAt]);
                    stringBuffer.append(f112021y[charAt]);
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
                            char[] cArr = f112022z;
                            stringBuffer.append(cArr[i2 >> 4]);
                            c = cArr[i2 & 15];
                        } else if (f112019w[b]) {
                            stringBuffer.append('%');
                            stringBuffer.append(f112020x[b]);
                            c = f112021y[b];
                        } else {
                            stringBuffer.append((char) b);
                        }
                        stringBuffer.append(c);
                    }
                } catch (UnsupportedEncodingException unused2) {
                    return new URI("file", "", replace, null, null);
                }
            }
            if (!replace.endsWith("/")) {
                stringBuffer.append('/');
            }
            URI uri = new URI("file", "", stringBuffer.toString(), null, null);
            f112018v = uri;
            return uri;
        }
    }

    /* renamed from: p */
    public static final void m69836p(ScannedEntity scannedEntity) {
    }

    public void addExternalEntity(String str, String str2, String str3, String str4) throws IOException {
        String str5;
        ScannedEntity scannedEntity;
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
            String str6 = str4;
            for (int i = size - 1; i >= 0; i--) {
                ScannedEntity scannedEntity2 = (ScannedEntity) this.fEntityStack.elementAt(i);
                XMLResourceIdentifier xMLResourceIdentifier2 = scannedEntity2.entityLocation;
                if (xMLResourceIdentifier2 != null && xMLResourceIdentifier2.getExpandedSystemId() != null) {
                    str4 = scannedEntity2.entityLocation.getExpandedSystemId();
                }
            }
            str5 = str6;
            this.fEntities.put(str, new ExternalEntity(str, new XMLEntityDescriptionImpl(str, str2, str3, str5, expandSystemId(str3, str5, false)), null, this.fInExternalSubset));
        }
        str5 = str4;
        this.fEntities.put(str, new ExternalEntity(str, new XMLEntityDescriptionImpl(str, str2, str3, str5, expandSystemId(str3, str5, false)), null, this.fInExternalSubset));
    }

    public void addInternalEntity(String str, String str2) {
        addInternalEntity(str, str2, 0);
    }

    public void addUnparsedEntity(String str, String str2, String str3, String str4, String str5) {
        if (!this.fEntities.containsKey(str)) {
            this.fEntities.put(str, new ExternalEntity(str, new XMLEntityDescriptionImpl(str, str2, str3, str4, null), str5, this.fInExternalSubset));
        } else if (this.fWarnDuplicateEntityDef) {
            this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_DUPLICATE_ENTITY_DEFINITION", new Object[]{str}, (short) 0);
        }
    }

    public void closeReaders() {
        for (int size = this.fReaderStack.size() - 1; size >= 0; size--) {
            try {
                ((Reader) this.fReaderStack.pop()).close();
            } catch (IOException unused) {
            }
        }
    }

    public Reader createReader(InputStream inputStream, String str, Boolean bool) throws IOException {
        if (str == "UTF-8" || str == null) {
            return m69840g(inputStream);
        }
        if (str == "UTF-16" && bool != null) {
            return m69839f(inputStream, bool.booleanValue());
        }
        String upperCase = str.toUpperCase(Locale.ENGLISH);
        if (upperCase.equals("UTF-8")) {
            return m69840g(inputStream);
        }
        if (upperCase.equals("UTF-16BE")) {
            return m69839f(inputStream, true);
        }
        if (upperCase.equals("UTF-16LE")) {
            return m69839f(inputStream, false);
        }
        if (upperCase.equals("ISO-10646-UCS-4")) {
            if (bool != null) {
                return bool.booleanValue() ? new UCSReader(inputStream, (short) 8) : new UCSReader(inputStream, (short) 4);
            }
            this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "EncodingByteOrderUnsupported", new Object[]{str}, (short) 2);
        }
        if (upperCase.equals("ISO-10646-UCS-2")) {
            if (bool != null) {
                return bool.booleanValue() ? new UCSReader(inputStream, (short) 2) : new UCSReader(inputStream, (short) 1);
            }
            this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "EncodingByteOrderUnsupported", new Object[]{str}, (short) 2);
        }
        boolean isValidIANAEncoding = XMLChar.isValidIANAEncoding(str);
        boolean isValidJavaEncoding = XMLChar.isValidJavaEncoding(str);
        if (!isValidIANAEncoding || (this.fAllowJavaEncodings && !isValidJavaEncoding)) {
            this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "EncodingDeclInvalid", new Object[]{str}, (short) 2);
            return m69838e(inputStream);
        }
        String iANA2JavaMapping = EncodingMap.getIANA2JavaMapping(upperCase);
        if (iANA2JavaMapping == null) {
            if (!this.fAllowJavaEncodings) {
                this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "EncodingDeclInvalid", new Object[]{str}, (short) 2);
                return m69838e(inputStream);
            }
        } else {
            if (iANA2JavaMapping.equals("ASCII")) {
                return m69837d(inputStream);
            }
            if (iANA2JavaMapping.equals(StringUtils.f38416d)) {
                return m69838e(inputStream);
            }
            str = iANA2JavaMapping;
        }
        return new InputStreamReader(inputStream, str);
    }

    /* renamed from: d */
    public final Reader m69837d(InputStream inputStream) {
        if (this.f112027i == null) {
            this.f112027i = this.f112025g.m69847a();
        }
        return new ASCIIReader(inputStream, this.f112027i, this.fErrorReporter.getMessageFormatter("http://www.w3.org/TR/1998/REC-xml-19980210"), this.fErrorReporter.getLocale());
    }

    /* renamed from: e */
    public final Reader m69838e(InputStream inputStream) {
        if (this.f112027i == null) {
            this.f112027i = this.f112025g.m69847a();
        }
        return new Latin1Reader(inputStream, this.f112027i);
    }

    public void endExternalSubset() {
        this.fInExternalSubset = false;
    }

    /* renamed from: f */
    public final Reader m69839f(InputStream inputStream, boolean z) {
        byte[] bArr = this.f112027i;
        if (bArr == null) {
            this.f112027i = this.f112026h.m69847a();
        } else if (bArr.length == this.fBufferSize) {
            this.f112025g.m69848b(bArr);
            this.f112027i = this.f112026h.m69847a();
        }
        return new UTF16Reader(inputStream, this.f112027i, z, this.fErrorReporter.getMessageFormatter("http://www.w3.org/TR/1998/REC-xml-19980210"), this.fErrorReporter.getLocale());
    }

    /* renamed from: g */
    public final Reader m69840g(InputStream inputStream) {
        if (this.f112027i == null) {
            this.f112027i = this.f112025g.m69847a();
        }
        return new UTF8Reader(inputStream, this.f112027i, this.fErrorReporter.getMessageFormatter("http://www.w3.org/TR/1998/REC-xml-19980210"), this.fErrorReporter.getLocale());
    }

    public ScannedEntity getCurrentEntity() {
        return this.fCurrentEntity;
    }

    public XMLResourceIdentifier getCurrentResourceIdentifier() {
        return this.f112023e;
    }

    public C20005d getEncodingInfo(byte[] bArr, int i) {
        if (i < 2) {
            return C20005d.f112057e;
        }
        int i2 = bArr[0] & 255;
        int i3 = bArr[1] & 255;
        if (i2 == 254 && i3 == 255) {
            return C20005d.f112060h;
        }
        if (i2 == 255 && i3 == 254) {
            return C20005d.f112062j;
        }
        if (i < 3) {
            return C20005d.f112057e;
        }
        int i4 = bArr[2] & 255;
        if (i2 == 239 && i3 == 187 && i4 == 191) {
            return C20005d.f112058f;
        }
        if (i < 4) {
            return C20005d.f112057e;
        }
        int i5 = bArr[3] & 255;
        return (i2 == 0 && i3 == 0 && i4 == 0 && i5 == 60) ? C20005d.f112063k : (i2 == 60 && i3 == 0 && i4 == 0 && i5 == 0) ? C20005d.f112064l : (i2 == 0 && i3 == 0 && i4 == 60 && i5 == 0) ? C20005d.f112065m : (i2 == 0 && i3 == 60 && i4 == 0 && i5 == 0) ? C20005d.f112065m : (i2 == 0 && i3 == 60 && i4 == 0 && i5 == 63) ? C20005d.f112059g : (i2 == 60 && i3 == 0 && i4 == 63 && i5 == 0) ? C20005d.f112061i : (i2 == 76 && i3 == 111 && i4 == 167 && i5 == 148) ? C20005d.f112066n : C20005d.f112057e;
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

    @Override // org.apache.xerces.xni.parser.XMLComponent
    public Boolean getFeatureDefault(String str) {
        int i = 0;
        while (true) {
            String[] strArr = f112007k;
            if (i >= strArr.length) {
                return null;
            }
            if (strArr[i].equals(str)) {
                return f112008l[i];
            }
            i++;
        }
    }

    public int getParamEntityRefCount(String str) {
        Entity entity;
        if (str == null || str.length() <= 0 || str.charAt(0) != '%' || (entity = (Entity) this.fEntities.get(str)) == null || entity.isExternal()) {
            return 0;
        }
        return ((InternalEntity) entity).paramEntityRefs;
    }

    @Override // org.apache.xerces.xni.parser.XMLComponent
    public Object getPropertyDefault(String str) {
        int i = 0;
        while (true) {
            String[] strArr = f112009m;
            if (i >= strArr.length) {
                return null;
            }
            if (strArr[i].equals(str)) {
                return f112010n[i];
            }
            i++;
        }
    }

    @Override // org.apache.xerces.xni.parser.XMLComponent
    public String[] getRecognizedFeatures() {
        return (String[]) f112007k.clone();
    }

    @Override // org.apache.xerces.xni.parser.XMLComponent
    public String[] getRecognizedProperties() {
        return (String[]) f112009m.clone();
    }

    /* renamed from: h */
    public void m69841h() throws XNIException {
        XMLEntityHandler xMLEntityHandler = this.fEntityHandler;
        if (xMLEntityHandler != null) {
            xMLEntityHandler.endEntity(this.fCurrentEntity.name, null);
        }
        try {
            this.fCurrentEntity.reader.close();
        } catch (IOException unused) {
        }
        if (!this.fReaderStack.isEmpty()) {
            this.fReaderStack.pop();
        }
        this.f112028j.m69854c(this.fCurrentEntity.f112038b);
        if (this.fCurrentEntity.f112039c != null) {
            if (this.fCurrentEntity.f112039c.length == this.fBufferSize) {
                this.f112025g.m69848b(this.fCurrentEntity.f112039c);
            } else {
                this.f112026h.m69848b(this.fCurrentEntity.f112039c);
            }
        }
        ScannedEntity scannedEntity = this.fEntityStack.size() > 0 ? (ScannedEntity) this.fEntityStack.pop() : null;
        this.fCurrentEntity = scannedEntity;
        this.fEntityScanner.setCurrentEntity(scannedEntity);
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

    /* renamed from: k */
    public Hashtable m69842k() {
        return this.fEntities;
    }

    /* renamed from: n */
    public final boolean m69843n() {
        return this.fHasPEReferences;
    }

    /* renamed from: o */
    public final void m69844o() {
        this.fHasPEReferences = true;
    }

    public void reset() {
        SecurityManager securityManager = this.fSecurityManager;
        this.fEntityExpansionLimit = securityManager != null ? securityManager.getEntityExpansionLimit() : 0;
        this.fStandalone = false;
        this.fHasPEReferences = false;
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
            for (Map.Entry entry : hashtable.entrySet()) {
                this.fEntities.put(entry.getKey(), entry.getValue());
            }
        }
        this.fEntityHandler = null;
    }

    @Override // org.apache.xerces.xni.parser.XMLEntityResolver
    public XMLInputSource resolveEntity(XMLResourceIdentifier xMLResourceIdentifier) throws IOException, XNIException {
        ScannedEntity scannedEntity;
        XMLResourceIdentifier xMLResourceIdentifier2;
        XMLInputSource xMLInputSource = null;
        if (xMLResourceIdentifier == null) {
            return null;
        }
        String publicId = xMLResourceIdentifier.getPublicId();
        String literalSystemId = xMLResourceIdentifier.getLiteralSystemId();
        String baseSystemId = xMLResourceIdentifier.getBaseSystemId();
        String expandedSystemId = xMLResourceIdentifier.getExpandedSystemId();
        boolean z = (baseSystemId != null || (scannedEntity = this.fCurrentEntity) == null || (xMLResourceIdentifier2 = scannedEntity.entityLocation) == null || (baseSystemId = xMLResourceIdentifier2.getExpandedSystemId()) == null) ? expandedSystemId == null : true;
        if (this.fEntityResolver != null) {
            if (z) {
                expandedSystemId = expandSystemId(literalSystemId, baseSystemId, false);
            }
            xMLResourceIdentifier.setBaseSystemId(baseSystemId);
            xMLResourceIdentifier.setExpandedSystemId(expandedSystemId);
            xMLInputSource = this.fEntityResolver.resolveEntity(xMLResourceIdentifier);
        }
        return xMLInputSource == null ? new XMLInputSource(publicId, literalSystemId, baseSystemId) : xMLInputSource;
    }

    public void setEntityHandler(XMLEntityHandler xMLEntityHandler) {
        this.fEntityHandler = xMLEntityHandler;
    }

    @Override // org.apache.xerces.xni.parser.XMLComponent
    public void setFeature(String str, boolean z) throws XMLConfigurationException {
        if (str.startsWith("http://apache.org/xml/features/") && str.length() - 31 == 20 && str.endsWith("allow-java-encodings")) {
            this.fAllowJavaEncodings = z;
        }
    }

    @Override // org.apache.xerces.xni.parser.XMLComponent
    public void setProperty(String str, Object obj) throws XMLConfigurationException {
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
                this.f112025g.m69849c(this.fBufferSize);
                this.f112026h.m69849c(this.fBufferSize << 1);
                this.f112028j.m69855d(this.fBufferSize);
            }
            if (length == 16 && str.endsWith("security-manager")) {
                SecurityManager securityManager = (SecurityManager) obj;
                this.fSecurityManager = securityManager;
                this.fEntityExpansionLimit = securityManager != null ? securityManager.getEntityExpansionLimit() : 0;
            }
        }
    }

    public void setScannerVersion(short s) {
        XMLEntityScanner xMLEntityScanner;
        if (s == 1) {
            if (this.fXML10EntityScanner == null) {
                this.fXML10EntityScanner = new XMLEntityScanner();
            }
            this.fXML10EntityScanner.reset(this.fSymbolTable, this, this.fErrorReporter);
            xMLEntityScanner = this.fXML10EntityScanner;
        } else {
            if (this.fXML11EntityScanner == null) {
                this.fXML11EntityScanner = new XML11EntityScanner();
            }
            this.fXML11EntityScanner.reset(this.fSymbolTable, this, this.fErrorReporter);
            xMLEntityScanner = this.fXML11EntityScanner;
        }
        this.fEntityScanner = xMLEntityScanner;
        xMLEntityScanner.setCurrentEntity(this.fCurrentEntity);
    }

    public void setStandalone(boolean z) {
        this.fStandalone = z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:125:0x01bc, code lost:
    
        if (r7[3] == 60) goto L118;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x01be, code lost:
    
        r6 = java.lang.Boolean.TRUE;
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x01d1, code lost:
    
        if (r7[3] == 0) goto L127;
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x01d3, code lost:
    
        r6 = java.lang.Boolean.FALSE;
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x020d, code lost:
    
        if (r7[3] == 63) goto L118;
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x0225, code lost:
    
        if (r7[3] == 0) goto L127;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String setupCurrentEntity(java.lang.String r21, org.apache.xerces.xni.parser.XMLInputSource r22, boolean r23, boolean r24) throws java.io.IOException, org.apache.xerces.xni.XNIException {
        /*
            Method dump skipped, instructions count: 643
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.XMLEntityManager.setupCurrentEntity(java.lang.String, org.apache.xerces.xni.parser.XMLInputSource, boolean, boolean):java.lang.String");
    }

    public void startDTDEntity(XMLInputSource xMLInputSource) throws IOException, XNIException {
        startEntity(f112012p, xMLInputSource, false, true);
    }

    public void startDocumentEntity(XMLInputSource xMLInputSource) throws IOException, XNIException {
        startEntity(f112011o, xMLInputSource, false, true);
    }

    public void startEntity(String str, XMLInputSource xMLInputSource, boolean z, boolean z2) throws IOException, XNIException {
        String str2 = setupCurrentEntity(str, xMLInputSource, z, z2);
        if (this.fSecurityManager != null) {
            int paramEntityRefCount = this.fEntityExpansionCount + getParamEntityRefCount(str);
            this.fEntityExpansionCount = paramEntityRefCount + 1;
            int i = this.fEntityExpansionLimit;
            if (paramEntityRefCount > i) {
                this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "EntityExpansionLimitExceeded", new Object[]{new Integer(i)}, (short) 2);
                this.fEntityExpansionCount = 0;
            }
        }
        XMLEntityHandler xMLEntityHandler = this.fEntityHandler;
        if (xMLEntityHandler != null) {
            xMLEntityHandler.startEntity(str, this.f112023e, str2, null);
        }
    }

    public void startExternalSubset() {
        this.fInExternalSubset = true;
    }

    public XMLEntityManager(XMLEntityManager xMLEntityManager) {
        this.fExternalGeneralEntities = true;
        this.fExternalParameterEntities = true;
        this.fBufferSize = 2048;
        this.fSecurityManager = null;
        this.fInExternalSubset = false;
        this.fEntityExpansionLimit = 0;
        this.fEntityExpansionCount = 0;
        this.fEntities = new Hashtable();
        this.fEntityStack = new Stack();
        this.f112023e = new XMLResourceIdentifierImpl();
        this.f112024f = new AugmentationsImpl();
        this.f112025g = new C20002a(this.fBufferSize);
        this.f112026h = new C20002a(this.fBufferSize << 1);
        this.f112027i = null;
        this.f112028j = new C20004c(this.fBufferSize, 512);
        this.fReaderStack = new Stack();
        this.fDeclaredEntities = xMLEntityManager != null ? xMLEntityManager.m69842k() : null;
        setScannerVersion((short) 1);
    }

    public void addInternalEntity(String str, String str2, int i) {
        if (!this.fEntities.containsKey(str)) {
            this.fEntities.put(str, new InternalEntity(str, str2, this.fInExternalSubset, i));
        } else if (this.fWarnDuplicateEntityDef) {
            this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_DUPLICATE_ENTITY_DEFINITION", new Object[]{str}, (short) 0);
        }
    }

    @Override // org.apache.xerces.xni.parser.XMLComponent
    public void reset(XMLComponentManager xMLComponentManager) throws XMLConfigurationException {
        boolean z;
        try {
            z = xMLComponentManager.getFeature("http://apache.org/xml/features/internal/parser-settings");
        } catch (XMLConfigurationException unused) {
            z = true;
        }
        if (!z) {
            reset();
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
            this.fValidationManager = (ValidationManager) xMLComponentManager.getProperty("http://apache.org/xml/properties/internal/validation-manager");
        } catch (XMLConfigurationException unused9) {
            this.fValidationManager = null;
        }
        try {
            this.fSecurityManager = (SecurityManager) xMLComponentManager.getProperty("http://apache.org/xml/properties/security-manager");
        } catch (XMLConfigurationException unused10) {
            this.fSecurityManager = null;
        }
        reset();
    }

    public void startEntity(String str, boolean z) throws IOException, XNIException {
        ValidationManager validationManager;
        Entity entity = (Entity) this.fEntities.get(str);
        if (entity == null) {
            if (this.fEntityHandler != null) {
                this.f112023e.clear();
                this.f112024f.removeAllItems();
                Augmentations augmentations = this.f112024f;
                Boolean bool = Boolean.TRUE;
                augmentations.putItem("ENTITY_SKIPPED", bool);
                this.fEntityHandler.startEntity(str, this.f112023e, null, this.f112024f);
                this.f112024f.removeAllItems();
                this.f112024f.putItem("ENTITY_SKIPPED", bool);
                this.fEntityHandler.endEntity(str, this.f112024f);
                return;
            }
            return;
        }
        boolean isExternal = entity.isExternal();
        if (isExternal && ((validationManager = this.fValidationManager) == null || !validationManager.isCachedDTD())) {
            boolean isUnparsed = entity.isUnparsed();
            boolean startsWith = str.startsWith("%");
            boolean z2 = !startsWith;
            if (isUnparsed || ((z2 && !this.fExternalGeneralEntities) || (startsWith && !this.fExternalParameterEntities))) {
                if (this.fEntityHandler != null) {
                    this.f112023e.clear();
                    ExternalEntity externalEntity = (ExternalEntity) entity;
                    XMLResourceIdentifier xMLResourceIdentifier = externalEntity.entityLocation;
                    String literalSystemId = xMLResourceIdentifier != null ? xMLResourceIdentifier.getLiteralSystemId() : null;
                    XMLResourceIdentifier xMLResourceIdentifier2 = externalEntity.entityLocation;
                    String baseSystemId = xMLResourceIdentifier2 != null ? xMLResourceIdentifier2.getBaseSystemId() : null;
                    String expandSystemId = expandSystemId(literalSystemId, baseSystemId, false);
                    XMLResourceIdentifierImpl xMLResourceIdentifierImpl = this.f112023e;
                    XMLResourceIdentifier xMLResourceIdentifier3 = externalEntity.entityLocation;
                    xMLResourceIdentifierImpl.setValues(xMLResourceIdentifier3 != null ? xMLResourceIdentifier3.getPublicId() : null, literalSystemId, baseSystemId, expandSystemId);
                    this.f112024f.removeAllItems();
                    Augmentations augmentations2 = this.f112024f;
                    Boolean bool2 = Boolean.TRUE;
                    augmentations2.putItem("ENTITY_SKIPPED", bool2);
                    this.fEntityHandler.startEntity(str, this.f112023e, null, this.f112024f);
                    this.f112024f.removeAllItems();
                    this.f112024f.putItem("ENTITY_SKIPPED", bool2);
                    this.fEntityHandler.endEntity(str, this.f112024f);
                    return;
                }
                return;
            }
        }
        int size = this.fEntityStack.size();
        int i = size;
        while (i >= 0) {
            if ((i == size ? this.fCurrentEntity : (Entity) this.fEntityStack.elementAt(i)).name == str) {
                StringBuffer stringBuffer = new StringBuffer(str);
                while (true) {
                    i++;
                    if (i >= size) {
                        break;
                    }
                    Entity entity2 = (Entity) this.fEntityStack.elementAt(i);
                    stringBuffer.append(AlphabetConverter.f109940d);
                    stringBuffer.append(entity2.name);
                }
                stringBuffer.append(AlphabetConverter.f109940d);
                stringBuffer.append(this.fCurrentEntity.name);
                stringBuffer.append(AlphabetConverter.f109940d);
                stringBuffer.append(str);
                this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "RecursiveReference", new Object[]{str, stringBuffer.toString()}, (short) 2);
                if (this.fEntityHandler != null) {
                    this.f112023e.clear();
                    if (isExternal) {
                        ExternalEntity externalEntity2 = (ExternalEntity) entity;
                        XMLResourceIdentifier xMLResourceIdentifier4 = externalEntity2.entityLocation;
                        String literalSystemId2 = xMLResourceIdentifier4 != null ? xMLResourceIdentifier4.getLiteralSystemId() : null;
                        XMLResourceIdentifier xMLResourceIdentifier5 = externalEntity2.entityLocation;
                        String baseSystemId2 = xMLResourceIdentifier5 != null ? xMLResourceIdentifier5.getBaseSystemId() : null;
                        String expandSystemId2 = expandSystemId(literalSystemId2, baseSystemId2, false);
                        XMLResourceIdentifierImpl xMLResourceIdentifierImpl2 = this.f112023e;
                        XMLResourceIdentifier xMLResourceIdentifier6 = externalEntity2.entityLocation;
                        xMLResourceIdentifierImpl2.setValues(xMLResourceIdentifier6 != null ? xMLResourceIdentifier6.getPublicId() : null, literalSystemId2, baseSystemId2, expandSystemId2);
                    }
                    this.f112024f.removeAllItems();
                    Augmentations augmentations3 = this.f112024f;
                    Boolean bool3 = Boolean.TRUE;
                    augmentations3.putItem("ENTITY_SKIPPED", bool3);
                    this.fEntityHandler.startEntity(str, this.f112023e, null, this.f112024f);
                    this.f112024f.removeAllItems();
                    this.f112024f.putItem("ENTITY_SKIPPED", bool3);
                    this.fEntityHandler.endEntity(str, this.f112024f);
                    return;
                }
                return;
            }
            i--;
        }
        startEntity(str, isExternal ? resolveEntity(((ExternalEntity) entity).entityLocation) : new XMLInputSource((String) null, (String) null, (String) null, new StringReader(((InternalEntity) entity).text), (String) null), z, isExternal);
    }
}
