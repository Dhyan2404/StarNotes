package com.microsoft.schemas.vml;

import com.sun.org.apache.xalan.internal.templates.Constants;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes7.dex */
public interface STStrokeLineStyle extends XmlString {
    public static final SimpleTypeFactory<STStrokeLineStyle> Factory;
    public static final int INT_SINGLE = 1;
    public static final int INT_THICK_BETWEEN_THIN = 5;
    public static final int INT_THICK_THIN = 4;
    public static final int INT_THIN_THICK = 3;
    public static final int INT_THIN_THIN = 2;
    public static final Enum SINGLE;
    public static final Enum THICK_BETWEEN_THIN;
    public static final Enum THICK_THIN;
    public static final Enum THIN_THICK;
    public static final Enum THIN_THIN;
    public static final SchemaType type;

    /* loaded from: classes7.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_SINGLE = 1;
        static final int INT_THICK_BETWEEN_THIN = 5;
        static final int INT_THICK_THIN = 4;
        static final int INT_THIN_THICK = 3;
        static final int INT_THIN_THIN = 2;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum(Constants.ATTRVAL_SINGLE, 1), new Enum("thinThin", 2), new Enum("thinThick", 3), new Enum("thickThin", 4), new Enum("thickBetweenThin", 5)});

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
        SimpleTypeFactory<STStrokeLineStyle> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "ststrokelinestylea509type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        SINGLE = Enum.forString(Constants.ATTRVAL_SINGLE);
        THIN_THIN = Enum.forString("thinThin");
        THIN_THICK = Enum.forString("thinThick");
        THICK_THIN = Enum.forString("thickThin");
        THICK_BETWEEN_THIN = Enum.forString("thickBetweenThin");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
