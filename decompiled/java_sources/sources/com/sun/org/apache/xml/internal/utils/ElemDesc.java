package com.sun.org.apache.xml.internal.utils;

import java.util.Hashtable;

/* loaded from: classes10.dex */
class ElemDesc {
    static final int ASPECIAL = 65536;
    static final int ATTREMPTY = 4;
    static final int ATTRURL = 2;
    static final int BLOCK = 8;
    static final int BLOCKFORM = 16;
    static final int BLOCKFORMFIELDSET = 32;
    static final int CDATA = 64;
    static final int EMPTY = 2;
    static final int FLOW = 4;
    static final int FONTSTYLE = 4096;
    static final int FORMCTRL = 16384;
    static final int HEAD = 262144;
    static final int HEADMISC = 131072;
    static final int INLINE = 512;
    static final int INLINEA = 1024;
    static final int INLINELABEL = 2048;
    static final int LIST = 524288;
    static final int PCDATA = 128;
    static final int PHRASE = 8192;
    static final int PREFORMATTED = 1048576;
    static final int RAW = 256;
    static final int SPECIAL = 32768;
    static final int WHITESPACESENSITIVE = 2097152;
    Hashtable m_attrs = null;
    int m_flags;

    public ElemDesc(int i) {
        this.m_flags = i;
    }

    /* renamed from: is */
    public boolean m52902is(int i) {
        return (this.m_flags & i) != 0;
    }

    public boolean isAttrFlagSet(String str, int i) {
        Integer num;
        Hashtable hashtable = this.m_attrs;
        return (hashtable == null || (num = (Integer) hashtable.get(str)) == null || (num.intValue() & i) == 0) ? false : true;
    }

    public void setAttr(String str, int i) {
        if (this.m_attrs == null) {
            this.m_attrs = new Hashtable();
        }
        this.m_attrs.put(str, new Integer(i));
    }
}
