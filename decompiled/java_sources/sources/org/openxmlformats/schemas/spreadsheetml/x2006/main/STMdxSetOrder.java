package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes15.dex */
public interface STMdxSetOrder extends XmlString {

    /* renamed from: A */
    public static final Enum f115810A;

    /* renamed from: AA */
    public static final Enum f115811AA;

    /* renamed from: AD */
    public static final Enum f115812AD;

    /* renamed from: D */
    public static final Enum f115813D;
    public static final SimpleTypeFactory<STMdxSetOrder> Factory;
    public static final int INT_A = 2;
    public static final int INT_AA = 4;
    public static final int INT_AD = 5;
    public static final int INT_D = 3;
    public static final int INT_NA = 6;
    public static final int INT_ND = 7;
    public static final int INT_U = 1;

    /* renamed from: NA */
    public static final Enum f115814NA;

    /* renamed from: ND */
    public static final Enum f115815ND;

    /* renamed from: U */
    public static final Enum f115816U;
    public static final SchemaType type;

    /* loaded from: classes15.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_A = 2;
        static final int INT_AA = 4;
        static final int INT_AD = 5;
        static final int INT_D = 3;
        static final int INT_NA = 6;
        static final int INT_ND = 7;
        static final int INT_U = 1;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("u", 1), new Enum("a", 2), new Enum("d", 3), new Enum("aa", 4), new Enum("ad", 5), new Enum("na", 6), new Enum("nd", 7)});

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
        SimpleTypeFactory<STMdxSetOrder> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stmdxsetorderb97ctype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        f115816U = Enum.forString("u");
        f115810A = Enum.forString("a");
        f115813D = Enum.forString("d");
        f115811AA = Enum.forString("aa");
        f115812AD = Enum.forString("ad");
        f115814NA = Enum.forString("na");
        f115815ND = Enum.forString("nd");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
