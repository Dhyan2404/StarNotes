package net.p110sf.saxon.serialize;

import com.caverock.androidsvg.SVGParser;
import com.google.android.material.motion.MotionUtils;
import com.sun.org.apache.xml.internal.serializer.SerializerConstants;
import java.io.IOException;
import java.io.StringWriter;
import java.text.Normalizer;
import java.util.Properties;
import javax.xml.transform.stream.StreamResult;
import net.p110sf.saxon.event.PipelineConfiguration;
import net.p110sf.saxon.event.ReceiverWithOutputProperties;
import net.p110sf.saxon.event.SequenceWriter;
import net.p110sf.saxon.functions.FormatNumber;
import net.p110sf.saxon.lib.NamespaceConstant;
import net.p110sf.saxon.lib.SaxonOutputKeys;
import net.p110sf.saxon.ma.arrays.ArrayItem;
import net.p110sf.saxon.ma.map.KeyValuePair;
import net.p110sf.saxon.ma.map.MapItem;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.StandardNames;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.query.QueryResult;
import net.p110sf.saxon.regex.ARegularExpression;
import net.p110sf.saxon.str.BMPString;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.str.UnicodeWriter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.DoubleValue;
import net.p110sf.saxon.value.QualifiedNameValue;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes11.dex */
public class AdaptiveEmitter extends SequenceWriter implements ReceiverWithOutputProperties {

    /* renamed from: m */
    public static ARegularExpression f101482m = ARegularExpression.compile("\"", "");

    /* renamed from: h */
    public final UnicodeWriter f101483h;

    /* renamed from: i */
    public CharacterMap f101484i;

    /* renamed from: j */
    public Properties f101485j;

    /* renamed from: k */
    public String f101486k;

    /* renamed from: l */
    public boolean f101487l;

    public AdaptiveEmitter(PipelineConfiguration pipelineConfiguration, UnicodeWriter unicodeWriter) {
        super(pipelineConfiguration);
        this.f101486k = "\n";
        this.f101487l = false;
        this.f101483h = unicodeWriter;
    }

    @Override // net.p110sf.saxon.event.SequenceWriter, net.p110sf.saxon.event.Receiver
    public void close() throws XPathException {
        super.close();
        UnicodeWriter unicodeWriter = this.f101483h;
        if (unicodeWriter != null) {
            try {
                unicodeWriter.close();
            } catch (IOException e) {
                throw new XPathException(e);
            }
        }
    }

    /* renamed from: d */
    public final void m63805d(String str) throws XPathException {
        try {
            this.f101483h.write(str);
        } catch (IOException e) {
            throw new XPathException(e);
        }
    }

    /* renamed from: e */
    public final void m63806e(UnicodeString unicodeString) throws XPathException {
        try {
            this.f101483h.write(unicodeString);
        } catch (IOException e) {
            throw new XPathException(e);
        }
    }

    /* renamed from: f */
    public final String m63807f(String str) {
        StringBuilder sb = new StringBuilder(str.length() * 2);
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (charAt == '\t') {
                sb.append("&#x9;");
            } else if (charAt == '\n') {
                sb.append(SerializerConstants.ENTITY_CRLF);
            } else if (charAt == '\r') {
                sb.append("&#xD;");
            } else if (charAt == '\"') {
                sb.append(SerializerConstants.ENTITY_QUOT);
            } else if (charAt == '&') {
                sb.append("&amp;");
            } else if (charAt == '<') {
                sb.append("&lt;");
            } else if (charAt != '>') {
                sb.append(charAt);
            } else {
                sb.append("&gt;");
            }
        }
        return sb.toString();
    }

    /* renamed from: g */
    public final void m63808g(Sequence sequence) throws XPathException {
        SequenceIterator iterate = sequence.iterate();
        boolean z = true;
        boolean z2 = (sequence instanceof GroundedValue) && ((GroundedValue) sequence).getLength() == 1;
        if (!z2) {
            m63805d(MotionUtils.f31761c);
        }
        while (true) {
            Item next = iterate.next();
            if (next == null) {
                break;
            }
            if (!z) {
                m63805d(",");
            }
            m63812k(next);
            z = false;
        }
        if (z2) {
            return;
        }
        m63805d(MotionUtils.f31762d);
    }

    @Override // net.p110sf.saxon.event.ReceiverWithOutputProperties
    public Properties getOutputProperties() {
        return this.f101485j;
    }

    /* renamed from: h */
    public final void m63809h(ArrayItem arrayItem) throws XPathException {
        m63805d(IteratorUtils.f104923a);
        boolean z = true;
        for (GroundedValue groundedValue : arrayItem.members()) {
            if (z) {
                z = false;
            } else {
                m63805d(",");
            }
            m63808g(groundedValue);
        }
        m63805d(IteratorUtils.f104924b);
    }

    /* renamed from: i */
    public final String m63810i(AtomicValue atomicValue) throws XPathException {
        int fingerprint = atomicValue.getPrimitiveType().getFingerprint();
        if (fingerprint != 533) {
            if (fingerprint != 631) {
                if (fingerprint == 633 || fingerprint == 634) {
                    return "xs:duration(\"" + atomicValue.getUnicodeStringValue() + "\")";
                }
                switch (fingerprint) {
                    case 513:
                    case 529:
                        break;
                    case 514:
                        return atomicValue.effectiveBooleanValue() ? "true()" : "false()";
                    case 515:
                        break;
                    case 516:
                    case 518:
                    case 519:
                    case 520:
                    case 521:
                    case 522:
                    case StandardNames.XS_G_YEAR /* 523 */:
                    case 524:
                    case StandardNames.XS_G_DAY /* 525 */:
                    case StandardNames.XS_G_MONTH /* 526 */:
                    case 527:
                    case StandardNames.XS_BASE64_BINARY /* 528 */:
                        return atomicValue.getPrimitiveType().getDisplayName() + "(\"" + atomicValue.getUnicodeStringValue() + "\")";
                    case 517:
                        return FormatNumber.formatExponential((DoubleValue) atomicValue);
                    case 530:
                    case 531:
                        return ((QualifiedNameValue) atomicValue).getStructuredQName().getEQName();
                    default:
                        return "***";
                }
            }
            UnicodeString replace = f101482m.replace(atomicValue.getUnicodeStringValue(), BMPString.m63877of("\"\""));
            CharacterMap characterMap = this.f101484i;
            if (characterMap != null) {
                replace = characterMap.map(replace, false);
            }
            return "\"" + replace.toString() + "\"";
        }
        return atomicValue.getStringValue();
    }

    /* renamed from: j */
    public final void m63811j(Function function) throws XPathException {
        StructuredQName functionName = function.getFunctionName();
        if (functionName == null || functionName.hasURI(NamespaceConstant.ANONYMOUS)) {
            m63805d("(anonymous-function)");
        } else if (functionName.hasURI("http://www.w3.org/2005/xpath-functions")) {
            m63805d("fn:" + functionName.getLocalPart());
        } else if (functionName.hasURI(NamespaceConstant.MATH)) {
            m63805d("math:" + functionName.getLocalPart());
        } else if (functionName.hasURI(NamespaceConstant.MAP_FUNCTIONS)) {
            m63805d("map:" + functionName.getLocalPart());
        } else if (functionName.hasURI(NamespaceConstant.ARRAY_FUNCTIONS)) {
            m63805d("array:" + functionName.getLocalPart());
        } else if (functionName.hasURI("http://www.w3.org/2001/XMLSchema")) {
            m63805d("xs:" + functionName.getLocalPart());
        } else {
            m63805d(functionName.getEQName());
        }
        m63805d("#" + function.getArity());
    }

    /* renamed from: k */
    public final void m63812k(Item item) throws XPathException {
        if (item instanceof AtomicValue) {
            m63805d(m63810i((AtomicValue) item));
            return;
        }
        if (item instanceof NodeInfo) {
            m63814m((NodeInfo) item);
            return;
        }
        if (item instanceof MapItem) {
            m63813l((MapItem) item);
        } else if (item instanceof ArrayItem) {
            m63809h((ArrayItem) item);
        } else if (item instanceof Function) {
            m63811j((Function) item);
        }
    }

    /* renamed from: l */
    public final void m63813l(MapItem mapItem) throws XPathException {
        m63805d("map{");
        boolean z = true;
        for (KeyValuePair keyValuePair : mapItem.keyValuePairs()) {
            if (z) {
                z = false;
            } else {
                m63805d(",");
            }
            m63812k(keyValuePair.key);
            m63805d(":");
            m63808g(keyValuePair.value);
        }
        m63805d("}");
    }

    /* renamed from: m */
    public final void m63814m(NodeInfo nodeInfo) throws XPathException {
        String str;
        CharacterMapIndex characterMapIndex;
        int nodeKind = nodeInfo.getNodeKind();
        if (nodeKind == 2) {
            m63805d(nodeInfo.getDisplayName());
            m63805d("=\"");
            m63805d(m63807f(nodeInfo.getStringValue()));
            m63805d("\"");
            return;
        }
        if (nodeKind == 13) {
            if (nodeInfo.getLocalPart().isEmpty()) {
                str = "xmlns";
            } else {
                str = "xmlns:" + nodeInfo.getLocalPart();
            }
            m63805d(str);
            m63805d("=\"");
            m63805d(m63807f(nodeInfo.getStringValue()));
            m63805d("\"");
            return;
        }
        StringWriter stringWriter = new StringWriter();
        Properties properties = new Properties(this.f101485j);
        properties.setProperty("method", "xml");
        properties.setProperty("indent", SVGParser.f16048t);
        if (properties.getProperty("omit-xml-declaration") == null) {
            properties.setProperty("omit-xml-declaration", SVGParser.f16048t);
        }
        properties.setProperty(SaxonOutputKeys.UNFAILING, "yes");
        if (this.f101484i != null) {
            characterMapIndex = new CharacterMapIndex();
            characterMapIndex.putCharacterMap(this.f101484i.getName(), this.f101484i);
        } else {
            characterMapIndex = null;
        }
        QueryResult.serialize(nodeInfo, new StreamResult(stringWriter), new SerializationProperties(properties, characterMapIndex));
        m63805d(stringWriter.toString());
    }

    public void setCharacterMap(CharacterMap characterMap) {
        this.f101484i = characterMap;
    }

    public void setNormalizationForm(Normalizer.Form form) {
    }

    public void setOutputProperties(Properties properties) {
        this.f101485j = properties;
        String property = properties.getProperty(SaxonOutputKeys.ITEM_SEPARATOR);
        if (property == null || "#absent".equals(property)) {
            return;
        }
        this.f101486k = property;
    }

    @Override // net.p110sf.saxon.event.SequenceWriter
    public void write(Item item) throws XPathException {
        if (this.f101487l) {
            m63805d(this.f101486k);
        } else {
            this.f101487l = true;
        }
        m63812k(item);
    }
}
