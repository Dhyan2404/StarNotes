package org.openxmlformats.schemas.drawingml.x2006.diagram;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STElementType extends XmlToken {
    public static final Enum ALL;
    public static final Enum ASST;
    public static final Enum DOC;
    public static final SimpleTypeFactory<STElementType> Factory;
    public static final int INT_ALL = 1;
    public static final int INT_ASST = 6;
    public static final int INT_DOC = 2;
    public static final int INT_NODE = 3;
    public static final int INT_NON_ASST = 7;
    public static final int INT_NON_NORM = 5;
    public static final int INT_NORM = 4;
    public static final int INT_PAR_TRANS = 8;
    public static final int INT_PRES = 9;
    public static final int INT_SIB_TRANS = 10;
    public static final Enum NODE;
    public static final Enum NON_ASST;
    public static final Enum NON_NORM;
    public static final Enum NORM;
    public static final Enum PAR_TRANS;
    public static final Enum PRES;
    public static final Enum SIB_TRANS;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_ALL = 1;
        static final int INT_ASST = 6;
        static final int INT_DOC = 2;
        static final int INT_NODE = 3;
        static final int INT_NON_ASST = 7;
        static final int INT_NON_NORM = 5;
        static final int INT_NORM = 4;
        static final int INT_PAR_TRANS = 8;
        static final int INT_PRES = 9;
        static final int INT_SIB_TRANS = 10;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("all", 1), new Enum("doc", 2), new Enum("node", 3), new Enum("norm", 4), new Enum("nonNorm", 5), new Enum("asst", 6), new Enum("nonAsst", 7), new Enum("parTrans", 8), new Enum("pres", 9), new Enum("sibTrans", 10)});

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
        SimpleTypeFactory<STElementType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stelementtype3655type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        ALL = Enum.forString("all");
        DOC = Enum.forString("doc");
        NODE = Enum.forString("node");
        NORM = Enum.forString("norm");
        NON_NORM = Enum.forString("nonNorm");
        ASST = Enum.forString("asst");
        NON_ASST = Enum.forString("nonAsst");
        PAR_TRANS = Enum.forString("parTrans");
        PRES = Enum.forString("pres");
        SIB_TRANS = Enum.forString("sibTrans");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
