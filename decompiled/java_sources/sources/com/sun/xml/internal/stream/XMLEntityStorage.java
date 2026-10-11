package com.sun.xml.internal.stream;

import com.sun.org.apache.xerces.internal.impl.PropertyManager;
import com.sun.org.apache.xerces.internal.impl.XMLEntityManager;
import com.sun.org.apache.xerces.internal.impl.XMLErrorReporter;
import com.sun.org.apache.xerces.internal.util.XMLResourceIdentifierImpl;
import com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier;
import com.sun.org.apache.xerces.internal.xni.parser.XMLComponentManager;
import com.sun.org.apache.xerces.internal.xni.parser.XMLConfigurationException;
import com.sun.xml.internal.stream.Entity;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.util.Hashtable;
import org.apache.commons.lang3.SystemUtils;

/* loaded from: classes10.dex */
public class XMLEntityStorage {
    protected static final String ERROR_REPORTER = "http://apache.org/xml/properties/internal/error-reporter";
    protected static final String WARN_ON_DUPLICATE_ENTITYDEF = "http://apache.org/xml/features/warn-on-duplicate-entitydef";
    private static String gEscapedUserDir;
    private static String gUserDir;
    protected Entity.ScannedEntity fCurrentEntity;
    private XMLEntityManager fEntityManager;
    protected XMLErrorReporter fErrorReporter;
    protected PropertyManager fPropertyManager;
    protected boolean fWarnDuplicateEntityDef;
    private static boolean[] gNeedEscaping = new boolean[128];
    private static char[] gAfterEscaping1 = new char[128];
    private static char[] gAfterEscaping2 = new char[128];
    private static char[] gHexChs = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    protected Hashtable fEntities = new Hashtable();
    protected boolean fInExternalSubset = false;

    static {
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

    public XMLEntityStorage(PropertyManager propertyManager) {
        this.fPropertyManager = propertyManager;
    }

    public static String expandSystemId(String str) {
        return expandSystemId(str, null);
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

    private static synchronized String getUserDir() {
        char charAt;
        char upperCase;
        synchronized (XMLEntityStorage.class) {
            String str = "";
            try {
                str = System.getProperty(SystemUtils.f107422c);
            } catch (SecurityException unused) {
            }
            if (str.length() == 0) {
                return "";
            }
            if (str.equals(gUserDir)) {
                return gEscapedUserDir;
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
                    return replace;
                }
            }
            if (!replace.endsWith("/")) {
                stringBuffer.append('/');
            }
            String stringBuffer2 = stringBuffer.toString();
            gEscapedUserDir = stringBuffer2;
            return stringBuffer2;
        }
    }

    public void addExternalEntity(String str, String str2, String str3, String str4) {
        Entity.ScannedEntity scannedEntity;
        XMLResourceIdentifier xMLResourceIdentifier;
        if (this.fEntities.containsKey(str)) {
            if (this.fWarnDuplicateEntityDef) {
                this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_DUPLICATE_ENTITY_DEFINITION", new Object[]{str}, (short) 0);
            }
        } else {
            if (str4 == null && (scannedEntity = this.fCurrentEntity) != null && (xMLResourceIdentifier = scannedEntity.entityLocation) != null) {
                str4 = xMLResourceIdentifier.getExpandedSystemId();
            }
            this.fCurrentEntity = this.fEntityManager.getCurrentEntity();
            this.fEntities.put(str, new Entity.ExternalEntity(str, new XMLResourceIdentifierImpl(str2, str3, str4, expandSystemId(str3, str4)), null, this.fInExternalSubset));
        }
    }

    public void addInternalEntity(String str, String str2) {
        if (!this.fEntities.containsKey(str)) {
            this.fEntities.put(str, new Entity.InternalEntity(str, str2, this.fInExternalSubset));
        } else if (this.fWarnDuplicateEntityDef) {
            this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_DUPLICATE_ENTITY_DEFINITION", new Object[]{str}, (short) 0);
        }
    }

    public void addUnparsedEntity(String str, String str2, String str3, String str4, String str5) {
        this.fCurrentEntity = this.fEntityManager.getCurrentEntity();
        if (!this.fEntities.containsKey(str)) {
            this.fEntities.put(str, new Entity.ExternalEntity(str, new XMLResourceIdentifierImpl(str2, str3, str4, null), str5, this.fInExternalSubset));
        } else if (this.fWarnDuplicateEntityDef) {
            this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_DUPLICATE_ENTITY_DEFINITION", new Object[]{str}, (short) 0);
        }
    }

    public void endExternalSubset() {
        this.fInExternalSubset = false;
    }

    public Hashtable getDeclaredEntities() {
        return this.fEntities;
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

    public boolean isUnparsedEntity(String str) {
        Entity entity = (Entity) this.fEntities.get(str);
        if (entity == null) {
            return false;
        }
        return entity.isUnparsed();
    }

    public void reset(PropertyManager propertyManager) {
        this.fErrorReporter = (XMLErrorReporter) propertyManager.getProperty("http://apache.org/xml/properties/internal/error-reporter");
        this.fEntities.clear();
        this.fCurrentEntity = null;
    }

    public void startExternalSubset() {
        this.fInExternalSubset = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0089 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x008a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String expandSystemId(java.lang.String r17, java.lang.String r18) {
        /*
            r0 = r17
            r1 = r18
            if (r0 == 0) goto L8e
            int r2 = r17.length()
            if (r2 != 0) goto Le
            goto L8e
        Le:
            com.sun.org.apache.xerces.internal.util.URI r2 = new com.sun.org.apache.xerces.internal.util.URI     // Catch: com.sun.org.apache.xerces.internal.util.URI.MalformedURIException -> L14
            r2.<init>(r0)     // Catch: com.sun.org.apache.xerces.internal.util.URI.MalformedURIException -> L14
            return r0
        L14:
            java.lang.String r2 = fixURI(r17)
            if (r1 == 0) goto L6f
            int r3 = r18.length()     // Catch: java.lang.Exception -> L86
            if (r3 == 0) goto L6f
            boolean r3 = r1.equals(r0)     // Catch: java.lang.Exception -> L86
            if (r3 == 0) goto L27
            goto L6f
        L27:
            com.sun.org.apache.xerces.internal.util.URI r3 = new com.sun.org.apache.xerces.internal.util.URI     // Catch: com.sun.org.apache.xerces.internal.util.URI.MalformedURIException -> L31 java.lang.Exception -> L86
            java.lang.String r4 = fixURI(r18)     // Catch: com.sun.org.apache.xerces.internal.util.URI.MalformedURIException -> L31 java.lang.Exception -> L86
            r3.<init>(r4)     // Catch: com.sun.org.apache.xerces.internal.util.URI.MalformedURIException -> L31 java.lang.Exception -> L86
            goto L80
        L31:
            r3 = 58
            int r3 = r1.indexOf(r3)     // Catch: java.lang.Exception -> L86
            r4 = -1
            if (r3 == r4) goto L4b
            com.sun.org.apache.xerces.internal.util.URI r3 = new com.sun.org.apache.xerces.internal.util.URI     // Catch: java.lang.Exception -> L86
            java.lang.String r6 = "file"
            java.lang.String r7 = ""
            java.lang.String r8 = fixURI(r18)     // Catch: java.lang.Exception -> L86
            r9 = 0
            r10 = 0
            r5 = r3
            r5.<init>(r6, r7, r8, r9, r10)     // Catch: java.lang.Exception -> L86
            goto L80
        L4b:
            java.lang.String r3 = getUserDir()     // Catch: java.lang.Exception -> L86
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L86
            r4.<init>()     // Catch: java.lang.Exception -> L86
            r4.append(r3)     // Catch: java.lang.Exception -> L86
            java.lang.String r1 = fixURI(r18)     // Catch: java.lang.Exception -> L86
            r4.append(r1)     // Catch: java.lang.Exception -> L86
            java.lang.String r8 = r4.toString()     // Catch: java.lang.Exception -> L86
            com.sun.org.apache.xerces.internal.util.URI r3 = new com.sun.org.apache.xerces.internal.util.URI     // Catch: java.lang.Exception -> L86
            java.lang.String r6 = "file"
            java.lang.String r7 = ""
            r9 = 0
            r10 = 0
            r5 = r3
            r5.<init>(r6, r7, r8, r9, r10)     // Catch: java.lang.Exception -> L86
            goto L80
        L6f:
            java.lang.String r14 = getUserDir()     // Catch: java.lang.Exception -> L86
            com.sun.org.apache.xerces.internal.util.URI r3 = new com.sun.org.apache.xerces.internal.util.URI     // Catch: java.lang.Exception -> L86
            java.lang.String r12 = "file"
            java.lang.String r13 = ""
            r15 = 0
            r16 = 0
            r11 = r3
            r11.<init>(r12, r13, r14, r15, r16)     // Catch: java.lang.Exception -> L86
        L80:
            com.sun.org.apache.xerces.internal.util.URI r1 = new com.sun.org.apache.xerces.internal.util.URI     // Catch: java.lang.Exception -> L86
            r1.<init>(r3, r2)     // Catch: java.lang.Exception -> L86
            goto L87
        L86:
            r1 = 0
        L87:
            if (r1 != 0) goto L8a
            return r0
        L8a:
            java.lang.String r0 = r1.toString()
        L8e:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.xml.internal.stream.XMLEntityStorage.expandSystemId(java.lang.String, java.lang.String):java.lang.String");
    }

    public void reset() {
        this.fEntities.clear();
        this.fCurrentEntity = null;
    }

    public XMLEntityStorage(XMLEntityManager xMLEntityManager) {
        this.fEntityManager = xMLEntityManager;
    }

    public void reset(XMLComponentManager xMLComponentManager) throws XMLConfigurationException {
        try {
            this.fWarnDuplicateEntityDef = xMLComponentManager.getFeature(WARN_ON_DUPLICATE_ENTITYDEF);
        } catch (XMLConfigurationException unused) {
            this.fWarnDuplicateEntityDef = false;
        }
        this.fErrorReporter = (XMLErrorReporter) xMLComponentManager.getProperty("http://apache.org/xml/properties/internal/error-reporter");
        this.fEntities.clear();
        this.fCurrentEntity = null;
    }
}
