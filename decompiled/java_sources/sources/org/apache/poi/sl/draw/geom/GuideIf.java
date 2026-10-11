package org.apache.poi.sl.draw.geom;

import com.onyx.android.sdk.data.common.data.template.OfficialCoverType;
import java.util.regex.Pattern;

/* loaded from: classes12.dex */
public interface GuideIf extends Formula {
    public static final Pattern WHITESPACE = Pattern.compile("\\s+");

    /* renamed from: org.apache.poi.sl.draw.geom.GuideIf$1 */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C196171 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$sl$draw$geom$GuideIf$Op;

        static {
            int[] iArr = new int[EnumC19618Op.values().length];
            $SwitchMap$org$apache$poi$sl$draw$geom$GuideIf$Op = iArr;
            try {
                iArr[EnumC19618Op.abs.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$draw$geom$GuideIf$Op[EnumC19618Op.adddiv.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$draw$geom$GuideIf$Op[EnumC19618Op.addsub.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$draw$geom$GuideIf$Op[EnumC19618Op.at2.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$draw$geom$GuideIf$Op[EnumC19618Op.cos.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$draw$geom$GuideIf$Op[EnumC19618Op.cat2.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$draw$geom$GuideIf$Op[EnumC19618Op.ifelse.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$draw$geom$GuideIf$Op[EnumC19618Op.val.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$draw$geom$GuideIf$Op[EnumC19618Op.max.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$draw$geom$GuideIf$Op[EnumC19618Op.min.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$draw$geom$GuideIf$Op[EnumC19618Op.mod.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$draw$geom$GuideIf$Op[EnumC19618Op.muldiv.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$draw$geom$GuideIf$Op[EnumC19618Op.pin.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$draw$geom$GuideIf$Op[EnumC19618Op.sat2.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$draw$geom$GuideIf$Op[EnumC19618Op.sin.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$draw$geom$GuideIf$Op[EnumC19618Op.sqrt.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$draw$geom$GuideIf$Op[EnumC19618Op.tan.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
        }
    }

    /* renamed from: org.apache.poi.sl.draw.geom.GuideIf$Op */
    /* loaded from: classes12.dex */
    public enum EnumC19618Op {
        muldiv,
        addsub,
        adddiv,
        ifelse,
        val,
        abs,
        sqrt,
        max,
        min,
        at2,
        sin,
        cos,
        tan,
        cat2,
        sat2,
        pin,
        mod
    }

    @Override // org.apache.poi.sl.draw.geom.Formula
    default double evaluate(Context context) {
        return evaluateGuide(context);
    }

    default double evaluateGuide(Context context) {
        EnumC19618Op enumC19618Op;
        String[] split = WHITESPACE.split(getFmla());
        String str = split[0];
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case 1349:
                if (str.equals("*/")) {
                    c = 0;
                    break;
                }
                break;
            case 1378:
                if (str.equals("+-")) {
                    c = 1;
                    break;
                }
                break;
            case 1380:
                if (str.equals("+/")) {
                    c = 2;
                    break;
                }
                break;
            case OfficialCoverType.COVER_LITTLE_RABBIT4 /* 2011 */:
                if (str.equals("?:")) {
                    c = 3;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                enumC19618Op = EnumC19618Op.muldiv;
                break;
            case 1:
                enumC19618Op = EnumC19618Op.addsub;
                break;
            case 2:
                enumC19618Op = EnumC19618Op.adddiv;
                break;
            case 3:
                enumC19618Op = EnumC19618Op.ifelse;
                break;
            default:
                enumC19618Op = EnumC19618Op.valueOf(split[0]);
                break;
        }
        double value = split.length > 1 ? context.getValue(split[1]) : 0.0d;
        double value2 = split.length > 2 ? context.getValue(split[2]) : 0.0d;
        double value3 = split.length > 3 ? context.getValue(split[3]) : 0.0d;
        switch (C196171.$SwitchMap$org$apache$poi$sl$draw$geom$GuideIf$Op[enumC19618Op.ordinal()]) {
            case 1:
                return Math.abs(value);
            case 2:
                if (value3 == 0.0d) {
                    return 0.0d;
                }
                return (value + value2) / value3;
            case 3:
                return (value + value2) - value3;
            case 4:
                return Math.toDegrees(Math.atan2(value2, value)) * 60000.0d;
            case 5:
                return value * Math.cos(Math.toRadians(value2 / 60000.0d));
            case 6:
                return value * Math.cos(Math.atan2(value3, value2));
            case 7:
                return value > 0.0d ? value2 : value3;
            case 8:
                return value;
            case 9:
                return Math.max(value, value2);
            case 10:
                return Math.min(value, value2);
            case 11:
                return Math.sqrt((value * value) + (value2 * value2) + (value3 * value3));
            case 12:
                if (value3 == 0.0d) {
                    return 0.0d;
                }
                return (value * value2) / value3;
            case 13:
                return Math.max(value, Math.min(value2, value3));
            case 14:
                return value * Math.sin(Math.atan2(value3, value2));
            case 15:
                return value * Math.sin(Math.toRadians(value2 / 60000.0d));
            case 16:
                return Math.sqrt(value);
            case 17:
                return value * Math.tan(Math.toRadians(value2 / 60000.0d));
            default:
                return 0.0d;
        }
    }

    String getFmla();

    String getName();

    void setFmla(String str);

    void setName(String str);
}
