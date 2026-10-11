package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STAnimationChartOnlyBuildType extends XmlToken {
    public static final Enum CATEGORY;
    public static final Enum CATEGORY_EL;
    public static final SimpleTypeFactory<STAnimationChartOnlyBuildType> Factory;
    public static final int INT_CATEGORY = 2;
    public static final int INT_CATEGORY_EL = 4;
    public static final int INT_SERIES = 1;
    public static final int INT_SERIES_EL = 3;
    public static final Enum SERIES;
    public static final Enum SERIES_EL;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_CATEGORY = 2;
        static final int INT_CATEGORY_EL = 4;
        static final int INT_SERIES = 1;
        static final int INT_SERIES_EL = 3;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("series", 1), new Enum("category", 2), new Enum("seriesEl", 3), new Enum("categoryEl", 4)});

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
        SimpleTypeFactory<STAnimationChartOnlyBuildType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stanimationchartonlybuildtypeb803type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        SERIES = Enum.forString("series");
        CATEGORY = Enum.forString("category");
        SERIES_EL = Enum.forString("seriesEl");
        CATEGORY_EL = Enum.forString("categoryEl");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
