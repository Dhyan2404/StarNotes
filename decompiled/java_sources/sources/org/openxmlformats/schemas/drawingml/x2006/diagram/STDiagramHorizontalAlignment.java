package org.openxmlformats.schemas.drawingml.x2006.diagram;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STDiagramHorizontalAlignment extends XmlToken {
    public static final Enum CTR;
    public static final SimpleTypeFactory<STDiagramHorizontalAlignment> Factory;
    public static final int INT_CTR = 2;
    public static final int INT_L = 1;
    public static final int INT_NONE = 4;
    public static final int INT_R = 3;

    /* renamed from: L */
    public static final Enum f115692L;
    public static final Enum NONE;

    /* renamed from: R */
    public static final Enum f115693R;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_CTR = 2;
        static final int INT_L = 1;
        static final int INT_NONE = 4;
        static final int INT_R = 3;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("l", 1), new Enum("ctr", 2), new Enum("r", 3), new Enum("none", 4)});

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
        SimpleTypeFactory<STDiagramHorizontalAlignment> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stdiagramhorizontalalignmentb315type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        f115692L = Enum.forString("l");
        CTR = Enum.forString("ctr");
        f115693R = Enum.forString("r");
        NONE = Enum.forString("none");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
