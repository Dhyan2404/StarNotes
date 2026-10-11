package com.sunia.HTREnginev2;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.android.exoplayer2.extractor.p007ts.PsExtractor;
import com.google.android.exoplayer2.trackselection.AdaptiveTrackSelection;
import com.onyx.galaxy.note.DataBinderMapperImpl;
import com.twelvemonkeys.imageio.metadata.iptc.IPTC;
import java.util.Random;
import net.p110sf.saxon.om.StandardNames;

/* loaded from: classes13.dex */
public final class f7l {

    /* renamed from: a */
    public static int[] f69730a = {3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113, 127, 131, 137, 139, 149, 151, 157, 163, 167, 173, 179, 181, 191, 193, 197, 199, 211, 223, 227, 229, 233, 239, 241, 251, 257, 263, 269, 271, 277, 281, 283, 293, 307, 311, 313, 317, DataBinderMapperImpl.f53291s5, 337, 347, DataBinderMapperImpl.f53061K5, DataBinderMapperImpl.f53089O5, 359, 367, 373, 379, 383, StandardNames.XML_LANG_TYPE, 397, 401, 409, 419, 421, 431, 433, 439, PsExtractor.f24604m, 449, 457, 461, 463, 467, 479, 487, 491, 499, 503, 509, 521, StandardNames.XS_G_YEAR, StandardNames.XS_POSITIVE_INTEGER, IPTC.TAG_RELEASE_TIME, 557, StandardNames.XS_ENTITY, 569, 571, 577, 587, StandardNames.XS_EXTENSION, StandardNames.XS_KEY, 601, 607, 613, 617, StandardNames.XS_SEQUENCE, StandardNames.XS_UNTYPED_ATOMIC, StandardNames.XSI_TYPE, 643, IPTC.TAG_LANGUAGE_IDENTIFIER, 653, 659, 661, 673, 677, 683, 691, TypedValues.TransitionType.TYPE_FROM, 709, AdaptiveTrackSelection.DEFAULT_MAX_HEIGHT_TO_DISCARD, 727};

    /* renamed from: a */
    public static void m54072a(int[] iArr) {
        Random random = new Random();
        for (int i = 0; i < iArr.length; i++) {
            int[] iArr2 = f69730a;
            iArr[i] = iArr2[random.nextInt(iArr2.length)];
        }
    }
}
