package org.apache.xmlbeans.impl.xpath.saxon;

import java.math.BigDecimal;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ConcurrentModificationException;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import net.p110sf.saxon.value.DateTimeValue;
import net.p110sf.saxon.value.GDateValue;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlAnySimpleType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlDate;
import org.apache.xmlbeans.XmlDateTime;
import org.apache.xmlbeans.XmlDecimal;
import org.apache.xmlbeans.XmlDouble;
import org.apache.xmlbeans.XmlFloat;
import org.apache.xmlbeans.XmlInteger;
import org.apache.xmlbeans.XmlLong;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.store.Cur;
import org.apache.xmlbeans.impl.store.DomImpl;
import org.apache.xmlbeans.impl.xpath.XPathEngine;
import org.apache.xmlbeans.impl.xpath.XPathExecutionContext;
import org.w3c.dom.Node;

/* loaded from: classes13.dex */
public class SaxonXPathEngine extends XPathExecutionContext implements XPathEngine {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private Cur _cur;
    private SaxonXPath _engine;
    private final long _version;
    private final DateFormat xmlDateFormat = new SimpleDateFormat("yyyy-MM-dd", Locale.ROOT);
    private boolean _firstCall = true;

    public SaxonXPathEngine(SaxonXPath saxonXPath, Cur cur) {
        this._engine = saxonXPath;
        this._version = cur.getLocale().version();
        this._cur = cur.weakCur(this);
    }

    private SchemaType getType(Object obj) {
        return obj instanceof Integer ? XmlInteger.type : obj instanceof Double ? XmlDouble.type : obj instanceof Long ? XmlLong.type : obj instanceof Float ? XmlFloat.type : obj instanceof BigDecimal ? XmlDecimal.type : obj instanceof Boolean ? XmlBoolean.type : obj instanceof String ? XmlString.type : obj instanceof GDateValue ? XmlDate.type : obj instanceof DateTimeValue ? XmlDateTime.type : XmlAnySimpleType.type;
    }

    @Override // org.apache.xmlbeans.impl.xpath.XPathEngine
    public boolean next(Cur cur) {
        Cur tempCur;
        if (!this._firstCall) {
            return false;
        }
        this._firstCall = false;
        Cur cur2 = this._cur;
        if (cur2 != null && this._version != cur2.getLocale().version()) {
            throw new ConcurrentModificationException("Document changed during select");
        }
        List selectPath = this._engine.selectPath(this._cur.getDom());
        for (int i = 0; i < selectPath.size(); i++) {
            Object obj = selectPath.get(i);
            if (obj instanceof Node) {
                tempCur = ((DomImpl.Dom) obj).tempCur();
            } else {
                Object obj2 = selectPath.get(i);
                String format = obj2 instanceof Date ? this.xmlDateFormat.format((Date) obj2) : obj2 instanceof GDateValue ? ((GDateValue) obj2).getStringValue() : obj2 instanceof DateTimeValue ? ((DateTimeValue) obj2).getStringValue() : obj2 instanceof BigDecimal ? ((BigDecimal) obj2).toPlainString() : obj2.toString();
                try {
                    tempCur = cur.getLocale().load("<xml-fragment/>").tempCur();
                    tempCur.setValue(format);
                    org.apache.xmlbeans.impl.store.Locale.autoTypeDocument(tempCur, getType(obj), null);
                    tempCur.next();
                } catch (Exception e) {
                    throw new RuntimeException(e);
                }
            }
            cur.addToSelection(tempCur);
            tempCur.release();
        }
        release();
        this._engine = null;
        return true;
    }

    @Override // org.apache.xmlbeans.impl.xpath.XPathEngine
    public void release() {
        Cur cur = this._cur;
        if (cur != null) {
            cur.release();
            this._cur = null;
        }
    }
}
