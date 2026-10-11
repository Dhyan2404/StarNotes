package net.p110sf.saxon.event;

import java.util.Arrays;
import net.p110sf.saxon.om.AttributeMap;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.om.SpaceStrippingRule;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.trans.rules.Rule;
import net.p110sf.saxon.trans.rules.RuleTarget;
import net.p110sf.saxon.type.ComplexType;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.Untyped;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public class Stripper extends ProxyReceiver {
    public static final int ALWAYS_PRESERVE = 1;
    public static final int ALWAYS_STRIP = 2;
    public static final int ASSERTIONS_EXIST = 16;
    public static final int PRESERVE_PARENT = 4;
    public static final int SIMPLE_CONTENT = 8;
    public static final int STRIP_DEFAULT = 0;

    /* renamed from: g */
    public static final /* synthetic */ boolean f99128g = false;

    /* renamed from: e */
    public int[] f99129e;

    /* renamed from: f */
    public int f99130f;
    protected SpaceStrippingRule rule;
    public static final StripRuleTarget STRIP = new C18285a();
    public static final StripRuleTarget PRESERVE = new C18286b();

    /* loaded from: classes11.dex */
    public static class StripRuleTarget implements RuleTarget {
        @Override // net.p110sf.saxon.trans.rules.RuleTarget
        public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        }

        @Override // net.p110sf.saxon.trans.rules.RuleTarget
        public void registerRule(Rule rule) {
        }
    }

    /* renamed from: net.sf.saxon.event.Stripper$a */
    /* loaded from: classes11.dex */
    public static class C18285a extends StripRuleTarget {
    }

    /* renamed from: net.sf.saxon.event.Stripper$b */
    /* loaded from: classes11.dex */
    public static class C18286b extends StripRuleTarget {
    }

    public Stripper(SpaceStrippingRule spaceStrippingRule, Receiver receiver) {
        super(receiver);
        this.f99129e = new int[100];
        this.f99130f = 0;
        this.rule = spaceStrippingRule;
    }

    /* renamed from: c */
    public final int m62528c(NodeName nodeName, SchemaType schemaType) throws XPathException {
        return this.rule.isSpacePreserving(nodeName, schemaType);
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void characters(UnicodeString unicodeString, Location location, int i) throws XPathException {
        int i2 = this.f99129e[this.f99130f];
        if ((((i2 & 29) == 0 || (i2 & 2) != 0) && Whitespace.isAllWhite(unicodeString)) || unicodeString.isEmpty()) {
            return;
        }
        this.nextReceiver.characters(unicodeString, location, i);
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void endElement() throws XPathException {
        this.nextReceiver.endElement();
        this.f99130f--;
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.SequenceReceiver, net.p110sf.saxon.event.Receiver
    public void open() throws XPathException {
        this.f99130f = 0;
        this.f99129e[0] = 1;
        super.open();
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void startElement(NodeName nodeName, SchemaType schemaType, AttributeMap attributeMap, NamespaceMap namespaceMap, Location location, int i) throws XPathException {
        this.nextReceiver.startElement(nodeName, schemaType, attributeMap, namespaceMap, location, i);
        int i2 = this.f99129e[this.f99130f] & 20;
        int m62528c = m62528c(nodeName, schemaType);
        if (m62528c == 1) {
            i2 |= 1;
        } else if (m62528c == 2) {
            i2 |= 2;
        }
        if (schemaType != Untyped.getInstance()) {
            if (i2 == 0 && (schemaType.isSimpleType() || ((ComplexType) schemaType).isSimpleContent())) {
                i2 |= 8;
            }
            if ((schemaType instanceof ComplexType) && ((ComplexType) schemaType).hasAssertions()) {
                i2 |= 16;
            }
        }
        int i3 = this.f99130f + 1;
        this.f99130f = i3;
        int[] iArr = this.f99129e;
        if (i3 >= iArr.length) {
            this.f99129e = Arrays.copyOf(iArr, i3 * 2);
        }
        this.f99129e[this.f99130f] = i2;
        String value = attributeMap.getValue("http://www.w3.org/XML/1998/namespace", "space");
        if (value != null) {
            if (Whitespace.trim(value).equals("preserve")) {
                int[] iArr2 = this.f99129e;
                int i4 = this.f99130f;
                iArr2[i4] = iArr2[i4] | 4;
            } else {
                int[] iArr3 = this.f99129e;
                int i5 = this.f99130f;
                iArr3[i5] = iArr3[i5] & (-5);
            }
        }
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public boolean usesTypeAnnotations() {
        return true;
    }
}
