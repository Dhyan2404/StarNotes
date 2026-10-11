package org.openxmlformats.schemas.presentationml.x2006.main;

import com.sun.org.apache.xpath.internal.compiler.Keywords;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STTLTriggerRuntimeNode extends XmlToken {
    public static final Enum ALL;
    public static final Enum FIRST;
    public static final SimpleTypeFactory<STTLTriggerRuntimeNode> Factory;
    public static final int INT_ALL = 3;
    public static final int INT_FIRST = 1;
    public static final int INT_LAST = 2;
    public static final Enum LAST;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_ALL = 3;
        static final int INT_FIRST = 1;
        static final int INT_LAST = 2;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("first", 1), new Enum(Keywords.FUNC_LAST_STRING, 2), new Enum("all", 3)});

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
        SimpleTypeFactory<STTLTriggerRuntimeNode> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "sttltriggerruntimenodec33btype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        FIRST = Enum.forString("first");
        LAST = Enum.forString(Keywords.FUNC_LAST_STRING);
        ALL = Enum.forString("all");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
