package org.apache.xerces.impl.p117xs.util;

import java.util.ArrayList;
import org.apache.xerces.impl.p117xs.SchemaGrammar;
import org.apache.xerces.impl.p117xs.XSModelImpl;
import org.apache.xerces.p118xs.XSModel;
import org.apache.xerces.util.XMLGrammarPoolImpl;

/* loaded from: classes13.dex */
public class XSGrammarPool extends XMLGrammarPoolImpl {
    public XSModel toXSModel() {
        return toXSModel((short) 1);
    }

    public XSModel toXSModel(short s) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (true) {
            XMLGrammarPoolImpl.Entry[] entryArr = this.fGrammars;
            if (i >= entryArr.length) {
                break;
            }
            for (XMLGrammarPoolImpl.Entry entry = entryArr[i]; entry != null; entry = entry.next) {
                if (entry.desc.getGrammarType().equals("http://www.w3.org/2001/XMLSchema")) {
                    arrayList.add(entry.grammar);
                }
            }
            i++;
        }
        int size = arrayList.size();
        return size == 0 ? toXSModel(new SchemaGrammar[0], s) : toXSModel((SchemaGrammar[]) arrayList.toArray(new SchemaGrammar[size]), s);
    }

    public XSModel toXSModel(SchemaGrammar[] schemaGrammarArr, short s) {
        return new XSModelImpl(schemaGrammarArr, s);
    }
}
