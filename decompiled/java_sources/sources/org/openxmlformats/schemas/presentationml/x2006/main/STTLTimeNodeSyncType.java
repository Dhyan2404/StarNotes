package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.poi.ss.util.CellUtil;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STTLTimeNodeSyncType extends XmlToken {
    public static final Enum CAN_SLIP;
    public static final SimpleTypeFactory<STTLTimeNodeSyncType> Factory;
    public static final int INT_CAN_SLIP = 1;
    public static final int INT_LOCKED = 2;
    public static final Enum LOCKED;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_CAN_SLIP = 1;
        static final int INT_LOCKED = 2;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("canSlip", 1), new Enum(CellUtil.LOCKED, 2)});

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
        SimpleTypeFactory<STTLTimeNodeSyncType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "sttltimenodesynctype4fd9type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        CAN_SLIP = Enum.forString("canSlip");
        LOCKED = Enum.forString(CellUtil.LOCKED);
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
