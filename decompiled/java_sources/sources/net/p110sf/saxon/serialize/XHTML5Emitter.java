package net.p110sf.saxon.serialize;

import androidx.core.app.C0619b;
import com.google.android.exoplayer2.text.webvtt.WebvttCueParser;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.sunia.HTREnginev2.gon;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import java.io.IOException;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.str.StringConstants;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.Whitespace;
import org.apache.poi.convert.htmlgen.Constants;
import org.apache.poi.util.ExtUnits;

/* loaded from: classes11.dex */
public class XHTML5Emitter extends XMLEmitter {

    /* renamed from: q */
    public static final String[] f101618q;

    /* renamed from: r */
    public static Set<String> f101619r;

    /* renamed from: s */
    public static Set<String> f101620s;

    /* renamed from: t */
    public static final String[] f101621t;

    static {
        String[] strArr = {"a", "abbr", "address", "area", "article", "aside", "audio", "b", gon.f71271X, "bdi", "bdo", "blockquote", "body", "br", "button", IStyleSheet.CLASS_CANVAS, "caption", "cite", "code", "col", "colgroup", "datalist", "dd", "del", "details", "dfn", "dialog", gon.f71293q, "dl", "dt", ExtUnits.UNIT_EM, "embed", "fieldset", "figcaption", "figure", Constants.NAME_FOOTER, "form", "h1", "h2", "h3", "h4", "h5", "h6", gon.f71289o, Constants.NAME_HEADER, "hgroup", "hr", "html", "i", "iframe", "img", "input", "ins", "kbd", "keygen", C0619b.f5199k, "legend", "li", "link", Constant.MAP_TAG, "mark", "menu", "meta", "meter", "nav", "noscript", "object", "ol", "optgroup", "option", com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_OUTPUT_STRING, "p", com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_PARAMVARIABLE_STRING, "pre", "progress", "q", "rp", WebvttCueParser.f27242v, "ruby", "s", "samp", com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_SCRIPT_STRING, "section", "select", "small", "source", gon.f71297s, "strong", "style", "sub", "summary", "sup", "table", "tbody", "td", "textarea", "tfoot", "th", "thead", "time", "title", "tr", "track", "u", "ul", "var", "video", "wbr"};
        f101618q = strArr;
        f101619r = new HashSet(128);
        HashSet hashSet = new HashSet(31);
        f101620s = hashSet;
        String[] strArr2 = {"area", gon.f71271X, "br", "col", "embed", "hr", "img", "input", "keygen", "link", "meta", com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_PARAMVARIABLE_STRING, "source", "track", "wbr"};
        f101621t = strArr2;
        Collections.addAll(hashSet, strArr2);
        Collections.addAll(f101619r, strArr);
    }

    @Override // net.p110sf.saxon.serialize.XMLEmitter, net.p110sf.saxon.event.Receiver
    public void characters(UnicodeString unicodeString, Location location, int i) throws XPathException {
        if (this.started || !Whitespace.isAllWhite(unicodeString)) {
            super.characters(unicodeString, location, i);
        }
    }

    /* renamed from: l */
    public final boolean m63857l(NodeName nodeName) {
        return nodeName.hasURI("http://www.w3.org/1999/xhtml") || (nodeName.hasURI("") && f101619r.contains(nodeName.getLocalPart().toLowerCase()));
    }

    @Override // net.p110sf.saxon.serialize.XMLEmitter
    public void writeDocType(NodeName nodeName, String str, String str2, String str3) throws XPathException {
        if (str2 != null || !m63857l(nodeName) || !nodeName.getLocalPart().toLowerCase().equals("html")) {
            if (str2 != null) {
                super.writeDocType(nodeName, str, str2, str3);
            }
        } else {
            try {
                this.writer.writeAscii(XMLEmitter.DOCTYPE);
                this.writer.write(str);
                this.writer.writeCodePoint(62);
            } catch (IOException e) {
                throw new XPathException(e);
            }
        }
    }

    @Override // net.p110sf.saxon.serialize.XMLEmitter
    public boolean writeDocTypeWithNullSystemId() {
        return true;
    }

    @Override // net.p110sf.saxon.serialize.XMLEmitter
    public void writeEmptyElementTagCloser(String str, NodeName nodeName) throws IOException {
        if (m63857l(nodeName) && f101620s.contains(nodeName.getLocalPart())) {
            this.writer.writeAscii(StringConstants.EMPTY_TAG_END);
            return;
        }
        this.writer.writeAscii(StringConstants.EMPTY_TAG_MIDDLE);
        this.writer.write(str);
        this.writer.writeCodePoint(62);
    }
}
