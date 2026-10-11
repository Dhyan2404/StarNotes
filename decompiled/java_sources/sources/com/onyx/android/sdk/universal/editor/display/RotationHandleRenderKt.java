package com.onyx.android.sdk.universal.editor.display;

import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.universal.C8045R;
import kotlin.Metadata;

@Metadata(m61527d1 = {"\u0000\b\n\u0002\u0010\u0007\n\u0002\b\t\"\u0017\u0010\u0005\u001a\u00020\u00008\u0006¢\u0006\f\n\u0004\b\u0001\u0010\u0002\u001a\u0004\b\u0003\u0010\u0004\"\u0017\u0010\b\u001a\u00020\u00008\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0002\u001a\u0004\b\u0007\u0010\u0004¨\u0006\t"}, m61528d2 = {"", "a", "F", "getRotationPointSize", "()F", "rotationPointSize", "b", "getRotationPointMargin", "rotationPointMargin", "sdk-universal_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class RotationHandleRenderKt {

    /* renamed from: a */
    public static final float f51523a;

    /* renamed from: b */
    public static final float f51524b;

    static {
        ResManager resManager = ResManager.INSTANCE;
        f51523a = resManager.getDimension(C8045R.dimen.rotation_point_size);
        f51524b = resManager.getDimension(C8045R.dimen.rotation_point_margin);
    }

    public static final float getRotationPointMargin() {
        return f51524b;
    }

    public static final float getRotationPointSize() {
        return f51523a;
    }
}
