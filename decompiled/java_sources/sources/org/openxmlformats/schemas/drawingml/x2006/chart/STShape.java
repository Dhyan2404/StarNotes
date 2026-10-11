package org.openxmlformats.schemas.drawingml.x2006.chart;

import com.onyx.android.sdk.note.common.data.shape.UniversalShapeTypeConst;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STShape extends XmlString {
    public static final Enum BOX;
    public static final Enum CONE;
    public static final Enum CONE_TO_MAX;
    public static final Enum CYLINDER;
    public static final SimpleTypeFactory<STShape> Factory;
    public static final int INT_BOX = 3;
    public static final int INT_CONE = 1;
    public static final int INT_CONE_TO_MAX = 2;
    public static final int INT_CYLINDER = 4;
    public static final int INT_PYRAMID = 5;
    public static final int INT_PYRAMID_TO_MAX = 6;
    public static final Enum PYRAMID;
    public static final Enum PYRAMID_TO_MAX;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_BOX = 3;
        static final int INT_CONE = 1;
        static final int INT_CONE_TO_MAX = 2;
        static final int INT_CYLINDER = 4;
        static final int INT_PYRAMID = 5;
        static final int INT_PYRAMID_TO_MAX = 6;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum(UniversalShapeTypeConst.CONE, 1), new Enum("coneToMax", 2), new Enum("box", 3), new Enum(UniversalShapeTypeConst.CYLINDER, 4), new Enum("pyramid", 5), new Enum("pyramidToMax", 6)});

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
        SimpleTypeFactory<STShape> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stshapecdf5type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        CONE = Enum.forString(UniversalShapeTypeConst.CONE);
        CONE_TO_MAX = Enum.forString("coneToMax");
        BOX = Enum.forString("box");
        CYLINDER = Enum.forString(UniversalShapeTypeConst.CYLINDER);
        PYRAMID = Enum.forString("pyramid");
        PYRAMID_TO_MAX = Enum.forString("pyramidToMax");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
