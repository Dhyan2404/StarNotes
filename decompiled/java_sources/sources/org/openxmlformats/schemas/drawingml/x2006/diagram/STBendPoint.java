package org.openxmlformats.schemas.drawingml.x2006.diagram;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STBendPoint extends XmlToken {
    public static final Enum BEG;
    public static final Enum DEF;
    public static final Enum END;
    public static final SimpleTypeFactory<STBendPoint> Factory;
    public static final int INT_BEG = 1;
    public static final int INT_DEF = 2;
    public static final int INT_END = 3;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_BEG = 1;
        static final int INT_DEF = 2;
        static final int INT_END = 3;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("beg", 1), new Enum("def", 2), new Enum("end", 3)});

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
        SimpleTypeFactory<STBendPoint> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stbendpointff34type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        BEG = Enum.forString("beg");
        DEF = Enum.forString("def");
        END = Enum.forString("end");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
