package org.openxmlformats.schemas.drawingml.x2006.diagram;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STHierBranchStyle extends XmlToken {
    public static final SimpleTypeFactory<STHierBranchStyle> Factory;
    public static final Enum HANG;
    public static final Enum INIT;
    public static final int INT_HANG = 3;
    public static final int INT_INIT = 5;
    public static final int INT_L = 1;
    public static final int INT_R = 2;
    public static final int INT_STD = 4;

    /* renamed from: L */
    public static final Enum f115698L;

    /* renamed from: R */
    public static final Enum f115699R;
    public static final Enum STD;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_HANG = 3;
        static final int INT_INIT = 5;
        static final int INT_L = 1;
        static final int INT_R = 2;
        static final int INT_STD = 4;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("l", 1), new Enum("r", 2), new Enum("hang", 3), new Enum("std", 4), new Enum("init", 5)});

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
        SimpleTypeFactory<STHierBranchStyle> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "sthierbranchstyleefaatype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        f115698L = Enum.forString("l");
        f115699R = Enum.forString("r");
        HANG = Enum.forString("hang");
        STD = Enum.forString("std");
        INIT = Enum.forString("init");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
