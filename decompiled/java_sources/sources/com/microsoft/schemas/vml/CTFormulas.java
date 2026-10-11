package com.microsoft.schemas.vml;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface CTFormulas extends XmlObject {
    public static final DocumentFactory<CTFormulas> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTFormulas> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctformulas808btype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTF addNewF();

    CTF getFArray(int i);

    CTF[] getFArray();

    List<CTF> getFList();

    CTF insertNewF(int i);

    void removeF(int i);

    void setFArray(int i, CTF ctf);

    void setFArray(CTF[] ctfArr);

    int sizeOfFArray();
}
