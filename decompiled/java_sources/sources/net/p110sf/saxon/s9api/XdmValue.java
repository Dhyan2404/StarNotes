package net.p110sf.saxon.s9api;

import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.stream.Stream;
import java.util.stream.StreamSupport;
import javax.xml.transform.stream.StreamResult;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.event.SequenceCopier;
import net.p110sf.saxon.expr.sort.DocumentOrderIterator;
import net.p110sf.saxon.expr.sort.GlobalOrderComparer;
import net.p110sf.saxon.ma.arrays.ArrayItem;
import net.p110sf.saxon.ma.map.MapItem;
import net.p110sf.saxon.om.AtomicSequence;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.s9api.streams.Step;
import net.p110sf.saxon.s9api.streams.XdmStream;
import net.p110sf.saxon.serialize.SerializationProperties;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.AnyExternalObject;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.SequenceExtent;

/* loaded from: classes11.dex */
public class XdmValue implements Iterable<XdmItem> {

    /* renamed from: e */
    public final GroundedValue f101415e;

    public XdmValue(GroundedValue groundedValue) {
        this.f101415e = groundedValue;
    }

    public static XdmValue makeSequence(Iterable<?> iterable) throws IllegalArgumentException {
        ArrayList arrayList = new ArrayList();
        Iterator<?> it2 = iterable.iterator();
        while (it2.hasNext()) {
            XdmValue makeValue = makeValue(it2.next());
            if (makeValue instanceof XdmItem) {
                arrayList.add((Item) makeValue.getUnderlyingValue());
            } else {
                arrayList.add(new XdmArray(makeValue).getUnderlyingValue());
            }
        }
        return wrap(SequenceExtent.makeSequenceExtent(arrayList));
    }

    public static XdmValue makeValue(Object obj) throws IllegalArgumentException {
        return obj instanceof Sequence ? wrap((Sequence) obj) : obj instanceof XdmValue ? (XdmValue) obj : obj instanceof Map ? XdmMap.makeMap((Map) obj) : obj instanceof Object[] ? XdmArray.makeArray((Object[]) obj) : obj instanceof Iterable ? makeSequence((Iterable) obj) : XdmAtomicValue.makeAtomicValue(obj);
    }

    public static XdmValue wrap(Sequence sequence) {
        if (sequence == null) {
            return XdmEmptySequence.getInstance();
        }
        try {
            GroundedValue materialize = sequence.materialize();
            if (materialize.getLength() == 0) {
                return XdmEmptySequence.getInstance();
            }
            if (materialize.getLength() == 1) {
                Item head = materialize.head();
                if (head instanceof NodeInfo) {
                    return new XdmNode((NodeInfo) head);
                }
                if (head instanceof AtomicValue) {
                    return new XdmAtomicValue((AtomicValue) head);
                }
                if (head instanceof MapItem) {
                    return new XdmMap((MapItem) head);
                }
                if (head instanceof ArrayItem) {
                    return new XdmArray((ArrayItem) head);
                }
                if (head instanceof Function) {
                    return new XdmFunctionItem((Function) head);
                }
                if (head instanceof AnyExternalObject) {
                    return new XdmExternalObject(head);
                }
                throw new IllegalArgumentException("Unknown item type " + head.getClass());
            }
            return new XdmValue(materialize);
        } catch (UncheckedXPathException e) {
            throw new SaxonApiUncheckedException(e);
        }
    }

    public XdmValue append(XdmValue xdmValue) {
        ArrayList arrayList = new ArrayList();
        Iterator<XdmItem> it2 = iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next().getUnderlyingValue());
        }
        Iterator<XdmItem> it3 = xdmValue.iterator();
        while (it3.hasNext()) {
            arrayList.add(it3.next().getUnderlyingValue());
        }
        return new XdmValue(SequenceExtent.makeSequenceExtent(arrayList));
    }

    public XdmValue documentOrder() throws SaxonApiException {
        try {
            return new XdmValue(SequenceTool.toGroundedValue(new DocumentOrderIterator(this.f101415e.iterate(), GlobalOrderComparer.getInstance())));
        } catch (UncheckedXPathException e) {
            throw new SaxonApiException(e);
        }
    }

    public GroundedValue getUnderlyingValue() {
        return this.f101415e;
    }

    public boolean isEmpty() {
        return this.f101415e.head() == null;
    }

    public XdmItem itemAt(int i) throws IndexOutOfBoundsException, SaxonApiUncheckedException {
        if (i >= 0 && i < size()) {
            try {
                return (XdmItem) wrap(SequenceTool.itemAt(this.f101415e, i));
            } catch (UncheckedXPathException e) {
                throw new SaxonApiUncheckedException(e);
            }
        }
        throw new IndexOutOfBoundsException("" + i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T extends XdmItem> XdmStream<T> select(Step<T> step) {
        return (XdmStream<T>) stream().flatMapToXdm(step);
    }

    public int size() {
        return this.f101415e.getLength();
    }

    public XdmStream<? extends XdmItem> stream() {
        return new XdmStream<>(StreamSupport.stream(spliterator(), false));
    }

    public XdmValue subsequence(int i, int i2) {
        return new XdmValue(this.f101415e.subsequence(i, i2));
    }

    public String toString() {
        Configuration configuration;
        try {
            SequenceIterator iterate = this.f101415e.iterate();
            while (true) {
                Item next = iterate.next();
                if (next == null) {
                    configuration = null;
                    break;
                }
                if (next instanceof NodeInfo) {
                    configuration = ((NodeInfo) next).getConfiguration();
                    break;
                }
            }
            if (configuration == null) {
                configuration = Configuration.newConfiguration();
            }
            StringWriter stringWriter = new StringWriter();
            StreamResult streamResult = new StreamResult(stringWriter);
            SerializationProperties serializationProperties = new SerializationProperties();
            serializationProperties.setProperty("method", "adaptive");
            serializationProperties.setProperty("indent", "true");
            serializationProperties.setProperty("omit-xml-declaration", "true");
            SequenceCopier.copySequence(this.f101415e.iterate(), configuration.getSerializerFactory().getReceiver(streamResult, serializationProperties));
            return stringWriter.toString();
        } catch (XPathException unused) {
            return super.toString();
        }
    }

    @Override // java.lang.Iterable
    public Iterator<XdmItem> iterator() throws SaxonApiUncheckedException {
        try {
            return new XdmSequenceIterator(getUnderlyingValue().iterate());
        } catch (UncheckedXPathException e) {
            throw new SaxonApiUncheckedException(e);
        }
    }

    public XdmValue(Iterable<? extends XdmItem> iterable) {
        ArrayList arrayList = new ArrayList();
        Iterator<? extends XdmItem> it2 = iterable.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next().getUnderlyingValue());
        }
        this.f101415e = new SequenceExtent.C18571Of(arrayList);
    }

    public XdmValue(Iterator<? extends XdmItem> it2) throws SaxonApiException {
        try {
            ArrayList arrayList = new ArrayList();
            while (it2.hasNext()) {
                arrayList.add(it2.next().getUnderlyingValue());
            }
            this.f101415e = new SequenceExtent.C18571Of(arrayList);
        } catch (SaxonApiUncheckedException e) {
            throw new SaxonApiException(e.getCause());
        }
    }

    public XdmValue(Stream<? extends XdmItem> stream) throws SaxonApiException {
        this(stream.iterator());
    }

    public static XdmValue wrap(AtomicSequence atomicSequence) {
        int length = atomicSequence.getLength();
        if (length == 0) {
            return XdmEmptySequence.getInstance();
        }
        if (length != 1) {
            return new XdmValue((GroundedValue) atomicSequence);
        }
        return new XdmAtomicValue(atomicSequence.head());
    }
}
