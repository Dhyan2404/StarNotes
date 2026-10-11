package net.p110sf.saxon.functions;

import com.caverock.androidsvg.SVGParser;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import net.p110sf.saxon.event.SequenceCopier;
import net.p110sf.saxon.expr.Callable;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.functions.AccessorFn;
import net.p110sf.saxon.lib.SaxonOutputKeys;
import net.p110sf.saxon.ma.map.KeyValuePair;
import net.p110sf.saxon.ma.map.MapItem;
import net.p110sf.saxon.ma.map.MapType;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.p111z.IntHashMap;
import net.p110sf.saxon.serialize.CharacterMap;
import net.p110sf.saxon.serialize.CharacterMapIndex;
import net.p110sf.saxon.serialize.SerializationParamsHandler;
import net.p110sf.saxon.serialize.SerializationProperties;
import net.p110sf.saxon.serialize.UnicodeWriterResult;
import net.p110sf.saxon.str.UnicodeBuilder;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.Err;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.AtomicIterator;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.BooleanValue;
import net.p110sf.saxon.value.EmptySequence;
import net.p110sf.saxon.value.QNameValue;
import net.p110sf.saxon.value.SequenceType;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class Serialize extends SystemFunction implements Callable {

    /* renamed from: j */
    public static final Map<String, SequenceType> f100302j;

    /* renamed from: k */
    public static final Map<String, SequenceType> f100303k;

    /* renamed from: h */
    public final String[] f100304h = {SaxonOutputKeys.ALLOW_DUPLICATE_NAMES, SaxonOutputKeys.BYTE_ORDER_MARK, "cdata-section-elements", "doctype-public", "doctype-system", "encoding", SaxonOutputKeys.ESCAPE_URI_ATTRIBUTES, SaxonOutputKeys.HTML_VERSION, SaxonOutputKeys.INCLUDE_CONTENT_TYPE, "indent", SaxonOutputKeys.ITEM_SEPARATOR, SaxonOutputKeys.JSON_NODE_OUTPUT_METHOD, "media-type", "method", SaxonOutputKeys.NORMALIZATION_FORM, "omit-xml-declaration", "standalone", SaxonOutputKeys.SUPPRESS_INDENTATION, SaxonOutputKeys.UNDECLARE_PREFIXES, SaxonOutputKeys.USE_CHARACTER_MAPS, "version"};

    /* renamed from: i */
    public final String[] f100305i = {"attribute-order", "canonical", "character-representation", "double-space", "indent-spaces", "line-length", "newline", "property-order", "recognize-binary", "require-well-formed", "single-quotes", "supply-source-locator", SaxonOutputKeys.SUPPRESS_INDENTATION};

    static {
        HashMap hashMap = new HashMap(40);
        f100302j = hashMap;
        SequenceType sequenceType = SequenceType.SINGLE_BOOLEAN;
        hashMap.put(SaxonOutputKeys.ALLOW_DUPLICATE_NAMES, sequenceType);
        hashMap.put(SaxonOutputKeys.BYTE_ORDER_MARK, sequenceType);
        BuiltInAtomicType builtInAtomicType = BuiltInAtomicType.QNAME;
        hashMap.put("cdata-section-elements", builtInAtomicType.zeroOrMore());
        SequenceType sequenceType2 = SequenceType.SINGLE_STRING;
        hashMap.put("doctype-public", sequenceType2);
        hashMap.put("doctype-system", sequenceType2);
        hashMap.put("encoding", sequenceType2);
        hashMap.put(SaxonOutputKeys.ESCAPE_URI_ATTRIBUTES, sequenceType);
        hashMap.put(SaxonOutputKeys.HTML_VERSION, SequenceType.SINGLE_DECIMAL);
        hashMap.put(SaxonOutputKeys.INCLUDE_CONTENT_TYPE, sequenceType);
        hashMap.put("indent", sequenceType);
        hashMap.put(SaxonOutputKeys.ITEM_SEPARATOR, sequenceType2);
        hashMap.put(SaxonOutputKeys.JSON_NODE_OUTPUT_METHOD, sequenceType2);
        hashMap.put("media-type", sequenceType2);
        hashMap.put("method", sequenceType2);
        hashMap.put(SaxonOutputKeys.NORMALIZATION_FORM, sequenceType2);
        hashMap.put("omit-xml-declaration", sequenceType);
        hashMap.put("standalone", SequenceType.OPTIONAL_BOOLEAN);
        hashMap.put(SaxonOutputKeys.SUPPRESS_INDENTATION, builtInAtomicType.zeroOrMore());
        hashMap.put(SaxonOutputKeys.UNDECLARE_PREFIXES, sequenceType);
        hashMap.put(SaxonOutputKeys.USE_CHARACTER_MAPS, SequenceType.makeSequenceType(MapType.ANY_MAP_TYPE, 16384));
        hashMap.put("version", sequenceType2);
        HashMap hashMap2 = new HashMap(20);
        f100303k = hashMap2;
        hashMap2.put("attribute-order", builtInAtomicType.zeroOrMore());
        hashMap2.put("canonical", sequenceType);
        hashMap2.put("character-representation", sequenceType2);
        hashMap2.put("double-space", builtInAtomicType.zeroOrMore());
        SequenceType sequenceType3 = SequenceType.SINGLE_INTEGER;
        hashMap2.put("indent-spaces", sequenceType3);
        hashMap2.put("line-length", sequenceType3);
        hashMap2.put("newline", sequenceType2);
        hashMap2.put("recognize-binary", sequenceType);
        hashMap2.put("require-well-formed", sequenceType);
        hashMap2.put("single-quotes", sequenceType);
        hashMap2.put("supply-source-locator", sequenceType);
        hashMap2.put(SaxonOutputKeys.SUPPRESS_INDENTATION, builtInAtomicType.zeroOrMore());
    }

    /* renamed from: a */
    public static MapItem m63157a(MapItem mapItem, XPathContext xPathContext) throws XPathException {
        TypeHierarchy typeHierarchy = xPathContext.getConfiguration().getTypeHierarchy();
        for (KeyValuePair keyValuePair : mapItem.keyValuePairs()) {
            AtomicValue atomicValue = keyValuePair.key;
            if (!(atomicValue instanceof StringValue)) {
                throw new XPathException("Keys in a character map must all be strings. Found a value of type " + atomicValue.getItemType(), "XPTY0004");
            }
            if (((StringValue) atomicValue).length() != 1) {
                throw new XPathException("Keys in a character map must all be one-character strings. Found " + Err.wrap(atomicValue.show()), "SEPM0016");
            }
            if (!SequenceType.SINGLE_STRING.matches(keyValuePair.value, typeHierarchy)) {
                throw new XPathException("Values in a character map must all be single strings. Found " + Err.wrap(atomicValue.show()), "XPTY0004");
            }
        }
        return mapItem;
    }

    /* renamed from: g */
    public static String m63158g(String str) {
        return "Q{http://saxon.sf.net/}" + str;
    }

    public static OptionsParameter makeOptionsParameter() {
        SequenceType zeroOrMore = BuiltInAtomicType.QNAME.zeroOrMore();
        OptionsParameter optionsParameter = new OptionsParameter();
        SequenceType sequenceType = SequenceType.SINGLE_BOOLEAN;
        optionsParameter.addAllowedOption(SaxonOutputKeys.ALLOW_DUPLICATE_NAMES, sequenceType);
        optionsParameter.addAllowedOption(SaxonOutputKeys.BYTE_ORDER_MARK, sequenceType);
        optionsParameter.addAllowedOption("cdata-section-elements", zeroOrMore, EmptySequence.getInstance());
        SequenceType sequenceType2 = SequenceType.SINGLE_STRING;
        optionsParameter.addAllowedOption("doctype-public", sequenceType2);
        optionsParameter.addAllowedOption("doctype-system", sequenceType2);
        optionsParameter.addAllowedOption("encoding", sequenceType2);
        optionsParameter.addAllowedOption(SaxonOutputKeys.ESCAPE_URI_ATTRIBUTES, sequenceType);
        optionsParameter.addAllowedOption(SaxonOutputKeys.HTML_VERSION, SequenceType.SINGLE_DECIMAL);
        optionsParameter.addAllowedOption(SaxonOutputKeys.INCLUDE_CONTENT_TYPE, sequenceType);
        optionsParameter.addAllowedOption("indent", sequenceType);
        optionsParameter.addAllowedOption(SaxonOutputKeys.ITEM_SEPARATOR, sequenceType2);
        optionsParameter.addAllowedOption(SaxonOutputKeys.JSON_NODE_OUTPUT_METHOD, sequenceType2);
        optionsParameter.addAllowedOption("media-type", sequenceType2);
        optionsParameter.addAllowedOption("method", sequenceType2);
        optionsParameter.addAllowedOption(SaxonOutputKeys.NORMALIZATION_FORM, sequenceType2);
        optionsParameter.addAllowedOption("omit-xml-declaration", sequenceType);
        optionsParameter.addAllowedOption("standalone", SequenceType.OPTIONAL_BOOLEAN);
        optionsParameter.addAllowedOption(SaxonOutputKeys.SUPPRESS_INDENTATION, zeroOrMore);
        optionsParameter.addAllowedOption(SaxonOutputKeys.UNDECLARE_PREFIXES, sequenceType);
        optionsParameter.addAllowedOption(SaxonOutputKeys.USE_CHARACTER_MAPS, SequenceType.makeSequenceType(MapType.ANY_MAP_TYPE, 16384));
        optionsParameter.addAllowedOption("version", sequenceType2);
        optionsParameter.addAllowedOption(m63158g("attribute-order"), SequenceType.ATOMIC_SEQUENCE);
        optionsParameter.addAllowedOption(m63158g("canonical"), sequenceType);
        optionsParameter.addAllowedOption(m63158g("character-representation"), sequenceType2);
        optionsParameter.addAllowedOption(m63158g("double-space"), zeroOrMore);
        String m63158g = m63158g("indent-spaces");
        SequenceType sequenceType3 = SequenceType.SINGLE_INTEGER;
        optionsParameter.addAllowedOption(m63158g, sequenceType3);
        optionsParameter.addAllowedOption(m63158g("line-length"), sequenceType3);
        optionsParameter.addAllowedOption(m63158g("newline"), sequenceType2);
        optionsParameter.addAllowedOption(m63158g("property-order"), SequenceType.STRING_SEQUENCE);
        optionsParameter.addAllowedOption(m63158g("recognize-binary"), sequenceType);
        optionsParameter.addAllowedOption(m63158g("require-well-formed"), sequenceType);
        optionsParameter.addAllowedOption(m63158g("single-quotes"), sequenceType);
        optionsParameter.addAllowedOption(m63158g("supply-source-locator"), sequenceType);
        return optionsParameter;
    }

    public static CharacterMap toCharacterMap(MapItem mapItem) throws XPathException {
        String stringValue;
        int codePointAt;
        AtomicIterator keys = mapItem.keys();
        IntHashMap intHashMap = new IntHashMap();
        do {
            AtomicValue next = keys.next();
            if (next == null) {
                return new CharacterMap(new StructuredQName(Constants.ELEMNAME_OUTPUT_STRING, "http://www.w3.org/2010/xslt-xquery-serialization", "serialization-parameters"), intHashMap);
            }
            UnicodeString unicodeStringValue = next.getUnicodeStringValue();
            stringValue = mapItem.get(next).head().getStringValue();
            if (unicodeStringValue.length() != 1) {
                throw new XPathException("In the serialization parameter for the character map, each character to be mapped must be a single Unicode character", "SEPM0016");
            }
            codePointAt = unicodeStringValue.codePointAt(0L);
        } while (((String) intHashMap.put(codePointAt, stringValue)) == null);
        throw new XPathException("In the serialization parameters, the character map contains two entries for the character \\u" + Integer.toHexString(codePointAt + 65536).substring(1), "SEPM0018");
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x00ad, code lost:
    
        return r0;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final net.p110sf.saxon.ma.map.MapItem m63159b(net.p110sf.saxon.ma.map.MapItem r8, net.p110sf.saxon.expr.XPathContext r9) throws net.p110sf.saxon.trans.XPathException {
        /*
            r7 = this;
            net.sf.saxon.ma.map.HashTrieMap r0 = new net.sf.saxon.ma.map.HashTrieMap
            r0.<init>()
            net.sf.saxon.Configuration r9 = r9.getConfiguration()
            net.sf.saxon.type.TypeHierarchy r9 = r9.getTypeHierarchy()
            net.sf.saxon.tree.iter.AtomicIterator r1 = r8.keys()
        L11:
            net.sf.saxon.value.AtomicValue r2 = r1.next()
            if (r2 == 0) goto Lad
            boolean r3 = r2 instanceof net.p110sf.saxon.value.StringValue
            r4 = 0
            r5 = 15
            if (r3 == 0) goto L4d
            java.lang.String r3 = r2.getStringValue()
            boolean r6 = r7.m63161d(r3)
            if (r6 == 0) goto L11
            net.sf.saxon.expr.parser.RoleDiagnostic r6 = new net.sf.saxon.expr.parser.RoleDiagnostic
            r6.<init>(r5, r3, r4)
            java.lang.String r4 = "XPTY0004"
            r6.setErrorCode(r4)
            net.sf.saxon.om.GroundedValue r4 = r8.get(r2)
            java.util.Map<java.lang.String, net.sf.saxon.value.SequenceType> r5 = net.p110sf.saxon.functions.Serialize.f100302j
            java.lang.Object r3 = r5.get(r3)
            net.sf.saxon.value.SequenceType r3 = (net.p110sf.saxon.value.SequenceType) r3
            net.sf.saxon.expr.parser.Loc r5 = net.p110sf.saxon.expr.parser.Loc.NONE
            net.sf.saxon.om.GroundedValue r3 = r9.applyFunctionConversionRules(r4, r3, r6, r5)
            net.sf.saxon.om.GroundedValue r3 = r3.materialize()
            net.sf.saxon.ma.map.MapItem r0 = r0.addEntry(r2, r3)
            goto L11
        L4d:
            boolean r3 = r2 instanceof net.p110sf.saxon.value.QNameValue
            if (r3 == 0) goto Lad
            net.sf.saxon.functions.AccessorFn$Component r3 = net.sf.saxon.functions.AccessorFn.Component.NAMESPACE
            net.sf.saxon.value.AtomicValue r6 = r2.getComponent(r3)
            net.sf.saxon.str.UnicodeString r6 = r6.getUnicodeStringValue()
            boolean r6 = r6.isEmpty()
            if (r6 != 0) goto La3
            net.sf.saxon.value.AtomicValue r3 = r2.getComponent(r3)
            net.sf.saxon.str.UnicodeString r3 = r3.getUnicodeStringValue()
            java.lang.String r6 = "http://saxon.sf.net/"
            net.sf.saxon.str.UnicodeString r6 = net.p110sf.saxon.str.StringView.m63901of(r6)
            boolean r3 = r3.equals(r6)
            if (r3 == 0) goto L11
            r3 = r2
            net.sf.saxon.value.QNameValue r3 = (net.p110sf.saxon.value.QNameValue) r3
            java.lang.String r3 = r3.getLocalName()
            boolean r6 = r7.m63162e(r3)
            if (r6 == 0) goto L11
            net.sf.saxon.expr.parser.RoleDiagnostic r6 = new net.sf.saxon.expr.parser.RoleDiagnostic
            r6.<init>(r5, r3, r4)
            net.sf.saxon.om.GroundedValue r4 = r8.get(r2)
            java.util.Map<java.lang.String, net.sf.saxon.value.SequenceType> r5 = net.p110sf.saxon.functions.Serialize.f100303k
            java.lang.Object r3 = r5.get(r3)
            net.sf.saxon.value.SequenceType r3 = (net.p110sf.saxon.value.SequenceType) r3
            net.sf.saxon.expr.parser.Loc r5 = net.p110sf.saxon.expr.parser.Loc.NONE
            net.sf.saxon.om.GroundedValue r3 = r9.applyFunctionConversionRules(r4, r3, r6, r5)
            net.sf.saxon.om.GroundedValue r3 = r3.materialize()
            net.sf.saxon.ma.map.MapItem r0 = r0.addEntry(r2, r3)
            goto L11
        La3:
            net.sf.saxon.trans.XPathException r7 = new net.sf.saxon.trans.XPathException
            java.lang.String r8 = "A serialization parameter supplied with a QName key must have non-absent namespace"
            java.lang.String r9 = "SEPM0017"
            r7.<init>(r8, r9)
            throw r7
        Lad:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.functions.Serialize.m63159b(net.sf.saxon.ma.map.MapItem, net.sf.saxon.expr.XPathContext):net.sf.saxon.ma.map.MapItem");
    }

    /* renamed from: c */
    public final StringValue m63160c(SequenceIterator sequenceIterator, Item item, XPathContext xPathContext) throws XPathException {
        SerializationProperties serializationProperties;
        if (item == null) {
            serializationProperties = new SerializationProperties(new Properties());
        } else if (item instanceof NodeInfo) {
            NodeInfo nodeInfo = (NodeInfo) item;
            if (nodeInfo.getNodeKind() != 1 || !"http://www.w3.org/2010/xslt-xquery-serialization".equals(nodeInfo.getURI()) || !"serialization-parameters".equals(nodeInfo.getLocalPart())) {
                throw new XPathException("Second argument to fn:serialize() must be an element named {http://www.w3.org/2010/xslt-xquery-serialization}serialization-parameters", "XPTY0004");
            }
            SerializationParamsHandler serializationParamsHandler = new SerializationParamsHandler();
            serializationParamsHandler.setSerializationParams(nodeInfo);
            serializationProperties = serializationParamsHandler.getSerializationProperties();
        } else {
            if (!(item instanceof MapItem)) {
                throw new XPathException("Second argument to fn:serialize() must either be an element named {http://www.w3.org/2010/xslt-xquery-serialization}serialization-parameters, or a map (if using XPath 3.1)", "XPTY0004");
            }
            MapItem mapItem = (MapItem) item;
            AtomicIterator keys = mapItem.keys();
            while (true) {
                AtomicValue next = keys.next();
                if (next == null) {
                    break;
                }
                if (next instanceof QNameValue) {
                    mapItem = mapItem.addEntry(new StringValue(((QNameValue) next).getStructuredQName().getEQName()), mapItem.get(next));
                }
            }
            serializationProperties = m63163f(getDetails().optionDetails.processSuppliedOptions(mapItem, xPathContext), xPathContext);
        }
        Properties properties = serializationProperties.getProperties();
        if (properties.getProperty("method") == null) {
            properties.setProperty("method", "xml");
        }
        if (properties.getProperty("omit-xml-declaration") == null) {
            properties.setProperty("omit-xml-declaration", "true");
        }
        try {
            UnicodeBuilder unicodeBuilder = new UnicodeBuilder();
            SequenceCopier.copySequence(sequenceIterator, xPathContext.getConfiguration().getSerializerFactory().getReceiver(new UnicodeWriterResult(unicodeBuilder, null), serializationProperties, xPathContext.getConfiguration().makePipelineConfiguration()));
            return new StringValue(unicodeBuilder.toString());
        } catch (XPathException e) {
            e.maybeSetErrorCode("SENR0001");
            throw e;
        }
    }

    /* renamed from: d */
    public final boolean m63161d(String str) {
        for (String str2 : this.f100304h) {
            if (str2.equals(str)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: e */
    public final boolean m63162e(String str) {
        for (String str2 : this.f100305i) {
            if (str2.equals(str)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: f */
    public final SerializationProperties m63163f(Map<String, Sequence> map, XPathContext xPathContext) throws XPathException {
        Properties properties = new Properties();
        CharacterMapIndex characterMapIndex = new CharacterMapIndex();
        Sequence sequence = map.get(SaxonOutputKeys.ALLOW_DUPLICATE_NAMES);
        if (sequence != null) {
            properties.setProperty(SaxonOutputKeys.ALLOW_DUPLICATE_NAMES, m63169m(sequence));
        }
        Sequence sequence2 = map.get(SaxonOutputKeys.BYTE_ORDER_MARK);
        if (sequence2 != null) {
            properties.setProperty(SaxonOutputKeys.BYTE_ORDER_MARK, m63169m(sequence2));
        }
        Sequence sequence3 = map.get("cdata-section-elements");
        if (sequence3 != null) {
            properties.setProperty("cdata-section-elements", m63166j(sequence3, false));
        }
        Sequence sequence4 = map.get("doctype-public");
        if (sequence4 != null) {
            properties.setProperty("doctype-public", sequence4.head().getStringValue());
        }
        Sequence sequence5 = map.get("doctype-system");
        if (sequence5 != null) {
            properties.setProperty("doctype-system", sequence5.head().getStringValue());
        }
        Sequence sequence6 = map.get("encoding");
        if (sequence6 != null) {
            properties.setProperty("encoding", sequence6.head().getStringValue());
        }
        Sequence sequence7 = map.get(SaxonOutputKeys.ESCAPE_URI_ATTRIBUTES);
        if (sequence7 != null) {
            properties.setProperty(SaxonOutputKeys.ESCAPE_URI_ATTRIBUTES, m63169m(sequence7));
        }
        Sequence sequence8 = map.get(SaxonOutputKeys.HTML_VERSION);
        if (sequence8 != null) {
            properties.setProperty(SaxonOutputKeys.HTML_VERSION, sequence8.head().getStringValue());
        }
        Sequence sequence9 = map.get(SaxonOutputKeys.INCLUDE_CONTENT_TYPE);
        if (sequence9 != null) {
            properties.setProperty(SaxonOutputKeys.INCLUDE_CONTENT_TYPE, m63169m(sequence9));
        }
        Sequence sequence10 = map.get("indent");
        if (sequence10 != null) {
            properties.setProperty("indent", m63169m(sequence10));
        }
        Sequence sequence11 = map.get(SaxonOutputKeys.ITEM_SEPARATOR);
        if (sequence11 != null) {
            properties.setProperty(SaxonOutputKeys.ITEM_SEPARATOR, sequence11.head().getStringValue());
        }
        Sequence sequence12 = map.get(SaxonOutputKeys.JSON_NODE_OUTPUT_METHOD);
        if (sequence12 != null) {
            properties.setProperty(SaxonOutputKeys.JSON_NODE_OUTPUT_METHOD, m63165i(sequence12));
        }
        Sequence sequence13 = map.get("media-type");
        if (sequence13 != null) {
            properties.setProperty("media-type", sequence13.head().getStringValue());
        }
        Sequence sequence14 = map.get("method");
        if (sequence14 != null) {
            properties.setProperty("method", m63165i(sequence14));
        }
        Sequence sequence15 = map.get(SaxonOutputKeys.NORMALIZATION_FORM);
        if (sequence15 != null) {
            properties.setProperty(SaxonOutputKeys.NORMALIZATION_FORM, sequence15.head().getStringValue());
        }
        Sequence sequence16 = map.get("omit-xml-declaration");
        if (sequence16 != null) {
            properties.setProperty("omit-xml-declaration", m63169m(sequence16));
        }
        Sequence sequence17 = map.get("standalone");
        if (sequence17 != null) {
            properties.setProperty("standalone", m63168l(sequence17));
        }
        Sequence sequence18 = map.get(SaxonOutputKeys.SUPPRESS_INDENTATION);
        if (sequence18 != null) {
            properties.setProperty(SaxonOutputKeys.SUPPRESS_INDENTATION, m63166j(sequence18, false));
        }
        Sequence sequence19 = map.get(SaxonOutputKeys.UNDECLARE_PREFIXES);
        if (sequence19 != null) {
            properties.setProperty(SaxonOutputKeys.UNDECLARE_PREFIXES, m63169m(sequence19));
        }
        Sequence sequence20 = map.get(SaxonOutputKeys.USE_CHARACTER_MAPS);
        if (sequence20 != null) {
            characterMapIndex.putCharacterMap(new StructuredQName("", "", "charMap"), m63164h(sequence20, xPathContext));
            properties.setProperty(SaxonOutputKeys.USE_CHARACTER_MAPS, "charMap");
        }
        Sequence sequence21 = map.get("version");
        if (sequence21 != null) {
            properties.setProperty("version", sequence21.head().getStringValue());
        }
        Sequence sequence22 = map.get(m63158g("attribute-order"));
        if (sequence22 != null) {
            properties.setProperty(SaxonOutputKeys.ATTRIBUTE_ORDER, m63166j(sequence22, true));
        }
        Sequence sequence23 = map.get(m63158g("canonical"));
        if (sequence23 != null) {
            properties.setProperty(SaxonOutputKeys.CANONICAL, m63169m(sequence23));
        }
        Sequence sequence24 = map.get(m63158g("character-representation"));
        if (sequence24 != null) {
            properties.setProperty(SaxonOutputKeys.CHARACTER_REPRESENTATION, sequence24.head().getStringValue());
        }
        Sequence sequence25 = map.get(m63158g("double-space"));
        if (sequence25 != null) {
            properties.setProperty(SaxonOutputKeys.DOUBLE_SPACE, m63166j(sequence25, false));
        }
        Sequence sequence26 = map.get(m63158g("indent-spaces"));
        if (sequence26 != null) {
            properties.setProperty(SaxonOutputKeys.INDENT_SPACES, sequence26.head().getStringValue());
        }
        Sequence sequence27 = map.get(m63158g("internal-dtd-subset"));
        if (sequence27 != null) {
            properties.setProperty(SaxonOutputKeys.INTERNAL_DTD_SUBSET, sequence27.head().getStringValue());
        }
        Sequence sequence28 = map.get(m63158g("line-length"));
        if (sequence28 != null) {
            properties.setProperty(SaxonOutputKeys.LINE_LENGTH, sequence28.head().getStringValue());
        }
        Sequence sequence29 = map.get(m63158g("newline"));
        if (sequence29 != null) {
            properties.setProperty(SaxonOutputKeys.NEWLINE, sequence29.head().getStringValue());
        }
        Sequence sequence30 = map.get(m63158g("property-order"));
        if (sequence30 != null) {
            properties.setProperty(SaxonOutputKeys.PROPERTY_ORDER, m63167k(sequence30));
        }
        Sequence sequence31 = map.get(m63158g("recognize-binary"));
        if (sequence31 != null) {
            properties.setProperty(SaxonOutputKeys.RECOGNIZE_BINARY, m63169m(sequence31));
        }
        Sequence sequence32 = map.get(m63158g("require-well-formed"));
        if (sequence32 != null) {
            properties.setProperty(SaxonOutputKeys.REQUIRE_WELL_FORMED, m63169m(sequence32));
        }
        Sequence sequence33 = map.get(m63158g("single-quotes"));
        if (sequence33 != null) {
            properties.setProperty(SaxonOutputKeys.SINGLE_QUOTES, m63169m(sequence33));
        }
        Sequence sequence34 = map.get(m63158g("supply-source-locator"));
        if (sequence34 != null) {
            properties.setProperty(SaxonOutputKeys.SUPPLY_SOURCE_LOCATOR, m63169m(sequence34));
        }
        return new SerializationProperties(properties, characterMapIndex);
    }

    /* renamed from: h */
    public final CharacterMap m63164h(Sequence sequence, XPathContext xPathContext) throws XPathException {
        return toCharacterMap(m63157a((MapItem) sequence.head(), xPathContext));
    }

    /* renamed from: i */
    public final String m63165i(Sequence sequence) throws XPathException {
        if (!(sequence.head() instanceof QNameValue)) {
            return sequence.head().getStringValue();
        }
        QNameValue qNameValue = (QNameValue) sequence.head();
        return '{' + qNameValue.getComponent(AccessorFn.Component.NAMESPACE).toString() + '}' + qNameValue.getComponent(AccessorFn.Component.LOCALNAME);
    }

    /* renamed from: j */
    public final String m63166j(Sequence sequence, boolean z) throws XPathException {
        SequenceIterator iterate = sequence.iterate();
        StringBuilder sb = new StringBuilder();
        while (true) {
            Item next = iterate.next();
            if (next == null) {
                return sb.toString();
            }
            if (next instanceof QNameValue) {
                QNameValue qNameValue = (QNameValue) next;
                sb.append(" Q{");
                sb.append(qNameValue.getComponent(AccessorFn.Component.NAMESPACE).getUnicodeStringValue());
                sb.append('}');
                sb.append(qNameValue.getComponent(AccessorFn.Component.LOCALNAME).getUnicodeStringValue());
            } else {
                if (!z || !(next instanceof StringValue) || !next.getStringValue().equals("*")) {
                    break;
                }
                sb.append(" *");
            }
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Invalid serialization parameter value: expected sequence of QNames ");
        sb2.append(z ? "(or *) " : "");
        throw new XPathException(sb2.toString(), "SEPM0017");
    }

    /* renamed from: k */
    public final String m63167k(Sequence sequence) throws XPathException {
        SequenceIterator iterate = sequence.iterate();
        StringBuilder sb = new StringBuilder();
        while (true) {
            Item next = iterate.next();
            if (next == null) {
                return sb.toString();
            }
            sb.append(" ");
            sb.append(next.getUnicodeStringValue());
        }
    }

    /* renamed from: l */
    public final String m63168l(Sequence sequence) throws XPathException {
        return sequence instanceof EmptySequence ? "omit" : sequence.head() instanceof BooleanValue ? m63169m(sequence) : "";
    }

    /* renamed from: m */
    public final String m63169m(Sequence sequence) throws XPathException {
        return ((BooleanValue) sequence.head()).getBooleanValue() ? "yes" : SVGParser.f16048t;
    }

    @Override // net.p110sf.saxon.expr.Callable
    public StringValue call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        return m63160c(sequenceArr[0].iterate(), sequenceArr.length == 1 ? null : sequenceArr[1].head(), xPathContext);
    }
}
