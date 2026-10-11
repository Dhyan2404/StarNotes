package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STTextAnchoringType extends XmlToken {

    /* renamed from: B */
    public static final Enum f115741B;
    public static final Enum CTR;
    public static final Enum DIST;
    public static final SimpleTypeFactory<STTextAnchoringType> Factory;
    public static final int INT_B = 3;
    public static final int INT_CTR = 2;
    public static final int INT_DIST = 5;
    public static final int INT_JUST = 4;
    public static final int INT_T = 1;
    public static final Enum JUST;

    /* renamed from: T */
    public static final Enum f115742T;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_B = 3;
        static final int INT_CTR = 2;
        static final int INT_DIST = 5;
        static final int INT_JUST = 4;
        static final int INT_T = 1;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("t", 1), new Enum("ctr", 2), new Enum("b", 3), new Enum("just", 4), new Enum("dist", 5)});

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
        SimpleTypeFactory<STTextAnchoringType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "sttextanchoringtyped99btype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        f115742T = Enum.forString("t");
        CTR = Enum.forString("ctr");
        f115741B = Enum.forString("b");
        JUST = Enum.forString("just");
        DIST = Enum.forString("dist");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
