package com.sun.org.apache.xml.internal.utils;

import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;

/* loaded from: classes10.dex */
final class Context2 {
    private static final Enumeration EMPTY_ENUMERATION = new Vector().elements();
    Hashtable attributeNameTable;
    Hashtable elementNameTable;
    Hashtable prefixTable;
    Hashtable uriTable;
    String defaultNS = null;
    private Vector declarations = null;
    private boolean tablesDirty = false;
    private Context2 parent = null;
    private Context2 child = null;

    public Context2(Context2 context2) {
        if (context2 != null) {
            setParent(context2);
            return;
        }
        this.prefixTable = new Hashtable();
        this.uriTable = new Hashtable();
        this.elementNameTable = null;
        this.attributeNameTable = null;
    }

    private void copyTables() {
        this.prefixTable = (Hashtable) this.prefixTable.clone();
        this.uriTable = (Hashtable) this.uriTable.clone();
        if (this.elementNameTable != null) {
            this.elementNameTable = new Hashtable();
        }
        if (this.attributeNameTable != null) {
            this.attributeNameTable = new Hashtable();
        }
        this.tablesDirty = true;
    }

    public void declarePrefix(String str, String str2) {
        if (!this.tablesDirty) {
            copyTables();
        }
        if (this.declarations == null) {
            this.declarations = new Vector();
        }
        String intern = str.intern();
        String intern2 = str2.intern();
        if (!"".equals(intern)) {
            this.prefixTable.put(intern, intern2);
            this.uriTable.put(intern2, intern);
        } else if ("".equals(intern2)) {
            this.defaultNS = null;
        } else {
            this.defaultNS = intern2;
        }
        this.declarations.addElement(intern);
    }

    public Context2 getChild() {
        return this.child;
    }

    public Enumeration getDeclaredPrefixes() {
        Vector vector = this.declarations;
        return vector == null ? EMPTY_ENUMERATION : vector.elements();
    }

    public Context2 getParent() {
        return this.parent;
    }

    public String getPrefix(String str) {
        Hashtable hashtable = this.uriTable;
        if (hashtable == null) {
            return null;
        }
        return (String) hashtable.get(str);
    }

    public Enumeration getPrefixes() {
        Hashtable hashtable = this.prefixTable;
        return hashtable == null ? EMPTY_ENUMERATION : hashtable.keys();
    }

    public String getURI(String str) {
        if ("".equals(str)) {
            return this.defaultNS;
        }
        Hashtable hashtable = this.prefixTable;
        if (hashtable == null) {
            return null;
        }
        return (String) hashtable.get(str);
    }

    public String[] processName(String str, boolean z) {
        Hashtable hashtable;
        String str2;
        if (z) {
            if (this.elementNameTable == null) {
                this.elementNameTable = new Hashtable();
            }
            hashtable = this.elementNameTable;
        } else {
            if (this.attributeNameTable == null) {
                this.attributeNameTable = new Hashtable();
            }
            hashtable = this.attributeNameTable;
        }
        String[] strArr = (String[]) hashtable.get(str);
        if (strArr != null) {
            return strArr;
        }
        String[] strArr2 = new String[3];
        int indexOf = str.indexOf(58);
        if (indexOf == -1) {
            if (z || (str2 = this.defaultNS) == null) {
                strArr2[0] = "";
            } else {
                strArr2[0] = str2;
            }
            String intern = str.intern();
            strArr2[1] = intern;
            strArr2[2] = intern;
        } else {
            String substring = str.substring(0, indexOf);
            String substring2 = str.substring(indexOf + 1);
            String str3 = "".equals(substring) ? this.defaultNS : (String) this.prefixTable.get(substring);
            if (str3 == null) {
                return null;
            }
            strArr2[0] = str3;
            strArr2[1] = substring2.intern();
            strArr2[2] = str.intern();
        }
        hashtable.put(strArr2[2], strArr2);
        this.tablesDirty = true;
        return strArr2;
    }

    public void setParent(Context2 context2) {
        this.parent = context2;
        context2.child = this;
        this.declarations = null;
        this.prefixTable = context2.prefixTable;
        this.uriTable = context2.uriTable;
        this.elementNameTable = context2.elementNameTable;
        this.attributeNameTable = context2.attributeNameTable;
        this.defaultNS = context2.defaultNS;
        this.tablesDirty = false;
    }
}
