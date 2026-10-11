package net.p110sf.saxon.serialize;

import com.caverock.androidsvg.SVGParser;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.sun.org.apache.xml.internal.serializer.SerializerConstants;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Properties;
import java.util.Stack;
import java.util.function.IntPredicate;
import net.p110sf.saxon.event.ReceiverOption;
import net.p110sf.saxon.lib.SaxonOutputKeys;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.AttributeMap;
import net.p110sf.saxon.om.NamespaceBinding;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.p111z.IntIterator;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.serialize.XMLEmitter;
import net.p110sf.saxon.serialize.charcode.UTF8CharacterSet;
import net.p110sf.saxon.str.StringConstants;
import net.p110sf.saxon.str.StringView;
import net.p110sf.saxon.str.UnicodeBuilder;
import net.p110sf.saxon.str.UnicodeChar;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.str.UnicodeWriter;
import net.p110sf.saxon.str.WhitespaceString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.value.Whitespace;
import org.apache.logging.log4j.util.Chars;

/* loaded from: classes11.dex */
public class XMLEmitter extends Emitter {
    protected static final byte[] DOCTYPE;
    protected static final byte[] RIGHT_ANGLE_NEWLINE;

    /* renamed from: j */
    public static final byte[] f101624j;

    /* renamed from: k */
    public static final byte[] f101625k;

    /* renamed from: l */
    public static final byte[] f101626l;

    /* renamed from: m */
    public static final byte[] f101627m;

    /* renamed from: n */
    public static final byte[] f101628n;

    /* renamed from: o */
    public static final byte[] f101629o;

    /* renamed from: p */
    public static final /* synthetic */ boolean f101630p = false;
    protected static boolean[] specialInAtt;
    protected static boolean[] specialInAttSingle;
    protected static boolean[] specialInText = new boolean[128];
    protected NodeName elementCode;

    /* renamed from: h */
    public IntPredicate f101633h;

    /* renamed from: i */
    public IntPredicate f101634i;
    protected boolean canonical = false;
    protected boolean started = false;
    protected boolean startedElement = false;
    protected boolean openStartTag = false;
    protected boolean declarationIsWritten = false;
    protected int indentForNextAttribute = -1;
    protected boolean undeclareNamespaces = false;
    protected boolean unfailing = false;
    protected String internalSubset = null;
    protected char delimiter = '\"';
    protected boolean[] attSpecials = specialInAtt;
    protected Stack<String> elementStack = new Stack<>();

    /* renamed from: f */
    public boolean f101631f = false;

    /* renamed from: g */
    public boolean f101632g = false;
    protected CharacterReferenceGenerator characterReferenceGenerator = HexCharacterReferenceGenerator.THE_INSTANCE;

    static {
        for (int i = 0; i <= 31; i++) {
            specialInText[i] = true;
        }
        for (int i2 = 32; i2 <= 127; i2++) {
            specialInText[i2] = false;
        }
        boolean[] zArr = specialInText;
        zArr[10] = false;
        zArr[9] = false;
        zArr[13] = true;
        zArr[60] = true;
        zArr[62] = true;
        zArr[38] = true;
        specialInAtt = new boolean[128];
        for (int i3 = 0; i3 <= 31; i3++) {
            specialInAtt[i3] = true;
        }
        for (int i4 = 32; i4 <= 127; i4++) {
            specialInAtt[i4] = false;
        }
        boolean[] zArr2 = specialInAtt;
        zArr2[0] = true;
        zArr2[13] = true;
        zArr2[10] = true;
        zArr2[9] = true;
        zArr2[60] = true;
        zArr2[62] = true;
        zArr2[38] = true;
        zArr2[34] = true;
        boolean[] copyOf = Arrays.copyOf(zArr2, 128);
        specialInAttSingle = copyOf;
        copyOf[34] = false;
        copyOf[39] = true;
        f101624j = StringConstants.bytes("<?xml version=\"");
        f101625k = StringConstants.bytes("encoding=\"");
        f101626l = StringConstants.bytes(" standalone=\"");
        f101627m = StringConstants.bytes("\" ");
        DOCTYPE = StringConstants.bytes("<!DOCTYPE ");
        f101628n = StringConstants.bytes("  SYSTEM ");
        f101629o = StringConstants.bytes("  PUBLIC \"");
        RIGHT_ANGLE_NEWLINE = StringConstants.bytes(">\n");
    }

    /* renamed from: h */
    public static /* synthetic */ boolean m63869h(int i) {
        return i < 127 ? specialInText[i] : i < 160 || i == 8232;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i */
    public /* synthetic */ boolean m63870i(int i) {
        return i < 127 ? this.attSpecials[i] : i < 160 || i == 8232;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j */
    public /* synthetic */ boolean m63871j(int i) {
        return i < 127 ? specialInText[i] : i < 160 || i == 8232 || i > 65535 || !this.characterSet.inCharset(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k */
    public /* synthetic */ boolean m63872k(int i) {
        return i < 127 ? this.attSpecials[i] : i < 160 || i == 8232 || i > 65535 || !this.characterSet.inCharset(i);
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void characters(UnicodeString unicodeString, Location location, int i) throws XPathException {
        if (!this.started) {
            openDocument();
        }
        if (this.f101632g && this.elementStack.isEmpty() && !Whitespace.isAllWhite(unicodeString) && !this.unfailing) {
            XPathException xPathException = new XPathException("When 'standalone' or 'doctype-system' is specified, the document must be well-formed; but this document contains a top-level text node");
            xPathException.setErrorCode("SEPM0004");
            throw xPathException;
        }
        try {
            if (this.openStartTag) {
                closeStartTag();
            }
            if (unicodeString instanceof WhitespaceString) {
                ((WhitespaceString) unicodeString).write(this.writer);
                return;
            }
            if (ReceiverOption.contains(i, 4)) {
                this.writer.write(unicodeString);
                return;
            }
            if (!ReceiverOption.contains(i, 1)) {
                writeEscape(unicodeString, false);
                return;
            }
            if (testCharacters(unicodeString) != 0) {
                IntIterator codePoints = unicodeString.codePoints();
                while (codePoints.hasNext()) {
                    int next = codePoints.next();
                    if (next != 0) {
                        if (this.characterSet.inCharset(next)) {
                            this.writer.writeCodePoint(next);
                        } else {
                            writeEscape(new UnicodeChar(next), false);
                        }
                    }
                }
                return;
            }
            if (!ReceiverOption.contains(i, 256)) {
                this.writer.write(unicodeString);
                return;
            }
            IntIterator codePoints2 = unicodeString.codePoints();
            while (codePoints2.hasNext()) {
                int next2 = codePoints2.next();
                if (next2 != 0) {
                    this.writer.writeCodePoint(next2);
                }
            }
        } catch (IOException e) {
            throw new XPathException("Failure writing to " + getSystemId(), e);
        }
    }

    @Override // net.p110sf.saxon.serialize.Emitter, net.p110sf.saxon.event.Receiver
    public void close() throws XPathException {
        if (!this.started) {
            openDocument();
        }
        try {
            UnicodeWriter unicodeWriter = this.writer;
            if (unicodeWriter != null) {
                unicodeWriter.flush();
            }
            super.close();
        } catch (IOException e) {
            throw new XPathException("Failure writing to " + getSystemId(), e);
        }
    }

    public void closeStartTag() throws XPathException {
        try {
            if (this.openStartTag) {
                this.writer.writeCodePoint(62);
                this.openStartTag = false;
            }
        } catch (IOException e) {
            throw new XPathException("Failure writing to " + getSystemId(), e);
        }
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void comment(UnicodeString unicodeString, Location location, int i) throws XPathException {
        if (!this.started) {
            openDocument();
        }
        int testCharacters = testCharacters(unicodeString);
        if (testCharacters != 0) {
            if (!this.unfailing) {
                XPathException xPathException = new XPathException("Character in comment cannot be represented in the selected encoding (code " + testCharacters + ')');
                xPathException.setErrorCode("SERE0008");
                throw xPathException;
            }
            unicodeString = convertToAscii(unicodeString);
        }
        try {
            if (this.openStartTag) {
                closeStartTag();
            }
            this.writer.writeAscii(StringConstants.COMMENT_START);
            this.writer.write(unicodeString);
            this.writer.writeAscii(StringConstants.COMMENT_END);
        } catch (IOException e) {
            throw new XPathException("Failure writing to " + getSystemId(), e);
        }
    }

    public UnicodeString convertToAscii(UnicodeString unicodeString) {
        UnicodeBuilder unicodeBuilder = new UnicodeBuilder();
        IntIterator codePoints = unicodeString.codePoints();
        while (codePoints.hasNext()) {
            int next = codePoints.next();
            if (next < 20 || next >= 127) {
                unicodeBuilder.append("_" + next + "_");
            } else {
                unicodeBuilder.append(next);
            }
        }
        return unicodeBuilder.toUnicodeString();
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void endDocument() throws XPathException {
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void endElement() throws XPathException {
        String pop = this.elementStack.pop();
        try {
            if (this.openStartTag) {
                writeEmptyElementTagCloser(pop, this.elementCode);
                this.openStartTag = false;
            } else {
                this.writer.writeAscii(StringConstants.END_TAG_START);
                this.writer.write(pop);
                this.writer.writeCodePoint(62);
            }
        } catch (IOException e) {
            throw new XPathException("Failure writing to " + getSystemId(), e);
        }
    }

    /* renamed from: g */
    public final void m63873g(NodeName nodeName, String str, int i, boolean z) throws XPathException {
        int testCharacters;
        String displayName = nodeName.getDisplayName();
        if (!this.allCharactersEncodable && (testCharacters = testCharacters(StringView.m63901of(displayName))) != 0) {
            if (!this.unfailing) {
                XPathException xPathException = new XPathException("Attribute name contains a character (decimal + " + testCharacters + ") not available in the selected encoding");
                xPathException.setErrorCode("SERE0008");
                throw xPathException;
            }
            displayName = convertToAscii(StringView.m63901of(displayName)).toString();
        }
        try {
            if (z) {
                this.writer.writeCodePoint(32);
            } else {
                writeAttributeIndentString();
            }
            writeAttribute(this.elementCode, displayName, str, i);
        } catch (IOException e) {
            throw new XPathException("Failure writing to " + getSystemId(), e);
        }
    }

    public boolean isStarted() {
        return this.started;
    }

    public void namespace(String str, String str2, boolean z) throws XPathException {
        try {
            if (str.isEmpty()) {
                if (z) {
                    this.writer.writeCodePoint(32);
                } else {
                    writeAttributeIndentString();
                }
                writeAttribute(this.elementCode, "xmlns", str2, 0);
                return;
            }
            if (str.equals("xml")) {
                return;
            }
            int testCharacters = testCharacters(StringView.m63901of(str));
            if (testCharacters != 0) {
                XPathException xPathException = new XPathException("Namespace prefix contains a character (decimal + " + testCharacters + ") not available in the selected encoding");
                xPathException.setErrorCode("SERE0008");
                throw xPathException;
            }
            if (this.undeclareNamespaces || !str2.isEmpty()) {
                if (z) {
                    this.writer.writeCodePoint(32);
                } else {
                    writeAttributeIndentString();
                }
                writeAttribute(this.elementCode, "xmlns:" + str, str2, 0);
            }
        } catch (IOException e) {
            throw new XPathException("Failure writing to " + getSystemId(), e);
        }
    }

    @Override // net.p110sf.saxon.event.SequenceReceiver, net.p110sf.saxon.event.Receiver
    public void open() throws XPathException {
    }

    public void openDocument() throws XPathException {
        if (this.characterSet == null) {
            this.characterSet = UTF8CharacterSet.getInstance();
        }
        if (this.outputProperties == null) {
            this.outputProperties = new Properties();
        }
        this.undeclareNamespaces = "yes".equals(this.outputProperties.getProperty(SaxonOutputKeys.UNDECLARE_PREFIXES));
        this.canonical = "yes".equals(this.outputProperties.getProperty(SaxonOutputKeys.CANONICAL));
        this.unfailing = "yes".equals(this.outputProperties.getProperty(SaxonOutputKeys.UNFAILING));
        this.internalSubset = this.outputProperties.getProperty(SaxonOutputKeys.INTERNAL_DTD_SUBSET);
        if ("yes".equals(this.outputProperties.getProperty(SaxonOutputKeys.SINGLE_QUOTES))) {
            this.delimiter = Chars.QUOTE;
            this.attSpecials = specialInAttSingle;
        }
        if (this.allCharactersEncodable) {
            this.f101633h = new IntPredicate() { // from class: com.sunia.HTREnginev2.klo
                @Override // java.util.function.IntPredicate
                public final boolean test(int i) {
                    boolean m63869h;
                    m63869h = XMLEmitter.m63869h(i);
                    return m63869h;
                }
            };
            this.f101634i = new IntPredicate() { // from class: com.sunia.HTREnginev2.llo
                @Override // java.util.function.IntPredicate
                public final boolean test(int i) {
                    boolean m63870i;
                    m63870i = XMLEmitter.this.m63870i(i);
                    return m63870i;
                }
            };
        } else {
            this.f101633h = new IntPredicate() { // from class: com.sunia.HTREnginev2.mlo
                @Override // java.util.function.IntPredicate
                public final boolean test(int i) {
                    boolean m63871j;
                    m63871j = XMLEmitter.this.m63871j(i);
                    return m63871j;
                }
            };
            this.f101634i = new IntPredicate() { // from class: com.sunia.HTREnginev2.nlo
                @Override // java.util.function.IntPredicate
                public final boolean test(int i) {
                    boolean m63872k;
                    m63872k = XMLEmitter.this.m63872k(i);
                    return m63872k;
                }
            };
        }
        writeDeclaration();
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void processingInstruction(String str, UnicodeString unicodeString, Location location, int i) throws XPathException {
        if (!this.started) {
            openDocument();
        }
        int testCharacters = testCharacters(StringView.m63901of(str));
        if (testCharacters != 0) {
            if (!this.unfailing) {
                XPathException xPathException = new XPathException("Character in processing instruction name cannot be represented in the selected encoding (code " + testCharacters + ')');
                xPathException.setErrorCode("SERE0008");
                throw xPathException;
            }
            str = convertToAscii(StringView.m63901of(str)).toString();
        }
        int testCharacters2 = testCharacters(unicodeString);
        if (testCharacters2 != 0) {
            if (!this.unfailing) {
                XPathException xPathException2 = new XPathException("Character in processing instruction data cannot be represented in the selected encoding (code " + testCharacters2 + ')');
                xPathException2.setErrorCode("SERE0008");
                throw xPathException2;
            }
            unicodeString = convertToAscii(unicodeString);
        }
        try {
            if (this.openStartTag) {
                closeStartTag();
            }
            this.writer.writeAscii(StringConstants.PI_START);
            this.writer.write(str);
            if (!unicodeString.isEmpty()) {
                this.writer.writeCodePoint(32);
                this.writer.write(unicodeString);
            }
            this.writer.writeAscii(StringConstants.PI_END);
        } catch (IOException e) {
            throw new XPathException("Failure writing to " + getSystemId(), e);
        }
    }

    public void setCharacterReferenceGenerator(CharacterReferenceGenerator characterReferenceGenerator) {
        this.characterReferenceGenerator = characterReferenceGenerator;
    }

    public void setEscapeNonAscii(Boolean bool) {
    }

    public void setIndentForNextAttribute(int i) {
        this.indentForNextAttribute = i;
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void startDocument(int i) throws XPathException {
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void startElement(NodeName nodeName, SchemaType schemaType, AttributeMap attributeMap, NamespaceMap namespaceMap, Location location, int i) throws XPathException {
        int testCharacters;
        this.previousAtomic = false;
        if (!this.started) {
            openDocument();
        } else if (this.f101632g && this.elementStack.isEmpty() && this.startedElement && !this.unfailing) {
            XPathException xPathException = new XPathException("When 'standalone' or 'doctype-system' is specified, the document must be well-formed; but this document contains more than one top-level element");
            xPathException.setErrorCode("SEPM0004");
            throw xPathException;
        }
        this.startedElement = true;
        String displayName = nodeName.getDisplayName();
        if (!this.allCharactersEncodable && (testCharacters = testCharacters(StringView.m63901of(displayName))) != 0) {
            XPathException xPathException2 = new XPathException("Element name contains a character (decimal + " + testCharacters + ") not available in the selected encoding");
            xPathException2.setErrorCode("SERE0008");
            throw xPathException2;
        }
        this.elementStack.push(displayName);
        this.elementCode = nodeName;
        try {
            if (!this.started) {
                String property = this.outputProperties.getProperty("doctype-system");
                String property2 = this.outputProperties.getProperty("doctype-public");
                if ("".equals(property)) {
                    property = null;
                }
                if ("".equals(property2)) {
                    property2 = null;
                }
                if (property != null) {
                    this.f101632g = true;
                    writeDocType(nodeName, displayName, property, property2);
                } else if (writeDocTypeWithNullSystemId()) {
                    writeDocType(nodeName, displayName, null, property2);
                }
                this.started = true;
            }
            if (this.openStartTag) {
                closeStartTag();
            }
            this.writer.writeCodePoint(60);
            this.writer.write(displayName);
            int i2 = this.indentForNextAttribute;
            if (i2 >= 0) {
                this.indentForNextAttribute = i2 + displayName.length();
            }
            Iterator<NamespaceBinding> it2 = namespaceMap.iterator();
            boolean z = true;
            while (it2.hasNext()) {
                NamespaceBinding next = it2.next();
                namespace(next.getPrefix(), next.getURI(), z);
                z = false;
            }
            for (AttributeInfo attributeInfo : attributeMap) {
                m63873g(attributeInfo.getNodeName(), attributeInfo.getValue(), attributeInfo.getProperties(), z);
                z = false;
            }
            this.openStartTag = true;
            this.indentForNextAttribute = -1;
        } catch (IOException e) {
            throw new XPathException("Failure writing to " + getSystemId(), e);
        }
    }

    public int testCharacters(UnicodeString unicodeString) {
        IntIterator codePoints = unicodeString.codePoints();
        while (codePoints.hasNext()) {
            int next = codePoints.next();
            if (next > 127 && !this.characterSet.inCharset(next)) {
                return next;
            }
        }
        return 0;
    }

    @Override // net.p110sf.saxon.serialize.Emitter, net.p110sf.saxon.event.Receiver
    public boolean usesTypeAnnotations() {
        return false;
    }

    public void writeAttribute(NodeName nodeName, String str, String str2, int i) throws XPathException {
        char c;
        try {
            this.writer.write(str);
            if (ReceiverOption.contains(i, 4)) {
                this.writer.writeCodePoint(61);
                this.writer.writeCodePoint(this.delimiter);
                this.writer.write(str2);
                this.writer.writeCodePoint(this.delimiter);
                return;
            }
            if (!ReceiverOption.contains(i, 256)) {
                this.writer.writeCodePoint(61);
                this.writer.writeCodePoint(this.delimiter);
                if (ReceiverOption.contains(i, 1)) {
                    this.writer.write(str2);
                } else {
                    writeEscape(StringView.tidy(str2), true);
                }
                this.writer.writeCodePoint(this.delimiter);
                return;
            }
            this.writer.writeCodePoint(61);
            if (str2.indexOf(34) >= 0) {
                c = Chars.QUOTE;
                if (str2.indexOf(39) < 0) {
                    this.writer.writeCodePoint(c);
                    writeEscape(StringView.tidy(str2), true);
                    this.writer.writeCodePoint(c);
                }
            }
            c = this.delimiter;
            this.writer.writeCodePoint(c);
            writeEscape(StringView.tidy(str2), true);
            this.writer.writeCodePoint(c);
        } catch (IOException e) {
            throw new XPathException("Failure writing to " + getSystemId(), e);
        }
    }

    public void writeAttributeIndentString() throws IOException {
        if (this.indentForNextAttribute < 0) {
            this.writer.writeCodePoint(32);
        } else {
            this.writer.writeCodePoint(10);
            this.writer.writeRepeatedAscii((byte) 32, this.indentForNextAttribute);
        }
    }

    public void writeCodePoint(int i) throws IOException {
        this.writer.writeCodePoint(i);
    }

    public void writeDeclaration() throws XPathException {
        if (this.declarationIsWritten) {
            return;
        }
        this.declarationIsWritten = true;
        try {
            this.f101631f = "yes".equals(this.outputProperties.getProperty("indent"));
            String property = this.outputProperties.getProperty(SaxonOutputKeys.BYTE_ORDER_MARK);
            String property2 = this.outputProperties.getProperty("encoding");
            if (property2 == null || property2.equalsIgnoreCase("utf8") || this.canonical) {
                property2 = "UTF-8";
            }
            if ("yes".equals(property) && !this.canonical && ("UTF-8".equalsIgnoreCase(property2) || "UTF-16LE".equalsIgnoreCase(property2) || "UTF-16BE".equalsIgnoreCase(property2))) {
                this.writer.writeCodePoint(65279);
            }
            String property3 = this.outputProperties.getProperty("omit-xml-declaration");
            if (property3 == null) {
                property3 = SVGParser.f16048t;
            }
            if (this.canonical) {
                property3 = "yes";
            }
            String property4 = this.outputProperties.getProperty("version");
            String str = SerializerConstants.XMLVERSION11;
            if (property4 != null) {
                if (!property4.equals("1.0") && !property4.equals(SerializerConstants.XMLVERSION11)) {
                    if (!this.unfailing) {
                        XPathException xPathException = new XPathException("XML version must be 1.0 or 1.1");
                        xPathException.setErrorCode("SESU0013");
                        throw xPathException;
                    }
                    property4 = "1.0";
                }
                if (!property4.equals("1.0") && property3.equals("yes") && this.outputProperties.getProperty("doctype-system") != null && !this.unfailing) {
                    XPathException xPathException2 = new XPathException("Values of 'version', 'omit-xml-declaration', and 'doctype-system' conflict");
                    xPathException2.setErrorCode("SEPM0009");
                    throw xPathException2;
                }
                str = property4;
            } else if (getConfiguration().getXMLVersion() == 10) {
                str = "1.0";
            }
            if ("yes".equals(this.outputProperties.getProperty(SaxonOutputKeys.UNDECLARE_PREFIXES))) {
                this.undeclareNamespaces = true;
            }
            if (str.equals("1.0") && this.undeclareNamespaces) {
                if (!this.unfailing) {
                    XPathException xPathException3 = new XPathException("Cannot undeclare namespaces with XML version 1.0");
                    xPathException3.setErrorCode("SEPM0010");
                    throw xPathException3;
                }
                this.undeclareNamespaces = false;
            }
            String property5 = this.outputProperties.getProperty("standalone");
            if ("omit".equals(property5)) {
                property5 = null;
            }
            if (property5 != null) {
                this.f101632g = true;
                if (property3.equals("yes") && !this.unfailing) {
                    XPathException xPathException4 = new XPathException("Values of 'standalone' and 'omit-xml-declaration' conflict");
                    xPathException4.setErrorCode("SEPM0009");
                    throw xPathException4;
                }
            }
            String property6 = this.outputProperties.getProperty("doctype-system");
            if (property6 != null && !"".equals(property6)) {
                this.f101632g = true;
            }
            if (property3.equals(SVGParser.f16048t)) {
                this.writer.writeAscii(f101624j);
                this.writer.write(str);
                this.writer.writeAscii(f101627m);
                this.writer.writeAscii(f101625k);
                this.writer.write(property2);
                this.writer.writeCodePoint(34);
                if (property5 != null) {
                    this.writer.writeAscii(f101626l);
                    this.writer.write(property5);
                    this.writer.writeCodePoint(34);
                }
                this.writer.writeAscii(StringConstants.PI_END);
            }
        } catch (IOException e) {
            throw new XPathException("Failure writing to " + getSystemId(), e);
        }
    }

    public void writeDocType(NodeName nodeName, String str, String str2, String str3) throws XPathException {
        String str4;
        try {
            if (this.canonical) {
                return;
            }
            if (this.declarationIsWritten && !this.f101631f) {
                this.writer.writeCodePoint(10);
            }
            this.writer.writeAscii(DOCTYPE);
            this.writer.write(str);
            this.writer.writeCodePoint(10);
            if (str2 == null) {
                str4 = null;
            } else if (str2.contains("\"")) {
                str4 = CloudStorageConstants.SINGLE_QUOTES + str2 + CloudStorageConstants.SINGLE_QUOTES;
            } else {
                str4 = '\"' + str2 + '\"';
            }
            if (str2 != null && str3 == null) {
                this.writer.writeAscii(f101628n);
                this.writer.write(str4);
            } else if (str2 == null && str3 != null) {
                this.writer.writeAscii(f101629o);
                this.writer.write(str3);
                this.writer.writeCodePoint(34);
            } else if (str3 != null) {
                this.writer.writeAscii(f101629o);
                this.writer.write(str3);
                this.writer.writeAscii(f101627m);
                this.writer.write(str4);
            }
            if (this.internalSubset != null) {
                this.writer.writeCodePoint(91);
                this.writer.writeCodePoint(10);
                this.writer.write(this.internalSubset);
                this.writer.writeCodePoint(10);
                this.writer.writeCodePoint(93);
            }
            this.writer.writeAscii(RIGHT_ANGLE_NEWLINE);
        } catch (IOException e) {
            throw new XPathException("Failure writing to " + getSystemId(), e);
        }
    }

    public boolean writeDocTypeWithNullSystemId() {
        return this.internalSubset != null;
    }

    public void writeEmptyElementTagCloser(String str, NodeName nodeName) throws IOException {
        if (!this.canonical) {
            this.writer.writeAscii(StringConstants.EMPTY_TAG_END);
            return;
        }
        this.writer.writeCodePoint(62);
        this.writer.writeAscii(StringConstants.END_TAG_START);
        this.writer.write(str);
        this.writer.writeCodePoint(62);
    }

    public void writeEscape(UnicodeString unicodeString, boolean z) throws IOException, XPathException {
        boolean[] zArr = z ? this.attSpecials : specialInText;
        if (unicodeString instanceof WhitespaceString) {
            ((WhitespaceString) unicodeString).writeEscape(zArr, this.writer);
            return;
        }
        IntPredicate intPredicate = z ? this.f101634i : this.f101633h;
        long length = unicodeString.length();
        boolean z2 = false;
        long j = 0;
        while (j < length) {
            long indexWhere = unicodeString.indexWhere(intPredicate, j);
            long j2 = indexWhere == -1 ? length : indexWhere;
            if (indexWhere < 0) {
                if (j == 0) {
                    this.writer.write(unicodeString);
                    return;
                } else {
                    this.writer.write(unicodeString.substring(j, length));
                    return;
                }
            }
            if (j2 > j) {
                this.writer.write(unicodeString.substring(j, j2));
            }
            int codePointAt = unicodeString.codePointAt(j2);
            if (codePointAt == 0) {
                z2 = !z2;
            } else if (z2) {
                if (codePointAt > 127 && !this.characterSet.inCharset(codePointAt)) {
                    XPathException xPathException = new XPathException("Character " + codePointAt + " (x" + Integer.toHexString(codePointAt) + ") is not available in the chosen encoding");
                    xPathException.setErrorCode("SERE0008");
                    throw xPathException;
                }
                writeCodePoint(codePointAt);
            } else if (codePointAt < 127) {
                if (codePointAt == 9) {
                    this.writer.writeAscii(StringConstants.ESCAPE_TAB);
                } else if (codePointAt == 10) {
                    this.writer.writeAscii(StringConstants.ESCAPE_NL);
                } else if (codePointAt == 13) {
                    this.writer.writeAscii(StringConstants.ESCAPE_CR);
                } else if (codePointAt == 34) {
                    this.writer.writeAscii(StringConstants.ESCAPE_QUOT);
                } else if (codePointAt == 60) {
                    this.writer.writeAscii(StringConstants.ESCAPE_LT);
                } else if (codePointAt == 62) {
                    this.writer.writeAscii(StringConstants.ESCAPE_GT);
                } else if (codePointAt == 38) {
                    this.writer.writeAscii(StringConstants.ESCAPE_AMP);
                } else if (codePointAt != 39) {
                    this.characterReferenceGenerator.outputCharacterReference(codePointAt, this.writer);
                } else {
                    this.writer.writeAscii(StringConstants.ESCAPE_APOS);
                }
            } else if (codePointAt < 160 || codePointAt == 8232) {
                this.characterReferenceGenerator.outputCharacterReference(codePointAt, this.writer);
            } else if (codePointAt <= 65535) {
                this.characterReferenceGenerator.outputCharacterReference(codePointAt, this.writer);
            } else if (this.characterSet.inCharset(codePointAt)) {
                writeCodePoint(codePointAt);
            } else {
                this.characterReferenceGenerator.outputCharacterReference(codePointAt, this.writer);
            }
            j = 1 + j2;
        }
    }
}
