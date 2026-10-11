package com.microsoft.schemas.vml;

import com.google.firebase.analytics.FirebaseAnalytics;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes7.dex */
public interface STStrokeArrowWidth extends XmlString {
    public static final SimpleTypeFactory<STStrokeArrowWidth> Factory;
    public static final int INT_MEDIUM = 2;
    public static final int INT_NARROW = 1;
    public static final int INT_WIDE = 3;
    public static final Enum MEDIUM;
    public static final Enum NARROW;
    public static final Enum WIDE;
    public static final SchemaType type;

    /* loaded from: classes7.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_MEDIUM = 2;
        static final int INT_NARROW = 1;
        static final int INT_WIDE = 3;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("narrow", 1), new Enum(FirebaseAnalytics.Param.MEDIUM, 2), new Enum("wide", 3)});

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
        SimpleTypeFactory<STStrokeArrowWidth> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "ststrokearrowwidth1563type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        NARROW = Enum.forString("narrow");
        MEDIUM = Enum.forString(FirebaseAnalytics.Param.MEDIUM);
        WIDE = Enum.forString("wide");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
