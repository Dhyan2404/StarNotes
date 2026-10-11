package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes16.dex */
public interface STDocPartBehavior extends XmlString {
    public static final Enum CONTENT;
    public static final SimpleTypeFactory<STDocPartBehavior> Factory;
    public static final int INT_CONTENT = 1;
    public static final int INT_P = 2;
    public static final int INT_PG = 3;

    /* renamed from: P */
    public static final Enum f115822P;

    /* renamed from: PG */
    public static final Enum f115823PG;
    public static final SchemaType type;

    /* loaded from: classes16.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_CONTENT = 1;
        static final int INT_P = 2;
        static final int INT_PG = 3;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("content", 1), new Enum("p", 2), new Enum("pg", 3)});

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
        SimpleTypeFactory<STDocPartBehavior> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stdocpartbehavior2805type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        CONTENT = Enum.forString("content");
        f115822P = Enum.forString("p");
        f115823PG = Enum.forString("pg");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
