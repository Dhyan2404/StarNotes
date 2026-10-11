package org.mozilla.universalchardet.prober.statemachine;

import org.mozilla.universalchardet.Constants;

/* loaded from: classes13.dex */
public class SJISSMModel extends SMModel {
    public static final int SJIS_CLASS_FACTOR = 6;

    /* renamed from: a */
    public static int[] f115646a = {PkgInt.pack4bits(1, 1, 1, 1, 1, 1, 1, 1), PkgInt.pack4bits(1, 1, 1, 1, 1, 1, 0, 0), PkgInt.pack4bits(1, 1, 1, 1, 1, 1, 1, 1), PkgInt.pack4bits(1, 1, 1, 0, 1, 1, 1, 1), PkgInt.pack4bits(1, 1, 1, 1, 1, 1, 1, 1), PkgInt.pack4bits(1, 1, 1, 1, 1, 1, 1, 1), PkgInt.pack4bits(1, 1, 1, 1, 1, 1, 1, 1), PkgInt.pack4bits(1, 1, 1, 1, 1, 1, 1, 1), PkgInt.pack4bits(2, 2, 2, 2, 2, 2, 2, 2), PkgInt.pack4bits(2, 2, 2, 2, 2, 2, 2, 2), PkgInt.pack4bits(2, 2, 2, 2, 2, 2, 2, 2), PkgInt.pack4bits(2, 2, 2, 2, 2, 2, 2, 2), PkgInt.pack4bits(2, 2, 2, 2, 2, 2, 2, 2), PkgInt.pack4bits(2, 2, 2, 2, 2, 2, 2, 2), PkgInt.pack4bits(2, 2, 2, 2, 2, 2, 2, 2), PkgInt.pack4bits(2, 2, 2, 2, 2, 2, 2, 1), PkgInt.pack4bits(3, 3, 3, 3, 3, 3, 3, 3), PkgInt.pack4bits(3, 3, 3, 3, 3, 3, 3, 3), PkgInt.pack4bits(3, 3, 3, 3, 3, 3, 3, 3), PkgInt.pack4bits(3, 3, 3, 3, 3, 3, 3, 3), PkgInt.pack4bits(2, 2, 2, 2, 2, 2, 2, 2), PkgInt.pack4bits(2, 2, 2, 2, 2, 2, 2, 2), PkgInt.pack4bits(2, 2, 2, 2, 2, 2, 2, 2), PkgInt.pack4bits(2, 2, 2, 2, 2, 2, 2, 2), PkgInt.pack4bits(2, 2, 2, 2, 2, 2, 2, 2), PkgInt.pack4bits(2, 2, 2, 2, 2, 2, 2, 2), PkgInt.pack4bits(2, 2, 2, 2, 2, 2, 2, 2), PkgInt.pack4bits(2, 2, 2, 2, 2, 2, 2, 2), PkgInt.pack4bits(3, 3, 3, 3, 3, 3, 3, 3), PkgInt.pack4bits(3, 3, 3, 3, 3, 4, 4, 4), PkgInt.pack4bits(4, 4, 4, 4, 4, 4, 4, 4), PkgInt.pack4bits(4, 4, 4, 4, 4, 0, 0, 0)};

    /* renamed from: b */
    public static int[] f115647b = {PkgInt.pack4bits(1, 0, 0, 3, 1, 1, 1, 1), PkgInt.pack4bits(1, 1, 1, 1, 2, 2, 2, 2), PkgInt.pack4bits(2, 2, 1, 1, 0, 0, 0, 0)};

    /* renamed from: c */
    public static int[] f115648c = {0, 1, 1, 2, 0, 0};

    public SJISSMModel() {
        super(new PkgInt(3, 7, 2, 15, f115646a), 6, new PkgInt(3, 7, 2, 15, f115647b), f115648c, Constants.CHARSET_SHIFT_JIS);
    }
}
