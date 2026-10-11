package net.p110sf.saxon.tree.tiny;

import java.util.Arrays;
import java.util.Stack;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.event.Builder;
import net.p110sf.saxon.event.BuilderMonitor;
import net.p110sf.saxon.event.CopyInformee;
import net.p110sf.saxon.event.LocationCopier;
import net.p110sf.saxon.event.PipelineConfiguration;
import net.p110sf.saxon.event.ReceiverOption;
import net.p110sf.saxon.event.ReceivingContentHandler;
import net.p110sf.saxon.lib.Feature;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.AttributeMap;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.str.CompressedWhitespace;
import net.p110sf.saxon.str.LargeTextBuffer;
import net.p110sf.saxon.str.UnicodeBuilder;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.SimpleType;

/* loaded from: classes11.dex */
public class TinyBuilder extends Builder {

    /* renamed from: s */
    public static final int f102553s = 10;

    /* renamed from: t */
    public static final /* synthetic */ boolean f102554t = false;

    /* renamed from: f */
    public TinyTree f102555f;

    /* renamed from: g */
    public final Stack<NamespaceMap> f102556g;

    /* renamed from: h */
    public int f102557h;

    /* renamed from: i */
    public int f102558i;

    /* renamed from: j */
    public boolean f102559j;

    /* renamed from: k */
    public boolean f102560k;

    /* renamed from: l */
    public Statistics f102561l;

    /* renamed from: m */
    public boolean f102562m;

    /* renamed from: n */
    public Eligibility f102563n;

    /* renamed from: o */
    public UnicodeBuilder f102564o;

    /* renamed from: p */
    public int[] f102565p;

    /* renamed from: q */
    public int[] f102566q;

    /* renamed from: r */
    public boolean f102567r;

    /* loaded from: classes11.dex */
    public enum Eligibility {
        INELIGIBLE,
        PRIMED,
        ELIGIBLE
    }

    public TinyBuilder(PipelineConfiguration pipelineConfiguration) {
        super(pipelineConfiguration);
        this.f102556g = new Stack<>();
        boolean z = false;
        this.f102557h = 0;
        this.f102558i = 0;
        this.f102559j = false;
        this.f102560k = true;
        this.f102562m = false;
        this.f102563n = Eligibility.INELIGIBLE;
        this.f102564o = new UnicodeBuilder();
        this.f102565p = new int[100];
        this.f102566q = new int[100];
        this.f102567r = false;
        Configuration configuration = pipelineConfiguration.getConfiguration();
        this.f102561l = configuration.getTreeStatistics().TEMPORARY_TREE_STATISTICS;
        if (configuration.isExpandAttributeDefaults() && configuration.getBooleanProperty(Feature.MARK_DEFAULTED_ATTRIBUTES)) {
            z = true;
        }
        this.f102562m = z;
    }

    /* renamed from: a */
    public final void m64543a(NodeName nodeName, SimpleType simpleType, String str, Location location, int i) throws XPathException {
        int obtainFingerprint = nodeName.obtainFingerprint(this.namePool);
        String prefix = nodeName.getPrefix();
        this.f102555f.m64552a(this.currentRoot, this.f102558i, prefix.isEmpty() ? obtainFingerprint : (this.f102555f.f102579A0.obtainPrefixCode(prefix) << 20) | obtainFingerprint, simpleType, str, i);
        if (this.f102562m && ReceiverOption.contains(i, 8)) {
            this.f102555f.markDefaultedAttribute(r8.f102587O - 1);
        }
        if (obtainFingerprint == 385) {
            this.uniformBaseURI = false;
            this.f102555f.m64573w(null);
        }
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void characters(UnicodeString unicodeString, Location location, int i) throws XPathException {
        if (!(unicodeString instanceof CompressedWhitespace) || !ReceiverOption.contains(i, 1024)) {
            if (unicodeString.isEmpty()) {
                return;
            }
            int makeTextNode = makeTextNode(unicodeString.tidy());
            this.f102558i = makeTextNode;
            if (this.lineNumbering) {
                this.f102555f.m64571u(makeTextNode, location.getLineNumber(), location.getColumnNumber());
            }
            this.f102563n = this.f102563n == Eligibility.PRIMED ? Eligibility.ELIGIBLE : Eligibility.INELIGIBLE;
            return;
        }
        TinyTree tinyTree = this.f102555f;
        long compressedValue = ((CompressedWhitespace) unicodeString).getCompressedValue();
        int m64555d = tinyTree.m64555d((short) 4, this.f102557h, (int) (compressedValue >> 32), (int) compressedValue, -1);
        this.f102558i = m64555d;
        int[] iArr = this.f102565p;
        int i2 = this.f102557h;
        int i3 = iArr[i2];
        if (i3 > 0) {
            tinyTree.f102595n[i3] = m64555d;
        }
        tinyTree.f102595n[m64555d] = iArr[i2 - 1];
        iArr[i2] = m64555d;
        int[] iArr2 = this.f102566q;
        iArr2[i2] = iArr2[i2] + 1;
        if (this.lineNumbering) {
            tinyTree.m64571u(m64555d, location.getLineNumber(), location.getColumnNumber());
        }
    }

    @Override // net.p110sf.saxon.event.Builder, net.p110sf.saxon.event.Receiver
    public void close() throws XPathException {
        TinyTree tinyTree = this.f102555f;
        if (tinyTree != null) {
            tinyTree.f102591k = this.f102564o.toUnicodeString();
            this.f102555f.f102590j.close();
            tinyTree.m64555d((short) 11, 0, 0, 0, -1);
            tinyTree.m64557f(this.f102561l);
        }
        super.close();
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void comment(UnicodeString unicodeString, Location location, int i) throws XPathException {
        TinyTree tinyTree = this.f102555f;
        this.f102563n = Eligibility.INELIGIBLE;
        int length = (int) this.f102564o.length();
        this.f102564o.accept(unicodeString);
        int m64555d = tinyTree.m64555d((short) 8, this.f102557h, length, unicodeString.tidy().length32(), -1);
        this.f102558i = m64555d;
        int[] iArr = this.f102565p;
        int i2 = this.f102557h;
        int i3 = iArr[i2];
        if (i3 > 0) {
            tinyTree.f102595n[i3] = m64555d;
        }
        tinyTree.f102595n[m64555d] = iArr[i2 - 1];
        iArr[i2] = m64555d;
        int[] iArr2 = this.f102566q;
        iArr2[i2] = iArr2[i2] + 1;
        if (this.lineNumbering) {
            tinyTree.m64571u(m64555d, location.getLineNumber(), location.getColumnNumber());
        }
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void endDocument() throws XPathException {
        this.f102555f.f102591k = this.f102564o.toUnicodeString();
        this.f102555f.m64555d((short) 11, 0, 0, 0, -1);
        this.f102555f.f102593l--;
        int i = this.f102557h;
        if (i <= 1 && !this.f102559j) {
            this.f102559j = true;
            this.f102565p[i] = -1;
            this.f102557h = i - 1;
        }
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void endElement() throws XPathException {
        boolean z = this.f102563n == Eligibility.ELIGIBLE;
        this.f102563n = Eligibility.INELIGIBLE;
        int[] iArr = this.f102565p;
        int i = this.f102557h;
        iArr[i] = -1;
        this.f102566q[i] = 0;
        this.f102557h = i - 1;
        this.f102556g.pop();
        if (this.f102567r) {
            this.f102555f.indexIDElement(this.currentRoot, this.f102565p[this.f102557h]);
            this.f102567r = false;
            return;
        }
        if (z) {
            TinyTree tinyTree = this.f102555f;
            byte[] bArr = tinyTree.nodeKind;
            int i2 = this.f102558i;
            if (bArr[i2] == 3 && bArr[i2 - 1] == 1) {
                int[] iArr2 = tinyTree.f102596o;
                if (iArr2[i2 - 1] == -1 && this.f102560k) {
                    bArr[i2 - 1] = 17;
                    iArr2[i2 - 1] = iArr2[i2];
                    int[] iArr3 = tinyTree.f102597p;
                    iArr3[i2 - 1] = iArr3[i2];
                    int i3 = i2 - 1;
                    this.f102558i = i3;
                    tinyTree.f102593l--;
                    if (this.f102557h == 0) {
                        this.currentRoot = tinyTree.getNode(i3);
                    }
                }
            }
        }
    }

    public String getAttValue(AttributeInfo attributeInfo) {
        return attributeInfo.getValue();
    }

    @Override // net.p110sf.saxon.event.Builder
    public BuilderMonitor getBuilderMonitor() {
        return new TinyBuilderMonitor(this);
    }

    public int getCurrentDepth() {
        return this.f102557h;
    }

    public TinyNodeImpl getLastCompletedElement() {
        TinyTree tinyTree = this.f102555f;
        if (tinyTree == null) {
            return null;
        }
        int i = this.f102557h;
        return tinyTree.getNode(i >= 0 ? this.f102565p[i] : 0);
    }

    public TinyTree getTree() {
        return this.f102555f;
    }

    public int makeTextNode(UnicodeString unicodeString) {
        TinyTree tinyTree = this.f102555f;
        LargeTextBuffer largeTextBuffer = tinyTree.f102590j;
        int length = largeTextBuffer.length();
        tinyTree.m64556e(unicodeString);
        int length2 = largeTextBuffer.length() - length;
        int i = tinyTree.f102593l - 1;
        if (tinyTree.nodeKind[i] == 3 && tinyTree.f102594m[i] == this.f102557h) {
            int[] iArr = tinyTree.f102597p;
            iArr[i] = iArr[i] + length2;
        } else {
            int m64555d = tinyTree.m64555d((short) 3, this.f102557h, length, length2, -1);
            this.f102558i = m64555d;
            int[] iArr2 = this.f102565p;
            int i2 = this.f102557h;
            int i3 = iArr2[i2];
            if (i3 > 0) {
                tinyTree.f102595n[i3] = m64555d;
            }
            tinyTree.f102595n[m64555d] = iArr2[i2 - 1];
            iArr2[i2] = m64555d;
            int[] iArr3 = this.f102566q;
            iArr3[i2] = iArr3[i2] + 1;
        }
        return this.f102558i;
    }

    @Override // net.p110sf.saxon.event.Builder, net.p110sf.saxon.event.Receiver
    public void open() {
        if (this.started) {
            return;
        }
        if (this.f102555f == null) {
            TinyTree tinyTree = new TinyTree(this.config, this.f102561l);
            this.f102555f = tinyTree;
            this.f102557h = 0;
            if (this.lineNumbering) {
                tinyTree.setLineNumbering();
            }
            this.uniformBaseURI = true;
            this.f102555f.m64573w(this.baseURI);
        }
        if (this.useEventLocation) {
            Object component = getPipelineConfiguration().getComponent(CopyInformee.class.getName());
            if (component instanceof LocationCopier) {
                setSystemId(((LocationCopier) component).getSystemId());
            }
        }
        super.open();
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void processingInstruction(String str, UnicodeString unicodeString, Location location, int i) throws XPathException {
        TinyTree tinyTree = this.f102555f;
        this.f102563n = Eligibility.INELIGIBLE;
        int length = (int) this.f102564o.length();
        this.f102564o.accept(unicodeString);
        int m64555d = tinyTree.m64555d((short) 7, this.f102557h, length, unicodeString.length32(), this.namePool.allocateFingerprint("", str));
        this.f102558i = m64555d;
        int[] iArr = this.f102565p;
        int i2 = this.f102557h;
        int i3 = iArr[i2];
        if (i3 > 0) {
            tinyTree.f102595n[i3] = m64555d;
        }
        tinyTree.f102595n[m64555d] = iArr[i2 - 1];
        iArr[i2] = m64555d;
        int[] iArr2 = this.f102566q;
        iArr2[i2] = iArr2[i2] + 1;
        String systemId = location.getSystemId();
        tinyTree.m64572v(this.f102558i, systemId);
        if (systemId != null && !systemId.equals(this.baseURI)) {
            this.uniformBaseURI = false;
            this.f102555f.m64573w(null);
        }
        if (this.lineNumbering) {
            tinyTree.m64571u(this.f102558i, location.getLineNumber(), location.getColumnNumber());
        }
    }

    @Override // net.p110sf.saxon.event.Builder
    public void reset() {
        super.reset();
        this.f102555f = null;
        this.f102557h = 0;
        this.f102558i = 0;
        this.f102559j = false;
        this.f102561l = this.config.getTreeStatistics().TEMPORARY_TREE_STATISTICS;
    }

    public void setStatistics(Statistics statistics) {
        this.f102561l = statistics;
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void setUnparsedEntity(String str, String str2, String str3) {
        if (this.f102555f.getUnparsedEntity(str) == null) {
            this.f102555f.m64574x(str, str2, str3);
        }
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void startDocument(int i) throws XPathException {
        if ((!this.started || this.f102559j) && this.f102557h <= 0) {
            this.started = true;
            this.f102559j = false;
            TinyTree tinyTree = this.f102555f;
            TinyDocumentImpl tinyDocumentImpl = new TinyDocumentImpl(tinyTree);
            this.currentRoot = tinyDocumentImpl;
            tinyDocumentImpl.setSystemId(getSystemId());
            tinyDocumentImpl.setBaseURI(getBaseURI());
            this.f102557h = 0;
            int m64553b = tinyTree.m64553b((TinyDocumentImpl) this.currentRoot);
            int[] iArr = this.f102565p;
            iArr[0] = m64553b;
            iArr[1] = -1;
            int[] iArr2 = this.f102566q;
            iArr2[0] = 0;
            iArr2[1] = 0;
            tinyTree.f102595n[m64553b] = -1;
            this.f102557h++;
        }
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void startElement(NodeName nodeName, SchemaType schemaType, AttributeMap attributeMap, NamespaceMap namespaceMap, Location location, int i) throws XPathException {
        TinyTree tinyTree = this.f102555f;
        this.f102563n = Eligibility.INELIGIBLE;
        this.f102560k = true;
        if (this.f102556g.isEmpty()) {
            this.f102560k = false;
            this.f102556g.push(namespaceMap);
        } else {
            this.f102560k = namespaceMap == this.f102556g.peek();
            this.f102556g.push(namespaceMap);
        }
        int[] iArr = this.f102566q;
        int i2 = this.f102557h;
        if (iArr[i2] > 10) {
            int m64555d = tinyTree.m64555d((short) 12, i2, this.f102565p[i2 - 1], 0, 0);
            this.f102558i = m64555d;
            int[] iArr2 = this.f102565p;
            int i3 = this.f102557h;
            int i4 = iArr2[i3];
            if (i4 > 0) {
                tinyTree.f102595n[i4] = m64555d;
            }
            tinyTree.f102595n[m64555d] = iArr2[i3 - 1];
            iArr2[i3] = m64555d;
            this.f102566q[i3] = 0;
        }
        this.f102558i = tinyTree.m64555d((short) 1, this.f102557h, -1, -1, (this.f102555f.f102579A0.obtainPrefixCode(nodeName.getPrefix()) << 20) | nodeName.obtainFingerprint(this.namePool));
        this.f102567r = ReceiverOption.contains(i, 2048);
        if (schemaType.getFingerprint() != 630) {
            tinyTree.m64570t(this.f102558i, schemaType);
            if (ReceiverOption.contains(i, 16)) {
                tinyTree.setNilled(this.f102558i);
            }
            if (!this.f102567r && schemaType.isIdType()) {
                this.f102567r = true;
            }
        }
        int i5 = this.f102557h;
        if (i5 == 0) {
            int[] iArr3 = this.f102565p;
            int i6 = this.f102558i;
            iArr3[0] = i6;
            iArr3[1] = -1;
            this.currentRoot = tinyTree.getNode(i6);
        } else {
            int[] iArr4 = this.f102565p;
            int i7 = iArr4[i5];
            if (i7 > 0) {
                tinyTree.f102595n[i7] = this.f102558i;
            }
            int[] iArr5 = tinyTree.f102595n;
            int i8 = this.f102558i;
            iArr5[i8] = iArr4[i5 - 1];
            iArr4[i5] = i8;
            int[] iArr6 = this.f102566q;
            iArr6[i5] = iArr6[i5] + 1;
        }
        int i9 = this.f102557h + 1;
        this.f102557h = i9;
        int[] iArr7 = this.f102565p;
        if (i9 == iArr7.length) {
            this.f102565p = Arrays.copyOf(iArr7, i9 * 2);
            this.f102566q = Arrays.copyOf(this.f102566q, this.f102557h * 2);
        }
        int[] iArr8 = this.f102565p;
        int i10 = this.f102557h;
        iArr8[i10] = -1;
        this.f102566q[i10] = 0;
        String systemId = location.getSystemId();
        if (isUseEventLocation() && systemId != null) {
            tinyTree.m64572v(this.f102558i, systemId);
        } else if (this.f102557h == 1) {
            tinyTree.m64572v(this.f102558i, this.systemId);
        }
        if (this.uniformBaseURI && systemId != null && !systemId.equals(this.baseURI)) {
            this.uniformBaseURI = false;
            tinyTree.m64573w(null);
        }
        if (this.lineNumbering) {
            tinyTree.m64571u(this.f102558i, location.getLineNumber(), location.getColumnNumber());
        }
        if ((location instanceof ReceivingContentHandler.LocalLocator) && ((ReceivingContentHandler.LocalLocator) location).levelInEntity == 0 && this.f102557h >= 1) {
            tinyTree.markTopWithinEntity(this.f102558i);
        }
        for (AttributeInfo attributeInfo : attributeMap) {
            m64543a(attributeInfo.getNodeName(), attributeInfo.getType(), getAttValue(attributeInfo), location, attributeInfo.getProperties());
        }
        this.f102563n = this.f102560k ? Eligibility.PRIMED : Eligibility.INELIGIBLE;
        this.f102555f.m64554c(this.f102558i, this.f102556g.peek());
        this.f102558i++;
    }
}
