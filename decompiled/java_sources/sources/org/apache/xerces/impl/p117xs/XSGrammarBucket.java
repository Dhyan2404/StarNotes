package org.apache.xerces.impl.p117xs;

import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;

/* loaded from: classes13.dex */
public class XSGrammarBucket {

    /* renamed from: a */
    public Hashtable f112924a = new Hashtable();

    /* renamed from: b */
    public SchemaGrammar f112925b = null;

    public SchemaGrammar getGrammar(String str) {
        return str == null ? this.f112925b : (SchemaGrammar) this.f112924a.get(str);
    }

    public SchemaGrammar[] getGrammars() {
        int i = 0;
        int size = this.f112924a.size() + (this.f112925b == null ? 0 : 1);
        SchemaGrammar[] schemaGrammarArr = new SchemaGrammar[size];
        Enumeration elements = this.f112924a.elements();
        while (elements.hasMoreElements()) {
            schemaGrammarArr[i] = (SchemaGrammar) elements.nextElement();
            i++;
        }
        SchemaGrammar schemaGrammar = this.f112925b;
        if (schemaGrammar != null) {
            schemaGrammarArr[size - 1] = schemaGrammar;
        }
        return schemaGrammarArr;
    }

    public void putGrammar(SchemaGrammar schemaGrammar) {
        if (schemaGrammar.getTargetNamespace() == null) {
            this.f112925b = schemaGrammar;
        } else {
            this.f112924a.put(schemaGrammar.getTargetNamespace(), schemaGrammar);
        }
    }

    public void reset() {
        this.f112925b = null;
        this.f112924a.clear();
    }

    public boolean putGrammar(SchemaGrammar schemaGrammar, boolean z) {
        SchemaGrammar grammar = getGrammar(schemaGrammar.f112689e);
        if (grammar != null) {
            return grammar == schemaGrammar;
        }
        if (!z) {
            putGrammar(schemaGrammar);
            return true;
        }
        Vector importedGrammars = schemaGrammar.getImportedGrammars();
        if (importedGrammars == null) {
            putGrammar(schemaGrammar);
            return true;
        }
        Vector vector = (Vector) importedGrammars.clone();
        for (int i = 0; i < vector.size(); i++) {
            SchemaGrammar schemaGrammar2 = (SchemaGrammar) vector.elementAt(i);
            SchemaGrammar grammar2 = getGrammar(schemaGrammar2.f112689e);
            if (grammar2 == null) {
                Vector importedGrammars2 = schemaGrammar2.getImportedGrammars();
                if (importedGrammars2 != null) {
                    for (int size = importedGrammars2.size() - 1; size >= 0; size--) {
                        SchemaGrammar schemaGrammar3 = (SchemaGrammar) importedGrammars2.elementAt(size);
                        if (!vector.contains(schemaGrammar3)) {
                            vector.addElement(schemaGrammar3);
                        }
                    }
                }
            } else if (grammar2 != schemaGrammar2) {
                return false;
            }
        }
        putGrammar(schemaGrammar);
        for (int size2 = vector.size() - 1; size2 >= 0; size2--) {
            putGrammar((SchemaGrammar) vector.elementAt(size2));
        }
        return true;
    }

    public boolean putGrammar(SchemaGrammar schemaGrammar, boolean z, boolean z2) {
        Vector importedGrammars;
        if (!z2) {
            return putGrammar(schemaGrammar, z);
        }
        if (getGrammar(schemaGrammar.f112689e) == null) {
            putGrammar(schemaGrammar);
        }
        if (!z || (importedGrammars = schemaGrammar.getImportedGrammars()) == null) {
            return true;
        }
        Vector vector = (Vector) importedGrammars.clone();
        for (int i = 0; i < vector.size(); i++) {
            SchemaGrammar schemaGrammar2 = (SchemaGrammar) vector.elementAt(i);
            if (getGrammar(schemaGrammar2.f112689e) == null) {
                Vector importedGrammars2 = schemaGrammar2.getImportedGrammars();
                if (importedGrammars2 != null) {
                    for (int size = importedGrammars2.size() - 1; size >= 0; size--) {
                        SchemaGrammar schemaGrammar3 = (SchemaGrammar) importedGrammars2.elementAt(size);
                        if (!vector.contains(schemaGrammar3)) {
                            vector.addElement(schemaGrammar3);
                        }
                    }
                }
            } else {
                vector.remove(schemaGrammar2);
            }
        }
        for (int size2 = vector.size() - 1; size2 >= 0; size2--) {
            putGrammar((SchemaGrammar) vector.elementAt(size2));
        }
        return true;
    }
}
