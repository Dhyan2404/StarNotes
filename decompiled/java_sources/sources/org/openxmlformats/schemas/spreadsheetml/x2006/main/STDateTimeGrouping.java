package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import com.google.gson.internal.bind.TypeAdapters;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes15.dex */
public interface STDateTimeGrouping extends XmlString {
    public static final Enum DAY;
    public static final SimpleTypeFactory<STDateTimeGrouping> Factory;
    public static final Enum HOUR;
    public static final int INT_DAY = 3;
    public static final int INT_HOUR = 4;
    public static final int INT_MINUTE = 5;
    public static final int INT_MONTH = 2;
    public static final int INT_SECOND = 6;
    public static final int INT_YEAR = 1;
    public static final Enum MINUTE;
    public static final Enum MONTH;
    public static final Enum SECOND;
    public static final Enum YEAR;
    public static final SchemaType type;

    /* loaded from: classes15.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_DAY = 3;
        static final int INT_HOUR = 4;
        static final int INT_MINUTE = 5;
        static final int INT_MONTH = 2;
        static final int INT_SECOND = 6;
        static final int INT_YEAR = 1;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum(TypeAdapters.C6590r.f36273a, 1), new Enum(TypeAdapters.C6590r.f36274b, 2), new Enum("day", 3), new Enum("hour", 4), new Enum(TypeAdapters.C6590r.f36277e, 5), new Enum(TypeAdapters.C6590r.f36278f, 6)});

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
        SimpleTypeFactory<STDateTimeGrouping> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stdatetimegrouping6e17type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        YEAR = Enum.forString(TypeAdapters.C6590r.f36273a);
        MONTH = Enum.forString(TypeAdapters.C6590r.f36274b);
        DAY = Enum.forString("day");
        HOUR = Enum.forString("hour");
        MINUTE = Enum.forString(TypeAdapters.C6590r.f36277e);
        SECOND = Enum.forString(TypeAdapters.C6590r.f36278f);
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
