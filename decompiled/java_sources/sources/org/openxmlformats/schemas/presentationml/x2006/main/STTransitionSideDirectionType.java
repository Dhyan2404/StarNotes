package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STTransitionSideDirectionType extends XmlToken {

    /* renamed from: D */
    public static final Enum f115785D;
    public static final SimpleTypeFactory<STTransitionSideDirectionType> Factory;
    public static final int INT_D = 4;
    public static final int INT_L = 1;
    public static final int INT_R = 3;
    public static final int INT_U = 2;

    /* renamed from: L */
    public static final Enum f115786L;

    /* renamed from: R */
    public static final Enum f115787R;

    /* renamed from: U */
    public static final Enum f115788U;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_D = 4;
        static final int INT_L = 1;
        static final int INT_R = 3;
        static final int INT_U = 2;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("l", 1), new Enum("u", 2), new Enum("r", 3), new Enum("d", 4)});

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
        SimpleTypeFactory<STTransitionSideDirectionType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "sttransitionsidedirectiontype73d2type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        f115786L = Enum.forString("l");
        f115788U = Enum.forString("u");
        f115787R = Enum.forString("r");
        f115785D = Enum.forString("d");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
