package org.openxmlformats.schemas.presentationml.x2006.main;

import com.sun.org.apache.xalan.internal.extensions.ExtensionNamespaceContext;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STTLAnimateBehaviorValueType extends XmlToken {
    public static final Enum CLR;
    public static final SimpleTypeFactory<STTLAnimateBehaviorValueType> Factory;
    public static final int INT_CLR = 3;
    public static final int INT_NUM = 2;
    public static final int INT_STR = 1;
    public static final Enum NUM;
    public static final Enum STR;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_CLR = 3;
        static final int INT_NUM = 2;
        static final int INT_STR = 1;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum(ExtensionNamespaceContext.EXSLT_STRING_PREFIX, 1), new Enum("num", 2), new Enum("clr", 3)});

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
        SimpleTypeFactory<STTLAnimateBehaviorValueType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "sttlanimatebehaviorvaluetype1725type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        STR = Enum.forString(ExtensionNamespaceContext.EXSLT_STRING_PREFIX);
        NUM = Enum.forString("num");
        CLR = Enum.forString("clr");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
