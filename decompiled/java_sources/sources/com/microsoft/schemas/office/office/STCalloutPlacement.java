package com.microsoft.schemas.office.office;

import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriverConstants;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes7.dex */
public interface STCalloutPlacement extends XmlString {
    public static final Enum BOTTOM;
    public static final Enum CENTER;
    public static final SimpleTypeFactory<STCalloutPlacement> Factory;
    public static final int INT_BOTTOM = 3;
    public static final int INT_CENTER = 2;
    public static final int INT_TOP = 1;
    public static final int INT_USER = 4;
    public static final Enum TOP;
    public static final Enum USER;
    public static final SchemaType type;

    /* loaded from: classes7.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_BOTTOM = 3;
        static final int INT_CENTER = 2;
        static final int INT_TOP = 1;
        static final int INT_USER = 4;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum(OneDriverConstants.TOP, 1), new Enum("center", 2), new Enum("bottom", 3), new Enum("user", 4)});

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
        SimpleTypeFactory<STCalloutPlacement> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stcalloutplacementa988type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        TOP = Enum.forString(OneDriverConstants.TOP);
        CENTER = Enum.forString("center");
        BOTTOM = Enum.forString("bottom");
        USER = Enum.forString("user");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
