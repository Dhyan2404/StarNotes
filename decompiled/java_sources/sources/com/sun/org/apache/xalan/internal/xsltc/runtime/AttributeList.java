package com.sun.org.apache.xalan.internal.xsltc.runtime;

import java.util.Vector;

/* loaded from: classes10.dex */
public class AttributeList implements org.xml.sax.Attributes {
    private static final String CDATASTRING = "CDATA";
    private static final String EMPTYSTRING = "";
    private Hashtable _attributes;
    private int _length;
    private Vector _names;
    private Vector _qnames;
    private Vector _uris;
    private Vector _values;

    public AttributeList() {
        this._length = 0;
    }

    private void alloc() {
        this._attributes = new Hashtable();
        this._names = new Vector();
        this._values = new Vector();
        this._qnames = new Vector();
        this._uris = new Vector();
    }

    public void add(String str, String str2) {
        if (this._attributes == null) {
            alloc();
        }
        Integer num = (Integer) this._attributes.get(str);
        if (num != null) {
            this._values.set(num.intValue(), str2);
            return;
        }
        Hashtable hashtable = this._attributes;
        int i = this._length;
        this._length = i + 1;
        hashtable.put(str, new Integer(i));
        this._qnames.addElement(str);
        this._values.addElement(str2);
        int lastIndexOf = str.lastIndexOf(58);
        if (lastIndexOf > -1) {
            this._uris.addElement(str.substring(0, lastIndexOf));
            this._names.addElement(str.substring(lastIndexOf + 1));
        } else {
            this._uris.addElement("");
            this._names.addElement(str);
        }
    }

    public void clear() {
        this._length = 0;
        Hashtable hashtable = this._attributes;
        if (hashtable != null) {
            hashtable.clear();
            this._names.removeAllElements();
            this._values.removeAllElements();
            this._qnames.removeAllElements();
            this._uris.removeAllElements();
        }
    }

    @Override // org.xml.sax.Attributes
    public int getIndex(String str) {
        return -1;
    }

    @Override // org.xml.sax.Attributes
    public int getLength() {
        return this._length;
    }

    @Override // org.xml.sax.Attributes
    public String getLocalName(int i) {
        if (i < this._length) {
            return (String) this._names.elementAt(i);
        }
        return null;
    }

    @Override // org.xml.sax.Attributes
    public String getQName(int i) {
        if (i < this._length) {
            return (String) this._qnames.elementAt(i);
        }
        return null;
    }

    @Override // org.xml.sax.Attributes
    public String getType(int i) {
        return CDATASTRING;
    }

    @Override // org.xml.sax.Attributes
    public String getURI(int i) {
        if (i < this._length) {
            return (String) this._uris.elementAt(i);
        }
        return null;
    }

    @Override // org.xml.sax.Attributes
    public String getValue(int i) {
        if (i < this._length) {
            return (String) this._values.elementAt(i);
        }
        return null;
    }

    @Override // org.xml.sax.Attributes
    public int getIndex(String str, String str2) {
        return -1;
    }

    @Override // org.xml.sax.Attributes
    public String getType(String str) {
        return CDATASTRING;
    }

    public AttributeList(org.xml.sax.Attributes attributes) {
        this();
        if (attributes != null) {
            int length = attributes.getLength();
            for (int i = 0; i < length; i++) {
                add(attributes.getQName(i), attributes.getValue(i));
            }
        }
    }

    @Override // org.xml.sax.Attributes
    public String getType(String str, String str2) {
        return CDATASTRING;
    }

    @Override // org.xml.sax.Attributes
    public String getValue(String str) {
        Integer num;
        Hashtable hashtable = this._attributes;
        if (hashtable == null || (num = (Integer) hashtable.get(str)) == null) {
            return null;
        }
        return getValue(num.intValue());
    }

    @Override // org.xml.sax.Attributes
    public String getValue(String str, String str2) {
        return getValue(str + ':' + str2);
    }
}
