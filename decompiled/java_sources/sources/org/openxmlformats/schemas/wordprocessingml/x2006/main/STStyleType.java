package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.sun.org.apache.xml.internal.utils.res.XResourceBundle;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes16.dex */
public interface STStyleType extends XmlString {
    public static final Enum CHARACTER;
    public static final SimpleTypeFactory<STStyleType> Factory;
    public static final int INT_CHARACTER = 2;
    public static final int INT_NUMBERING = 4;
    public static final int INT_PARAGRAPH = 1;
    public static final int INT_TABLE = 3;
    public static final Enum NUMBERING;
    public static final Enum PARAGRAPH;
    public static final Enum TABLE;
    public static final SchemaType type;

    /* loaded from: classes16.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_CHARACTER = 2;
        static final int INT_NUMBERING = 4;
        static final int INT_PARAGRAPH = 1;
        static final int INT_TABLE = 3;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("paragraph", 1), new Enum(FirebaseAnalytics.Param.CHARACTER, 2), new Enum("table", 3), new Enum(XResourceBundle.LANG_NUMBERING, 4)});

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
        SimpleTypeFactory<STStyleType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "ststyletypec2b7type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        PARAGRAPH = Enum.forString("paragraph");
        CHARACTER = Enum.forString(FirebaseAnalytics.Param.CHARACTER);
        TABLE = Enum.forString("table");
        NUMBERING = Enum.forString(XResourceBundle.LANG_NUMBERING);
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
