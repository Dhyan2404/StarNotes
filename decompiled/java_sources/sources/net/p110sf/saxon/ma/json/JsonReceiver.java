package net.p110sf.saxon.ma.json;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.data.common.cloud.Constant;
import java.util.Objects;
import java.util.Set;
import java.util.Stack;
import java.util.function.IntPredicate;
import net.p110sf.saxon.event.PipelineConfiguration;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.functions.SystemFunction;
import net.p110sf.saxon.ma.json.JsonReceiver;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.str.BMPString;
import net.p110sf.saxon.str.StringConstants;
import net.p110sf.saxon.str.StringView;
import net.p110sf.saxon.str.UniStringConsumer;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.Err;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.StringConverter;
import net.p110sf.saxon.value.DoubleValue;
import net.p110sf.saxon.value.StringToDouble11;
import net.p110sf.saxon.value.StringValue;
import net.p110sf.saxon.value.Whitespace;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes11.dex */
public class JsonReceiver implements Receiver {

    /* renamed from: p */
    public static final String f100656p = "FOJS0006";

    /* renamed from: q */
    public static final /* synthetic */ boolean f100657q = false;

    /* renamed from: e */
    public XPathContext f100658e;

    /* renamed from: f */
    public PipelineConfiguration f100659f;

    /* renamed from: g */
    public UniStringConsumer f100660g;

    /* renamed from: h */
    public final StringBuilder f100661h = new StringBuilder(128);

    /* renamed from: i */
    public final Stack<NodeName> f100662i = new Stack<>();

    /* renamed from: j */
    public boolean f100663j = true;

    /* renamed from: k */
    public boolean f100664k = false;

    /* renamed from: l */
    public boolean f100665l = false;

    /* renamed from: m */
    public final Stack<Set<String>> f100666m = new Stack<>();

    /* renamed from: n */
    public Function f100667n = null;

    /* renamed from: o */
    public IntPredicate f100668o = new IntPredicate() { // from class: com.sunia.HTREnginev2.uri
        @Override // java.util.function.IntPredicate
        public final boolean test(int i) {
            boolean m63335f;
            m63335f = JsonReceiver.m63335f(i);
            return m63335f;
        }
    };

    public JsonReceiver(PipelineConfiguration pipelineConfiguration, XPathContext xPathContext, UniStringConsumer uniStringConsumer) {
        Objects.requireNonNull(pipelineConfiguration);
        Objects.requireNonNull(uniStringConsumer);
        setPipelineConfiguration(pipelineConfiguration);
        this.f100660g = uniStringConsumer;
        this.f100658e = xPathContext;
    }

    /* renamed from: c */
    public static String m63333c(String str) throws XPathException {
        m63336g(str);
        StringBuilder sb = new StringBuilder(str.length() * 2);
        boolean z = false;
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (charAt == '\"' && !z) {
                sb.append("\\\"");
            } else if (charAt < ' ' || (charAt >= 127 && charAt < 160)) {
                if (charAt == '\b') {
                    sb.append("\\b");
                } else if (charAt == '\f') {
                    sb.append("\\f");
                } else if (charAt == '\n') {
                    sb.append("\\n");
                } else if (charAt == '\r') {
                    sb.append("\\r");
                } else if (charAt == '\t') {
                    sb.append("\\t");
                } else {
                    sb.append("\\u");
                    sb.append((CharSequence) m63334d(charAt));
                }
            } else if (charAt != '/' || z) {
                sb.appendCodePoint(charAt);
            } else {
                sb.append("\\/");
            }
            z = charAt == '\\' && !z;
        }
        return sb.toString();
    }

    /* renamed from: d */
    public static StringBuilder m63334d(int i) {
        StringBuilder sb = new StringBuilder(Integer.toHexString(i).toUpperCase());
        while (sb.length() < 4) {
            sb.insert(0, "0");
        }
        return sb;
    }

    public static String escape(String str, boolean z, IntPredicate intPredicate) throws XPathException {
        StringBuilder sb = new StringBuilder(str.length());
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (charAt == '\f') {
                sb.append("\\f");
            } else if (charAt == '\r') {
                sb.append("\\r");
            } else if (charAt == '\"') {
                sb.append(z ? "\"" : "\\\"");
            } else if (charAt == '/') {
                sb.append(z ? "/" : "\\/");
            } else if (charAt != '\\') {
                switch (charAt) {
                    case '\b':
                        sb.append("\\b");
                        break;
                    case '\t':
                        sb.append("\\t");
                        break;
                    case '\n':
                        sb.append("\\n");
                        break;
                    default:
                        if (intPredicate.test(charAt)) {
                            sb.append("\\u");
                            sb.append((CharSequence) m63334d(charAt));
                            break;
                        } else {
                            sb.appendCodePoint(charAt);
                            break;
                        }
                }
            } else {
                sb.append("\\\\");
            }
        }
        return sb.toString();
    }

    /* renamed from: f */
    public static /* synthetic */ boolean m63335f(int i) {
        return i < 31 || (i >= 127 && i <= 159);
    }

    /* renamed from: g */
    public static String m63336g(String str) throws XPathException {
        StringBuilder sb;
        String hexString;
        if (str.indexOf(92) < 0) {
            return str;
        }
        StringBuilder sb2 = new StringBuilder(str.length());
        int i = 0;
        while (i < str.length()) {
            char charAt = str.charAt(i);
            if (charAt == '\\') {
                int i2 = i + 1;
                if (i == str.length() - 1) {
                    throw new XPathException("String '" + Err.wrap(str) + "' ends in backslash ", "FOJS0007");
                }
                char charAt2 = str.charAt(i2);
                if (charAt2 == '\"') {
                    sb2.append('\"');
                } else if (charAt2 == '/') {
                    sb2.append('/');
                } else if (charAt2 == '\\') {
                    sb2.append('\\');
                } else if (charAt2 == 'b') {
                    sb2.append('\b');
                } else if (charAt2 == 'f') {
                    sb2.append('\f');
                } else if (charAt2 == 'n') {
                    sb2.append('\n');
                } else if (charAt2 == 'r') {
                    sb2.append('\r');
                } else if (charAt2 == 't') {
                    sb2.append('\t');
                } else {
                    if (charAt2 != 'u') {
                        char charAt3 = str.charAt(i2);
                        if (charAt3 < 256) {
                            sb = new StringBuilder();
                            sb.append((int) charAt3);
                            hexString = "";
                        } else {
                            sb = new StringBuilder();
                            sb.append("x");
                            hexString = Integer.toHexString(charAt3);
                        }
                        sb.append(hexString);
                        throw new XPathException("Unknown escape sequence \\" + sb.toString(), "FOJS0007");
                    }
                    try {
                        sb2.append((char) Integer.parseInt(str.substring(i2 + 1, i2 + 5), 16));
                        i2 += 4;
                    } catch (Exception unused) {
                        throw new XPathException("Invalid hex escape sequence in string '" + Err.wrap(str) + CloudStorageConstants.SINGLE_QUOTES, "FOJS0007");
                    }
                }
                i = i2;
            } else {
                sb2.append(charAt);
            }
            i++;
        }
        return sb2.toString();
    }

    /* renamed from: b */
    public final void m63337b(String str, String str2) throws XPathException {
        if ("null".equals(str2) || "string".equals(str2) || "number".equals(str2) || "boolean".equals(str2)) {
            throw new XPathException("xml-to-json: A " + Err.wrap(str, 1) + " element cannot appear as a child of " + Err.wrap(str2, 1), f100656p);
        }
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void characters(UnicodeString unicodeString, Location location, int i) throws XPathException {
        if (!this.f100662i.empty() && !Whitespace.isAllWhite(unicodeString)) {
            String localPart = this.f100662i.peek().getLocalPart();
            if (localPart.equals(Constant.MAP_TAG) || localPart.equals("array")) {
                throw new XPathException("xml-to-json: Element " + localPart + " must have no text content", f100656p);
            }
        }
        this.f100661h.append(unicodeString);
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void close() throws XPathException {
        UniStringConsumer uniStringConsumer = this.f100660g;
        if (uniStringConsumer != null) {
            uniStringConsumer.close();
            this.f100660g = null;
        }
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void comment(UnicodeString unicodeString, Location location, int i) throws XPathException {
    }

    /* renamed from: e */
    public final void m63338e(int i) throws XPathException {
        this.f100660g.accept(BMPString.m63877of("\n"));
        for (int i2 = 0; i2 < i; i2++) {
            this.f100660g.accept(StringConstants.SINGLE_SPACE);
        }
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void endDocument() throws XPathException {
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void endElement() throws XPathException {
        NodeName pop = this.f100662i.pop();
        String localPart = pop.getLocalPart();
        String sb = this.f100661h.toString();
        UnicodeString tidy = StringView.tidy(sb);
        if (localPart.equals("boolean")) {
            try {
                this.f100660g.accept(BMPString.m63877of(StringConverter.StringToBoolean.INSTANCE.convertString(tidy).asAtomic().effectiveBooleanValue() ? "true" : "false"));
            } catch (XPathException unused) {
                throw new XPathException("xml-to-json: Value of <boolean> element is not a valid xs:boolean", f100656p);
            }
        } else if (localPart.equals("number")) {
            Function function = this.f100667n;
            if (function == null) {
                try {
                    double stringToNumber = StringToDouble11.getInstance().stringToNumber(tidy);
                    if (Double.isNaN(stringToNumber) || Double.isInfinite(stringToNumber)) {
                        throw new XPathException("xml-to-json: Infinity and NaN are not allowed", f100656p);
                    }
                    this.f100660g.accept(new DoubleValue(stringToNumber).getUnicodeStringValue());
                } catch (NumberFormatException unused2) {
                    throw new XPathException("xml-to-json: Invalid number: " + ((Object) this.f100661h), f100656p);
                }
            } else {
                this.f100660g.accept(((StringValue) SystemFunction.dynamicCall(function, this.f100658e, new Sequence[]{new StringValue(tidy)})).getUnicodeStringValue());
            }
        } else if (localPart.equals("string")) {
            this.f100660g.accept(BMPString.m63877of("\""));
            this.f100661h.toString();
            if (this.f100665l) {
                this.f100660g.accept(StringView.m63901of(m63333c(sb)));
            } else {
                this.f100660g.accept(StringView.m63901of(escape(sb, false, this.f100668o)));
            }
            this.f100660g.accept(BMPString.m63877of("\""));
        } else if (!Whitespace.isAllWhite(tidy)) {
            throw new XPathException("xml-to-json: Element " + pop.getDisplayName() + " must have no text content", f100656p);
        }
        this.f100661h.setLength(0);
        this.f100665l = false;
        if (localPart.equals("array")) {
            this.f100660g.accept(BMPString.m63877of(this.f100664k ? " ]" : IteratorUtils.f104924b));
        } else if (localPart.equals(Constant.MAP_TAG)) {
            this.f100666m.pop();
            this.f100660g.accept(BMPString.m63877of(this.f100664k ? " }" : "}"));
        }
        this.f100663j = false;
    }

    public Function getNumberFormatter() {
        return this.f100667n;
    }

    @Override // net.p110sf.saxon.event.Receiver
    public PipelineConfiguration getPipelineConfiguration() {
        return this.f100659f;
    }

    @Override // javax.xml.transform.Result
    public String getSystemId() {
        return null;
    }

    public boolean isIndenting() {
        return this.f100664k;
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void open() throws XPathException {
        this.f100660g.open();
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void processingInstruction(String str, UnicodeString unicodeString, Location location, int i) throws XPathException {
    }

    public void setIndenting(boolean z) {
        this.f100664k = z;
    }

    public void setNumberFormatter(Function function) {
        this.f100667n = function;
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void setPipelineConfiguration(PipelineConfiguration pipelineConfiguration) {
        this.f100659f = pipelineConfiguration;
    }

    @Override // javax.xml.transform.Result
    public void setSystemId(String str) {
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void setUnparsedEntity(String str, String str2, String str3) throws XPathException {
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void startDocument(int i) throws XPathException {
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0094, code lost:
    
        switch(r16) {
            case 0: goto L46;
            case 1: goto L42;
            case 2: goto L38;
            default: goto L152;
        };
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00b0, code lost:
    
        if (r5 == false) goto L154;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00b2, code lost:
    
        r11 = r13.getValue();
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00be, code lost:
    
        throw new net.p110sf.saxon.trans.XPathException("xml-to-json: The escaped-key attribute is allowed only on elements within a map", net.p110sf.saxon.ma.json.JsonReceiver.f100656p);
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00bf, code lost:
    
        if (r5 == false) goto L156;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00c1, code lost:
    
        r3 = r13.getValue();
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00cd, code lost:
    
        throw new net.p110sf.saxon.trans.XPathException("xml-to-json: The key attribute is allowed only on elements within a map", net.p110sf.saxon.ma.json.JsonReceiver.f100656p);
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00d5, code lost:
    
        if (r18.f100662i.size() == 1) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00df, code lost:
    
        if (r19.getLocalPart().equals("string") == false) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00e2, code lost:
    
        r1 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00e5, code lost:
    
        if (r1 == false) goto L153;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00e7, code lost:
    
        r12 = r13.getValue();
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00f3, code lost:
    
        throw new net.p110sf.saxon.trans.XPathException("xml-to-json: The escaped attribute is allowed only on the <string> element", net.p110sf.saxon.ma.json.JsonReceiver.f100656p);
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00e4, code lost:
    
        r1 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00af, code lost:
    
        throw new net.p110sf.saxon.trans.XPathException("xml-to-json: Disallowed attribute in input: " + r15.getDisplayName(), net.p110sf.saxon.ma.json.JsonReceiver.f100656p);
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:100:0x0237. Please report as an issue. */
    @Override // net.p110sf.saxon.event.Receiver
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void startElement(net.p110sf.saxon.om.NodeName r19, net.p110sf.saxon.type.SchemaType r20, net.p110sf.saxon.om.AttributeMap r21, net.p110sf.saxon.om.NamespaceMap r22, net.p110sf.saxon.s9api.Location r23, int r24) throws net.p110sf.saxon.trans.XPathException {
        /*
            Method dump skipped, instructions count: 878
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.ma.json.JsonReceiver.startElement(net.sf.saxon.om.NodeName, net.sf.saxon.type.SchemaType, net.sf.saxon.om.AttributeMap, net.sf.saxon.om.NamespaceMap, net.sf.saxon.s9api.Location, int):void");
    }

    @Override // net.p110sf.saxon.event.Receiver
    public boolean usesTypeAnnotations() {
        return false;
    }
}
