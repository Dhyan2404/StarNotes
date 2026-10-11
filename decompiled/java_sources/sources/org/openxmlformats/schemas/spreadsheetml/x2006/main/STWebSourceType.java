package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import androidx.core.app.C0619b;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.google.android.gms.actions.SearchIntents;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes15.dex */
public interface STWebSourceType extends XmlString {
    public static final Enum AUTO_FILTER;
    public static final Enum CHART;
    public static final SimpleTypeFactory<STWebSourceType> Factory;
    public static final int INT_AUTO_FILTER = 3;
    public static final int INT_CHART = 5;
    public static final int INT_LABEL = 8;
    public static final int INT_PIVOT_TABLE = 6;
    public static final int INT_PRINT_AREA = 2;
    public static final int INT_QUERY = 7;
    public static final int INT_RANGE = 4;
    public static final int INT_SHEET = 1;
    public static final Enum LABEL;
    public static final Enum PIVOT_TABLE;
    public static final Enum PRINT_AREA;
    public static final Enum QUERY;
    public static final Enum RANGE;
    public static final Enum SHEET;
    public static final SchemaType type;

    /* loaded from: classes15.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_AUTO_FILTER = 3;
        static final int INT_CHART = 5;
        static final int INT_LABEL = 8;
        static final int INT_PIVOT_TABLE = 6;
        static final int INT_PRINT_AREA = 2;
        static final int INT_QUERY = 7;
        static final int INT_RANGE = 4;
        static final int INT_SHEET = 1;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("sheet", 1), new Enum("printArea", 2), new Enum("autoFilter", 3), new Enum(SessionDescription.f26441q, 4), new Enum("chart", 5), new Enum("pivotTable", 6), new Enum(SearchIntents.EXTRA_QUERY, 7), new Enum(C0619b.f5199k, 8)});

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
        SimpleTypeFactory<STWebSourceType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stwebsourcetypecb38type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        SHEET = Enum.forString("sheet");
        PRINT_AREA = Enum.forString("printArea");
        AUTO_FILTER = Enum.forString("autoFilter");
        RANGE = Enum.forString(SessionDescription.f26441q);
        CHART = Enum.forString("chart");
        PIVOT_TABLE = Enum.forString("pivotTable");
        QUERY = Enum.forString(SearchIntents.EXTRA_QUERY);
        LABEL = Enum.forString(C0619b.f5199k);
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
