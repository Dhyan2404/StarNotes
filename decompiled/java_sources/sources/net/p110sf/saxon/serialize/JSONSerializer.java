package net.p110sf.saxon.serialize;

import com.caverock.androidsvg.SVGParser;
import java.io.StringWriter;
import java.text.Normalizer;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Properties;
import javax.xml.transform.stream.StreamResult;
import net.p110sf.saxon.event.PipelineConfiguration;
import net.p110sf.saxon.event.ReceiverWithOutputProperties;
import net.p110sf.saxon.event.SequenceWriter;
import net.p110sf.saxon.lib.SaxonOutputKeys;
import net.p110sf.saxon.ma.arrays.ArrayItem;
import net.p110sf.saxon.ma.map.KeyValuePair;
import net.p110sf.saxon.ma.map.MapItem;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.query.QueryResult;
import net.p110sf.saxon.serialize.charcode.CharacterSet;
import net.p110sf.saxon.trans.Err;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class JSONSerializer extends SequenceWriter implements ReceiverWithOutputProperties {

    /* renamed from: h */
    public boolean f101561h;

    /* renamed from: i */
    public String f101562i;

    /* renamed from: j */
    public int f101563j;

    /* renamed from: k */
    public int f101564k;

    /* renamed from: l */
    public int f101565l;

    /* renamed from: m */
    public final JSONEmitter f101566m;

    /* renamed from: n */
    public Properties f101567n;

    /* renamed from: o */
    public CharacterSet f101568o;

    /* renamed from: p */
    public boolean f101569p;

    /* renamed from: q */
    public Comparator<AtomicValue> f101570q;

    /* renamed from: r */
    public boolean f101571r;

    public JSONSerializer(PipelineConfiguration pipelineConfiguration, JSONEmitter jSONEmitter, Properties properties) throws XPathException {
        super(pipelineConfiguration);
        this.f101561h = false;
        this.f101562i = "xml";
        this.f101563j = 0;
        this.f101564k = 0;
        this.f101565l = 80;
        this.f101571r = false;
        setOutputProperties(properties);
        this.f101566m = jSONEmitter;
    }

    @Override // net.p110sf.saxon.event.SequenceWriter, net.p110sf.saxon.event.Receiver
    public void close() throws XPathException {
        if (this.f101564k == 0) {
            this.f101566m.writeAtomicValue(null);
        }
        this.f101566m.close();
        super.close();
    }

    /* renamed from: d */
    public final boolean m63840d(ArrayItem arrayItem) {
        if (arrayItem.arrayLength() < 2) {
            return true;
        }
        int i = 0;
        for (GroundedValue groundedValue : arrayItem.members()) {
            if (!(groundedValue instanceof AtomicValue) || (i = i + ((int) ((AtomicValue) groundedValue).getUnicodeStringValue().estimatedLength()) + 1) > this.f101565l) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: e */
    public final boolean m63841e(MapItem mapItem) {
        if (mapItem.size() < 2) {
            return true;
        }
        long j = 0;
        for (KeyValuePair keyValuePair : mapItem.keyValuePairs()) {
            GroundedValue groundedValue = keyValuePair.value;
            if (groundedValue instanceof AtomicValue) {
                j += ((int) keyValuePair.key.getUnicodeStringValue().estimatedLength()) + ((AtomicValue) keyValuePair.value).getUnicodeStringValue().estimatedLength() + 4;
            } else {
                if (groundedValue.getLength() != 0) {
                    return false;
                }
                j += ((int) keyValuePair.key.getUnicodeStringValue().estimatedLength()) + 6;
            }
            if (j > this.f101565l) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: f */
    public final String m63842f(NodeInfo nodeInfo) throws XPathException {
        StringWriter stringWriter = new StringWriter();
        Properties properties = new Properties();
        properties.setProperty("method", this.f101562i);
        properties.setProperty("indent", SVGParser.f16048t);
        properties.setProperty("omit-xml-declaration", "yes");
        QueryResult.serialize(nodeInfo, new StreamResult(stringWriter), properties);
        return stringWriter.toString().trim();
    }

    /* renamed from: g */
    public final void m63843g(GroundedValue groundedValue) throws XPathException {
        int length = groundedValue.getLength();
        if (length == 0) {
            this.f101566m.writeAtomicValue(null);
            return;
        }
        if (length == 1) {
            this.f101563j++;
            write(groundedValue.head());
            this.f101563j--;
        } else {
            throw new XPathException("JSON serialization: cannot handle a sequence of length " + length + " " + ((Object) Err.depictSequence(groundedValue)), "SERE0023");
        }
    }

    @Override // net.p110sf.saxon.event.ReceiverWithOutputProperties
    public Properties getOutputProperties() {
        return this.f101567n;
    }

    public void setCharacterMap(CharacterMap characterMap) {
        this.f101566m.setCharacterMap(characterMap);
    }

    public void setNormalizationForm(Normalizer.Form form) {
        this.f101566m.setNormalizationForm(form);
    }

    public void setOutputProperties(Properties properties) {
        this.f101567n = properties;
        if ("yes".equals(properties.getProperty(SaxonOutputKeys.ALLOW_DUPLICATE_NAMES))) {
            this.f101561h = true;
        }
        if ("yes".equals(properties.getProperty("indent"))) {
            this.f101569p = true;
        }
        if ("yes".equals(properties.getProperty(SaxonOutputKeys.UNFAILING))) {
            this.f101571r = true;
            this.f101561h = true;
        }
        String property = properties.getProperty(SaxonOutputKeys.JSON_NODE_OUTPUT_METHOD);
        if (property != null) {
            this.f101562i = property;
        }
        String property2 = properties.getProperty(SaxonOutputKeys.LINE_LENGTH);
        if (property2 != null) {
            try {
                this.f101565l = Integer.parseInt(property2);
            } catch (NumberFormatException unused) {
            }
        }
    }

    public void setPropertySorter(Comparator<AtomicValue> comparator) {
        this.f101570q = comparator;
    }

    @Override // net.p110sf.saxon.event.SequenceWriter
    public void write(Item item) throws XPathException {
        boolean z = true;
        if (this.f101563j == 0) {
            int i = this.f101564k + 1;
            this.f101564k = i;
            if (i >= 2) {
                throw new XPathException("JSON output method cannot handle sequences of two or more items", "SERE0023");
            }
        }
        if (item instanceof AtomicValue) {
            this.f101566m.writeAtomicValue((AtomicValue) item);
            return;
        }
        if (!(item instanceof MapItem)) {
            if (item instanceof ArrayItem) {
                if (this.f101569p && !m63840d((ArrayItem) item)) {
                    z = false;
                }
                this.f101566m.startArray(z);
                Iterator<GroundedValue> it2 = ((ArrayItem) item).members().iterator();
                while (it2.hasNext()) {
                    m63843g(it2.next().materialize());
                }
                this.f101566m.endArray();
                return;
            }
            if (item instanceof NodeInfo) {
                this.f101566m.writeAtomicValue(new StringValue(m63842f((NodeInfo) item)));
                return;
            } else {
                if (this.f101571r) {
                    this.f101566m.writeAtomicValue(new StringValue(item.getUnicodeStringValue()));
                    return;
                }
                throw new XPathException("JSON output method cannot handle an item of type " + item.getClass(), "SERE0021");
            }
        }
        HashSet hashSet = !this.f101561h ? new HashSet() : null;
        if (this.f101569p && !m63841e((MapItem) item)) {
            z = false;
        }
        this.f101566m.startMap(z);
        ArrayList arrayList = new ArrayList();
        MapItem mapItem = (MapItem) item;
        Iterator<KeyValuePair> it3 = mapItem.keyValuePairs().iterator();
        while (it3.hasNext()) {
            arrayList.add(it3.next().key);
        }
        Comparator<AtomicValue> comparator = this.f101570q;
        if (comparator != null) {
            arrayList.sort(comparator);
        }
        Iterator it4 = arrayList.iterator();
        while (it4.hasNext()) {
            AtomicValue atomicValue = (AtomicValue) it4.next();
            String stringValue = atomicValue.getStringValue();
            this.f101566m.writeKey(stringValue);
            if (!this.f101561h && !hashSet.add(stringValue)) {
                throw new XPathException("Key value \"" + stringValue + "\" occurs more than once in JSON map", "SERE0022");
            }
            m63843g(mapItem.get(atomicValue).materialize());
        }
        this.f101566m.endMap();
    }
}
