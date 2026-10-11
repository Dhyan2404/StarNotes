package net.p110sf.saxon.serialize;

import androidx.core.app.C0619b;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.common.data.FileTypeConstant;
import com.onyx.android.sdk.data.common.data.template.TemplateResourceConstant;
import com.onyx.android.sdk.hwr.data.constant.HWRGestureType;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.gon;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Properties;
import java.util.Set;
import java.util.StringTokenizer;
import net.p110sf.saxon.event.ProxyReceiver;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.event.ReceiverOption;
import net.p110sf.saxon.expr.parser.Loc;
import net.p110sf.saxon.lib.SaxonOutputKeys;
import net.p110sf.saxon.om.AttributeMap;
import net.p110sf.saxon.om.FingerprintedQName;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.p111z.IntIterator;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.str.IndentWhitespace;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.SchemaType;
import org.apache.poi.util.ExtUnits;

/* loaded from: classes11.dex */
public class HTMLIndenter extends ProxyReceiver {

    /* renamed from: m */
    public static final String[] f101526m;

    /* renamed from: n */
    public static final String[] f101527n;

    /* renamed from: o */
    public static final Set<String> f101528o;

    /* renamed from: p */
    public static final Set<String> f101529p;

    /* renamed from: q */
    public static final int f101530q = 1;

    /* renamed from: r */
    public static final int f101531r = 2;

    /* renamed from: s */
    public static final int f101532s = 4;

    /* renamed from: e */
    public String f101533e;

    /* renamed from: f */
    public int f101534f;

    /* renamed from: g */
    public boolean f101535g;

    /* renamed from: h */
    public boolean f101536h;

    /* renamed from: i */
    public boolean f101537i;
    protected char[] indentChars;

    /* renamed from: j */
    public boolean f101538j;

    /* renamed from: k */
    public int[] f101539k;

    /* renamed from: l */
    public Set<String> f101540l;

    static {
        String[] strArr = {"pre", Constants.ELEMNAME_SCRIPT_STRING, "style", "textarea", "title", "xmp"};
        f101526m = strArr;
        String[] strArr2 = {"a", "abbr", "acronym", "applet", "area", "audio", "b", "basefont", "bdi", "bdo", "big", "br", "button", IStyleSheet.CLASS_CANVAS, "cite", "code", "data", "datalist", "del", "dfn", ExtUnits.UNIT_EM, "embed", "font", "i", "iframe", "img", "input", "ins", "kbd", C0619b.f5199k, Constant.MAP_TAG, "mark", "math", "meter", "noscript", "object", Constants.ELEMNAME_OUTPUT_STRING, TemplateResourceConstant.TYPE_PICTURE, "progress", "q", "ruby", "s", "samp", Constants.ELEMNAME_SCRIPT_STRING, "select", "small", gon.f71297s, HWRGestureType.STRIKE, "strong", "sub", "sup", FileTypeConstant.SVG, "template", "textarea", "time", gon.f71287n, "u", "var", "video", "wbr"};
        f101527n = strArr2;
        HashSet hashSet = new HashSet(70);
        f101528o = hashSet;
        HashSet hashSet2 = new HashSet(10);
        f101529p = hashSet2;
        Collections.addAll(hashSet, strArr2);
        Collections.addAll(hashSet2, strArr);
    }

    public HTMLIndenter(Receiver receiver, String str) {
        super(receiver);
        this.indentChars = new char[]{'\n', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '};
        this.f101534f = 0;
        this.f101535g = false;
        this.f101536h = false;
        this.f101537i = false;
        this.f101538j = false;
        this.f101539k = new int[20];
        this.f101540l = null;
    }

    /* renamed from: c */
    public final void m63824c() throws XPathException {
        this.nextReceiver.characters(IndentWhitespace.m63883of(1, this.f101534f * getIndentation()), Loc.NONE, 0);
        this.f101535g = false;
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void characters(UnicodeString unicodeString, Location location, int i) throws XPathException {
        int i2 = this.f101534f;
        int i3 = i2 == 0 ? 0 : this.f101539k[i2 - 1] & 4;
        if (this.f101536h || i3 > 0 || ReceiverOption.contains(i, 256) || ReceiverOption.contains(i, 1)) {
            this.nextReceiver.characters(unicodeString, location, i);
        } else {
            UnicodeString tidy = unicodeString.tidy();
            IntIterator codePoints = tidy.codePoints();
            int i4 = 0;
            int i5 = 0;
            while (codePoints.hasNext()) {
                int next = codePoints.next();
                if (next == 10 || (i5 - i4 > getLineLength() && next == 32)) {
                    this.f101535g = false;
                    this.nextReceiver.characters(tidy.substring(i4, i5), location, i);
                    m63824c();
                    i4 = i5 + 1;
                    while (true) {
                        long j = i4;
                        if (j < tidy.length() && tidy.codePointAt(j) == 32) {
                            i4++;
                        }
                    }
                }
                i5++;
            }
            long j2 = i4;
            if (j2 < tidy.length()) {
                this.nextReceiver.characters(tidy.substring(j2, tidy.length()), location, i);
            }
        }
        this.f101537i = false;
        this.f101538j = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [int] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    public int classifyTag(NodeName nodeName) {
        boolean contains = f101528o.contains(nodeName.getLocalPart().toLowerCase());
        ?? r0 = contains;
        if (f101529p.contains(nodeName.getLocalPart().toLowerCase())) {
            r0 = (contains ? 1 : 0) | 2;
        }
        Set<String> set = this.f101540l;
        return (set == null || !set.contains(nodeName.getLocalPart().toLowerCase())) ? r0 : r0 | 4;
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void comment(UnicodeString unicodeString, Location location, int i) throws XPathException {
        int i2;
        if (this.f101538j && (i2 = this.f101534f) != 0 && (this.f101539k[i2 - 1] & 1) == 0) {
            m63824c();
        }
        this.nextReceiver.comment(unicodeString, location, i);
        this.f101538j = false;
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void endElement() throws XPathException {
        int i = this.f101534f - 1;
        this.f101534f = i;
        int i2 = this.f101539k[i];
        boolean z = (i2 & 1) != 0;
        boolean z2 = (i2 & 2) != 0;
        boolean z3 = (i2 & 4) != 0;
        if (!this.f101538j || z || z3 || this.f101537i || this.f101535g || this.f101536h) {
            this.f101537i = z;
        } else {
            m63824c();
            this.f101537i = false;
        }
        this.nextReceiver.endElement();
        this.f101536h = this.f101536h && !z2;
        this.f101535g = false;
        this.f101538j = true;
    }

    public int getIndentation() {
        return 3;
    }

    public int getLineLength() {
        return 80;
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void processingInstruction(String str, UnicodeString unicodeString, Location location, int i) throws XPathException {
        int i2;
        if (this.f101538j && (i2 = this.f101534f) != 0 && (this.f101539k[i2 - 1] & 1) == 0) {
            m63824c();
        }
        this.nextReceiver.processingInstruction(str, unicodeString, location, i);
        this.f101538j = false;
    }

    public void setOutputProperties(Properties properties) {
        String property = properties.getProperty(SaxonOutputKeys.SUPPRESS_INDENTATION);
        if (property != null) {
            this.f101540l = new HashSet(8);
            StringTokenizer stringTokenizer = new StringTokenizer(property, " \t\r\n");
            while (stringTokenizer.hasMoreTokens()) {
                this.f101540l.add(FingerprintedQName.fromEQName(stringTokenizer.nextToken()).getLocalPart().toLowerCase());
            }
        }
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void startElement(NodeName nodeName, SchemaType schemaType, AttributeMap attributeMap, NamespaceMap namespaceMap, Location location, int i) throws XPathException {
        int i2 = this.f101534f;
        int i3 = i2 == 0 ? 0 : this.f101539k[i2 - 1] & 4;
        int classifyTag = classifyTag(nodeName) | i3;
        int i4 = this.f101534f;
        int[] iArr = this.f101539k;
        if (i4 >= iArr.length) {
            this.f101539k = Arrays.copyOf(iArr, i4 * 2);
        }
        int[] iArr2 = this.f101539k;
        int i5 = this.f101534f;
        iArr2[i5] = classifyTag;
        if (!((classifyTag & 1) != 0) && !this.f101536h && !this.f101537i && i3 == 0 && i5 != 0) {
            m63824c();
        }
        this.nextReceiver.startElement(nodeName, schemaType, attributeMap, namespaceMap, location, i);
        this.f101536h = this.f101536h || (classifyTag & 2) != 0;
        this.f101534f++;
        this.f101535g = true;
        this.f101537i = false;
        this.f101538j = false;
    }
}
