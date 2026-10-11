package net.p110sf.saxon.serialize;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.IOException;
import java.util.Stack;
import net.p110sf.saxon.lib.SaxonOutputKeys;
import net.p110sf.saxon.om.AttributeMap;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.str.StringConstants;
import net.p110sf.saxon.str.StringTool;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.str.WhitespaceString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.SchemaType;
import org.apache.logging.log4j.util.Chars;
import org.apache.poi.ss.util.CellUtil;

/* loaded from: classes11.dex */
public abstract class HTMLEmitter extends XMLEmitter {

    /* renamed from: J */
    public static final int f101511J = 3;

    /* renamed from: O */
    public static HTMLTagHashSet f101512O = new HTMLTagHashSet(31);

    /* renamed from: Q */
    public static final HTMLTagHashSet f101513Q = new HTMLTagHashSet(43);

    /* renamed from: Z */
    public static final HTMLTagHashSet f101514Z = new HTMLTagHashSet(57);

    /* renamed from: k0 */
    public static final /* synthetic */ boolean f101515k0 = false;

    /* renamed from: x */
    public static final int f101516x = 0;

    /* renamed from: y */
    public static final int f101517y = 1;

    /* renamed from: z */
    public static final int f101518z = 2;

    /* renamed from: s */
    public int f101521s;

    /* renamed from: t */
    public String f101522t;

    /* renamed from: u */
    public String f101523u;

    /* renamed from: q */
    public final int f101519q = 0;

    /* renamed from: r */
    public final int f101520r = 1;
    protected int version = 5;

    /* renamed from: v */
    public boolean f101524v = false;

    /* renamed from: w */
    public final Stack<NodeName> f101525w = new Stack<>();

    static {
        m63823n("*", CellUtil.HIDDEN);
        m63823n("area", "nohref");
        m63823n("audio", "autoplay");
        m63823n("audio", "controls");
        m63823n("audio", "loop");
        m63823n("audio", "muted");
        m63823n("button", "disabled");
        m63823n("button", "autofocus");
        m63823n("button", "formnovalidate");
        m63823n("details", "open");
        m63823n("dialog", "open");
        m63823n(CouchFieldKey.KEY_DIR, "compact");
        m63823n("dl", "compact");
        m63823n("fieldset", "disabled");
        m63823n("form", "novalidate");
        m63823n(TypedValues.AttributesType.S_FRAME, "noresize");
        m63823n("hr", "noshade");
        m63823n("img", "ismap");
        m63823n("input", "checked");
        m63823n("input", "disabled");
        m63823n("input", Constants.ATTRVAL_MULTI);
        m63823n("input", "readonly");
        m63823n("input", "required");
        m63823n("input", "autofocus");
        m63823n("input", "formnovalidate");
        m63823n("iframe", "seamless");
        m63823n("keygen", "autofocus");
        m63823n("keygen", "disabled");
        m63823n("menu", "compact");
        m63823n("object", "declare");
        m63823n("object", "typemustmatch");
        m63823n("ol", "compact");
        m63823n("ol", "reversed");
        m63823n("optgroup", "disabled");
        m63823n("option", "selected");
        m63823n("option", "disabled");
        m63823n(Constants.ELEMNAME_SCRIPT_STRING, "defer");
        m63823n(Constants.ELEMNAME_SCRIPT_STRING, "async");
        m63823n("select", Constants.ATTRVAL_MULTI);
        m63823n("select", "disabled");
        m63823n("select", "autofocus");
        m63823n("select", "required");
        m63823n("style", "scoped");
        m63823n("td", "nowrap");
        m63823n("textarea", "disabled");
        m63823n("textarea", "readonly");
        m63823n("textarea", "autofocus");
        m63823n("textarea", "required");
        m63823n("th", "nowrap");
        m63823n("track", "default");
        m63823n("ul", "compact");
        m63823n("video", "autoplay");
        m63823n("video", "controls");
        m63823n("video", "loop");
        m63823n("video", "muted");
    }

    public static boolean isEmptyTag(String str) {
        return f101512O.contains(str);
    }

    /* renamed from: l */
    public static boolean m63821l(String str, String str2, String str3) {
        if (str2.equalsIgnoreCase(str3) && f101513Q.contains(str2)) {
            HTMLTagHashSet hTMLTagHashSet = f101514Z;
            if (!hTMLTagHashSet.contains(str + PhoneNumberUtil.f36455s + str2)) {
                if (hTMLTagHashSet.contains("*+" + str2)) {
                }
            }
            return true;
        }
        return false;
    }

    /* renamed from: m */
    public static int m63822m(String str) {
        String lowerCase = str.toLowerCase();
        lowerCase.hashCode();
        char c = 65535;
        switch (lowerCase.hashCode()) {
            case -1052618729:
                if (lowerCase.equals("native")) {
                    c = 0;
                    break;
                }
                break;
            case 103195:
                if (lowerCase.equals("hex")) {
                    c = 1;
                    break;
                }
                break;
            case 1542263633:
                if (lowerCase.equals("decimal")) {
                    c = 2;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return 0;
            case 1:
                return 3;
            case 2:
                return 2;
            default:
                return 1;
        }
    }

    /* renamed from: n */
    public static void m63823n(String str, String str2) {
        f101513Q.add(str2);
        f101514Z.add(str + PhoneNumberUtil.f36455s + str2);
    }

    public static void setEmptyTag(String str) {
        f101512O.add(str);
    }

    @Override // net.p110sf.saxon.serialize.XMLEmitter, net.p110sf.saxon.event.Receiver
    public void characters(UnicodeString unicodeString, Location location, int i) throws XPathException {
        if (this.f101521s > 0) {
            i |= 1;
        }
        super.characters(unicodeString, location, i);
    }

    @Override // net.p110sf.saxon.serialize.XMLEmitter, net.p110sf.saxon.event.Receiver
    public void endElement() throws XPathException {
        NodeName pop = this.f101525w.pop();
        String peek = this.elementStack.peek();
        int i = this.f101521s - 1;
        this.f101521s = i;
        if (i == 0) {
            this.f101521s = -1000000;
        }
        if (!isEmptyTag(peek) || !isHTMLElement(pop)) {
            super.endElement();
            return;
        }
        if (this.openStartTag) {
            closeStartTag();
        }
        this.elementStack.pop();
    }

    public abstract boolean isHTMLElement(NodeName nodeName);

    @Override // net.p110sf.saxon.serialize.XMLEmitter, net.p110sf.saxon.event.SequenceReceiver, net.p110sf.saxon.event.Receiver
    public void open() throws XPathException {
    }

    @Override // net.p110sf.saxon.serialize.XMLEmitter
    public void openDocument() throws XPathException {
        if (this.started) {
            return;
        }
        if ("yes".equals(this.outputProperties.getProperty(SaxonOutputKeys.BYTE_ORDER_MARK)) && "UTF-8".equalsIgnoreCase(this.outputProperties.getProperty("encoding"))) {
            try {
                this.writer.writeCodePoint(65279);
            } catch (IOException unused) {
            }
        }
        if ("yes".equals(this.outputProperties.getProperty(SaxonOutputKeys.SINGLE_QUOTES))) {
            this.delimiter = Chars.QUOTE;
            this.attSpecials = XMLEmitter.specialInAttSingle;
        }
        this.f101521s = -1000000;
    }

    @Override // net.p110sf.saxon.serialize.XMLEmitter, net.p110sf.saxon.event.Receiver
    public void processingInstruction(String str, UnicodeString unicodeString, Location location, int i) throws XPathException {
        if (!this.started) {
            openDocument();
        }
        UnicodeString tidy = unicodeString.tidy();
        if (tidy.indexOf(62) >= 0) {
            XPathException xPathException = new XPathException("A processing instruction in HTML must not contain a > character");
            xPathException.setErrorCode("SERE0015");
            throw xPathException;
        }
        try {
            if (this.openStartTag) {
                closeStartTag();
            }
            this.writer.writeAscii(StringConstants.PI_START);
            this.writer.write(str);
            this.writer.writeCodePoint(32);
            this.writer.write(tidy);
            this.writer.writeCodePoint(62);
        } catch (IOException e) {
            throw new XPathException(e);
        }
    }

    public abstract boolean rejectControlCharacters();

    @Override // net.p110sf.saxon.serialize.XMLEmitter
    public void setEscapeNonAscii(Boolean bool) {
        this.f101524v = bool.booleanValue();
    }

    public void startContentOLD() throws XPathException {
        closeStartTag();
    }

    @Override // net.p110sf.saxon.serialize.XMLEmitter, net.p110sf.saxon.event.Receiver
    public void startElement(NodeName nodeName, SchemaType schemaType, AttributeMap attributeMap, NamespaceMap namespaceMap, Location location, int i) throws XPathException {
        this.f101523u = nodeName.getURI();
        super.startElement(nodeName, schemaType, attributeMap, namespaceMap, location, i);
        this.f101522t = this.elementStack.peek();
        if (isHTMLElement(nodeName) && (this.f101522t.equalsIgnoreCase(Constants.ELEMNAME_SCRIPT_STRING) || this.f101522t.equalsIgnoreCase("style"))) {
            this.f101521s = 0;
        }
        this.f101521s++;
        this.f101525w.push(nodeName);
    }

    @Override // net.p110sf.saxon.serialize.XMLEmitter
    public void writeAttribute(NodeName nodeName, String str, String str2, int i) throws XPathException {
        try {
            if (isHTMLElement(nodeName) && m63821l(nodeName.getLocalPart(), str, str2)) {
                this.writer.write(str);
                return;
            }
            if (this.f101521s > 0) {
                i |= 1;
            }
            super.writeAttribute(nodeName, str, str2, i);
        } catch (IOException e) {
            throw new XPathException(e);
        }
    }

    @Override // net.p110sf.saxon.serialize.XMLEmitter
    public void writeDocType(NodeName nodeName, String str, String str2, String str3) throws XPathException {
        super.writeDocType(nodeName, str, str2, str3);
    }

    @Override // net.p110sf.saxon.serialize.XMLEmitter
    public void writeEmptyElementTagCloser(String str, NodeName nodeName) throws IOException {
        if (!isHTMLElement(nodeName)) {
            this.writer.writeAscii(StringConstants.EMPTY_TAG_END);
            return;
        }
        this.writer.writeAscii(StringConstants.EMPTY_TAG_MIDDLE);
        this.writer.write(str);
        this.writer.writeCodePoint(62);
    }

    @Override // net.p110sf.saxon.serialize.XMLEmitter
    public void writeEscape(UnicodeString unicodeString, boolean z) throws IOException, XPathException {
        int i;
        int i2;
        boolean[] zArr = z ? this.attSpecials : XMLEmitter.specialInText;
        if (unicodeString instanceof WhitespaceString) {
            ((WhitespaceString) unicodeString).writeEscape(zArr, this.writer);
            return;
        }
        UnicodeString tidy = unicodeString.tidy();
        int[] expand = StringTool.expand(tidy);
        boolean z2 = false;
        for (int i3 = 0; i3 < expand.length; i3 = i + 1) {
            if (!this.f101524v) {
                i = i3;
                while (i < expand.length) {
                    int i4 = expand[i];
                    if (i4 >= 127) {
                        if (!this.characterSet.inCharset(i4) || i4 <= 160) {
                            break;
                        } else {
                            i++;
                        }
                    } else if (zArr[i4]) {
                        break;
                    } else {
                        i++;
                    }
                }
            } else {
                i = i3;
                while (i < expand.length && (i2 = expand[i]) < 127 && !zArr[i2]) {
                    i++;
                }
            }
            if (i == expand.length) {
                this.writer.write(tidy.substring(i3));
                return;
            }
            if (i > i3) {
                this.writer.write(tidy.substring(i3, i));
            }
            int i5 = expand[i];
            if (i5 == 0) {
                z2 = !z2;
            } else if (z2) {
                writeCodePoint(i5);
            } else if (i5 <= 127) {
                if (z) {
                    if (i5 == 60) {
                        this.writer.writeCodePoint(60);
                    } else if (i5 == 62) {
                        this.writer.writeAscii(StringConstants.ESCAPE_GT);
                    } else if (i5 == 38) {
                        int i6 = i + 1;
                        if (i6 >= expand.length || expand[i6] != 123) {
                            this.writer.writeAscii(StringConstants.ESCAPE_AMP);
                        } else {
                            this.writer.writeCodePoint(38);
                        }
                    } else if (i5 == 34) {
                        this.writer.writeAscii(StringConstants.ESCAPE_QUOT);
                    } else if (i5 == 39) {
                        this.writer.writeAscii(StringConstants.ESCAPE_APOS);
                    } else if (i5 == 10) {
                        this.writer.writeAscii(StringConstants.ESCAPE_NL);
                    } else if (i5 == 9) {
                        this.writer.writeAscii(StringConstants.ESCAPE_TAB);
                    } else if (i5 == 13) {
                        this.writer.writeAscii(StringConstants.ESCAPE_CR);
                    }
                } else if (i5 == 60) {
                    this.writer.writeAscii(StringConstants.ESCAPE_LT);
                } else if (i5 == 62) {
                    this.writer.writeAscii(StringConstants.ESCAPE_GT);
                } else if (i5 == 38) {
                    this.writer.writeAscii(StringConstants.ESCAPE_AMP);
                } else if (i5 == 13) {
                    this.writer.writeAscii(StringConstants.ESCAPE_CR);
                }
            } else if (i5 < 160) {
                if (rejectControlCharacters()) {
                    XPathException xPathException = new XPathException("Illegal HTML character: decimal " + i5);
                    xPathException.setErrorCode("SERE0014");
                    throw xPathException;
                }
                this.characterReferenceGenerator.outputCharacterReference(i5, this.writer);
            } else if (i5 == 160) {
                this.writer.writeAscii(StringConstants.ESCAPE_NBSP);
            } else if (i5 > 65535 || this.f101524v || !this.characterSet.inCharset(i5)) {
                this.characterReferenceGenerator.outputCharacterReference(i5, this.writer);
            } else {
                this.writer.writeCodePoint(i5);
            }
        }
    }
}
