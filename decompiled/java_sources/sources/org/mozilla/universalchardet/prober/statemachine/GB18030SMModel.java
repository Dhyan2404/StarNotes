package org.mozilla.universalchardet.prober.statemachine;

import org.mozilla.universalchardet.Constants;

/* loaded from: classes13.dex */
public class GB18030SMModel extends SMModel {
    public static final int GB18030_CLASS_FACTOR = 7;

    /* renamed from: a */
    public static int[] f115626a = {PkgInt.pack4bits(1, 1, 1, 1, 1, 1, 1, 1), PkgInt.pack4bits(1, 1, 1, 1, 1, 1, 0, 0), PkgInt.pack4bits(1, 1, 1, 1, 1, 1, 1, 1), PkgInt.pack4bits(1, 1, 1, 0, 1, 1, 1, 1), PkgInt.pack4bits(1, 1, 1, 1, 1, 1, 1, 1), PkgInt.pack4bits(1, 1, 1, 1, 1, 1, 1, 1), PkgInt.pack4bits(3, 3, 3, 3, 3, 3, 3, 3), PkgInt.pack4bits(3, 3, 1, 1, 1, 1, 1, 1), PkgInt.pack4bits(2, 2, 2, 2, 2, 2, 2, 2), PkgInt.pack4bits(2, 2, 2, 2, 2, 2, 2, 2), PkgInt.pack4bits(2, 2, 2, 2, 2, 2, 2, 2), PkgInt.pack4bits(2, 2, 2, 2, 2, 2, 2, 2), PkgInt.pack4bits(2, 2, 2, 2, 2, 2, 2, 2), PkgInt.pack4bits(2, 2, 2, 2, 2, 2, 2, 2), PkgInt.pack4bits(2, 2, 2, 2, 2, 2, 2, 2), PkgInt.pack4bits(2, 2, 2, 2, 2, 2, 2, 4), PkgInt.pack4bits(5, 6, 6, 6, 6, 6, 6, 6), PkgInt.pack4bits(6, 6, 6, 6, 6, 6, 6, 6), PkgInt.pack4bits(6, 6, 6, 6, 6, 6, 6, 6), PkgInt.pack4bits(6, 6, 6, 6, 6, 6, 6, 6), PkgInt.pack4bits(6, 6, 6, 6, 6, 6, 6, 6), PkgInt.pack4bits(6, 6, 6, 6, 6, 6, 6, 6), PkgInt.pack4bits(6, 6, 6, 6, 6, 6, 6, 6), PkgInt.pack4bits(6, 6, 6, 6, 6, 6, 6, 6), PkgInt.pack4bits(6, 6, 6, 6, 6, 6, 6, 6), PkgInt.pack4bits(6, 6, 6, 6, 6, 6, 6, 6), PkgInt.pack4bits(6, 6, 6, 6, 6, 6, 6, 6), PkgInt.pack4bits(6, 6, 6, 6, 6, 6, 6, 6), PkgInt.pack4bits(6, 6, 6, 6, 6, 6, 6, 6), PkgInt.pack4bits(6, 6, 6, 6, 6, 6, 6, 6), PkgInt.pack4bits(6, 6, 6, 6, 6, 6, 6, 6), PkgInt.pack4bits(6, 6, 6, 6, 6, 6, 6, 0)};

    /* renamed from: b */
    public static int[] f115627b = {PkgInt.pack4bits(1, 0, 0, 0, 0, 0, 3, 1), PkgInt.pack4bits(1, 1, 1, 1, 1, 1, 2, 2), PkgInt.pack4bits(2, 2, 2, 2, 2, 1, 1, 0), PkgInt.pack4bits(4, 1, 0, 0, 1, 1, 1, 1), PkgInt.pack4bits(1, 1, 5, 1, 1, 1, 2, 1), PkgInt.pack4bits(1, 1, 0, 0, 0, 0, 0, 0)};

    /* renamed from: c */
    public static int[] f115628c = {0, 1, 1, 1, 1, 1, 2};

    public GB18030SMModel() {
        super(new PkgInt(3, 7, 2, 15, f115626a), 7, new PkgInt(3, 7, 2, 15, f115627b), f115628c, Constants.CHARSET_GB18030);
    }
}
