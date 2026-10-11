package com.sun.org.apache.xerces.internal.impl.p055xs.util;

import com.sun.org.apache.xerces.internal.impl.p055xs.SchemaGrammar;
import com.sun.org.apache.xerces.internal.impl.p055xs.XSModelImpl;
import com.sun.org.apache.xerces.internal.p056xs.XSModel;
import com.sun.org.apache.xerces.internal.util.XMLGrammarPoolImpl;
import java.util.Vector;

/* loaded from: classes10.dex */
public class XSGrammarPool extends XMLGrammarPoolImpl {
    public XSModel toXSModel() {
        Vector vector = new Vector();
        int i = 0;
        while (true) {
            XMLGrammarPoolImpl.Entry[] entryArr = this.fGrammars;
            if (i >= entryArr.length) {
                break;
            }
            for (XMLGrammarPoolImpl.Entry entry = entryArr[i]; entry != null; entry = entry.next) {
                if (entry.desc.getGrammarType().equals("http://www.w3.org/2001/XMLSchema")) {
                    vector.addElement(entry.grammar);
                }
            }
            i++;
        }
        int size = vector.size();
        if (size == 0) {
            return null;
        }
        SchemaGrammar[] schemaGrammarArr = new SchemaGrammar[size];
        for (int i2 = 0; i2 < size; i2++) {
            schemaGrammarArr[i2] = (SchemaGrammar) vector.elementAt(i2);
        }
        return new XSModelImpl(schemaGrammarArr);
    }
}
