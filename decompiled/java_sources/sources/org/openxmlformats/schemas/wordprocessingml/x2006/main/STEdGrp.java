package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import com.sun.org.apache.xpath.internal.compiler.Keywords;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes16.dex */
public interface STEdGrp extends XmlString {
    public static final Enum ADMINISTRATORS;
    public static final Enum CONTRIBUTORS;
    public static final Enum CURRENT;
    public static final Enum EDITORS;
    public static final Enum EVERYONE;
    public static final SimpleTypeFactory<STEdGrp> Factory;
    public static final int INT_ADMINISTRATORS = 3;
    public static final int INT_CONTRIBUTORS = 4;
    public static final int INT_CURRENT = 7;
    public static final int INT_EDITORS = 5;
    public static final int INT_EVERYONE = 2;
    public static final int INT_NONE = 1;
    public static final int INT_OWNERS = 6;
    public static final Enum NONE;
    public static final Enum OWNERS;
    public static final SchemaType type;

    /* loaded from: classes16.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_ADMINISTRATORS = 3;
        static final int INT_CONTRIBUTORS = 4;
        static final int INT_CURRENT = 7;
        static final int INT_EDITORS = 5;
        static final int INT_EVERYONE = 2;
        static final int INT_NONE = 1;
        static final int INT_OWNERS = 6;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("none", 1), new Enum("everyone", 2), new Enum("administrators", 3), new Enum("contributors", 4), new Enum("editors", 5), new Enum("owners", 6), new Enum(Keywords.FUNC_CURRENT_STRING, 7)});

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
        SimpleTypeFactory<STEdGrp> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stedgrp6bdctype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        NONE = Enum.forString("none");
        EVERYONE = Enum.forString("everyone");
        ADMINISTRATORS = Enum.forString("administrators");
        CONTRIBUTORS = Enum.forString("contributors");
        EDITORS = Enum.forString("editors");
        OWNERS = Enum.forString("owners");
        CURRENT = Enum.forString(Keywords.FUNC_CURRENT_STRING);
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
