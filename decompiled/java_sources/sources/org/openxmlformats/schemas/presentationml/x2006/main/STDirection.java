package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STDirection extends XmlToken {
    public static final SimpleTypeFactory<STDirection> Factory;
    public static final Enum HORZ;
    public static final int INT_HORZ = 1;
    public static final int INT_VERT = 2;
    public static final Enum VERT;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_HORZ = 1;
        static final int INT_VERT = 2;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("horz", 1), new Enum("vert", 2)});

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
        SimpleTypeFactory<STDirection> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stdirection2ec0type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        HORZ = Enum.forString("horz");
        VERT = Enum.forString("vert");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
