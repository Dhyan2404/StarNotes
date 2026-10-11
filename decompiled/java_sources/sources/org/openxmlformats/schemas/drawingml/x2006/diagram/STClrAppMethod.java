package org.openxmlformats.schemas.drawingml.x2006.diagram;

import com.sunia.HTREnginev2.gon;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STClrAppMethod extends XmlToken {
    public static final Enum CYCLE;
    public static final SimpleTypeFactory<STClrAppMethod> Factory;
    public static final int INT_CYCLE = 2;
    public static final int INT_REPEAT = 3;
    public static final int INT_SPAN = 1;
    public static final Enum REPEAT;
    public static final Enum SPAN;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_CYCLE = 2;
        static final int INT_REPEAT = 3;
        static final int INT_SPAN = 1;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum(gon.f71297s, 1), new Enum("cycle", 2), new Enum("repeat", 3)});

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
        SimpleTypeFactory<STClrAppMethod> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stclrappmethodc208type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        SPAN = Enum.forString(gon.f71297s);
        CYCLE = Enum.forString("cycle");
        REPEAT = Enum.forString("repeat");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
