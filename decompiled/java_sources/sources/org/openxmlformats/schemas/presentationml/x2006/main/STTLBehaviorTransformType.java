package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.poi.util.ExtUnits;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STTLBehaviorTransformType extends XmlToken {
    public static final SimpleTypeFactory<STTLBehaviorTransformType> Factory;
    public static final Enum IMG;
    public static final int INT_IMG = 2;
    public static final int INT_PT = 1;

    /* renamed from: PT */
    public static final Enum f115776PT;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_IMG = 2;
        static final int INT_PT = 1;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum(ExtUnits.UNIT_PT, 1), new Enum("img", 2)});

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
        SimpleTypeFactory<STTLBehaviorTransformType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "sttlbehaviortransformtype3b43type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        f115776PT = Enum.forString(ExtUnits.UNIT_PT);
        IMG = Enum.forString("img");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
