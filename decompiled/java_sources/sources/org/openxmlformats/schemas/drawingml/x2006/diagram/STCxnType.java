package org.openxmlformats.schemas.drawingml.x2006.diagram;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STCxnType extends XmlToken {
    public static final SimpleTypeFactory<STCxnType> Factory;
    public static final int INT_PAR_OF = 1;
    public static final int INT_PRES_OF = 2;
    public static final int INT_PRES_PAR_OF = 3;
    public static final int INT_UNKNOWN_RELATIONSHIP = 4;
    public static final Enum PAR_OF;
    public static final Enum PRES_OF;
    public static final Enum PRES_PAR_OF;
    public static final Enum UNKNOWN_RELATIONSHIP;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_PAR_OF = 1;
        static final int INT_PRES_OF = 2;
        static final int INT_PRES_PAR_OF = 3;
        static final int INT_UNKNOWN_RELATIONSHIP = 4;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("parOf", 1), new Enum("presOf", 2), new Enum("presParOf", 3), new Enum("unknownRelationship", 4)});

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
        SimpleTypeFactory<STCxnType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stcxntypeca58type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        PAR_OF = Enum.forString("parOf");
        PRES_OF = Enum.forString("presOf");
        PRES_PAR_OF = Enum.forString("presParOf");
        UNKNOWN_RELATIONSHIP = Enum.forString("unknownRelationship");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
