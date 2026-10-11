package org.openxmlformats.schemas.presentationml.x2006.main;

import com.google.android.exoplayer2.text.ttml.TtmlDecoder;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STTLTriggerEvent extends XmlToken {
    public static final Enum BEGIN;
    public static final Enum END;
    public static final SimpleTypeFactory<STTLTriggerEvent> Factory;
    public static final int INT_BEGIN = 3;
    public static final int INT_END = 4;
    public static final int INT_ON_BEGIN = 1;
    public static final int INT_ON_CLICK = 5;
    public static final int INT_ON_DBL_CLICK = 6;
    public static final int INT_ON_END = 2;
    public static final int INT_ON_MOUSE_OUT = 8;
    public static final int INT_ON_MOUSE_OVER = 7;
    public static final int INT_ON_NEXT = 9;
    public static final int INT_ON_PREV = 10;
    public static final int INT_ON_STOP_AUDIO = 11;
    public static final Enum ON_BEGIN;
    public static final Enum ON_CLICK;
    public static final Enum ON_DBL_CLICK;
    public static final Enum ON_END;
    public static final Enum ON_MOUSE_OUT;
    public static final Enum ON_MOUSE_OVER;
    public static final Enum ON_NEXT;
    public static final Enum ON_PREV;
    public static final Enum ON_STOP_AUDIO;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_BEGIN = 3;
        static final int INT_END = 4;
        static final int INT_ON_BEGIN = 1;
        static final int INT_ON_CLICK = 5;
        static final int INT_ON_DBL_CLICK = 6;
        static final int INT_ON_END = 2;
        static final int INT_ON_MOUSE_OUT = 8;
        static final int INT_ON_MOUSE_OVER = 7;
        static final int INT_ON_NEXT = 9;
        static final int INT_ON_PREV = 10;
        static final int INT_ON_STOP_AUDIO = 11;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("onBegin", 1), new Enum("onEnd", 2), new Enum(TtmlDecoder.f27116r, 3), new Enum("end", 4), new Enum("onClick", 5), new Enum("onDblClick", 6), new Enum("onMouseOver", 7), new Enum("onMouseOut", 8), new Enum("onNext", 9), new Enum("onPrev", 10), new Enum("onStopAudio", 11)});

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
        SimpleTypeFactory<STTLTriggerEvent> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "sttltriggerevent36dbtype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        ON_BEGIN = Enum.forString("onBegin");
        ON_END = Enum.forString("onEnd");
        BEGIN = Enum.forString(TtmlDecoder.f27116r);
        END = Enum.forString("end");
        ON_CLICK = Enum.forString("onClick");
        ON_DBL_CLICK = Enum.forString("onDblClick");
        ON_MOUSE_OVER = Enum.forString("onMouseOver");
        ON_MOUSE_OUT = Enum.forString("onMouseOut");
        ON_NEXT = Enum.forString("onNext");
        ON_PREV = Enum.forString("onPrev");
        ON_STOP_AUDIO = Enum.forString("onStopAudio");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
