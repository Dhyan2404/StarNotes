package org.apache.xmlbeans.impl.p119xb.xmlconfig;

import java.util.List;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.apache.xmlbeans.impl.schema.ElementFactory;
import org.apache.xmlbeans.metadata.system.sXMLCONFIG.TypeSystemHolder;

/* loaded from: classes13.dex */
public interface Extensionconfig extends XmlObject {
    public static final DocumentFactory<Extensionconfig> Factory;
    public static final SchemaType type;

    /* loaded from: classes13.dex */
    public interface Interface extends XmlObject {
        public static final ElementFactory<Interface> Factory;
        public static final SchemaType type;

        static {
            ElementFactory<Interface> elementFactory = new ElementFactory<>(TypeSystemHolder.typeSystem, "interface02a7elemtype");
            Factory = elementFactory;
            type = elementFactory.getType();
        }

        String getName();

        String getStaticHandler();

        boolean isSetName();

        void setName(String str);

        void setStaticHandler(String str);

        void unsetName();

        XmlString xgetName();

        XmlString xgetStaticHandler();

        void xsetName(XmlString xmlString);

        void xsetStaticHandler(XmlString xmlString);
    }

    /* loaded from: classes13.dex */
    public interface PrePostSet extends XmlObject {
        public static final ElementFactory<PrePostSet> Factory;
        public static final SchemaType type;

        static {
            ElementFactory<PrePostSet> elementFactory = new ElementFactory<>(TypeSystemHolder.typeSystem, "prepostset5c9delemtype");
            Factory = elementFactory;
            type = elementFactory.getType();
        }

        String getStaticHandler();

        void setStaticHandler(String str);

        XmlString xgetStaticHandler();

        void xsetStaticHandler(XmlString xmlString);
    }

    static {
        DocumentFactory<Extensionconfig> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "extensionconfig2ac2type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    Interface addNewInterface();

    PrePostSet addNewPrePostSet();

    Object getFor();

    Interface getInterfaceArray(int i);

    Interface[] getInterfaceArray();

    List<Interface> getInterfaceList();

    PrePostSet getPrePostSet();

    Interface insertNewInterface(int i);

    boolean isSetFor();

    boolean isSetPrePostSet();

    void removeInterface(int i);

    void setFor(Object obj);

    void setInterfaceArray(int i, Interface r2);

    void setInterfaceArray(Interface[] interfaceArr);

    void setPrePostSet(PrePostSet prePostSet);

    int sizeOfInterfaceArray();

    void unsetFor();

    void unsetPrePostSet();

    JavaNameList xgetFor();

    void xsetFor(JavaNameList javaNameList);
}
