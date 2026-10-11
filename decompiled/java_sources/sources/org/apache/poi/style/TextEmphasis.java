package org.apache.poi.style;

import com.sunia.HTREnginev2.gon;
import org.apache.poi.convert.WordToHtmlUtils;
import org.apache.poi.convert.xwpf.property.IRunPropertyFetcher;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTEm;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STEm;

/* loaded from: classes13.dex */
public class TextEmphasis implements Styles {
    private Type type = Type.NONE;

    /* renamed from: org.apache.poi.style.TextEmphasis$1 */
    /* loaded from: classes13.dex */
    public static /* synthetic */ class C198581 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$style$TextEmphasis$Type;

        static {
            int[] iArr = new int[Type.values().length];
            $SwitchMap$org$apache$poi$style$TextEmphasis$Type = iArr;
            try {
                iArr[Type.COMMA.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$style$TextEmphasis$Type[Type.CIRCLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$style$TextEmphasis$Type[Type.UNDER_DOT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$poi$style$TextEmphasis$Type[Type.DOT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* loaded from: classes13.dex */
    public enum Type {
        NONE(""),
        DOT(gon.f71308x0),
        COMMA("comma"),
        CIRCLE("circle"),
        UNDER_DOT("under dot");

        String name;

        Type(String str) {
            this.name = str;
        }
    }

    public void parse(IRunPropertyFetcher iRunPropertyFetcher) {
        CTEm em = iRunPropertyFetcher.getEm();
        if (WordToHtmlUtils.isNull(em)) {
            return;
        }
        STEm.Enum val = em.getVal();
        if (WordToHtmlUtils.isNull(val)) {
            return;
        }
        int intValue = val.intValue();
        if (intValue == 2) {
            this.type = Type.DOT;
            return;
        }
        if (intValue == 3) {
            this.type = Type.COMMA;
        } else if (intValue == 4) {
            this.type = Type.CIRCLE;
        } else {
            if (intValue != 5) {
                return;
            }
            this.type = Type.UNDER_DOT;
        }
    }

    @Override // org.apache.poi.style.Styles
    public String toStyle() {
        if (this.type == Type.NONE) {
            return "";
        }
        StringBuilder sb = new StringBuilder("text-emphasis:filled ");
        int i = C198581.$SwitchMap$org$apache$poi$style$TextEmphasis$Type[this.type.ordinal()];
        if (i == 1) {
            sb.append("sesame;");
        } else if (i == 2) {
            sb.append("circle;");
        } else if (i == 3 || i == 4) {
            sb.append("dot;text-emphasis-position:under;");
        }
        return sb.toString();
    }
}
