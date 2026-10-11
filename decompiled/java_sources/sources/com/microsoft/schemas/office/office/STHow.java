package com.microsoft.schemas.office.office;

import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriverConstants;
import com.sunia.HTREnginev2.gon;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes7.dex */
public interface STHow extends XmlString {
    public static final Enum BOTTOM;
    public static final Enum CENTER;
    public static final SimpleTypeFactory<STHow> Factory;
    public static final int INT_BOTTOM = 3;
    public static final int INT_CENTER = 5;
    public static final int INT_LEFT = 4;
    public static final int INT_MIDDLE = 2;
    public static final int INT_RIGHT = 6;
    public static final int INT_TOP = 1;
    public static final Enum LEFT;
    public static final Enum MIDDLE;
    public static final Enum RIGHT;
    public static final Enum TOP;
    public static final SchemaType type;

    /* loaded from: classes7.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_BOTTOM = 3;
        static final int INT_CENTER = 5;
        static final int INT_LEFT = 4;
        static final int INT_MIDDLE = 2;
        static final int INT_RIGHT = 6;
        static final int INT_TOP = 1;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum(OneDriverConstants.TOP, 1), new Enum("middle", 2), new Enum("bottom", 3), new Enum("left", 4), new Enum("center", 5), new Enum(gon.f71288n0, 6)});

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
        SimpleTypeFactory<STHow> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "sthow13b9type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        TOP = Enum.forString(OneDriverConstants.TOP);
        MIDDLE = Enum.forString("middle");
        BOTTOM = Enum.forString("bottom");
        LEFT = Enum.forString("left");
        CENTER = Enum.forString("center");
        RIGHT = Enum.forString(gon.f71288n0);
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
