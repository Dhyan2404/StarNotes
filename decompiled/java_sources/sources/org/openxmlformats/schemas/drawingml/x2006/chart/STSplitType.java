package org.openxmlformats.schemas.drawingml.x2006.chart;

import com.sun.org.apache.xalan.internal.templates.Constants;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STSplitType extends XmlString {
    public static final Enum AUTO;
    public static final Enum CUST;
    public static final SimpleTypeFactory<STSplitType> Factory;
    public static final int INT_AUTO = 1;
    public static final int INT_CUST = 2;
    public static final int INT_PERCENT = 3;
    public static final int INT_POS = 4;
    public static final int INT_VAL = 5;
    public static final Enum PERCENT;
    public static final Enum POS;
    public static final Enum VAL;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_AUTO = 1;
        static final int INT_CUST = 2;
        static final int INT_PERCENT = 3;
        static final int INT_POS = 4;
        static final int INT_VAL = 5;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("auto", 1), new Enum("cust", 2), new Enum(Constants.ATTRNAME_PERCENT, 3), new Enum("pos", 4), new Enum("val", 5)});

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
        SimpleTypeFactory<STSplitType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stsplittype6842type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        AUTO = Enum.forString("auto");
        CUST = Enum.forString("cust");
        PERCENT = Enum.forString(Constants.ATTRNAME_PERCENT);
        POS = Enum.forString("pos");
        VAL = Enum.forString("val");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
