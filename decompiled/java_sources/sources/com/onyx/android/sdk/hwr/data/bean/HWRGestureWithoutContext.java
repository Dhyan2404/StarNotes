package com.onyx.android.sdk.hwr.data.bean;

import com.alibaba.fastjson2.annotation.JSONField;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u0007¢\u0006\u0004\b\u0015\u0010\u0016J\u0006\u0010\u0003\u001a\u00020\u0002J\b\u0010\u0005\u001a\u00020\u0004H\u0016R\"\u0010\f\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR$\u0010\u0014\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/data/bean/HWRGestureWithoutContext;", "", "", "isNone", "", "toString", "a", Constants.STRING_SIG, "getType", "()Ljava/lang/String;", "setType", "(Ljava/lang/String;)V", "type", "Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;", "b", "Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;", "getBoundBox", "()Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;", "setBoundBox", "(Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;)V", "boundBox", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class HWRGestureWithoutContext {

    @NotNull
    public static final String GESTURE_BOTTOM_TOP = "bottom-top";

    @NotNull
    public static final String GESTURE_LEFT_RIGHT = "left-right";

    @NotNull
    public static final String GESTURE_NONE = "none";

    @NotNull
    public static final String GESTURE_RIGHT_LEFT = "right-left";

    @NotNull
    public static final String GESTURE_SCRATCH = "scratch";

    @NotNull
    public static final String GESTURE_SURROUND = "surround";

    @NotNull
    public static final String GESTURE_TOP_BOTTOM = "top-bottom";

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public String type = "none";

    /* renamed from: b, reason: from kotlin metadata */
    @JSONField(name = IStyleSheet.CLASS_BOUNDING_BOX)
    @Nullable
    public HWRBoundBox boundBox;

    @Nullable
    public final HWRBoundBox getBoundBox() {
        return this.boundBox;
    }

    @NotNull
    public final String getType() {
        return this.type;
    }

    public final boolean isNone() {
        return Intrinsics.areEqual(this.type, "none");
    }

    public final void setBoundBox(@Nullable HWRBoundBox hWRBoundBox) {
        this.boundBox = hWRBoundBox;
    }

    public final void setType(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.type = str;
    }

    @NotNull
    public String toString() {
        return JSONUtils.INSTANCE.toPrettyJson(this);
    }
}
