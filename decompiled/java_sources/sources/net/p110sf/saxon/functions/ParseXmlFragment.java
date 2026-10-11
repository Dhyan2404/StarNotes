package net.p110sf.saxon.functions;

import java.io.IOException;
import java.io.StringReader;
import java.util.List;
import net.p110sf.saxon.event.ProxyReceiver;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.expr.Callable;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.om.AttributeMap;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.value.EmptySequence;
import net.p110sf.saxon.value.StringValue;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

/* loaded from: classes11.dex */
public class ParseXmlFragment extends SystemFunction implements Callable {

    /* renamed from: net.sf.saxon.functions.ParseXmlFragment$a */
    /* loaded from: classes11.dex */
    public static class C18366a extends ProxyReceiver {

        /* renamed from: e */
        public int f100285e;

        /* renamed from: f */
        public final boolean f100286f;

        public C18366a(Receiver receiver) {
            super(receiver);
            this.f100285e = 0;
            this.f100286f = false;
        }

        @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
        public void endElement() throws XPathException {
            int i = this.f100285e - 1;
            this.f100285e = i;
            if (i > 0) {
                super.endElement();
            }
        }

        @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
        public void startElement(NodeName nodeName, SchemaType schemaType, AttributeMap attributeMap, NamespaceMap namespaceMap, Location location, int i) throws XPathException {
            int i2 = this.f100285e;
            this.f100285e = i2 + 1;
            if (i2 > 0) {
                super.startElement(nodeName, schemaType, attributeMap, namespaceMap, location, i);
            }
        }
    }

    /* renamed from: d */
    public static /* synthetic */ InputSource m63050d(List list, StringReader stringReader, String str, String str2, String str3) throws SAXException, IOException {
        if (!"http://www.saxonica.com/parse-xml-fragment/actual.xml".equals(str3)) {
            return null;
        }
        list.add(Boolean.TRUE);
        InputSource inputSource = new InputSource(stringReader);
        inputSource.setSystemId(str);
        return inputSource;
    }

    /* renamed from: e */
    public static /* synthetic */ Receiver m63051e(Receiver receiver) {
        return new C18366a(receiver);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(13:7|(2:9|(3:11|12|13))(1:42)|14|(1:16)|17|(2:19|(7:21|22|23|24|25|26|13))(1:41)|40|22|23|24|25|26|13) */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00d0, code lost:
    
        r4 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00d5, code lost:
    
        if (r11.isEmpty() != false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00d8, code lost:
    
        if (r5 != 2) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00dd, code lost:
    
        r13 = new net.p110sf.saxon.trans.XPathException("The configured XML parser cannot be used by fn:parse-xml-fragment(), because it ignores the supplied EntityResolver", "FODC0006");
        r2.captureRetainedErrors(r13);
        r13.maybeSetContext(r15);
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00ea, code lost:
    
        throw r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00eb, code lost:
    
        throw r4;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final net.p110sf.saxon.om.NodeInfo m63052c(net.p110sf.saxon.value.StringValue r14, net.p110sf.saxon.expr.XPathContext r15) throws net.p110sf.saxon.trans.XPathException {
        /*
            Method dump skipped, instructions count: 279
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.functions.ParseXmlFragment.m63052c(net.sf.saxon.value.StringValue, net.sf.saxon.expr.XPathContext):net.sf.saxon.om.NodeInfo");
    }

    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        StringValue stringValue = (StringValue) sequenceArr[0].head();
        return stringValue == null ? EmptySequence.getInstance() : m63052c(stringValue, xPathContext);
    }
}
