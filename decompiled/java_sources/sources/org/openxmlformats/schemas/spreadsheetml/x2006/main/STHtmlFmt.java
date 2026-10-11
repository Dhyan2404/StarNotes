package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import com.onyx.android.sdk.data.common.data.FileTypeConstant;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes15.dex */
public interface STHtmlFmt extends XmlString {
    public static final Enum ALL;
    public static final SimpleTypeFactory<STHtmlFmt> Factory;
    public static final int INT_ALL = 3;
    public static final int INT_NONE = 1;
    public static final int INT_RTF = 2;
    public static final Enum NONE;
    public static final Enum RTF;
    public static final SchemaType type;

    /* loaded from: classes15.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_ALL = 3;
        static final int INT_NONE = 1;
        static final int INT_RTF = 2;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("none", 1), new Enum(FileTypeConstant.RTF, 2), new Enum("all", 3)});

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
        SimpleTypeFactory<STHtmlFmt> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "sthtmlfmt02b1type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        NONE = Enum.forString("none");
        RTF = Enum.forString(FileTypeConstant.RTF);
        ALL = Enum.forString("all");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
