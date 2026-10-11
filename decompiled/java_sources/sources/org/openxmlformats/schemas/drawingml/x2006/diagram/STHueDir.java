package org.openxmlformats.schemas.drawingml.x2006.diagram;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STHueDir extends XmlToken {
    public static final Enum CCW;

    /* renamed from: CW */
    public static final Enum f115700CW;
    public static final SimpleTypeFactory<STHueDir> Factory;
    public static final int INT_CCW = 2;
    public static final int INT_CW = 1;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_CCW = 2;
        static final int INT_CW = 1;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("cw", 1), new Enum("ccw", 2)});

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
        SimpleTypeFactory<STHueDir> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "sthuedirdc8ctype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        f115700CW = Enum.forString("cw");
        CCW = Enum.forString("ccw");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
