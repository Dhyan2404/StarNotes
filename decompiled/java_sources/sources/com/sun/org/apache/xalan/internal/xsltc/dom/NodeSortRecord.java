package com.sun.org.apache.xalan.internal.xsltc.dom;

import com.sun.org.apache.xalan.internal.xsltc.CollatorFactory;
import com.sun.org.apache.xalan.internal.xsltc.DOM;
import com.sun.org.apache.xalan.internal.xsltc.TransletException;
import com.sun.org.apache.xalan.internal.xsltc.runtime.AbstractTranslet;
import com.sun.org.apache.xml.internal.utils.StringComparable;
import java.text.Collator;
import java.util.Locale;

/* loaded from: classes10.dex */
public abstract class NodeSortRecord {
    public static final int COMPARE_ASCENDING = 0;
    public static final int COMPARE_DESCENDING = 1;
    public static final int COMPARE_NUMERIC = 1;
    public static final int COMPARE_STRING = 0;
    private static final Collator DEFAULT_COLLATOR = Collator.getInstance();
    protected Collator _collator;
    protected CollatorFactory _collatorFactory;
    protected Collator[] _collators;
    private DOM _dom;
    private int _last;
    protected Locale _locale;
    private int _node;
    private int _scanned;
    protected SortSettings _settings;
    private Object[] _values;

    public NodeSortRecord(int i) {
        this._collator = DEFAULT_COLLATOR;
        this._dom = null;
        this._last = 0;
        this._scanned = 0;
        this._node = i;
    }

    private final Double numericValue(int i) {
        Double d;
        if (this._scanned > i) {
            return (Double) this._values[i];
        }
        try {
            d = new Double(extractValueFromDOM(this._dom, this._node, i, this._settings.getTranslet(), this._last));
        } catch (NumberFormatException unused) {
            d = new Double(Double.NEGATIVE_INFINITY);
        }
        Object[] objArr = this._values;
        int i2 = this._scanned;
        this._scanned = i2 + 1;
        objArr[i2] = d;
        return d;
    }

    private final Comparable stringValue(int i) {
        if (this._scanned > i) {
            return (Comparable) this._values[i];
        }
        Comparable comparator = StringComparable.getComparator(extractValueFromDOM(this._dom, this._node, i, this._settings.getTranslet(), this._last), this._settings.getLocales()[i], this._collators[i], this._settings.getCaseOrders()[i]);
        Object[] objArr = this._values;
        int i2 = this._scanned;
        this._scanned = i2 + 1;
        objArr[i2] = comparator;
        return comparator;
    }

    public final int compareDocOrder(NodeSortRecord nodeSortRecord) {
        return this._node - nodeSortRecord._node;
    }

    public int compareTo(NodeSortRecord nodeSortRecord) {
        int[] sortOrders = this._settings.getSortOrders();
        int length = this._settings.getSortOrders().length;
        int[] types = this._settings.getTypes();
        for (int i = 0; i < length; i++) {
            int compareTo = types[i] == 1 ? numericValue(i).compareTo(nodeSortRecord.numericValue(i)) : stringValue(i).compareTo(nodeSortRecord.stringValue(i));
            if (compareTo != 0) {
                return sortOrders[i] == 1 ? 0 - compareTo : compareTo;
            }
        }
        return this._node - nodeSortRecord._node;
    }

    public abstract String extractValueFromDOM(DOM dom, int i, int i2, AbstractTranslet abstractTranslet, int i3);

    public Collator[] getCollator() {
        return this._collators;
    }

    public final int getNode() {
        return this._node;
    }

    public final void initialize(int i, int i2, DOM dom, SortSettings sortSettings) throws TransletException {
        String str;
        this._dom = dom;
        this._node = i;
        this._last = i2;
        this._settings = sortSettings;
        int length = sortSettings.getSortOrders().length;
        this._values = new Object[length];
        try {
            str = System.getProperty("com.sun.org.apache.xalan.internal.xsltc.COLLATOR_FACTORY");
        } catch (SecurityException unused) {
            str = null;
        }
        if (str == null) {
            Collator[] collators = sortSettings.getCollators();
            this._collators = collators;
            this._collator = collators[0];
            return;
        }
        try {
            this._collatorFactory = (CollatorFactory) ObjectFactory.findProviderClass(str, ObjectFactory.findClassLoader(), true);
            Locale[] locales = sortSettings.getLocales();
            this._collators = new Collator[length];
            for (int i3 = 0; i3 < length; i3++) {
                this._collators[i3] = this._collatorFactory.getCollator(locales[i3]);
            }
            this._collator = this._collators[0];
        } catch (ClassNotFoundException e) {
            throw new TransletException(e);
        }
    }

    public NodeSortRecord() {
        this(0);
    }
}
