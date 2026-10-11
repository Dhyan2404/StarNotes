package com.onyx.android.sdk.hwr.data.bean;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.hwr.data.constant.HWRGestureType;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b!\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b#\u0010$J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R\u001a\u0010\n\u001a\u00020\u00028\u0006X\u0086D¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\tR\u001a\u0010\r\u001a\u00020\u00028\u0006X\u0086D¢\u0006\f\n\u0004\b\u000b\u0010\u0007\u001a\u0004\b\f\u0010\tR\u001a\u0010\u0010\u001a\u00020\u00028\u0006X\u0086D¢\u0006\f\n\u0004\b\u000e\u0010\u0007\u001a\u0004\b\u000f\u0010\tR\u001a\u0010\u0013\u001a\u00020\u00028\u0006X\u0086D¢\u0006\f\n\u0004\b\u0011\u0010\u0007\u001a\u0004\b\u0012\u0010\tR\u001a\u0010\u0016\u001a\u00020\u00028\u0006X\u0086D¢\u0006\f\n\u0004\b\u0014\u0010\u0007\u001a\u0004\b\u0015\u0010\tR\u001a\u0010\u0019\u001a\u00020\u00028\u0006X\u0086D¢\u0006\f\n\u0004\b\u0017\u0010\u0007\u001a\u0004\b\u0018\u0010\tR\u001a\u0010\u001c\u001a\u00020\u00028\u0006X\u0086D¢\u0006\f\n\u0004\b\u001a\u0010\u0007\u001a\u0004\b\u001b\u0010\tR\u001a\u0010\u001f\u001a\u00020\u00028\u0006X\u0086D¢\u0006\f\n\u0004\b\u001d\u0010\u0007\u001a\u0004\b\u001e\u0010\tR\u001a\u0010\"\u001a\u00020\u00028\u0006X\u0086D¢\u0006\f\n\u0004\b \u0010\u0007\u001a\u0004\b!\u0010\t¨\u0006%"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/data/bean/MLGesture;", "", "", "text", "", "isMLGesture", "a", Constants.STRING_SIG, "getARCH_ABOVE", "()Ljava/lang/String;", "ARCH_ABOVE", "b", "getARCH_BELOW", "ARCH_BELOW", "c", "getCARET_ABOVE", "CARET_ABOVE", "d", "getCARET_BELOW", "CARET_BELOW", "e", "getCORNER", "CORNER", C6997f.f39671c, "getSCRIBBLE", "SCRIBBLE", C6998g.f39679a, "getSTRIKE", "STRIKE", C6999h.f39688c, "getVERTICALBAR", "VERTICALBAR", "i", "getWRITING", "WRITING", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class MLGesture {

    @NotNull
    public static final MLGesture INSTANCE = new MLGesture();

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final String ARCH_ABOVE = HWRGestureType.ARCH_ABOVE;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public static final String ARCH_BELOW = HWRGestureType.ARCH_BELOW;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public static final String CARET_ABOVE = HWRGestureType.CARET_ABOVE;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public static final String CARET_BELOW = HWRGestureType.CARET_BELOW;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public static final String CORNER = "corner";

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public static final String SCRIBBLE = HWRGestureType.SCRIBBLE;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public static final String STRIKE = HWRGestureType.STRIKE;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public static final String VERTICALBAR = HWRGestureType.VERTIALBAR;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public static final String WRITING = HWRGestureType.WRITING;

    @NotNull
    public final String getARCH_ABOVE() {
        return ARCH_ABOVE;
    }

    @NotNull
    public final String getARCH_BELOW() {
        return ARCH_BELOW;
    }

    @NotNull
    public final String getCARET_ABOVE() {
        return CARET_ABOVE;
    }

    @NotNull
    public final String getCARET_BELOW() {
        return CARET_BELOW;
    }

    @NotNull
    public final String getCORNER() {
        return CORNER;
    }

    @NotNull
    public final String getSCRIBBLE() {
        return SCRIBBLE;
    }

    @NotNull
    public final String getSTRIKE() {
        return STRIKE;
    }

    @NotNull
    public final String getVERTICALBAR() {
        return VERTICALBAR;
    }

    @NotNull
    public final String getWRITING() {
        return WRITING;
    }

    public final boolean isMLGesture(@NotNull String text) {
        List mutableListOf;
        Intrinsics.checkNotNullParameter(text, "text");
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(ARCH_ABOVE, ARCH_BELOW, CARET_ABOVE, CARET_BELOW, CORNER, SCRIBBLE, STRIKE, VERTICALBAR, WRITING);
        return mutableListOf.contains(text);
    }
}
