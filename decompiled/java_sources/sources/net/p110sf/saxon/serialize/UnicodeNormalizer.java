package net.p110sf.saxon.serialize;

import java.text.Normalizer;
import java.util.function.Function;
import net.p110sf.saxon.event.ProxyReceiver;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.event.ReceiverOption;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.AttributeMap;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.serialize.UnicodeNormalizer;
import net.p110sf.saxon.str.StringView;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.str.WhitespaceString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public class UnicodeNormalizer extends ProxyReceiver {

    /* renamed from: e */
    public final Normalizer.Form f101613e;

    public UnicodeNormalizer(String str, Receiver receiver) throws XPathException {
        super(receiver);
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case 77195:
                if (str.equals("NFC")) {
                    c = 0;
                    break;
                }
                break;
            case 77196:
                if (str.equals("NFD")) {
                    c = 1;
                    break;
                }
                break;
            case 2393360:
                if (str.equals("NFKC")) {
                    c = 2;
                    break;
                }
                break;
            case 2393361:
                if (str.equals("NFKD")) {
                    c = 3;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                this.f101613e = Normalizer.Form.NFC;
                return;
            case 1:
                this.f101613e = Normalizer.Form.NFD;
                return;
            case 2:
                this.f101613e = Normalizer.Form.NFKC;
                return;
            case 3:
                this.f101613e = Normalizer.Form.NFKD;
                return;
            default:
                XPathException xPathException = new XPathException("Unknown normalization form " + str);
                xPathException.setErrorCode("SESU0011");
                throw xPathException;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public /* synthetic */ AttributeInfo m63855d(AttributeInfo attributeInfo) {
        return new AttributeInfo(attributeInfo.getNodeName(), attributeInfo.getType(), normalize(StringView.m63901of(attributeInfo.getValue()), ReceiverOption.contains(attributeInfo.getProperties(), 256)).toString(), attributeInfo.getLocation(), attributeInfo.getProperties());
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void characters(UnicodeString unicodeString, Location location, int i) throws XPathException {
        if (Whitespace.isAllWhite(unicodeString)) {
            this.nextReceiver.characters(unicodeString, location, i);
        } else {
            this.nextReceiver.characters(normalize(unicodeString, ReceiverOption.contains(i, 256)), location, i);
        }
    }

    public Normalizer.Form getNormalizationForm() {
        return this.f101613e;
    }

    public UnicodeString normalize(UnicodeString unicodeString, boolean z) {
        if (unicodeString instanceof WhitespaceString) {
            return unicodeString;
        }
        UnicodeString tidy = unicodeString.tidy();
        if (!z) {
            return StringView.tidy(Normalizer.normalize(unicodeString.toString(), this.f101613e));
        }
        StringBuilder sb = new StringBuilder(tidy.length32());
        String obj = unicodeString.toString();
        int indexOf = obj.indexOf(0);
        int i = 0;
        while (indexOf >= 0) {
            sb.append(Normalizer.normalize(obj.substring(i, indexOf), this.f101613e));
            sb.append((char) 0);
            int i2 = indexOf + 1;
            int indexOf2 = obj.indexOf(0, i2);
            sb.append(obj.substring(i2, indexOf2));
            sb.append((char) 0);
            i = indexOf2 + 1;
            indexOf = obj.indexOf(0, i);
        }
        sb.append(Normalizer.normalize(obj.substring(i), this.f101613e));
        return StringView.tidy(sb.toString());
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void startElement(NodeName nodeName, SchemaType schemaType, AttributeMap attributeMap, NamespaceMap namespaceMap, Location location, int i) throws XPathException {
        this.nextReceiver.startElement(nodeName, schemaType, attributeMap.apply(new Function() { // from class: com.sunia.HTREnginev2.msn
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                AttributeInfo m63855d;
                m63855d = UnicodeNormalizer.this.m63855d((AttributeInfo) obj);
                return m63855d;
            }
        }), namespaceMap, location, i);
    }
}
