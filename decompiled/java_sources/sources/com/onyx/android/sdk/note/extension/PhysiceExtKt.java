package com.onyx.android.sdk.note.extension;

import com.onyx.android.sdk.replicator.note.bean.SizeFormat;
import kotlin.Metadata;

@Metadata(m61527d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\u001a\u0006\u0010\u0000\u001a\u00020\u0001\u001a\n\u0010\u0002\u001a\u00020\u0001*\u00020\u0001\u001a\n\u0010\u0003\u001a\u00020\u0001*\u00020\u0001¨\u0006\u0004"}, m61528d2 = {"getPhysicsToScreenRatio", "", "toPhysicsStrokeWidth", "toScreenStrokeWidth", "sdk-note_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class PhysiceExtKt {
    public static final float getPhysicsToScreenRatio() {
        return (300 * 8.27f) / SizeFormat.f45503A4.getSize().getWidth();
    }

    public static final float toPhysicsStrokeWidth(float f) {
        return f / getPhysicsToScreenRatio();
    }

    public static final float toScreenStrokeWidth(float f) {
        return f * getPhysicsToScreenRatio();
    }
}
