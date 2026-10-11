package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriverConstants;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes16.dex */
public interface STVerticalJc extends XmlString {
    public static final Enum BOTH;
    public static final Enum BOTTOM;
    public static final Enum CENTER;
    public static final SimpleTypeFactory<STVerticalJc> Factory;
    public static final int INT_BOTH = 3;
    public static final int INT_BOTTOM = 4;
    public static final int INT_CENTER = 2;
    public static final int INT_TOP = 1;
    public static final Enum TOP;
    public static final SchemaType type;

    /* loaded from: classes16.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_BOTH = 3;
        static final int INT_BOTTOM = 4;
        static final int INT_CENTER = 2;
        static final int INT_TOP = 1;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum(OneDriverConstants.TOP, 1), new Enum("center", 2), new Enum("both", 3), new Enum("bottom", 4)});

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
        SimpleTypeFactory<STVerticalJc> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stverticaljc3629type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        TOP = Enum.forString(OneDriverConstants.TOP);
        CENTER = Enum.forString("center");
        BOTH = Enum.forString("both");
        BOTTOM = Enum.forString("bottom");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
