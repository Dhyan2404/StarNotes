package org.openxmlformats.schemas.officeDocument.x2006.math;

import com.sun.org.apache.xalan.internal.templates.Constants;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STShp extends XmlString {
    public static final Enum CENTERED;
    public static final SimpleTypeFactory<STShp> Factory;
    public static final int INT_CENTERED = 1;
    public static final int INT_MATCH = 2;
    public static final Enum MATCH;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_CENTERED = 1;
        static final int INT_MATCH = 2;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("centered", 1), new Enum(Constants.ATTRNAME_MATCH, 2)});

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
        SimpleTypeFactory<STShp> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stshpa551type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        CENTERED = Enum.forString("centered");
        MATCH = Enum.forString(Constants.ATTRNAME_MATCH);
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
