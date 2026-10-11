package org.openxmlformats.schemas.presentationml.x2006.main;

import com.sun.org.apache.xpath.internal.compiler.Keywords;
import com.sunia.HTREnginev2.gon;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STTLBehaviorAdditiveType extends XmlToken {
    public static final Enum BASE;
    public static final SimpleTypeFactory<STTLBehaviorAdditiveType> Factory;
    public static final int INT_BASE = 1;
    public static final int INT_MULT = 4;
    public static final int INT_NONE = 5;
    public static final int INT_REPL = 3;
    public static final int INT_SUM = 2;
    public static final Enum MULT;
    public static final Enum NONE;
    public static final Enum REPL;
    public static final Enum SUM;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_BASE = 1;
        static final int INT_MULT = 4;
        static final int INT_NONE = 5;
        static final int INT_REPL = 3;
        static final int INT_SUM = 2;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum(gon.f71271X, 1), new Enum(Keywords.FUNC_SUM_STRING, 2), new Enum("repl", 3), new Enum("mult", 4), new Enum("none", 5)});

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
        SimpleTypeFactory<STTLBehaviorAdditiveType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "sttlbehavioradditivetype0145type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        BASE = Enum.forString(gon.f71271X);
        SUM = Enum.forString(Keywords.FUNC_SUM_STRING);
        REPL = Enum.forString("repl");
        MULT = Enum.forString("mult");
        NONE = Enum.forString("none");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
