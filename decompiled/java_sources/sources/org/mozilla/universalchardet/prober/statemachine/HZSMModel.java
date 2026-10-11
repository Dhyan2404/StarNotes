package org.mozilla.universalchardet.prober.statemachine;

import org.mozilla.universalchardet.Constants;

/* loaded from: classes13.dex */
public class HZSMModel extends SMModel {
    public static final int HZS_CLASS_FACTOR = 6;

    /* renamed from: a */
    public static int[] f115629a = {PkgInt.pack4bits(1, 0, 0, 0, 0, 0, 0, 0), PkgInt.pack4bits(0, 0, 0, 0, 0, 0, 0, 0), PkgInt.pack4bits(0, 0, 0, 0, 0, 0, 0, 0), PkgInt.pack4bits(0, 0, 0, 1, 0, 0, 0, 0), PkgInt.pack4bits(0, 0, 0, 0, 0, 0, 0, 0), PkgInt.pack4bits(0, 0, 0, 0, 0, 0, 0, 0), PkgInt.pack4bits(0, 0, 0, 0, 0, 0, 0, 0), PkgInt.pack4bits(0, 0, 0, 0, 0, 0, 0, 0), PkgInt.pack4bits(0, 0, 0, 0, 0, 0, 0, 0), PkgInt.pack4bits(0, 0, 0, 0, 0, 0, 0, 0), PkgInt.pack4bits(0, 0, 0, 0, 0, 0, 0, 0), PkgInt.pack4bits(0, 0, 0, 0, 0, 0, 0, 0), PkgInt.pack4bits(0, 0, 0, 0, 0, 0, 0, 0), PkgInt.pack4bits(0, 0, 0, 0, 0, 0, 0, 0), PkgInt.pack4bits(0, 0, 0, 0, 0, 0, 0, 0), PkgInt.pack4bits(0, 0, 0, 4, 0, 5, 2, 0), PkgInt.pack4bits(1, 1, 1, 1, 1, 1, 1, 1), PkgInt.pack4bits(1, 1, 1, 1, 1, 1, 1, 1), PkgInt.pack4bits(1, 1, 1, 1, 1, 1, 1, 1), PkgInt.pack4bits(1, 1, 1, 1, 1, 1, 1, 1), PkgInt.pack4bits(1, 1, 1, 1, 1, 1, 1, 1), PkgInt.pack4bits(1, 1, 1, 1, 1, 1, 1, 1), PkgInt.pack4bits(1, 1, 1, 1, 1, 1, 1, 1), PkgInt.pack4bits(1, 1, 1, 1, 1, 1, 1, 1), PkgInt.pack4bits(1, 1, 1, 1, 1, 1, 1, 1), PkgInt.pack4bits(1, 1, 1, 1, 1, 1, 1, 1), PkgInt.pack4bits(1, 1, 1, 1, 1, 1, 1, 1), PkgInt.pack4bits(1, 1, 1, 1, 1, 1, 1, 1), PkgInt.pack4bits(1, 1, 1, 1, 1, 1, 1, 1), PkgInt.pack4bits(1, 1, 1, 1, 1, 1, 1, 1), PkgInt.pack4bits(1, 1, 1, 1, 1, 1, 1, 1), PkgInt.pack4bits(1, 1, 1, 1, 1, 1, 1, 1)};

    /* renamed from: b */
    public static int[] f115630b = {PkgInt.pack4bits(0, 1, 3, 0, 0, 0, 1, 1), PkgInt.pack4bits(1, 1, 1, 1, 2, 2, 2, 2), PkgInt.pack4bits(2, 2, 1, 1, 0, 0, 4, 1), PkgInt.pack4bits(5, 1, 6, 1, 5, 5, 4, 1), PkgInt.pack4bits(4, 1, 4, 4, 4, 1, 4, 1), PkgInt.pack4bits(4, 2, 0, 0, 0, 0, 0, 0)};

    /* renamed from: c */
    public static int[] f115631c = {0, 0, 0, 0, 0, 0};

    public HZSMModel() {
        super(new PkgInt(3, 7, 2, 15, f115629a), 6, new PkgInt(3, 7, 2, 15, f115630b), f115631c, Constants.CHARSET_HZ_GB_2312);
    }
}
