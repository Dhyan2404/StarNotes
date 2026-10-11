package org.mozilla.universalchardet.prober.statemachine;

import org.mozilla.universalchardet.Constants;

/* loaded from: classes13.dex */
public class UCS2BESMModel extends SMModel {
    public static final int UCS2BE_CLASS_FACTOR = 6;

    /* renamed from: a */
    public static int[] f115649a = {PkgInt.pack4bits(0, 0, 0, 0, 0, 0, 0, 0), PkgInt.pack4bits(0, 0, 1, 0, 0, 2, 0, 0), PkgInt.pack4bits(0, 0, 0, 0, 0, 0, 0, 0), PkgInt.pack4bits(0, 0, 0, 3, 0, 0, 0, 0), PkgInt.pack4bits(0, 0, 0, 0, 0, 0, 0, 0), PkgInt.pack4bits(0, 3, 3, 3, 3, 3, 0, 0), PkgInt.pack4bits(0, 0, 0, 0, 0, 0, 0, 0), PkgInt.pack4bits(0, 0, 0, 0, 0, 0, 0, 0), PkgInt.pack4bits(0, 0, 0, 0, 0, 0, 0, 0), PkgInt.pack4bits(0, 0, 0, 0, 0, 0, 0, 0), PkgInt.pack4bits(0, 0, 0, 0, 0, 0, 0, 0), PkgInt.pack4bits(0, 0, 0, 0, 0, 0, 0, 0), PkgInt.pack4bits(0, 0, 0, 0, 0, 0, 0, 0), PkgInt.pack4bits(0, 0, 0, 0, 0, 0, 0, 0), PkgInt.pack4bits(0, 0, 0, 0, 0, 0, 0, 0), PkgInt.pack4bits(0, 0, 0, 0, 0, 0, 0, 0), PkgInt.pack4bits(0, 0, 0, 0, 0, 0, 0, 0), PkgInt.pack4bits(0, 0, 0, 0, 0, 0, 0, 0), PkgInt.pack4bits(0, 0, 0, 0, 0, 0, 0, 0), PkgInt.pack4bits(0, 0, 0, 0, 0, 0, 0, 0), PkgInt.pack4bits(0, 0, 0, 0, 0, 0, 0, 0), PkgInt.pack4bits(0, 0, 0, 0, 0, 0, 0, 0), PkgInt.pack4bits(0, 0, 0, 0, 0, 0, 0, 0), PkgInt.pack4bits(0, 0, 0, 0, 0, 0, 0, 0), PkgInt.pack4bits(0, 0, 0, 0, 0, 0, 0, 0), PkgInt.pack4bits(0, 0, 0, 0, 0, 0, 0, 0), PkgInt.pack4bits(0, 0, 0, 0, 0, 0, 0, 0), PkgInt.pack4bits(0, 0, 0, 0, 0, 0, 0, 0), PkgInt.pack4bits(0, 0, 0, 0, 0, 0, 0, 0), PkgInt.pack4bits(0, 0, 0, 0, 0, 0, 0, 0), PkgInt.pack4bits(0, 0, 0, 0, 0, 0, 0, 0), PkgInt.pack4bits(0, 0, 0, 0, 0, 0, 4, 5)};

    /* renamed from: b */
    public static int[] f115650b = {PkgInt.pack4bits(5, 7, 7, 1, 4, 3, 1, 1), PkgInt.pack4bits(1, 1, 1, 1, 2, 2, 2, 2), PkgInt.pack4bits(2, 2, 6, 6, 6, 6, 1, 1), PkgInt.pack4bits(6, 6, 6, 6, 6, 2, 6, 6), PkgInt.pack4bits(6, 6, 6, 6, 5, 7, 7, 1), PkgInt.pack4bits(5, 8, 6, 6, 1, 6, 6, 6), PkgInt.pack4bits(6, 6, 6, 6, 1, 1, 0, 0)};

    /* renamed from: c */
    public static int[] f115651c = {2, 2, 2, 0, 2, 2};

    public UCS2BESMModel() {
        super(new PkgInt(3, 7, 2, 15, f115649a), 6, new PkgInt(3, 7, 2, 15, f115650b), f115651c, Constants.CHARSET_UTF_16BE);
    }
}
