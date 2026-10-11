package com.sun.org.apache.xml.internal.serializer;

import com.sun.org.apache.xml.internal.serializer.NamespaceMappings;
import com.sun.org.apache.xml.internal.serializer.utils.WrappedRuntimeException;
import com.sun.xml.internal.stream.writers.XMLStreamWriterImpl;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.util.Properties;
import java.util.StringTokenizer;
import java.util.Vector;
import javax.xml.transform.ErrorListener;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import org.scribe.model.ParameterList;
import org.w3c.dom.Node;
import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.SAXException;

/* loaded from: classes10.dex */
public abstract class ToStream extends SerializerBase {
    private static final String COMMENT_BEGIN = "<!--";
    private static final String COMMENT_END = "-->";
    java.lang.reflect.Method m_canConvertMeth;
    protected boolean m_cdataStartCalled;
    protected CharInfo m_charInfo;
    private boolean m_escaping;
    private boolean m_expandDTDEntities;
    protected Properties m_format;
    protected boolean m_inDoctype;
    boolean m_isUTF8;
    protected char[] m_lineSep;
    protected int m_lineSepLen;
    protected boolean m_lineSepUse;
    boolean m_shouldFlush;
    protected boolean m_spaceBeforeClose;
    boolean m_startNewLine;
    protected BoolStack m_disableOutputEscapingStates = new BoolStack();
    EncodingInfo m_encodingInfo = new EncodingInfo(null, null);
    boolean m_triedToGetConverter = false;
    Object m_charToByteConverter = null;
    protected BoolStack m_preserves = new BoolStack();
    protected boolean m_ispreserve = false;
    protected boolean m_isprevtext = false;
    protected int m_maxCharacter = Encodings.getLastPrintable();

    /* loaded from: classes10.dex */
    public static final class BoolStack {
        private int m_allocatedSize;
        private int m_index;
        private boolean[] m_values;

        public BoolStack() {
            this(32);
        }

        private void grow() {
            int i = this.m_allocatedSize * 2;
            this.m_allocatedSize = i;
            boolean[] zArr = new boolean[i];
            System.arraycopy(this.m_values, 0, zArr, 0, this.m_index + 1);
            this.m_values = zArr;
        }

        public final void clear() {
            this.m_index = -1;
        }

        public boolean isEmpty() {
            return this.m_index == -1;
        }

        public final boolean peek() {
            return this.m_values[this.m_index];
        }

        public final boolean peekOrFalse() {
            int i = this.m_index;
            if (i > -1) {
                return this.m_values[i];
            }
            return false;
        }

        public final boolean peekOrTrue() {
            int i = this.m_index;
            if (i > -1) {
                return this.m_values[i];
            }
            return true;
        }

        public final boolean pop() {
            boolean[] zArr = this.m_values;
            int i = this.m_index;
            this.m_index = i - 1;
            return zArr[i];
        }

        public final boolean popAndTop() {
            int i = this.m_index - 1;
            this.m_index = i;
            if (i >= 0) {
                return this.m_values[i];
            }
            return false;
        }

        public final boolean push(boolean z) {
            if (this.m_index == this.m_allocatedSize - 1) {
                grow();
            }
            boolean[] zArr = this.m_values;
            int i = this.m_index + 1;
            this.m_index = i;
            zArr[i] = z;
            return z;
        }

        public final void setTop(boolean z) {
            this.m_values[this.m_index] = z;
        }

        public final int size() {
            return this.m_index + 1;
        }

        public BoolStack(int i) {
            this.m_allocatedSize = i;
            this.m_values = new boolean[i];
            this.m_index = -1;
        }
    }

    /* loaded from: classes10.dex */
    public class WritertoStringBuffer extends Writer {
        private final StringBuffer m_stringbuf;

        public WritertoStringBuffer(StringBuffer stringBuffer) {
            this.m_stringbuf = stringBuffer;
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() throws IOException {
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i, int i2) throws IOException {
            this.m_stringbuf.append(cArr, i, i2);
        }

        @Override // java.io.Writer
        public void write(int i) {
            this.m_stringbuf.append((char) i);
        }

        @Override // java.io.Writer
        public void write(String str) {
            this.m_stringbuf.append(str);
        }
    }

    public ToStream() {
        char[] charArray = System.getProperty("line.separator").toCharArray();
        this.m_lineSep = charArray;
        this.m_lineSepUse = true;
        this.m_lineSepLen = charArray.length;
        this.m_shouldFlush = true;
        this.m_spaceBeforeClose = false;
        this.m_inDoctype = false;
        this.m_isUTF8 = false;
        this.m_cdataStartCalled = false;
        this.m_expandDTDEntities = true;
        this.m_escaping = true;
    }

    private void DTDprolog() throws SAXException, IOException {
        Writer writer = this.m_writer;
        if (this.m_needToOutputDocTypeDecl) {
            outputDocTypeDecl(this.m_elemContext.m_elementName, false);
            this.m_needToOutputDocTypeDecl = false;
        }
        if (this.m_inDoctype) {
            writer.write(" [");
            writer.write(this.m_lineSep, 0, this.m_lineSepLen);
            this.m_inDoctype = false;
        }
    }

    private void addCdataSectionElement(String str, Vector vector) {
        StringTokenizer stringTokenizer = new StringTokenizer(str, "{}", false);
        String nextToken = stringTokenizer.nextToken();
        String nextToken2 = stringTokenizer.hasMoreTokens() ? stringTokenizer.nextToken() : null;
        if (nextToken2 == null) {
            vector.addElement(null);
            vector.addElement(nextToken);
        } else {
            vector.addElement(nextToken);
            vector.addElement(nextToken2);
        }
    }

    private synchronized void init(Writer writer, Properties properties, boolean z, boolean z2) {
        this.m_shouldFlush = z2;
        if (this.m_tracer != null && !(writer instanceof SerializerTraceWriter)) {
            this.m_writer = new SerializerTraceWriter(writer, this.m_tracer);
        } else {
            this.m_writer = writer;
        }
        this.m_format = properties;
        setCdataSectionElements("cdata-section-elements", properties);
        setIndentAmount(OutputPropertyUtils.getIntProperty(OutputPropertiesFactory.S_KEY_INDENT_AMOUNT, properties));
        setIndent(OutputPropertyUtils.getBooleanProperty("indent", properties));
        String property = properties.getProperty(OutputPropertiesFactory.S_KEY_LINE_SEPARATOR);
        if (property != null) {
            this.m_lineSep = property.toCharArray();
            this.m_lineSepLen = property.length();
        }
        setOmitXMLDeclaration(OutputPropertyUtils.getBooleanProperty("omit-xml-declaration", properties));
        setDoctypeSystem(properties.getProperty("doctype-system"));
        String property2 = properties.getProperty("doctype-public");
        setDoctypePublic(property2);
        if (properties.get("standalone") != null) {
            String property3 = properties.getProperty("standalone");
            if (z) {
                setStandaloneInternal(property3);
            } else {
                setStandalone(property3);
            }
        }
        setMediaType(properties.getProperty("media-type"));
        if (property2 != null && property2.startsWith("-//W3C//DTD XHTML")) {
            this.m_spaceBeforeClose = true;
        }
        if (getVersion() == null) {
            setVersion(properties.getProperty("version"));
        }
        String encoding = getEncoding();
        if (encoding == null) {
            encoding = Encodings.getMimeEncoding(properties.getProperty("encoding"));
            setEncoding(encoding);
        }
        this.m_isUTF8 = encoding.equals("UTF-8");
        String str = (String) properties.get(OutputPropertiesFactory.S_KEY_ENTITIES);
        if (str != null) {
            this.m_charInfo = CharInfo.getCharInfo(str, (String) properties.get("method"));
        }
    }

    private static boolean isCharacterInC0orC1Range(char c) {
        if (c == '\t' || c == '\n' || c == '\r') {
            return false;
        }
        return (c >= 127 && c <= 159) || (c >= 1 && c <= 31);
    }

    private boolean isEscapingDisabled() {
        return this.m_disableOutputEscapingStates.peekOrFalse();
    }

    private static boolean isNELorLSEPCharacter(char c) {
        return c == 133 || c == 8232;
    }

    public static final boolean isUTF16Surrogate(char c) {
        return (c & 64512) == 55296;
    }

    private void printSpace(int i) throws IOException {
        Writer writer = this.m_writer;
        for (int i2 = 0; i2 < i; i2++) {
            writer.write(32);
        }
    }

    private int processDirty(char[] cArr, int i, int i2, char c, int i3, boolean z) throws IOException {
        int i4 = i3 + 1;
        if (i2 > i4) {
            this.m_writer.write(cArr, i4, i2 - i4);
        }
        if ('\n' != c || !z) {
            return accumDefaultEscape(this.m_writer, c, i2, cArr, i, z, false) - 1;
        }
        this.m_writer.write(this.m_lineSep, 0, this.m_lineSepLen);
        return i2;
    }

    private void resetToStream() {
        this.m_cdataStartCalled = false;
        this.m_disableOutputEscapingStates.clear();
        this.m_escaping = true;
        this.m_inDoctype = false;
        this.m_ispreserve = false;
        this.m_isprevtext = false;
        this.m_isUTF8 = false;
        this.m_preserves.clear();
        this.m_shouldFlush = true;
        this.m_spaceBeforeClose = false;
        this.m_startNewLine = false;
        this.m_lineSepUse = true;
        this.m_expandDTDEntities = true;
    }

    private void setCdataSectionElements(String str, Properties properties) {
        String property = properties.getProperty(str);
        if (property != null) {
            Vector vector = new Vector();
            int length = property.length();
            StringBuffer stringBuffer = new StringBuffer();
            boolean z = false;
            for (int i = 0; i < length; i++) {
                char charAt = property.charAt(i);
                if (Character.isWhitespace(charAt)) {
                    if (!z) {
                        if (stringBuffer.length() > 0) {
                            addCdataSectionElement(stringBuffer.toString(), vector);
                            stringBuffer.setLength(0);
                        }
                    }
                } else if ('{' == charAt) {
                    z = true;
                } else if ('}' == charAt) {
                    z = false;
                }
                stringBuffer.append(charAt);
            }
            if (stringBuffer.length() > 0) {
                addCdataSectionElement(stringBuffer.toString(), vector);
                stringBuffer.setLength(0);
            }
            setCdataSectionElements(vector);
        }
    }

    public int accumDefaultEntity(Writer writer, char c, int i, char[] cArr, int i2, boolean z, boolean z2) throws IOException {
        String outputStringForChar;
        if (!z2 && '\n' == c) {
            writer.write(this.m_lineSep, 0, this.m_lineSepLen);
        } else {
            if ((!(z && this.m_charInfo.isSpecialTextChar(c)) && (z || !this.m_charInfo.isSpecialAttrChar(c))) || (outputStringForChar = this.m_charInfo.getOutputStringForChar(c)) == null) {
                return i;
            }
            writer.write(outputStringForChar);
        }
        return i + 1;
    }

    public int accumDefaultEscape(Writer writer, char c, int i, char[] cArr, int i2, boolean z, boolean z2) throws IOException {
        int accumDefaultEntity = accumDefaultEntity(writer, c, i, cArr, i2, z, z2);
        if (i != accumDefaultEntity) {
            return accumDefaultEntity;
        }
        if (Encodings.isHighUTF16Surrogate(c)) {
            int i3 = i + 1;
            if (i3 >= i2) {
                throw new IOException(com.sun.org.apache.xml.internal.serializer.utils.Utils.messages.createMessage("ER_INVALID_UTF16_SURROGATE", new Object[]{Integer.toHexString(c)}));
            }
            char c2 = cArr[i3];
            if (Encodings.isLowUTF16Surrogate(c2)) {
                int codePoint = Encodings.toCodePoint(c, c2);
                writer.write("&#");
                writer.write(Integer.toString(codePoint));
                writer.write(59);
                return accumDefaultEntity + 2;
            }
            throw new IOException(com.sun.org.apache.xml.internal.serializer.utils.Utils.messages.createMessage("ER_INVALID_UTF16_SURROGATE", new Object[]{Integer.toHexString(c) + " " + Integer.toHexString(c2)}));
        }
        if (isCharacterInC0orC1Range(c) || (SerializerConstants.XMLVERSION11.equals(getVersion()) && isNELorLSEPCharacter(c))) {
            writer.write("&#");
            writer.write(Integer.toString(c));
            writer.write(59);
        } else if ((!escapingNotNeeded(c) || ((z && this.m_charInfo.isSpecialTextChar(c)) || (!z && this.m_charInfo.isSpecialAttrChar(c)))) && this.m_elemContext.m_currentElemDepth > 0) {
            writer.write("&#");
            writer.write(Integer.toString(c));
            writer.write(59);
        } else {
            writer.write(c);
        }
        return accumDefaultEntity + 1;
    }

    @Override // com.sun.org.apache.xml.internal.serializer.SerializerBase
    public boolean addAttributeAlways(String str, String str2, String str3, String str4, String str5, boolean z) {
        int index = this.m_attributes.getIndex(str3);
        if (index >= 0) {
            String str6 = null;
            if (this.m_tracer != null) {
                String value = this.m_attributes.getValue(index);
                if (!str5.equals(value)) {
                    str6 = value;
                }
            }
            this.m_attributes.setValue(index, str5);
            if (str6 == null) {
                return false;
            }
            firePseudoAttributes();
            return false;
        }
        if (z) {
            int indexOf = str3.indexOf(58);
            if (indexOf > 0) {
                NamespaceMappings.MappingRecord mappingFromPrefix = this.m_prefixMap.getMappingFromPrefix(str3.substring(0, indexOf));
                if (mappingFromPrefix != null && mappingFromPrefix.m_declarationDepth == this.m_elemContext.m_currentElemDepth && !mappingFromPrefix.m_uri.equals(str)) {
                    String lookupPrefix = this.m_prefixMap.lookupPrefix(str);
                    if (lookupPrefix == null) {
                        lookupPrefix = this.m_prefixMap.generateNextPrefix();
                    }
                    str3 = lookupPrefix + ':' + str2;
                }
            }
            try {
                ensureAttributesNamespaceIsDeclared(str, str2, str3);
            } catch (SAXException e) {
                e.printStackTrace();
            }
        }
        this.m_attributes.addAttribute(str, str2, str3, str4, str5);
        if (this.m_tracer != null) {
            firePseudoAttributes();
        }
        return true;
    }

    public void attributeDecl(String str, String str2, String str3, String str4, String str5) throws SAXException {
        if (this.m_inExternalDTD) {
            return;
        }
        try {
            Writer writer = this.m_writer;
            DTDprolog();
            writer.write("<!ATTLIST ");
            writer.write(str);
            writer.write(32);
            writer.write(str2);
            writer.write(32);
            writer.write(str3);
            if (str4 != null) {
                writer.write(32);
                writer.write(str4);
            }
            writer.write(62);
            writer.write(this.m_lineSep, 0, this.m_lineSepLen);
        } catch (IOException e) {
            throw new SAXException(e);
        }
    }

    public void cdata(char[] cArr, int i, int i2) throws SAXException {
        try {
            boolean z = false;
            if (this.m_elemContext.m_startTagOpen) {
                closeStartTag();
                this.m_elemContext.m_startTagOpen = false;
            }
            this.m_ispreserve = true;
            if (shouldIndent()) {
                indent();
            }
            if (i2 >= 1 && escapingNotNeeded(cArr[i])) {
                z = true;
            }
            if (z && !this.m_cdataTagOpen) {
                this.m_writer.write("<![CDATA[");
                this.m_cdataTagOpen = true;
            }
            if (isEscapingDisabled()) {
                charactersRaw(cArr, i, i2);
            } else {
                writeNormalizedChars(cArr, i, i2, true, this.m_lineSepUse);
            }
            if (z && cArr[(i + i2) - 1] == ']') {
                closeCDATA();
            }
            if (this.m_tracer != null) {
                super.fireCDATAEvent(cArr, i, i2);
            }
        } catch (IOException e) {
            throw new SAXException(com.sun.org.apache.xml.internal.serializer.utils.Utils.messages.createMessage("ER_OIERROR", null), e);
        }
    }

    @Override // org.xml.sax.ContentHandler
    public void characters(char[] cArr, int i, int i2) throws SAXException {
        if (i2 != 0) {
            if (!this.m_inEntityRef || this.m_expandDTDEntities) {
                if (this.m_elemContext.m_startTagOpen) {
                    closeStartTag();
                    this.m_elemContext.m_startTagOpen = false;
                } else if (this.m_needToCallStartDocument) {
                    startDocumentInternal();
                }
                if (!this.m_cdataStartCalled && !this.m_elemContext.m_isCdataSection) {
                    if (this.m_cdataTagOpen) {
                        closeCDATA();
                    }
                    if (!this.m_disableOutputEscapingStates.peekOrFalse() && this.m_escaping) {
                        if (this.m_elemContext.m_startTagOpen) {
                            closeStartTag();
                            this.m_elemContext.m_startTagOpen = false;
                        }
                        int i3 = i + i2;
                        int i4 = i;
                        int i5 = i - 1;
                        while (i4 < i3) {
                            try {
                                char c = cArr[i4];
                                if (c != ' ' && ((c != '\n' || !this.m_lineSepUse) && c != '\r' && c != '\t')) {
                                    break;
                                }
                                if (!this.m_charInfo.isTextASCIIClean(c)) {
                                    i4 = processDirty(cArr, i3, i4, c, i5, true);
                                    i5 = i4;
                                }
                                i4++;
                            } catch (IOException e) {
                                throw new SAXException(e);
                            }
                        }
                        if (i4 < i3) {
                            this.m_ispreserve = true;
                        }
                        boolean equals = "1.0".equals(getVersion());
                        while (i4 < i3) {
                            while (i4 < i3) {
                                char c2 = cArr[i4];
                                if (c2 >= 127 || !this.m_charInfo.isTextASCIIClean(c2)) {
                                    break;
                                } else {
                                    i4++;
                                }
                            }
                            if (i4 == i3) {
                                break;
                            }
                            char c3 = cArr[i4];
                            if ((isCharacterInC0orC1Range(c3) || ((!equals && isNELorLSEPCharacter(c3)) || !escapingNotNeeded(c3) || this.m_charInfo.isSpecialTextChar(c3))) && '\"' != c3) {
                                i5 = processDirty(cArr, i3, i4, c3, i5, true);
                                i4 = i5;
                            }
                            i4++;
                        }
                        int i6 = i5 + 1;
                        if (i4 > i6) {
                            this.m_writer.write(cArr, i6, i4 - i6);
                        }
                        this.m_isprevtext = true;
                        if (this.m_tracer != null) {
                            super.fireCharEvent(cArr, i, i2);
                            return;
                        }
                        return;
                    }
                    charactersRaw(cArr, i, i2);
                    if (this.m_tracer != null) {
                        super.fireCharEvent(cArr, i, i2);
                        return;
                    }
                    return;
                }
                cdata(cArr, i, i2);
            }
        }
    }

    public void charactersRaw(char[] cArr, int i, int i2) throws SAXException {
        if (this.m_inEntityRef) {
            return;
        }
        try {
            if (this.m_elemContext.m_startTagOpen) {
                closeStartTag();
                this.m_elemContext.m_startTagOpen = false;
            }
            this.m_ispreserve = true;
            this.m_writer.write(cArr, i, i2);
        } catch (IOException e) {
            throw new SAXException(e);
        }
    }

    public void closeCDATA() throws SAXException {
        try {
            this.m_writer.write("]]>");
            this.m_cdataTagOpen = false;
        } catch (IOException e) {
            throw new SAXException(e);
        }
    }

    public void closeStartTag() throws SAXException {
        ElemContext elemContext = this.m_elemContext;
        if (elemContext.m_startTagOpen) {
            try {
                if (this.m_tracer != null) {
                    super.fireStartElem(elemContext.m_elementName);
                }
                int length = this.m_attributes.getLength();
                if (length > 0) {
                    processAttributes(this.m_writer, length);
                    this.m_attributes.clear();
                }
                this.m_writer.write(62);
                if (this.m_cdataSectionElements != null) {
                    this.m_elemContext.m_isCdataSection = isCdataSection();
                }
                if (this.m_doIndent) {
                    this.m_isprevtext = false;
                    this.m_preserves.push(this.m_ispreserve);
                }
            } catch (IOException e) {
                throw new SAXException(e);
            }
        }
    }

    public void comment(char[] cArr, int i, int i2) throws SAXException {
        if (this.m_inEntityRef) {
            return;
        }
        if (this.m_elemContext.m_startTagOpen) {
            closeStartTag();
            this.m_elemContext.m_startTagOpen = false;
        } else if (this.m_needToCallStartDocument) {
            startDocumentInternal();
            this.m_needToCallStartDocument = false;
        }
        try {
            if (shouldIndent()) {
                indent();
            }
            int i3 = i + i2;
            if (this.m_cdataTagOpen) {
                closeCDATA();
            }
            Writer writer = this.m_writer;
            writer.write("<!--");
            int i4 = i;
            int i5 = i4;
            boolean z = false;
            while (i4 < i3) {
                if (z && cArr[i4] == '-') {
                    writer.write(cArr, i5, i4 - i5);
                    writer.write(" -");
                    i5 = i4 + 1;
                }
                z = cArr[i4] == '-';
                i4++;
            }
            if (i2 > 0) {
                int i6 = i3 - i5;
                if (i6 > 0) {
                    writer.write(cArr, i5, i6);
                }
                if (cArr[i3 - 1] == '-') {
                    writer.write(32);
                }
            }
            writer.write("-->");
            this.m_startNewLine = true;
            if (this.m_tracer != null) {
                super.fireCommentEvent(cArr, i, i2);
            }
        } catch (IOException e) {
            throw new SAXException(e);
        }
    }

    public void elementDecl(String str, String str2) throws SAXException {
        if (this.m_inExternalDTD) {
            return;
        }
        try {
            Writer writer = this.m_writer;
            DTDprolog();
            writer.write("<!ELEMENT ");
            writer.write(str);
            writer.write(32);
            writer.write(str2);
            writer.write(62);
            writer.write(this.m_lineSep, 0, this.m_lineSepLen);
        } catch (IOException e) {
            throw new SAXException(e);
        }
    }

    @Override // org.xml.sax.ext.LexicalHandler
    public void endCDATA() throws SAXException {
        if (this.m_cdataTagOpen) {
            closeCDATA();
        }
        this.m_cdataStartCalled = false;
    }

    public void endDTD() throws SAXException {
        try {
            if (this.m_needToOutputDocTypeDecl) {
                outputDocTypeDecl(this.m_elemContext.m_elementName, false);
                this.m_needToOutputDocTypeDecl = false;
            }
            Writer writer = this.m_writer;
            if (this.m_inDoctype) {
                writer.write(62);
            } else {
                writer.write("]>");
            }
            writer.write(this.m_lineSep, 0, this.m_lineSepLen);
        } catch (IOException e) {
            throw new SAXException(e);
        }
    }

    @Override // org.xml.sax.ContentHandler
    public void endElement(String str, String str2, String str3) throws SAXException {
        if (this.m_inEntityRef) {
            return;
        }
        this.m_prefixMap.popNamespaces(this.m_elemContext.m_currentElemDepth, null);
        try {
            Writer writer = this.m_writer;
            ElemContext elemContext = this.m_elemContext;
            if (elemContext.m_startTagOpen) {
                if (this.m_tracer != null) {
                    super.fireStartElem(elemContext.m_elementName);
                }
                int length = this.m_attributes.getLength();
                if (length > 0) {
                    processAttributes(this.m_writer, length);
                    this.m_attributes.clear();
                }
                if (this.m_spaceBeforeClose) {
                    writer.write(" />");
                } else {
                    writer.write(XMLStreamWriterImpl.CLOSE_EMPTY_ELEMENT);
                }
            } else {
                if (this.m_cdataTagOpen) {
                    closeCDATA();
                }
                if (shouldIndent()) {
                    indent(this.m_elemContext.m_currentElemDepth - 1);
                }
                writer.write(60);
                writer.write(47);
                writer.write(str3);
                writer.write(62);
            }
            if (!this.m_elemContext.m_startTagOpen && this.m_doIndent) {
                this.m_ispreserve = this.m_preserves.isEmpty() ? false : this.m_preserves.pop();
            }
            this.m_isprevtext = false;
            if (this.m_tracer != null) {
                super.fireEndElem(str3);
            }
            this.m_elemContext = this.m_elemContext.m_prev;
        } catch (IOException e) {
            throw new SAXException(e);
        }
    }

    public void endNonEscaping() throws SAXException {
        this.m_disableOutputEscapingStates.pop();
    }

    @Override // org.xml.sax.ContentHandler
    public void endPrefixMapping(String str) throws SAXException {
    }

    public String ensureAttributesNamespaceIsDeclared(String str, String str2, String str3) throws SAXException {
        if (str == null || str.length() <= 0) {
            return null;
        }
        int indexOf = str3.indexOf(":");
        String substring = indexOf < 0 ? "" : str3.substring(0, indexOf);
        if (indexOf > 0) {
            String lookupNamespace = this.m_prefixMap.lookupNamespace(substring);
            if (lookupNamespace != null && lookupNamespace.equals(str)) {
                return null;
            }
            startPrefixMapping(substring, str, false);
            addAttribute("http://www.w3.org/2000/xmlns/", substring, "xmlns:" + substring, "CDATA", str, false);
            return substring;
        }
        String lookupPrefix = this.m_prefixMap.lookupPrefix(str);
        if (lookupPrefix != null) {
            return lookupPrefix;
        }
        String generateNextPrefix = this.m_prefixMap.generateNextPrefix();
        startPrefixMapping(generateNextPrefix, str, false);
        addAttribute("http://www.w3.org/2000/xmlns/", generateNextPrefix, "xmlns:" + generateNextPrefix, "CDATA", str, false);
        return generateNextPrefix;
    }

    public void ensurePrefixIsDeclared(String str, String str2) throws SAXException {
        String str3;
        if (str == null || str.length() <= 0) {
            return;
        }
        int indexOf = str2.indexOf(":");
        boolean z = indexOf < 0;
        String substring = z ? "" : str2.substring(0, indexOf);
        if (substring != null) {
            String lookupNamespace = this.m_prefixMap.lookupNamespace(substring);
            if (lookupNamespace == null || !lookupNamespace.equals(str)) {
                startPrefixMapping(substring, str);
                String str4 = z ? "xmlns" : substring;
                if (z) {
                    str3 = "xmlns";
                } else {
                    str3 = "xmlns:" + substring;
                }
                addAttributeAlways("http://www.w3.org/2000/xmlns/", str4, str3, "CDATA", str, false);
            }
        }
    }

    public boolean escapingNotNeeded(char c) {
        return c < 127 ? c >= ' ' || '\n' == c || '\r' == c || '\t' == c : this.m_encodingInfo.isInEncoding(c);
    }

    public void externalEntityDecl(String str, String str2, String str3) throws SAXException {
        try {
            DTDprolog();
            this.m_writer.write("<!ENTITY ");
            this.m_writer.write(str);
            if (str2 != null) {
                this.m_writer.write(" PUBLIC \"");
                this.m_writer.write(str2);
            } else {
                this.m_writer.write(" SYSTEM \"");
                this.m_writer.write(str3);
            }
            this.m_writer.write("\" >");
            this.m_writer.write(this.m_lineSep, 0, this.m_lineSepLen);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void firePseudoAttributes() {
        if (this.m_tracer != null) {
            try {
                this.m_writer.flush();
                StringBuffer stringBuffer = new StringBuffer();
                int length = this.m_attributes.getLength();
                if (length > 0) {
                    processAttributes(new WritertoStringBuffer(stringBuffer), length);
                }
                stringBuffer.append('>');
                char[] charArray = stringBuffer.toString().toCharArray();
                this.m_tracer.fireGenerateEvent(11, charArray, 0, charArray.length);
            } catch (IOException | SAXException unused) {
            }
        }
    }

    @Override // com.sun.org.apache.xml.internal.serializer.SerializationHandler
    public void flushPending() throws SAXException {
        if (this.m_needToCallStartDocument) {
            startDocumentInternal();
            this.m_needToCallStartDocument = false;
        }
        if (this.m_elemContext.m_startTagOpen) {
            closeStartTag();
            this.m_elemContext.m_startTagOpen = false;
        }
        if (this.m_cdataTagOpen) {
            closeCDATA();
            this.m_cdataTagOpen = false;
        }
    }

    public final void flushWriter() throws SAXException {
        Writer writer = this.m_writer;
        if (writer != null) {
            try {
                if (writer instanceof WriterToUTF8Buffered) {
                    if (this.m_shouldFlush) {
                        ((WriterToUTF8Buffered) writer).flush();
                    } else {
                        ((WriterToUTF8Buffered) writer).flushBuffer();
                    }
                }
                if (!(writer instanceof WriterToASCI)) {
                    writer.flush();
                } else if (this.m_shouldFlush) {
                    writer.flush();
                }
            } catch (IOException e) {
                throw new SAXException(e);
            }
        }
    }

    @Override // com.sun.org.apache.xml.internal.serializer.SerializerBase, com.sun.org.apache.xml.internal.serializer.XSLOutputAttributes
    public int getIndentAmount() {
        return this.m_indentAmount;
    }

    @Override // com.sun.org.apache.xml.internal.serializer.Serializer
    public Properties getOutputFormat() {
        return this.m_format;
    }

    @Override // com.sun.org.apache.xml.internal.serializer.Serializer
    public OutputStream getOutputStream() {
        Writer writer = this.m_writer;
        if (writer instanceof WriterToUTF8Buffered) {
            return ((WriterToUTF8Buffered) writer).getOutputStream();
        }
        if (writer instanceof WriterToASCI) {
            return ((WriterToASCI) writer).getOutputStream();
        }
        return null;
    }

    @Override // com.sun.org.apache.xml.internal.serializer.Serializer
    public Writer getWriter() {
        return this.m_writer;
    }

    @Override // org.xml.sax.ContentHandler
    public void ignorableWhitespace(char[] cArr, int i, int i2) throws SAXException {
        if (i2 == 0) {
            return;
        }
        characters(cArr, i, i2);
    }

    public void indent(int i) throws IOException {
        if (this.m_startNewLine) {
            outputLineSep();
        }
        int i2 = this.m_indentAmount;
        if (i2 > 0) {
            printSpace(i * i2);
        }
    }

    public void internalEntityDecl(String str, String str2) throws SAXException {
        if (this.m_inExternalDTD) {
            return;
        }
        try {
            DTDprolog();
            outputEntityDecl(str, str2);
        } catch (IOException e) {
            throw new SAXException(e);
        }
    }

    @Override // com.sun.org.apache.xml.internal.serializer.SerializerBase, org.xml.sax.DTDHandler
    public void notationDecl(String str, String str2, String str3) throws SAXException {
        try {
            DTDprolog();
            this.m_writer.write("<!NOTATION ");
            this.m_writer.write(str);
            if (str2 != null) {
                this.m_writer.write(" PUBLIC \"");
                this.m_writer.write(str2);
            } else {
                this.m_writer.write(" SYSTEM \"");
                this.m_writer.write(str3);
            }
            this.m_writer.write("\" >");
            this.m_writer.write(this.m_lineSep, 0, this.m_lineSepLen);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void outputDocTypeDecl(String str, boolean z) throws SAXException {
        if (this.m_cdataTagOpen) {
            closeCDATA();
        }
        try {
            Writer writer = this.m_writer;
            writer.write("<!DOCTYPE ");
            writer.write(str);
            String doctypePublic = getDoctypePublic();
            if (doctypePublic != null) {
                writer.write(" PUBLIC \"");
                writer.write(doctypePublic);
                writer.write(34);
            }
            String doctypeSystem = getDoctypeSystem();
            if (doctypeSystem != null) {
                if (doctypePublic == null) {
                    writer.write(" SYSTEM \"");
                } else {
                    writer.write(" \"");
                }
                writer.write(doctypeSystem);
                if (!z) {
                    writer.write(34);
                } else {
                    writer.write("\">");
                    writer.write(this.m_lineSep, 0, this.m_lineSepLen);
                }
            }
        } catch (IOException e) {
            throw new SAXException(e);
        }
    }

    public void outputEntityDecl(String str, String str2) throws IOException {
        Writer writer = this.m_writer;
        writer.write("<!ENTITY ");
        writer.write(str);
        writer.write(" \"");
        writer.write(str2);
        writer.write("\">");
        writer.write(this.m_lineSep, 0, this.m_lineSepLen);
    }

    public final void outputLineSep() throws IOException {
        this.m_writer.write(this.m_lineSep, 0, this.m_lineSepLen);
    }

    public void processAttributes(Writer writer, int i) throws IOException, SAXException {
        String encoding = getEncoding();
        for (int i2 = 0; i2 < i; i2++) {
            String qName = this.m_attributes.getQName(i2);
            String value = this.m_attributes.getValue(i2);
            writer.write(32);
            writer.write(qName);
            writer.write("=\"");
            writeAttrString(writer, value, encoding);
            writer.write(34);
        }
    }

    @Override // com.sun.org.apache.xml.internal.serializer.SerializerBase, com.sun.org.apache.xml.internal.serializer.Serializer
    public boolean reset() {
        if (!super.reset()) {
            return false;
        }
        resetToStream();
        return true;
    }

    @Override // com.sun.org.apache.xml.internal.serializer.SerializationHandler, com.sun.org.apache.xml.internal.serializer.DOMSerializer
    public void serialize(Node node) throws IOException {
        try {
            new TreeWalker(this).traverse(node);
        } catch (SAXException e) {
            throw new WrappedRuntimeException(e);
        }
    }

    @Override // com.sun.org.apache.xml.internal.serializer.SerializationHandler
    public void setContentHandler(ContentHandler contentHandler) {
    }

    @Override // com.sun.org.apache.xml.internal.serializer.SerializerBase, com.sun.org.apache.xml.internal.serializer.SerializationHandler
    public void setDTDEntityExpansion(boolean z) {
        this.m_expandDTDEntities = z;
    }

    @Override // com.sun.org.apache.xml.internal.serializer.SerializerBase, com.sun.org.apache.xml.internal.serializer.SerializationHandler, com.sun.org.apache.xml.internal.serializer.XSLOutputAttributes
    public void setEncoding(String str) {
        String encoding = getEncoding();
        super.setEncoding(str);
        if (encoding == null || !encoding.equals(str)) {
            EncodingInfo encodingInfo = Encodings.getEncodingInfo(str);
            this.m_encodingInfo = encodingInfo;
            if (str == null || encodingInfo.name != null) {
                return;
            }
            String createMessage = com.sun.org.apache.xml.internal.serializer.utils.Utils.messages.createMessage("ER_ENCODING_NOT_SUPPORTED", new Object[]{str});
            try {
                Transformer transformer = super.getTransformer();
                if (transformer != null) {
                    ErrorListener errorListener = transformer.getErrorListener();
                    if (errorListener == null || this.m_sourceLocator == null) {
                        System.out.println(createMessage);
                    } else {
                        errorListener.warning(new TransformerException(createMessage, this.m_sourceLocator));
                    }
                } else {
                    System.out.println(createMessage);
                }
            } catch (Exception unused) {
            }
        }
    }

    @Override // com.sun.org.apache.xml.internal.serializer.SerializationHandler
    public boolean setEscaping(boolean z) {
        boolean z2 = this.m_escaping;
        this.m_escaping = z;
        return z2;
    }

    @Override // com.sun.org.apache.xml.internal.serializer.SerializerBase, com.sun.org.apache.xml.internal.serializer.SerializationHandler
    public void setIndentAmount(int i) {
        this.m_indentAmount = i;
    }

    public boolean setLineSepUse(boolean z) {
        boolean z2 = this.m_lineSepUse;
        this.m_lineSepUse = z;
        return z2;
    }

    public void setOutputFormat(Properties properties) {
        boolean z = this.m_shouldFlush;
        init(this.m_writer, properties, false, false);
        this.m_shouldFlush = z;
    }

    public void setOutputStream(OutputStream outputStream) {
        try {
            Properties properties = this.m_format;
            if (properties == null) {
                properties = OutputPropertiesFactory.getDefaultMethodProperties("xml");
            }
            init(outputStream, properties, true);
        } catch (UnsupportedEncodingException unused) {
        }
    }

    @Override // com.sun.org.apache.xml.internal.serializer.SerializerBase, com.sun.org.apache.xml.internal.serializer.SerializationHandler
    public void setTransformer(Transformer transformer) {
        super.setTransformer(transformer);
        if (this.m_tracer == null || (this.m_writer instanceof SerializerTraceWriter)) {
            return;
        }
        this.m_writer = new SerializerTraceWriter(this.m_writer, this.m_tracer);
    }

    @Override // com.sun.org.apache.xml.internal.serializer.Serializer
    public void setWriter(Writer writer) {
        if (this.m_tracer == null || (writer instanceof SerializerTraceWriter)) {
            this.m_writer = writer;
        } else {
            this.m_writer = new SerializerTraceWriter(writer, this.m_tracer);
        }
    }

    public boolean shouldIndent() {
        return (!this.m_doIndent || this.m_ispreserve || this.m_isprevtext) ? false : true;
    }

    @Override // org.xml.sax.ContentHandler
    public void skippedEntity(String str) throws SAXException {
    }

    @Override // org.xml.sax.ext.LexicalHandler
    public void startCDATA() throws SAXException {
        this.m_cdataStartCalled = true;
    }

    public void startDTD(String str, String str2, String str3) throws SAXException {
        setDoctypeSystem(str3);
        setDoctypePublic(str2);
        this.m_elemContext.m_elementName = str;
        this.m_inDoctype = true;
    }

    @Override // org.xml.sax.ContentHandler
    public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
        if (this.m_inEntityRef) {
            return;
        }
        if (this.m_needToCallStartDocument) {
            startDocumentInternal();
            this.m_needToCallStartDocument = false;
        } else if (this.m_cdataTagOpen) {
            closeCDATA();
        }
        try {
            if (true == this.m_needToOutputDocTypeDecl && getDoctypeSystem() != null) {
                outputDocTypeDecl(str3, true);
            }
            this.m_needToOutputDocTypeDecl = false;
            if (this.m_elemContext.m_startTagOpen) {
                closeStartTag();
                this.m_elemContext.m_startTagOpen = false;
            }
            if (str != null) {
                ensurePrefixIsDeclared(str, str3);
            }
            this.m_ispreserve = false;
            if (shouldIndent() && this.m_startNewLine) {
                indent();
            }
            this.m_startNewLine = true;
            Writer writer = this.m_writer;
            writer.write(60);
            writer.write(str3);
            if (attributes != null) {
                addAttributes(attributes);
            }
            this.m_elemContext = this.m_elemContext.push(str, str2, str3);
            this.m_isprevtext = false;
            if (this.m_tracer != null) {
                firePseudoAttributes();
            }
        } catch (IOException e) {
            throw new SAXException(e);
        }
    }

    @Override // org.xml.sax.ext.LexicalHandler
    public void startEntity(String str) throws SAXException {
        if (str.equals("[dtd]")) {
            this.m_inExternalDTD = true;
        }
        if (!this.m_expandDTDEntities && !this.m_inExternalDTD) {
            startNonEscaping();
            characters(ParameterList.f115951c + str + ';');
            endNonEscaping();
        }
        this.m_inEntityRef = true;
    }

    public void startNonEscaping() throws SAXException {
        this.m_disableOutputEscapingStates.push(true);
    }

    @Override // org.xml.sax.ContentHandler
    public void startPrefixMapping(String str, String str2) throws SAXException {
        startPrefixMapping(str, str2, true);
    }

    @Override // com.sun.org.apache.xml.internal.serializer.SerializerBase, org.xml.sax.DTDHandler
    public void unparsedEntityDecl(String str, String str2, String str3, String str4) throws SAXException {
        try {
            DTDprolog();
            this.m_writer.write("<!ENTITY ");
            this.m_writer.write(str);
            if (str2 != null) {
                this.m_writer.write(" PUBLIC \"");
                this.m_writer.write(str2);
            } else {
                this.m_writer.write(" SYSTEM \"");
                this.m_writer.write(str3);
            }
            this.m_writer.write("\" NDATA ");
            this.m_writer.write(str4);
            this.m_writer.write(" >");
            this.m_writer.write(this.m_lineSep, 0, this.m_lineSepLen);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void writeAttrString(Writer writer, String str, String str2) throws IOException {
        int length = str.length();
        if (length > this.m_attrBuff.length) {
            this.m_attrBuff = new char[(length * 2) + 1];
        }
        str.getChars(0, length, this.m_attrBuff, 0);
        char[] cArr = this.m_attrBuff;
        for (int i = 0; i < length; i++) {
            char c = cArr[i];
            if (!escapingNotNeeded(c) || this.m_charInfo.isSpecialAttrChar(c)) {
                accumDefaultEscape(writer, c, i, cArr, length, false, true);
            } else {
                writer.write(c);
            }
        }
    }

    public void writeNormalizedChars(char[] cArr, int i, int i2, boolean z, boolean z2) throws IOException, SAXException {
        Writer writer = this.m_writer;
        int i3 = i2 + i;
        while (i < i3) {
            char c = cArr[i];
            if ('\n' == c && z2) {
                writer.write(this.m_lineSep, 0, this.m_lineSepLen);
            } else if (!z || escapingNotNeeded(c)) {
                if (z && i < i3 - 2 && ']' == c && ']' == cArr[i + 1]) {
                    int i4 = i + 2;
                    if ('>' == cArr[i4]) {
                        writer.write(SerializerConstants.CDATA_CONTINUE);
                        i = i4;
                    }
                }
                if (escapingNotNeeded(c)) {
                    if (z && !this.m_cdataTagOpen) {
                        writer.write("<![CDATA[");
                        this.m_cdataTagOpen = true;
                    }
                    writer.write(c);
                } else if (Encodings.isHighUTF16Surrogate(c)) {
                    if (this.m_cdataTagOpen) {
                        closeCDATA();
                    }
                    writeUTF16Surrogate(c, cArr, i, i3);
                    i++;
                } else {
                    if (this.m_cdataTagOpen) {
                        closeCDATA();
                    }
                    writer.write("&#");
                    writer.write(Integer.toString(c));
                    writer.write(59);
                }
            } else {
                if (this.m_cdataTagOpen) {
                    closeCDATA();
                }
                if (Encodings.isHighUTF16Surrogate(c)) {
                    writeUTF16Surrogate(c, cArr, i, i3);
                    i++;
                } else {
                    writer.write("&#");
                    writer.write(Integer.toString(c));
                    writer.write(59);
                }
            }
            i++;
        }
    }

    public int writeUTF16Surrogate(char c, char[] cArr, int i, int i2) throws IOException {
        int i3 = i + 1;
        if (i3 >= i2) {
            throw new IOException(com.sun.org.apache.xml.internal.serializer.utils.Utils.messages.createMessage("ER_INVALID_UTF16_SURROGATE", new Object[]{Integer.toHexString(c)}));
        }
        char c2 = cArr[i3];
        if (!Encodings.isLowUTF16Surrogate(c2)) {
            throw new IOException(com.sun.org.apache.xml.internal.serializer.utils.Utils.messages.createMessage("ER_INVALID_UTF16_SURROGATE", new Object[]{Integer.toHexString(c) + " " + Integer.toHexString(c2)}));
        }
        Writer writer = this.m_writer;
        if (this.m_encodingInfo.isInEncoding(c, c2)) {
            writer.write(cArr, i, 2);
        } else {
            if (getEncoding() != null) {
                int codePoint = Encodings.toCodePoint(c, c2);
                writer.write(38);
                writer.write(35);
                writer.write(Integer.toString(codePoint));
                writer.write(59);
                return codePoint;
            }
            writer.write(cArr, i, 2);
        }
        return 0;
    }

    @Override // com.sun.org.apache.xml.internal.serializer.SerializationHandler, com.sun.org.apache.xml.internal.serializer.ExtendedContentHandler
    public boolean startPrefixMapping(String str, String str2, boolean z) throws SAXException {
        int i;
        if (z) {
            flushPending();
            i = this.m_elemContext.m_currentElemDepth + 1;
        } else {
            i = this.m_elemContext.m_currentElemDepth;
        }
        boolean pushNamespace = this.m_prefixMap.pushNamespace(str, str2, i);
        if (pushNamespace) {
            if ("".equals(str)) {
                addAttributeAlways("http://www.w3.org/2000/xmlns/", "xmlns", "xmlns", "CDATA", str2, false);
            } else if (!"".equals(str2)) {
                addAttributeAlways("http://www.w3.org/2000/xmlns/", str, "xmlns:" + str, "CDATA", str2, false);
            }
        }
        return pushNamespace;
    }

    public void indent() throws IOException {
        indent(this.m_elemContext.m_currentElemDepth);
    }

    @Override // com.sun.org.apache.xml.internal.serializer.SerializationHandler, com.sun.org.apache.xml.internal.serializer.XSLOutputAttributes
    public void setCdataSectionElements(Vector vector) {
        this.m_cdataSectionElements = vector;
    }

    @Override // com.sun.org.apache.xml.internal.serializer.SerializationHandler, com.sun.org.apache.xml.internal.serializer.ExtendedContentHandler
    public void startElement(String str, String str2, String str3) throws SAXException {
        startElement(str, str2, str3, null);
    }

    @Override // com.sun.org.apache.xml.internal.serializer.SerializationHandler, com.sun.org.apache.xml.internal.serializer.ExtendedContentHandler
    public void endElement(String str) throws SAXException {
        endElement(null, null, str);
    }

    @Override // com.sun.org.apache.xml.internal.serializer.SerializationHandler, com.sun.org.apache.xml.internal.serializer.ExtendedContentHandler
    public void startElement(String str) throws SAXException {
        startElement(null, null, str, null);
    }

    @Override // com.sun.org.apache.xml.internal.serializer.SerializationHandler, com.sun.org.apache.xml.internal.serializer.ExtendedContentHandler
    public void characters(String str) throws SAXException {
        if (!this.m_inEntityRef || this.m_expandDTDEntities) {
            int length = str.length();
            if (length > this.m_charsBuff.length) {
                this.m_charsBuff = new char[(length * 2) + 1];
            }
            str.getChars(0, length, this.m_charsBuff, 0);
            characters(this.m_charsBuff, 0, length);
        }
    }

    private synchronized void init(Writer writer, Properties properties) {
        init(writer, properties, false, false);
    }

    public synchronized void init(OutputStream outputStream, Properties properties, boolean z) throws UnsupportedEncodingException {
        Writer writer;
        String encoding = getEncoding();
        if (encoding == null) {
            encoding = Encodings.getMimeEncoding(properties.getProperty("encoding"));
            setEncoding(encoding);
        }
        if (encoding.equalsIgnoreCase("UTF-8")) {
            this.m_isUTF8 = true;
            init(new WriterToUTF8Buffered(outputStream), properties, z, true);
        } else if (!encoding.equals("WINDOWS-1250") && !encoding.equals("US-ASCII") && !encoding.equals("ASCII")) {
            try {
                writer = Encodings.getWriter(outputStream, encoding);
            } catch (UnsupportedEncodingException unused) {
                System.out.println("Warning: encoding \"" + encoding + "\" not supported, using UTF-8");
                setEncoding("UTF-8");
                writer = Encodings.getWriter(outputStream, "UTF-8");
            }
            init(writer, properties, z, true);
        } else {
            init(new WriterToASCI(outputStream), properties, z, true);
        }
    }
}
