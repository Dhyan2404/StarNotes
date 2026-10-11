package com.microsoft.schemas.vml;

import com.google.firebase.analytics.FirebaseAnalytics;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes7.dex */
public interface STStrokeArrowLength extends XmlString {
    public static final SimpleTypeFactory<STStrokeArrowLength> Factory;
    public static final int INT_LONG = 3;
    public static final int INT_MEDIUM = 2;
    public static final int INT_SHORT = 1;
    public static final Enum LONG;
    public static final Enum MEDIUM;
    public static final Enum SHORT;
    public static final SchemaType type;

    /* loaded from: classes7.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_LONG = 3;
        static final int INT_MEDIUM = 2;
        static final int INT_SHORT = 1;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("short", 1), new Enum(FirebaseAnalytics.Param.MEDIUM, 2), new Enum("long", 3)});

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
        SimpleTypeFactory<STStrokeArrowLength> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "ststrokearrowlength82fbtype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        SHORT = Enum.forString("short");
        MEDIUM = Enum.forString(FirebaseAnalytics.Param.MEDIUM);
        LONG = Enum.forString("long");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
