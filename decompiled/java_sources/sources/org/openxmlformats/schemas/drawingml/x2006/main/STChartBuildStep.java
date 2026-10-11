package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STChartBuildStep extends XmlToken {
    public static final Enum ALL_PTS;
    public static final Enum CATEGORY;
    public static final SimpleTypeFactory<STChartBuildStep> Factory;
    public static final Enum GRID_LEGEND;
    public static final int INT_ALL_PTS = 5;
    public static final int INT_CATEGORY = 1;
    public static final int INT_GRID_LEGEND = 6;
    public static final int INT_PT_IN_CATEGORY = 2;
    public static final int INT_PT_IN_SERIES = 4;
    public static final int INT_SERIES = 3;
    public static final Enum PT_IN_CATEGORY;
    public static final Enum PT_IN_SERIES;
    public static final Enum SERIES;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_ALL_PTS = 5;
        static final int INT_CATEGORY = 1;
        static final int INT_GRID_LEGEND = 6;
        static final int INT_PT_IN_CATEGORY = 2;
        static final int INT_PT_IN_SERIES = 4;
        static final int INT_SERIES = 3;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("category", 1), new Enum("ptInCategory", 2), new Enum("series", 3), new Enum("ptInSeries", 4), new Enum("allPts", 5), new Enum("gridLegend", 6)});

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
        SimpleTypeFactory<STChartBuildStep> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stchartbuildstep9c07type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        CATEGORY = Enum.forString("category");
        PT_IN_CATEGORY = Enum.forString("ptInCategory");
        SERIES = Enum.forString("series");
        PT_IN_SERIES = Enum.forString("ptInSeries");
        ALL_PTS = Enum.forString("allPts");
        GRID_LEGEND = Enum.forString("gridLegend");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
