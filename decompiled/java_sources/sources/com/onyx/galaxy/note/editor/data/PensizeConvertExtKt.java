package com.onyx.galaxy.note.editor.data;

import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.galaxy.note.C10651R;
import kotlin.Metadata;

@Metadata(m61527d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0001\u001a\n\u0010\u0002\u001a\u00020\u0001*\u00020\u0001\u001a\n\u0010\u0003\u001a\u00020\u0001*\u00020\u0001\u001a\n\u0010\u0004\u001a\u00020\u0001*\u00020\u0001¨\u0006\u0005"}, m61528d2 = {"percentToValue", "", "sizeToValue", "valueToPercent", "valueToSize", "note_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class PensizeConvertExtKt {
    public static final float percentToValue(float f) {
        return f / ResManager.INSTANCE.getInteger(C10651R.integer.times_100);
    }

    public static final float sizeToValue(float f) {
        return f / ResManager.INSTANCE.getInteger(C10651R.integer.times_10);
    }

    public static final float valueToPercent(float f) {
        return f * ResManager.INSTANCE.getInteger(C10651R.integer.times_100);
    }

    public static final float valueToSize(float f) {
        return f * ResManager.INSTANCE.getInteger(C10651R.integer.times_10);
    }
}
