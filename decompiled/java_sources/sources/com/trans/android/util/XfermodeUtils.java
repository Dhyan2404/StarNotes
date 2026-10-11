package com.trans.android.util;

import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Xfermode;
import com.onyx.common.util.ReflectUtils;
import java.awt.AlphaComposite;
import java.awt.Composite;
import java.util.concurrent.atomic.AtomicReference;
import sun.java2d.loops.CompositeType;
import sun.java2d.loops.XORComposite;

/* loaded from: classes10.dex */
public class XfermodeUtils {

    /* renamed from: com.trans.android.util.XfermodeUtils$1 */
    /* loaded from: classes10.dex */
    public static /* synthetic */ class C169151 {
        static final /* synthetic */ int[] $SwitchMap$android$graphics$PorterDuff$Mode;

        static {
            int[] iArr = new int[PorterDuff.Mode.values().length];
            $SwitchMap$android$graphics$PorterDuff$Mode = iArr;
            try {
                iArr[PorterDuff.Mode.CLEAR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$android$graphics$PorterDuff$Mode[PorterDuff.Mode.SRC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$android$graphics$PorterDuff$Mode[PorterDuff.Mode.DST.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$android$graphics$PorterDuff$Mode[PorterDuff.Mode.SRC_OVER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$android$graphics$PorterDuff$Mode[PorterDuff.Mode.DST_OVER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$android$graphics$PorterDuff$Mode[PorterDuff.Mode.SRC_IN.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$android$graphics$PorterDuff$Mode[PorterDuff.Mode.DST_IN.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$android$graphics$PorterDuff$Mode[PorterDuff.Mode.SRC_OUT.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$android$graphics$PorterDuff$Mode[PorterDuff.Mode.DST_OUT.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$android$graphics$PorterDuff$Mode[PorterDuff.Mode.SRC_ATOP.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$android$graphics$PorterDuff$Mode[PorterDuff.Mode.DST_ATOP.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    public static Xfermode convertCompositeToXfermode(Composite composite) {
        if (composite instanceof AlphaComposite) {
            return convertCompositeToXfermode((AlphaComposite) composite);
        }
        if (composite instanceof XORComposite) {
            return new PorterDuffXfermode(PorterDuff.Mode.XOR);
        }
        return new PorterDuffXfermode(PorterDuff.Mode.SRC_OVER);
    }

    public static AlphaComposite convertXfermodeToComposite(Xfermode xfermode) {
        int i = 3;
        if (xfermode == null || !(xfermode instanceof PorterDuffXfermode)) {
            return AlphaComposite.getInstance(3);
        }
        PorterDuff.Mode xfermodeMode = getXfermodeMode(xfermode);
        if (xfermodeMode == null) {
            return AlphaComposite.getInstance(3);
        }
        switch (C169151.$SwitchMap$android$graphics$PorterDuff$Mode[xfermodeMode.ordinal()]) {
            case 1:
                i = 1;
                break;
            case 2:
                i = 2;
                break;
            case 3:
                i = 9;
                break;
            case 5:
                i = 4;
                break;
            case 6:
                i = 5;
                break;
            case 7:
                i = 6;
                break;
            case 8:
                i = 7;
                break;
            case 9:
                i = 8;
                break;
            case 10:
                i = 10;
                break;
            case 11:
                i = 11;
                break;
        }
        return AlphaComposite.getInstance(i);
    }

    public static PorterDuff.Mode getXfermodeMode(Xfermode xfermode) {
        if (xfermode == null) {
            return null;
        }
        AtomicReference atomicReference = new AtomicReference();
        if (ReflectUtils.getFieldSafely(atomicReference, Xfermode.class, xfermode, "porterDuffMode")) {
            switch (((Integer) atomicReference.get()).intValue()) {
                case 0:
                    return PorterDuff.Mode.CLEAR;
                case 1:
                    return PorterDuff.Mode.SRC;
                case 2:
                    return PorterDuff.Mode.DST;
                case 3:
                    return PorterDuff.Mode.SRC_OVER;
                case 4:
                    return PorterDuff.Mode.DST_OVER;
                case 5:
                    return PorterDuff.Mode.SRC_IN;
                case 6:
                    return PorterDuff.Mode.DST_IN;
                case 7:
                    return PorterDuff.Mode.SRC_OUT;
                case 8:
                    return PorterDuff.Mode.DST_OUT;
                case 9:
                    return PorterDuff.Mode.SRC_ATOP;
                case 10:
                    return PorterDuff.Mode.DST_ATOP;
                case 11:
                    return PorterDuff.Mode.XOR;
                case 12:
                    return PorterDuff.Mode.ADD;
                case 13:
                    return PorterDuff.Mode.MULTIPLY;
                case 14:
                    return PorterDuff.Mode.SCREEN;
                case 15:
                    return PorterDuff.Mode.OVERLAY;
                case 16:
                    return PorterDuff.Mode.DARKEN;
                case 17:
                    return PorterDuff.Mode.LIGHTEN;
            }
        }
        return null;
    }

    public static Xfermode convertCompositeToXfermode(AlphaComposite alphaComposite) {
        PorterDuff.Mode mode;
        CompositeType forAlphaComposite = CompositeType.forAlphaComposite(alphaComposite);
        if (forAlphaComposite == CompositeType.Clear) {
            mode = PorterDuff.Mode.CLEAR;
        } else if (forAlphaComposite == CompositeType.SrcNoEa) {
            mode = PorterDuff.Mode.SRC;
        } else if (forAlphaComposite == CompositeType.Src) {
            mode = PorterDuff.Mode.SRC;
        } else if (forAlphaComposite == CompositeType.Dst) {
            mode = PorterDuff.Mode.DST;
        } else if (forAlphaComposite == CompositeType.SrcOverNoEa) {
            mode = PorterDuff.Mode.SRC_OVER;
        } else if (forAlphaComposite == CompositeType.SrcOver) {
            mode = PorterDuff.Mode.SRC_OVER;
        } else if (forAlphaComposite == CompositeType.DstOver) {
            mode = PorterDuff.Mode.DST_OVER;
        } else if (forAlphaComposite == CompositeType.SrcIn) {
            mode = PorterDuff.Mode.SRC_IN;
        } else if (forAlphaComposite == CompositeType.DstIn) {
            mode = PorterDuff.Mode.DST_IN;
        } else if (forAlphaComposite == CompositeType.SrcOut) {
            mode = PorterDuff.Mode.SRC_OUT;
        } else if (forAlphaComposite == CompositeType.DstOut) {
            mode = PorterDuff.Mode.DST_OUT;
        } else if (forAlphaComposite == CompositeType.SrcAtop) {
            mode = PorterDuff.Mode.SRC_ATOP;
        } else if (forAlphaComposite == CompositeType.DstAtop) {
            mode = PorterDuff.Mode.DST_ATOP;
        } else if (forAlphaComposite == CompositeType.AlphaXor) {
            mode = PorterDuff.Mode.XOR;
        } else {
            mode = PorterDuff.Mode.SRC_OVER;
        }
        return new PorterDuffXfermode(mode);
    }
}
