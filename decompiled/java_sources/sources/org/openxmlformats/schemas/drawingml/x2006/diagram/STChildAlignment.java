package org.openxmlformats.schemas.drawingml.x2006.diagram;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STChildAlignment extends XmlToken {

    /* renamed from: B */
    public static final Enum f115678B;
    public static final SimpleTypeFactory<STChildAlignment> Factory;
    public static final int INT_B = 2;
    public static final int INT_L = 3;
    public static final int INT_R = 4;
    public static final int INT_T = 1;

    /* renamed from: L */
    public static final Enum f115679L;

    /* renamed from: R */
    public static final Enum f115680R;

    /* renamed from: T */
    public static final Enum f115681T;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_B = 2;
        static final int INT_L = 3;
        static final int INT_R = 4;
        static final int INT_T = 1;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("t", 1), new Enum("b", 2), new Enum("l", 3), new Enum("r", 4)});

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
        SimpleTypeFactory<STChildAlignment> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stchildalignment5e1atype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        f115681T = Enum.forString("t");
        f115678B = Enum.forString("b");
        f115679L = Enum.forString("l");
        f115680R = Enum.forString("r");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
