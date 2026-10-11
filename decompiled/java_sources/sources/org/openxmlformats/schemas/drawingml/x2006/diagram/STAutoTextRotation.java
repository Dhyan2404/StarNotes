package org.openxmlformats.schemas.drawingml.x2006.diagram;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STAutoTextRotation extends XmlToken {
    public static final SimpleTypeFactory<STAutoTextRotation> Factory;
    public static final Enum GRAV;
    public static final int INT_GRAV = 3;
    public static final int INT_NONE = 1;
    public static final int INT_UPR = 2;
    public static final Enum NONE;
    public static final Enum UPR;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_GRAV = 3;
        static final int INT_NONE = 1;
        static final int INT_UPR = 2;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("none", 1), new Enum("upr", 2), new Enum("grav", 3)});

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
        SimpleTypeFactory<STAutoTextRotation> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stautotextrotationdfc7type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        NONE = Enum.forString("none");
        UPR = Enum.forString("upr");
        GRAV = Enum.forString("grav");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
