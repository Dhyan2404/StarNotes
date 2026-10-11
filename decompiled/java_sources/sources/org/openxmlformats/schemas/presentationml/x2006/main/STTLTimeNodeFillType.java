package org.openxmlformats.schemas.presentationml.x2006.main;

import androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat;
import androidx.core.graphics.TypefaceCompatApi26Impl;
import com.onyx.android.sdk.replicator.utils.SyncConstant;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STTLTimeNodeFillType extends XmlToken {
    public static final Enum FREEZE;
    public static final SimpleTypeFactory<STTLTimeNodeFillType> Factory;
    public static final Enum HOLD;
    public static final int INT_FREEZE = 2;
    public static final int INT_HOLD = 3;
    public static final int INT_REMOVE = 1;
    public static final int INT_TRANSITION = 4;
    public static final Enum REMOVE;
    public static final Enum TRANSITION;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_FREEZE = 2;
        static final int INT_HOLD = 3;
        static final int INT_REMOVE = 1;
        static final int INT_TRANSITION = 4;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum(SyncConstant.SYNC_ACTION_REMOVE, 1), new Enum(TypefaceCompatApi26Impl.f5411r, 2), new Enum("hold", 3), new Enum(AnimatedStateListDrawableCompat.f876Z, 4)});

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
        SimpleTypeFactory<STTLTimeNodeFillType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "sttltimenodefilltypeb7f1type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        REMOVE = Enum.forString(SyncConstant.SYNC_ACTION_REMOVE);
        FREEZE = Enum.forString(TypefaceCompatApi26Impl.f5411r);
        HOLD = Enum.forString("hold");
        TRANSITION = Enum.forString(AnimatedStateListDrawableCompat.f876Z);
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
