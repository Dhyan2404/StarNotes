package org.apache.xmlbeans.impl.xpath.saxon;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.URI;
import java.util.Date;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.function.BiConsumer;
import javax.xml.datatype.DatatypeConstants;
import javax.xml.datatype.Duration;
import javax.xml.datatype.XMLGregorianCalendar;
import javax.xml.namespace.QName;
import javax.xml.transform.TransformerException;
import javax.xml.xpath.XPathException;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.dom.DOMNodeWrapper;
import net.p110sf.saxon.dom.DocumentWrapper;
import net.p110sf.saxon.dom.NodeOverNodeInfo;
import net.p110sf.saxon.ma.map.HashTrieMap;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.query.DynamicQueryContext;
import net.p110sf.saxon.query.StaticQueryContext;
import net.p110sf.saxon.query.XQueryExpression;
import net.p110sf.saxon.str.StringView;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.value.AnyURIValue;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.BigDecimalValue;
import net.p110sf.saxon.value.BigIntegerValue;
import net.p110sf.saxon.value.BooleanValue;
import net.p110sf.saxon.value.DateTimeValue;
import net.p110sf.saxon.value.DateValue;
import net.p110sf.saxon.value.DoubleValue;
import net.p110sf.saxon.value.DurationValue;
import net.p110sf.saxon.value.FloatValue;
import net.p110sf.saxon.value.GDayValue;
import net.p110sf.saxon.value.GMonthDayValue;
import net.p110sf.saxon.value.GMonthValue;
import net.p110sf.saxon.value.GYearMonthValue;
import net.p110sf.saxon.value.GYearValue;
import net.p110sf.saxon.value.HexBinaryValue;
import net.p110sf.saxon.value.Int64Value;
import net.p110sf.saxon.value.ObjectValue;
import net.p110sf.saxon.value.QNameValue;
import net.p110sf.saxon.value.SaxonDuration;
import net.p110sf.saxon.value.SaxonXMLGregorianCalendar;
import net.p110sf.saxon.value.StringValue;
import net.p110sf.saxon.value.TimeValue;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlAnySimpleType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlCursor;
import org.apache.xmlbeans.XmlDate;
import org.apache.xmlbeans.XmlDecimal;
import org.apache.xmlbeans.XmlDouble;
import org.apache.xmlbeans.XmlException;
import org.apache.xmlbeans.XmlFloat;
import org.apache.xmlbeans.XmlInteger;
import org.apache.xmlbeans.XmlLong;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlOptions;
import org.apache.xmlbeans.XmlRuntimeException;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.XmlTokenSource;
import org.apache.xmlbeans.impl.store.Cur;
import org.apache.xmlbeans.impl.store.Cursor;
import org.apache.xmlbeans.impl.store.Locale;
import org.apache.xmlbeans.impl.xpath.XQuery;
import org.mortbay.util.MultiPartWriter;
import org.w3c.dom.Document;
import org.w3c.dom.Node;

/* loaded from: classes13.dex */
public class SaxonXQuery implements XQuery {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final Logger LOG = LogManager.getLogger((Class<?>) SaxonXQuery.class);
    private Cur _cur;
    private XmlOptions _options;
    private long _version;
    private final Configuration config;
    private final String contextVar;
    private final XQueryExpression xquery;

    public SaxonXQuery(String str, String str2, Integer num, XmlOptions xmlOptions) {
        this._options = xmlOptions;
        Configuration configuration = new Configuration();
        this.config = configuration;
        final StaticQueryContext newStaticQueryContext = configuration.newStaticQueryContext();
        Map<String, String> loadAdditionalNamespaces = xmlOptions.getLoadAdditionalNamespaces();
        if (loadAdditionalNamespaces != null) {
            newStaticQueryContext.getClass();
            loadAdditionalNamespaces.forEach(new BiConsumer() { // from class: com.sunia.HTREnginev2.d1m
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    StaticQueryContext.this.declareNamespace((String) obj, (String) obj2);
                }
            });
        }
        this.contextVar = str2;
        try {
            this.xquery = newStaticQueryContext.compileQuery(str.substring(0, num.intValue()) + " declare variable $" + str2 + " external;" + str.substring(num.intValue()));
        } catch (TransformerException e) {
            throw new XmlRuntimeException(e);
        }
    }

    private SchemaType getType(Object obj) {
        return obj instanceof Integer ? XmlInteger.type : obj instanceof Double ? XmlDouble.type : obj instanceof Long ? XmlLong.type : obj instanceof Float ? XmlFloat.type : obj instanceof BigDecimal ? XmlDecimal.type : obj instanceof Boolean ? XmlBoolean.type : obj instanceof String ? XmlString.type : obj instanceof Date ? XmlDate.type : XmlAnySimpleType.type;
    }

    private Cur loadNode(Locale locale, Node node) {
        Cur.CurLoadContext curLoadContext = new Cur.CurLoadContext(locale, this._options);
        try {
            loadNodeHelper(locale, node, curLoadContext);
            Cur finish = curLoadContext.finish();
            Locale.associateSourceName(finish, this._options);
            Locale.autoTypeDocument(finish, null, this._options);
            return finish;
        } catch (Exception e) {
            throw new XmlRuntimeException(e.getMessage(), e);
        }
    }

    private void loadNodeHelper(Locale locale, Node node, Locale.LoadContext loadContext) {
        if (node.getNodeType() == 2) {
            loadContext.attr(new QName(node.getNamespaceURI(), node.getLocalName(), node.getPrefix()), node.getNodeValue());
        } else {
            locale.loadNode(node, loadContext);
        }
    }

    private static Item objectToItem(Object obj, Configuration configuration) throws XPathException, net.p110sf.saxon.trans.XPathException {
        if (obj == null) {
            return null;
        }
        if (obj instanceof Boolean) {
            return BooleanValue.get(((Boolean) obj).booleanValue());
        }
        if (obj instanceof byte[]) {
            return new HexBinaryValue((byte[]) obj);
        }
        if (obj instanceof Byte) {
            return new Int64Value(((Byte) obj).byteValue(), BuiltInAtomicType.BYTE, false);
        }
        if (obj instanceof Float) {
            return new FloatValue(((Float) obj).floatValue());
        }
        if (obj instanceof Double) {
            return new DoubleValue(((Double) obj).doubleValue());
        }
        if (obj instanceof Integer) {
            return new Int64Value(((Integer) obj).intValue(), BuiltInAtomicType.INT, false);
        }
        if (obj instanceof Long) {
            return new Int64Value(((Long) obj).longValue(), BuiltInAtomicType.LONG, false);
        }
        if (obj instanceof Short) {
            return new Int64Value(((Short) obj).shortValue(), BuiltInAtomicType.SHORT, false);
        }
        if (obj instanceof String) {
            return new StringValue((String) obj);
        }
        if (obj instanceof BigDecimal) {
            return new BigDecimalValue((BigDecimal) obj);
        }
        if (obj instanceof BigInteger) {
            return new BigIntegerValue((BigInteger) obj);
        }
        if (obj instanceof SaxonDuration) {
            return ((SaxonDuration) obj).getDurationValue();
        }
        if (obj instanceof Duration) {
            Duration duration = (Duration) obj;
            return new DurationValue(duration.getSign() >= 0, duration.getYears(), duration.getMonths(), duration.getDays(), duration.getHours(), duration.getMinutes(), duration.getSeconds(), 0);
        }
        if (obj instanceof SaxonXMLGregorianCalendar) {
            return ((SaxonXMLGregorianCalendar) obj).toCalendarValue();
        }
        if (!(obj instanceof XMLGregorianCalendar)) {
            if (obj instanceof QName) {
                QName qName = (QName) obj;
                return new QNameValue(qName.getPrefix(), qName.getNamespaceURI(), qName.getLocalPart());
            }
            if (obj instanceof URI) {
                return new AnyURIValue(obj.toString());
            }
            if (!(obj instanceof Map)) {
                return new ObjectValue(obj);
            }
            HashTrieMap hashTrieMap = new HashTrieMap();
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                hashTrieMap.initialPut((AtomicValue) objectToItem(entry.getKey(), configuration), objectToItem(entry.getValue(), configuration));
            }
            return hashTrieMap;
        }
        QName xMLSchemaType = ((XMLGregorianCalendar) obj).getXMLSchemaType();
        if (xMLSchemaType.equals(DatatypeConstants.DATETIME)) {
            return DateTimeValue.makeDateTimeValue(StringView.tidy(obj.toString()), configuration.getConversionRules()).asAtomic();
        }
        if (xMLSchemaType.equals(DatatypeConstants.DATE)) {
            return DateValue.makeDateValue(StringView.tidy(obj.toString()), configuration.getConversionRules()).asAtomic();
        }
        if (xMLSchemaType.equals(DatatypeConstants.TIME)) {
            return TimeValue.makeTimeValue(StringView.tidy(obj.toString())).asAtomic();
        }
        if (xMLSchemaType.equals(DatatypeConstants.GYEAR)) {
            return GYearValue.makeGYearValue(StringView.tidy(obj.toString()), configuration.getConversionRules()).asAtomic();
        }
        if (xMLSchemaType.equals(DatatypeConstants.GYEARMONTH)) {
            return GYearMonthValue.makeGYearMonthValue(StringView.tidy(obj.toString()), configuration.getConversionRules()).asAtomic();
        }
        if (xMLSchemaType.equals(DatatypeConstants.GMONTH)) {
            String obj2 = obj.toString();
            if (obj2.endsWith(MultiPartWriter.f115320h)) {
                obj2 = obj2.substring(0, obj2.length() - 2);
            }
            return GMonthValue.makeGMonthValue(StringView.tidy(obj2)).asAtomic();
        }
        if (xMLSchemaType.equals(DatatypeConstants.GMONTHDAY)) {
            return GMonthDayValue.makeGMonthDayValue(StringView.tidy(obj.toString())).asAtomic();
        }
        if (xMLSchemaType.equals(DatatypeConstants.GDAY)) {
            return GDayValue.makeGDayValue(StringView.tidy(obj.toString())).asAtomic();
        }
        throw new AssertionError("Unknown Gregorian date type");
    }

    @Override // org.apache.xmlbeans.impl.xpath.XQuery
    public XmlCursor cursorExecute(Cur cur, XmlOptions xmlOptions) {
        Cursor cursor;
        this._version = cur.getLocale().version();
        this._cur = cur.weakCur(this);
        this._options = xmlOptions;
        List<Object> execQuery = execQuery(this._cur.getDom(), XmlOptions.maskNull(xmlOptions).getXqueryVariables());
        Locale locale = Locale.getLocale(this._cur.getLocale().getSchemaTypeLoader(), this._options);
        locale.enter();
        Cur.CurLoadContext curLoadContext = new Cur.CurLoadContext(locale, this._options);
        int i = 0;
        while (true) {
            cursor = null;
            try {
                try {
                    if (i >= execQuery.size()) {
                        break;
                    }
                    loadNodeHelper(locale, (Node) execQuery.get(i), curLoadContext);
                    i++;
                } catch (XmlException e) {
                    LOG.atInfo().withThrowable(e).log("Can't autotype document");
                    locale.exit();
                }
            } catch (Throwable th) {
                locale.exit();
                throw th;
            }
        }
        Cur finish = curLoadContext.finish();
        Locale.associateSourceName(cur, this._options);
        Locale.autoTypeDocument(cur, null, this._options);
        Cursor cursor2 = new Cursor(finish);
        locale.exit();
        cursor = cursor2;
        release();
        return cursor;
    }

    public List<Object> execQuery(Object obj, Map<String, Object> map) {
        try {
            Node node = (Node) obj;
            DocumentWrapper documentWrapper = new DocumentWrapper(node.getNodeType() == 9 ? (Document) node : node.getOwnerDocument(), null, this.config);
            DOMNodeWrapper wrap = documentWrapper.wrap(node);
            DynamicQueryContext dynamicQueryContext = new DynamicQueryContext(this.config);
            dynamicQueryContext.setContextItem(wrap);
            dynamicQueryContext.setParameter(new StructuredQName("", (String) null, this.contextVar), wrap);
            if (map != null) {
                for (Map.Entry<String, Object> entry : map.entrySet()) {
                    StructuredQName structuredQName = new StructuredQName("", (String) null, entry.getKey());
                    Object value = entry.getValue();
                    if (value instanceof XmlTokenSource) {
                        dynamicQueryContext.setParameter(structuredQName, documentWrapper.wrap(((XmlTokenSource) value).getDomNode()));
                    } else {
                        try {
                            dynamicQueryContext.setParameter(structuredQName, objectToItem(value, this.config));
                        } catch (XPathException e) {
                            throw new RuntimeException(e);
                        }
                    }
                }
            }
            List<Object> evaluate = this.xquery.evaluate(dynamicQueryContext);
            ListIterator<Object> listIterator = evaluate.listIterator();
            while (listIterator.hasNext()) {
                Object next = listIterator.next();
                if (next instanceof NodeInfo) {
                    listIterator.set(NodeOverNodeInfo.wrap((NodeInfo) next));
                }
            }
            return evaluate;
        } catch (TransformerException e2) {
            throw new RuntimeException("Error binding " + this.contextVar, e2);
        }
    }

    @Override // org.apache.xmlbeans.impl.xpath.XQuery
    public XmlObject[] objectExecute(Cur cur, XmlOptions xmlOptions) {
        Cur loadNode;
        this._version = cur.getLocale().version();
        this._cur = cur.weakCur(this);
        this._options = xmlOptions;
        List<Object> execQuery = execQuery(this._cur.getDom(), XmlOptions.maskNull(xmlOptions).getXqueryVariables());
        XmlObject[] xmlObjectArr = new XmlObject[execQuery.size()];
        for (int i = 0; i < execQuery.size(); i++) {
            Locale locale = Locale.getLocale(this._cur.getLocale().getSchemaTypeLoader(), this._options);
            locale.enter();
            Object obj = execQuery.get(i);
            try {
                try {
                    if (obj instanceof Node) {
                        loadNode = loadNode(locale, (Node) obj);
                    } else {
                        loadNode = locale.load("<xml-fragment/>").tempCur();
                        loadNode.setValue(obj.toString());
                        Locale.autoTypeDocument(loadNode, getType(obj), null);
                        xmlObjectArr[i] = loadNode.getObject();
                    }
                    xmlObjectArr[i] = loadNode.getObject();
                    locale.exit();
                    loadNode.release();
                } catch (XmlException e) {
                    throw new RuntimeException(e);
                }
            } catch (Throwable th) {
                locale.exit();
                throw th;
            }
        }
        release();
        return xmlObjectArr;
    }

    public void release() {
        Cur cur = this._cur;
        if (cur != null) {
            cur.release();
            this._cur = null;
        }
    }
}
