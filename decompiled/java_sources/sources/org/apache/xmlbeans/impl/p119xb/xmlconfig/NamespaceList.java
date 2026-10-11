package org.apache.xmlbeans.impl.p119xb.xmlconfig;

import java.util.List;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlAnySimpleType;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.ElementFactory;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;
import org.apache.xmlbeans.metadata.system.sXMLCONFIG.TypeSystemHolder;

/* loaded from: classes13.dex */
public interface NamespaceList extends XmlAnySimpleType {
    public static final SimpleTypeFactory<NamespaceList> Factory;
    public static final SchemaType type;

    /* loaded from: classes13.dex */
    public interface Member extends XmlToken {
        public static final Enum ANY;
        public static final ElementFactory<Member> Factory;
        public static final int INT_ANY = 1;
        public static final SchemaType type;

        /* loaded from: classes13.dex */
        public static final class Enum extends StringEnumAbstractBase {
            static final int INT_ANY = 1;
            private static final long serialVersionUID = 1;
            public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("##any", 1)});

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
            ElementFactory<Member> elementFactory = new ElementFactory<>(TypeSystemHolder.typeSystem, "anonc6fftype");
            Factory = elementFactory;
            type = elementFactory.getType();
            ANY = Enum.forString("##any");
        }

        StringEnumAbstractBase getEnumValue();

        void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
    }

    /* loaded from: classes13.dex */
    public interface Member2 extends XmlAnySimpleType {
        public static final ElementFactory<Member2> Factory;
        public static final SchemaType type;

        /* loaded from: classes13.dex */
        public interface Item extends XmlAnySimpleType {
            public static final ElementFactory<Item> Factory;
            public static final SchemaType type;

            /* loaded from: classes13.dex */
            public interface Member extends XmlToken {
                public static final ElementFactory<Member> Factory;
                public static final int INT_LOCAL = 1;
                public static final Enum LOCAL;
                public static final SchemaType type;

                /* loaded from: classes13.dex */
                public static final class Enum extends StringEnumAbstractBase {
                    static final int INT_LOCAL = 1;
                    private static final long serialVersionUID = 1;
                    public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("##local", 1)});

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
                    ElementFactory<Member> elementFactory = new ElementFactory<>(TypeSystemHolder.typeSystem, "anon1dd3type");
                    Factory = elementFactory;
                    type = elementFactory.getType();
                    LOCAL = Enum.forString("##local");
                }

                StringEnumAbstractBase getEnumValue();

                void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
            }

            static {
                ElementFactory<Item> elementFactory = new ElementFactory<>(TypeSystemHolder.typeSystem, "anon0798type");
                Factory = elementFactory;
                type = elementFactory.getType();
            }

            Object getObjectValue();

            SchemaType instanceType();

            void setObjectValue(Object obj);
        }

        static {
            ElementFactory<Member2> elementFactory = new ElementFactory<>(TypeSystemHolder.typeSystem, "anon5680type");
            Factory = elementFactory;
            type = elementFactory.getType();
        }

        List getListValue();

        void setListValue(List<?> list);

        List xgetListValue();
    }

    static {
        SimpleTypeFactory<NamespaceList> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "namespacelist20datype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
    }

    Object getObjectValue();

    SchemaType instanceType();

    void setObjectValue(Object obj);
}
