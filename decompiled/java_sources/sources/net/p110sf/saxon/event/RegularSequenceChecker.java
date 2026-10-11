package net.p110sf.saxon.event;

import java.util.HashMap;
import java.util.Map;
import java.util.Stack;
import java.util.function.Function;
import net.p110sf.saxon.event.RegularSequenceChecker;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.AttributeMap;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.SchemaType;

/* loaded from: classes11.dex */
public class RegularSequenceChecker extends ProxyReceiver {

    /* renamed from: h */
    public static final Map<State, Map<Transition, State>> f99090h = new HashMap();

    /* renamed from: i */
    public static final /* synthetic */ boolean f99091i = false;

    /* renamed from: e */
    public final Stack<Short> f99092e;

    /* renamed from: f */
    public State f99093f;

    /* renamed from: g */
    public boolean f99094g;

    /* loaded from: classes11.dex */
    public enum State {
        INITIAL,
        OPEN,
        START_TAG,
        CONTENT,
        FINAL,
        FAILED
    }

    /* loaded from: classes11.dex */
    public enum Transition {
        OPEN,
        APPEND,
        TEXT,
        COMMENT,
        PI,
        START_DOCUMENT,
        START_ELEMENT,
        END_ELEMENT,
        END_DOCUMENT,
        CLOSE
    }

    static {
        State state = State.INITIAL;
        Transition transition = Transition.OPEN;
        State state2 = State.OPEN;
        m62509d(state, transition, state2);
        m62509d(state2, Transition.APPEND, state2);
        Transition transition2 = Transition.TEXT;
        m62509d(state2, transition2, state2);
        Transition transition3 = Transition.COMMENT;
        m62509d(state2, transition3, state2);
        Transition transition4 = Transition.PI;
        m62509d(state2, transition4, state2);
        Transition transition5 = Transition.START_DOCUMENT;
        State state3 = State.CONTENT;
        m62509d(state2, transition5, state3);
        Transition transition6 = Transition.START_ELEMENT;
        m62509d(state2, transition6, state3);
        m62509d(state3, transition2, state3);
        m62509d(state3, transition3, state3);
        m62509d(state3, transition4, state3);
        m62509d(state3, transition6, state3);
        m62509d(state3, Transition.END_ELEMENT, state3);
        m62509d(state3, Transition.END_DOCUMENT, state2);
        Transition transition7 = Transition.CLOSE;
        m62509d(state2, transition7, State.FINAL);
        State state4 = State.FAILED;
        m62509d(state4, transition7, state4);
    }

    public RegularSequenceChecker(Receiver receiver, boolean z) {
        super(receiver);
        this.f99092e = new Stack<>();
        this.f99094g = false;
        this.f99093f = State.INITIAL;
        this.f99094g = z;
    }

    /* renamed from: d */
    public static void m62509d(State state, Transition transition, State state2) {
        f99090h.computeIfAbsent(state, new Function() { // from class: com.sunia.HTREnginev2.pjl
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Map m62510e;
                m62510e = RegularSequenceChecker.m62510e((RegularSequenceChecker.State) obj);
                return m62510e;
            }
        }).put(transition, state2);
    }

    /* renamed from: e */
    public static /* synthetic */ Map m62510e(State state) {
        return new HashMap();
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.SequenceReceiver, net.p110sf.saxon.event.Receiver
    /* renamed from: append */
    public void m62516b(Item item, Location location, int i) throws XPathException {
        try {
            m62511f(Transition.APPEND);
            this.nextReceiver.m62516b(item, location, i);
        } catch (XPathException e) {
            this.f99093f = State.FAILED;
            throw e;
        }
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void characters(UnicodeString unicodeString, Location location, int i) throws XPathException {
        m62511f(Transition.TEXT);
        if (unicodeString.isEmpty() && !this.f99092e.isEmpty()) {
            throw new IllegalStateException("Zero-length text nodes not allowed within document/element content");
        }
        try {
            this.nextReceiver.characters(unicodeString, location, i);
        } catch (XPathException e) {
            this.f99093f = State.FAILED;
            throw e;
        }
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void close() throws XPathException {
        State state = this.f99093f;
        State state2 = State.FINAL;
        if (state == state2 || state == State.FAILED) {
            return;
        }
        if (!this.f99092e.isEmpty()) {
            throw new IllegalStateException("Unclosed element or document nodes at end of stream");
        }
        this.nextReceiver.close();
        this.f99093f = state2;
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void comment(UnicodeString unicodeString, Location location, int i) throws XPathException {
        m62511f(Transition.COMMENT);
        try {
            this.nextReceiver.comment(unicodeString, location, i);
        } catch (XPathException e) {
            this.f99093f = State.FAILED;
            throw e;
        }
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void endDocument() throws XPathException {
        m62511f(Transition.END_DOCUMENT);
        if (this.f99092e.isEmpty() || this.f99092e.pop().shortValue() != 9) {
            throw new IllegalStateException("Unmatched endDocument() call");
        }
        try {
            this.nextReceiver.endDocument();
        } catch (XPathException e) {
            this.f99093f = State.FAILED;
            throw e;
        }
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void endElement() throws XPathException {
        m62511f(Transition.END_ELEMENT);
        if (this.f99092e.isEmpty() || this.f99092e.pop().shortValue() != 1) {
            throw new IllegalStateException("Unmatched endElement() call");
        }
        if (this.f99092e.isEmpty()) {
            this.f99093f = State.OPEN;
        }
        try {
            this.nextReceiver.endElement();
        } catch (XPathException e) {
            this.f99093f = State.FAILED;
            throw e;
        }
    }

    /* renamed from: f */
    public final void m62511f(Transition transition) {
        Map<Transition, State> map = f99090h.get(this.f99093f);
        if (map.containsKey(transition)) {
            this.f99093f = map.get(transition);
            return;
        }
        throw new IllegalStateException("Event " + transition + " is not permitted in state " + this.f99093f);
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.SequenceReceiver, net.p110sf.saxon.event.Receiver
    public void open() throws XPathException {
        m62511f(Transition.OPEN);
        try {
            this.nextReceiver.open();
        } catch (XPathException e) {
            this.f99093f = State.FAILED;
            throw e;
        }
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void processingInstruction(String str, UnicodeString unicodeString, Location location, int i) throws XPathException {
        m62511f(Transition.PI);
        try {
            this.nextReceiver.processingInstruction(str, unicodeString, location, i);
        } catch (XPathException e) {
            this.f99093f = State.FAILED;
            throw e;
        }
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void startDocument(int i) throws XPathException {
        m62511f(Transition.START_DOCUMENT);
        this.f99092e.push((short) 9);
        try {
            this.nextReceiver.startDocument(i);
        } catch (XPathException e) {
            this.f99093f = State.FAILED;
            throw e;
        }
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void startElement(NodeName nodeName, SchemaType schemaType, AttributeMap attributeMap, NamespaceMap namespaceMap, Location location, int i) throws XPathException {
        m62511f(Transition.START_ELEMENT);
        this.f99092e.push((short) 1);
        if (this.f99094g) {
            attributeMap.verify();
            String prefix = nodeName.getPrefix();
            if (prefix.isEmpty()) {
                String defaultNamespace = namespaceMap.getDefaultNamespace();
                if (!defaultNamespace.equals(nodeName.getURI())) {
                    throw new IllegalStateException("URI of element Q{" + nodeName.getURI() + "}" + nodeName.getLocalPart() + " does not match declared default namespace {" + defaultNamespace + "}");
                }
            } else {
                String uri = namespaceMap.getURI(prefix);
                if (uri == null) {
                    throw new IllegalStateException("Prefix " + prefix + " has not been declared");
                }
                if (!uri.equals(nodeName.getURI())) {
                    throw new IllegalStateException("Prefix " + prefix + " is bound to the wrong namespace");
                }
            }
            for (AttributeInfo attributeInfo : attributeMap) {
                NodeName nodeName2 = attributeInfo.getNodeName();
                if (!nodeName2.getURI().isEmpty()) {
                    String prefix2 = nodeName2.getPrefix();
                    String uri2 = namespaceMap.getURI(prefix2);
                    if (uri2 == null) {
                        throw new IllegalStateException("Prefix " + prefix2 + " has not been declared for attribute " + attributeInfo.getNodeName().getDisplayName());
                    }
                    if (!uri2.equals(nodeName2.getURI())) {
                        throw new IllegalStateException("Prefix " + prefix + " is bound to the wrong namespace {" + uri2 + "}");
                    }
                }
            }
        }
        try {
            this.nextReceiver.startElement(nodeName, schemaType, attributeMap, namespaceMap, location, i);
        } catch (XPathException e) {
            this.f99093f = State.FAILED;
            throw e;
        }
    }
}
