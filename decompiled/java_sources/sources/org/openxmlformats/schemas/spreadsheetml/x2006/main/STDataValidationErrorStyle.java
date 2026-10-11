package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import com.sunia.HTREnginev2.gon;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;
import org.xmlresolver.logging.AbstractLogger;

/* loaded from: classes15.dex */
public interface STDataValidationErrorStyle extends XmlString {
    public static final SimpleTypeFactory<STDataValidationErrorStyle> Factory;
    public static final Enum INFORMATION;
    public static final int INT_INFORMATION = 3;
    public static final int INT_STOP = 1;
    public static final int INT_WARNING = 2;
    public static final Enum STOP;
    public static final Enum WARNING;
    public static final SchemaType type;

    /* loaded from: classes15.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_INFORMATION = 3;
        static final int INT_STOP = 1;
        static final int INT_WARNING = 2;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("stop", 1), new Enum(AbstractLogger.WARNING, 2), new Enum(gon.f71248B, 3)});

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
        SimpleTypeFactory<STDataValidationErrorStyle> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stdatavalidationerrorstyleca85type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        STOP = Enum.forString("stop");
        WARNING = Enum.forString(AbstractLogger.WARNING);
        INFORMATION = Enum.forString(gon.f71248B);
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
