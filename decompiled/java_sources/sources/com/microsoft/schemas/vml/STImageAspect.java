package com.microsoft.schemas.vml;

import com.onyx.android.sdk.cloudstorage.provider.aliyun.utils.AliYunConstant;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes7.dex */
public interface STImageAspect extends XmlString {
    public static final Enum AT_LEAST;
    public static final Enum AT_MOST;
    public static final SimpleTypeFactory<STImageAspect> Factory;
    public static final Enum IGNORE;
    public static final int INT_AT_LEAST = 3;
    public static final int INT_AT_MOST = 2;
    public static final int INT_IGNORE = 1;
    public static final SchemaType type;

    /* loaded from: classes7.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_AT_LEAST = 3;
        static final int INT_AT_MOST = 2;
        static final int INT_IGNORE = 1;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum(AliYunConstant.CHECK_NAME_MODE_IGNORE, 1), new Enum("atMost", 2), new Enum("atLeast", 3)});

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
        SimpleTypeFactory<STImageAspect> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stimageaspectf0d7type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        IGNORE = Enum.forString(AliYunConstant.CHECK_NAME_MODE_IGNORE);
        AT_MOST = Enum.forString("atMost");
        AT_LEAST = Enum.forString("atLeast");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
