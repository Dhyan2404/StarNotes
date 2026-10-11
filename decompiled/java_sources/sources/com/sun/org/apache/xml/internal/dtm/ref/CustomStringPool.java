package com.sun.org.apache.xml.internal.dtm.ref;

import java.util.Hashtable;

/* loaded from: classes10.dex */
public class CustomStringPool extends DTMStringPool {
    public static final int NULL = -1;
    final Hashtable m_stringToInt = new Hashtable();

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMStringPool
    public String indexToString(int i) throws ArrayIndexOutOfBoundsException {
        return (String) this.m_intToString.elementAt(i);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMStringPool
    public void removeAllElements() {
        this.m_intToString.removeAllElements();
        Hashtable hashtable = this.m_stringToInt;
        if (hashtable != null) {
            hashtable.clear();
        }
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMStringPool
    public int stringToIndex(String str) {
        if (str == null) {
            return -1;
        }
        Integer num = (Integer) this.m_stringToInt.get(str);
        if (num == null) {
            this.m_intToString.addElement(str);
            num = new Integer(this.m_intToString.size());
            this.m_stringToInt.put(str, num);
        }
        return num.intValue();
    }
}
