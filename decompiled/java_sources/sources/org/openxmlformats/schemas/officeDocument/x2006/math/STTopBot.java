package org.openxmlformats.schemas.officeDocument.x2006.math;

import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriverConstants;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STTopBot extends XmlString {
    public static final Enum BOT;
    public static final SimpleTypeFactory<STTopBot> Factory;
    public static final int INT_BOT = 2;
    public static final int INT_TOP = 1;
    public static final Enum TOP;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_BOT = 2;
        static final int INT_TOP = 1;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum(OneDriverConstants.TOP, 1), new Enum("bot", 2)});

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
        SimpleTypeFactory<STTopBot> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "sttopbot4270type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        TOP = Enum.forString(OneDriverConstants.TOP);
        BOT = Enum.forString("bot");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
