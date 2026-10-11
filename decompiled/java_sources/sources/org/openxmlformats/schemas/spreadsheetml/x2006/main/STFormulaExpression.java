package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes15.dex */
public interface STFormulaExpression extends XmlString {
    public static final Enum AREA;
    public static final Enum AREA_ERROR;
    public static final Enum COMPUTED_AREA;
    public static final SimpleTypeFactory<STFormulaExpression> Factory;
    public static final int INT_AREA = 3;
    public static final int INT_AREA_ERROR = 4;
    public static final int INT_COMPUTED_AREA = 5;
    public static final int INT_REF = 1;
    public static final int INT_REF_ERROR = 2;
    public static final Enum REF;
    public static final Enum REF_ERROR;
    public static final SchemaType type;

    /* loaded from: classes15.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_AREA = 3;
        static final int INT_AREA_ERROR = 4;
        static final int INT_COMPUTED_AREA = 5;
        static final int INT_REF = 1;
        static final int INT_REF_ERROR = 2;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("ref", 1), new Enum("refError", 2), new Enum("area", 3), new Enum("areaError", 4), new Enum("computedArea", 5)});

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
        SimpleTypeFactory<STFormulaExpression> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stformulaexpressione5adtype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        REF = Enum.forString("ref");
        REF_ERROR = Enum.forString("refError");
        AREA = Enum.forString("area");
        AREA_ERROR = Enum.forString("areaError");
        COMPUTED_AREA = Enum.forString("computedArea");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
