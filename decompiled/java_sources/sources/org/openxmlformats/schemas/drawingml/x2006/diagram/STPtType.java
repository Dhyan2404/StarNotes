package org.openxmlformats.schemas.drawingml.x2006.diagram;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STPtType extends XmlToken {
    public static final Enum ASST;
    public static final Enum DOC;
    public static final SimpleTypeFactory<STPtType> Factory;
    public static final int INT_ASST = 2;
    public static final int INT_DOC = 3;
    public static final int INT_NODE = 1;
    public static final int INT_PAR_TRANS = 5;
    public static final int INT_PRES = 4;
    public static final int INT_SIB_TRANS = 6;
    public static final Enum NODE;
    public static final Enum PAR_TRANS;
    public static final Enum PRES;
    public static final Enum SIB_TRANS;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_ASST = 2;
        static final int INT_DOC = 3;
        static final int INT_NODE = 1;
        static final int INT_PAR_TRANS = 5;
        static final int INT_PRES = 4;
        static final int INT_SIB_TRANS = 6;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("node", 1), new Enum("asst", 2), new Enum("doc", 3), new Enum("pres", 4), new Enum("parTrans", 5), new Enum("sibTrans", 6)});

        private Enum(String str, int i) {
            super(str, i);
        }

        public static Enum forInt(int i) {
            return (Enum) table.forInt(i);
        }

        public static Enum forString(String str) {
            return (Enum) table.forString(str);
        }

        private Object readResolve() {
            return forInt(intValue());
        }
    }

    static {
        SimpleTypeFactory<STPtType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stpttype6dc3type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        NODE = Enum.forString("node");
        ASST = Enum.forString("asst");
        DOC = Enum.forString("doc");
        PRES = Enum.forString("pres");
        PAR_TRANS = Enum.forString("parTrans");
        SIB_TRANS = Enum.forString("sibTrans");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
