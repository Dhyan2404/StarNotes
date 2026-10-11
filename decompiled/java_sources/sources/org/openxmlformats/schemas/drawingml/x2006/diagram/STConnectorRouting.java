package org.openxmlformats.schemas.drawingml.x2006.diagram;

import com.onyx.android.sdk.note.common.data.shape.UniversalShapeTypeConst;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STConnectorRouting extends XmlToken {
    public static final Enum BEND;
    public static final Enum CURVE;
    public static final SimpleTypeFactory<STConnectorRouting> Factory;
    public static final int INT_BEND = 2;
    public static final int INT_CURVE = 3;
    public static final int INT_LONG_CURVE = 4;
    public static final int INT_STRA = 1;
    public static final Enum LONG_CURVE;
    public static final Enum STRA;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_BEND = 2;
        static final int INT_CURVE = 3;
        static final int INT_LONG_CURVE = 4;
        static final int INT_STRA = 1;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("stra", 1), new Enum("bend", 2), new Enum(UniversalShapeTypeConst.CURVE, 3), new Enum("longCurve", 4)});

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
        SimpleTypeFactory<STConnectorRouting> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stconnectorrouting1808type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        STRA = Enum.forString("stra");
        BEND = Enum.forString("bend");
        CURVE = Enum.forString(UniversalShapeTypeConst.CURVE);
        LONG_CURVE = Enum.forString("longCurve");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
