package sun.java2d.loops;

import java.awt.AlphaComposite;
import java.util.HashMap;

/* loaded from: classes16.dex */
public final class CompositeType {
    public static final CompositeType AlphaXor;
    public static final CompositeType Any;
    public static final CompositeType AnyAlpha;
    public static final CompositeType Clear;
    public static final String DESC_ALPHA_XOR = "Porter-Duff Xor";
    public static final String DESC_ANY = "Any CompositeContext";
    public static final String DESC_ANY_ALPHA = "Any AlphaComposite Rule";
    public static final String DESC_CLEAR = "Porter-Duff Clear";
    public static final String DESC_DST = "Porter-Duff Dst";
    public static final String DESC_DST_ATOP = "Porter-Duff Dst Atop Src";
    public static final String DESC_DST_IN = "Porter-Duff Dst In Src";
    public static final String DESC_DST_OUT = "Porter-Duff Dst HeldOutBy Src";
    public static final String DESC_DST_OVER = "Porter-Duff Dst Over Src";
    public static final String DESC_SRC = "Porter-Duff Src";
    public static final String DESC_SRC_ATOP = "Porter-Duff Src Atop Dst";
    public static final String DESC_SRC_IN = "Porter-Duff Src In Dst";
    public static final String DESC_SRC_NO_EA = "Porter-Duff Src, No Extra Alpha";
    public static final String DESC_SRC_OUT = "Porter-Duff Src HeldOutBy Dst";
    public static final String DESC_SRC_OVER = "Porter-Duff Src Over Dst";
    public static final String DESC_SRC_OVER_NO_EA = "Porter-Duff SrcOverDst, No Extra Alpha";
    public static final String DESC_XOR = "XOR mode";
    public static final CompositeType Dst;
    public static final CompositeType DstAtop;
    public static final CompositeType DstIn;
    public static final CompositeType DstOut;
    public static final CompositeType DstOver;
    public static final CompositeType General;
    public static final CompositeType OpaqueSrcOverNoEa;
    public static final CompositeType Src;
    public static final CompositeType SrcAtop;
    public static final CompositeType SrcIn;
    public static final CompositeType SrcNoEa;
    public static final CompositeType SrcOut;
    public static final CompositeType SrcOver;
    public static final CompositeType SrcOverNoEa;
    public static final CompositeType Xor;
    private static final HashMap<String, Integer> compositeUIDMap = new HashMap<>(100);
    private static int unusedUID = 1;
    private String desc;
    private CompositeType next;
    private int uniqueID;

    static {
        CompositeType compositeType = new CompositeType(null, DESC_ANY);
        Any = compositeType;
        General = compositeType;
        CompositeType deriveSubType = compositeType.deriveSubType(DESC_ANY_ALPHA);
        AnyAlpha = deriveSubType;
        Xor = compositeType.deriveSubType(DESC_XOR);
        Clear = deriveSubType.deriveSubType(DESC_CLEAR);
        CompositeType deriveSubType2 = deriveSubType.deriveSubType(DESC_SRC);
        Src = deriveSubType2;
        Dst = deriveSubType.deriveSubType(DESC_DST);
        CompositeType deriveSubType3 = deriveSubType.deriveSubType(DESC_SRC_OVER);
        SrcOver = deriveSubType3;
        DstOver = deriveSubType.deriveSubType(DESC_DST_OVER);
        SrcIn = deriveSubType.deriveSubType(DESC_SRC_IN);
        DstIn = deriveSubType.deriveSubType(DESC_DST_IN);
        SrcOut = deriveSubType.deriveSubType(DESC_SRC_OUT);
        DstOut = deriveSubType.deriveSubType(DESC_DST_OUT);
        SrcAtop = deriveSubType.deriveSubType(DESC_SRC_ATOP);
        DstAtop = deriveSubType.deriveSubType(DESC_DST_ATOP);
        AlphaXor = deriveSubType.deriveSubType(DESC_ALPHA_XOR);
        SrcNoEa = deriveSubType2.deriveSubType(DESC_SRC_NO_EA);
        CompositeType deriveSubType4 = deriveSubType3.deriveSubType(DESC_SRC_OVER_NO_EA);
        SrcOverNoEa = deriveSubType4;
        OpaqueSrcOverNoEa = deriveSubType4.deriveSubType(DESC_SRC).deriveSubType(DESC_SRC_NO_EA);
    }

    private CompositeType(CompositeType compositeType, String str) {
        this.next = compositeType;
        this.desc = str;
        this.uniqueID = makeUniqueID(str);
    }

    public static CompositeType forAlphaComposite(AlphaComposite alphaComposite) {
        switch (alphaComposite.getRule()) {
            case 1:
                return Clear;
            case 2:
                return alphaComposite.getAlpha() >= 1.0f ? SrcNoEa : Src;
            case 3:
                return alphaComposite.getAlpha() >= 1.0f ? SrcOverNoEa : SrcOver;
            case 4:
                return DstOver;
            case 5:
                return SrcIn;
            case 6:
                return DstIn;
            case 7:
                return SrcOut;
            case 8:
                return DstOut;
            case 9:
                return Dst;
            case 10:
                return SrcAtop;
            case 11:
                return DstAtop;
            case 12:
                return AlphaXor;
            default:
                throw new InternalError("Unrecognized alpha rule");
        }
    }

    public static final synchronized int makeUniqueID(String str) {
        int intValue;
        synchronized (CompositeType.class) {
            HashMap<String, Integer> hashMap = compositeUIDMap;
            Integer num = hashMap.get(str);
            if (num == null) {
                int i = unusedUID;
                if (i > 255) {
                    throw new InternalError("composite type id overflow");
                }
                unusedUID = i + 1;
                num = Integer.valueOf(i);
                hashMap.put(str, num);
            }
            intValue = num.intValue();
        }
        return intValue;
    }

    public CompositeType deriveSubType(String str) {
        return new CompositeType(this, str);
    }

    public boolean equals(Object obj) {
        return (obj instanceof CompositeType) && ((CompositeType) obj).uniqueID == this.uniqueID;
    }

    public String getDescriptor() {
        return this.desc;
    }

    public CompositeType getSuperType() {
        return this.next;
    }

    public int getUniqueID() {
        return this.uniqueID;
    }

    public int hashCode() {
        return this.desc.hashCode();
    }

    public boolean isDerivedFrom(CompositeType compositeType) {
        while (this.desc != compositeType.desc) {
            this = this.next;
            if (this == null) {
                return false;
            }
        }
        return true;
    }

    public String toString() {
        return this.desc;
    }
}
