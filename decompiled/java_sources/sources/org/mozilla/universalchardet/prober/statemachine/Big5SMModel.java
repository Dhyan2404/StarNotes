package org.mozilla.universalchardet.prober.statemachine;

import org.mozilla.universalchardet.Constants;

/* loaded from: classes13.dex */
public class Big5SMModel extends SMModel {
    public static final int BIG5_CLASS_FACTOR = 5;

    /* renamed from: a */
    public static int[] f115614a = {PkgInt.pack4bits(1, 1, 1, 1, 1, 1, 1, 1), PkgInt.pack4bits(1, 1, 1, 1, 1, 1, 0, 0), PkgInt.pack4bits(1, 1, 1, 1, 1, 1, 1, 1), PkgInt.pack4bits(1, 1, 1, 0, 1, 1, 1, 1), PkgInt.pack4bits(1, 1, 1, 1, 1, 1, 1, 1), PkgInt.pack4bits(1, 1, 1, 1, 1, 1, 1, 1), PkgInt.pack4bits(1, 1, 1, 1, 1, 1, 1, 1), PkgInt.pack4bits(1, 1, 1, 1, 1, 1, 1, 1), PkgInt.pack4bits(2, 2, 2, 2, 2, 2, 2, 2), PkgInt.pack4bits(2, 2, 2, 2, 2, 2, 2, 2), PkgInt.pack4bits(2, 2, 2, 2, 2, 2, 2, 2), PkgInt.pack4bits(2, 2, 2, 2, 2, 2, 2, 2), PkgInt.pack4bits(2, 2, 2, 2, 2, 2, 2, 2), PkgInt.pack4bits(2, 2, 2, 2, 2, 2, 2, 2), PkgInt.pack4bits(2, 2, 2, 2, 2, 2, 2, 2), PkgInt.pack4bits(2, 2, 2, 2, 2, 2, 2, 1), PkgInt.pack4bits(4, 4, 4, 4, 4, 4, 4, 4), PkgInt.pack4bits(4, 4, 4, 4, 4, 4, 4, 4), PkgInt.pack4bits(4, 4, 4, 4, 4, 4, 4, 4), PkgInt.pack4bits(4, 4, 4, 4, 4, 4, 4, 4), PkgInt.pack4bits(4, 3, 3, 3, 3, 3, 3, 3), PkgInt.pack4bits(3, 3, 3, 3, 3, 3, 3, 3), PkgInt.pack4bits(3, 3, 3, 3, 3, 3, 3, 3), PkgInt.pack4bits(3, 3, 3, 3, 3, 3, 3, 3), PkgInt.pack4bits(3, 3, 3, 3, 3, 3, 3, 3), PkgInt.pack4bits(3, 3, 3, 3, 3, 3, 3, 3), PkgInt.pack4bits(3, 3, 3, 3, 3, 3, 3, 3), PkgInt.pack4bits(3, 3, 3, 3, 3, 3, 3, 3), PkgInt.pack4bits(3, 3, 3, 3, 3, 3, 3, 3), PkgInt.pack4bits(3, 3, 3, 3, 3, 3, 3, 3), PkgInt.pack4bits(3, 3, 3, 3, 3, 3, 3, 3), PkgInt.pack4bits(3, 3, 3, 3, 3, 3, 3, 0)};

    /* renamed from: b */
    public static int[] f115615b = {PkgInt.pack4bits(1, 0, 0, 3, 1, 1, 1, 1), PkgInt.pack4bits(1, 1, 2, 2, 2, 2, 2, 1), PkgInt.pack4bits(1, 0, 0, 0, 0, 0, 0, 0)};

    /* renamed from: c */
    public static int[] f115616c = {0, 1, 1, 2, 0};

    public Big5SMModel() {
        super(new PkgInt(3, 7, 2, 15, f115614a), 5, new PkgInt(3, 7, 2, 15, f115615b), f115616c, Constants.CHARSET_BIG5);
    }
}
