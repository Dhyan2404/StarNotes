package org.mozilla.universalchardet.prober.statemachine;

import org.mozilla.universalchardet.Constants;

/* loaded from: classes13.dex */
public class EUCJPSMModel extends SMModel {
    public static final int EUCJP_CLASS_FACTOR = 6;

    /* renamed from: a */
    public static int[] f115617a = {PkgInt.pack4bits(4, 4, 4, 4, 4, 4, 4, 4), PkgInt.pack4bits(4, 4, 4, 4, 4, 4, 5, 5), PkgInt.pack4bits(4, 4, 4, 4, 4, 4, 4, 4), PkgInt.pack4bits(4, 4, 4, 5, 4, 4, 4, 4), PkgInt.pack4bits(4, 4, 4, 4, 4, 4, 4, 4), PkgInt.pack4bits(4, 4, 4, 4, 4, 4, 4, 4), PkgInt.pack4bits(4, 4, 4, 4, 4, 4, 4, 4), PkgInt.pack4bits(4, 4, 4, 4, 4, 4, 4, 4), PkgInt.pack4bits(4, 4, 4, 4, 4, 4, 4, 4), PkgInt.pack4bits(4, 4, 4, 4, 4, 4, 4, 4), PkgInt.pack4bits(4, 4, 4, 4, 4, 4, 4, 4), PkgInt.pack4bits(4, 4, 4, 4, 4, 4, 4, 4), PkgInt.pack4bits(4, 4, 4, 4, 4, 4, 4, 4), PkgInt.pack4bits(4, 4, 4, 4, 4, 4, 4, 4), PkgInt.pack4bits(4, 4, 4, 4, 4, 4, 4, 4), PkgInt.pack4bits(4, 4, 4, 4, 4, 4, 4, 4), PkgInt.pack4bits(5, 5, 5, 5, 5, 5, 5, 5), PkgInt.pack4bits(5, 5, 5, 5, 5, 5, 1, 3), PkgInt.pack4bits(5, 5, 5, 5, 5, 5, 5, 5), PkgInt.pack4bits(5, 5, 5, 5, 5, 5, 5, 5), PkgInt.pack4bits(5, 2, 2, 2, 2, 2, 2, 2), PkgInt.pack4bits(2, 2, 2, 2, 2, 2, 2, 2), PkgInt.pack4bits(2, 2, 2, 2, 2, 2, 2, 2), PkgInt.pack4bits(2, 2, 2, 2, 2, 2, 2, 2), PkgInt.pack4bits(2, 2, 2, 2, 2, 2, 2, 2), PkgInt.pack4bits(2, 2, 2, 2, 2, 2, 2, 2), PkgInt.pack4bits(2, 2, 2, 2, 2, 2, 2, 2), PkgInt.pack4bits(2, 2, 2, 2, 2, 2, 2, 2), PkgInt.pack4bits(0, 0, 0, 0, 0, 0, 0, 0), PkgInt.pack4bits(0, 0, 0, 0, 0, 0, 0, 0), PkgInt.pack4bits(0, 0, 0, 0, 0, 0, 0, 0), PkgInt.pack4bits(0, 0, 0, 0, 0, 0, 0, 5)};

    /* renamed from: b */
    public static int[] f115618b = {PkgInt.pack4bits(3, 4, 3, 5, 0, 1, 1, 1), PkgInt.pack4bits(1, 1, 1, 1, 2, 2, 2, 2), PkgInt.pack4bits(2, 2, 0, 1, 0, 1, 1, 1), PkgInt.pack4bits(1, 1, 0, 1, 1, 1, 3, 1), PkgInt.pack4bits(3, 1, 1, 1, 0, 0, 0, 0)};

    /* renamed from: c */
    public static int[] f115619c = {2, 2, 2, 3, 1, 0};

    public EUCJPSMModel() {
        super(new PkgInt(3, 7, 2, 15, f115617a), 6, new PkgInt(3, 7, 2, 15, f115618b), f115619c, Constants.CHARSET_EUC_JP);
    }
}
