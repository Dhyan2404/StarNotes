package com.onyx.android.sdk.hwr.data.bean;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.gon;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010\u0011\n\u0002\b\u0012\u0018\u0000 !2\u00020\u0001:\u0001!B\u0011\b\u0016\u0012\u0006\u0010\u000b\u001a\u00020\u0004¢\u0006\u0004\b \u0010\nJ\u0006\u0010\u0003\u001a\u00020\u0002R\"\u0010\u000b\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR$\u0010\u000f\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\u0006\u001a\u0004\b\r\u0010\b\"\u0004\b\u000e\u0010\nR*\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R*\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0012\u001a\u0004\b\u0019\u0010\u0014\"\u0004\b\u001a\u0010\u0016R*\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u0012\u001a\u0004\b\u001d\u0010\u0014\"\u0004\b\u001e\u0010\u0016¨\u0006\""}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/data/bean/HWRGestureWithContext;", "", "", "isScratch", "", "a", Constants.STRING_SIG, "getGesture", "()Ljava/lang/String;", "setGesture", "(Ljava/lang/String;)V", "gesture", "b", "getGestureStrokeId", "setGestureStrokeId", "gestureStrokeId", "", "c", "[Ljava/lang/String;", "getItemIds", "()[Ljava/lang/String;", "setItemIds", "([Ljava/lang/String;)V", "itemIds", "d", "getBefore", "setBefore", gon.f71276c0, "e", "getAfter", "setAfter", gon.f71277d0, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "Companion", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class HWRGestureWithContext {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    public static final String GESTURE_INSERT = "insert";

    @NotNull
    public static final String GESTURE_JOIN = "join";

    @NotNull
    public static final String GESTURE_NONE = "";

    @NotNull
    public static final String GESTURE_SCRATCH = "scratch";

    @NotNull
    public static final String GESTURE_STRIKE_THROUGH = "strikethrough";

    @NotNull
    public static final String GESTURE_SURROUND = "surround";

    @NotNull
    public static final String GESTURE_UNDERLINE = "underline";

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public String gesture;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public String gestureStrokeId;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public String[] itemIds;

    /* renamed from: d, reason: from kotlin metadata */
    @Nullable
    public String[] before;

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public String[] after;

    @Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\n\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J1\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u00042\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00040\u000f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00040\u000f¢\u0006\u0002\u0010\u0011J1\u0010\u0012\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u00042\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00040\u000f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00040\u000f¢\u0006\u0002\u0010\u0011J#\u0010\u0013\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u00042\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00040\u000f¢\u0006\u0002\u0010\u0015J#\u0010\u0016\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u00042\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00040\u000f¢\u0006\u0002\u0010\u0015J#\u0010\u0017\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u00042\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00040\u000f¢\u0006\u0002\u0010\u0015J#\u0010\u0018\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u00042\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00040\u000f¢\u0006\u0002\u0010\u0015R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/data/bean/HWRGestureWithContext$Companion;", "", "()V", "GESTURE_INSERT", "", "GESTURE_JOIN", "GESTURE_NONE", "GESTURE_SCRATCH", "GESTURE_STRIKE_THROUGH", "GESTURE_SURROUND", "GESTURE_UNDERLINE", HWRGestureWithContext.GESTURE_INSERT, "Lcom/onyx/android/sdk/hwr/data/bean/HWRGestureWithContext;", "strokeId", gon.f71276c0, "", gon.f71277d0, "(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lcom/onyx/android/sdk/hwr/data/bean/HWRGestureWithContext;", HWRGestureWithContext.GESTURE_JOIN, "scratch", "itemIds", "(Ljava/lang/String;[Ljava/lang/String;)Lcom/onyx/android/sdk/hwr/data/bean/HWRGestureWithContext;", HWRGestureWithContext.GESTURE_STRIKE_THROUGH, "surround", "underline", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final HWRGestureWithContext insert(@Nullable String strokeId, @NotNull String[] before, @NotNull String[] after) {
            Intrinsics.checkNotNullParameter(before, "before");
            Intrinsics.checkNotNullParameter(after, "after");
            HWRGestureWithContext hWRGestureWithContext = new HWRGestureWithContext(HWRGestureWithContext.GESTURE_INSERT);
            hWRGestureWithContext.setBefore(before);
            hWRGestureWithContext.setAfter(after);
            return hWRGestureWithContext;
        }

        @NotNull
        public final HWRGestureWithContext join(@Nullable String strokeId, @NotNull String[] before, @NotNull String[] after) {
            Intrinsics.checkNotNullParameter(before, "before");
            Intrinsics.checkNotNullParameter(after, "after");
            HWRGestureWithContext hWRGestureWithContext = new HWRGestureWithContext(HWRGestureWithContext.GESTURE_JOIN);
            hWRGestureWithContext.setBefore(before);
            hWRGestureWithContext.setAfter(after);
            return hWRGestureWithContext;
        }

        @NotNull
        public final HWRGestureWithContext scratch(@Nullable String strokeId, @NotNull String[] itemIds) {
            Intrinsics.checkNotNullParameter(itemIds, "itemIds");
            HWRGestureWithContext hWRGestureWithContext = new HWRGestureWithContext("scratch");
            hWRGestureWithContext.setGestureStrokeId(strokeId);
            hWRGestureWithContext.setItemIds(itemIds);
            return hWRGestureWithContext;
        }

        @NotNull
        public final HWRGestureWithContext strikethrough(@Nullable String strokeId, @NotNull String[] itemIds) {
            Intrinsics.checkNotNullParameter(itemIds, "itemIds");
            HWRGestureWithContext hWRGestureWithContext = new HWRGestureWithContext(HWRGestureWithContext.GESTURE_STRIKE_THROUGH);
            hWRGestureWithContext.setGestureStrokeId(strokeId);
            hWRGestureWithContext.setItemIds(itemIds);
            return hWRGestureWithContext;
        }

        @NotNull
        public final HWRGestureWithContext surround(@Nullable String strokeId, @NotNull String[] itemIds) {
            Intrinsics.checkNotNullParameter(itemIds, "itemIds");
            HWRGestureWithContext hWRGestureWithContext = new HWRGestureWithContext("surround");
            hWRGestureWithContext.setGestureStrokeId(strokeId);
            hWRGestureWithContext.setItemIds(itemIds);
            return hWRGestureWithContext;
        }

        @NotNull
        public final HWRGestureWithContext underline(@Nullable String strokeId, @NotNull String[] itemIds) {
            Intrinsics.checkNotNullParameter(itemIds, "itemIds");
            HWRGestureWithContext hWRGestureWithContext = new HWRGestureWithContext("underline");
            hWRGestureWithContext.setGestureStrokeId(strokeId);
            hWRGestureWithContext.setItemIds(itemIds);
            return hWRGestureWithContext;
        }

        public Companion() {
        }
    }

    public HWRGestureWithContext(@NotNull String gesture) {
        Intrinsics.checkNotNullParameter(gesture, "gesture");
        this.gesture = gesture;
    }

    @Nullable
    public final String[] getAfter() {
        return this.after;
    }

    @Nullable
    public final String[] getBefore() {
        return this.before;
    }

    @NotNull
    public final String getGesture() {
        return this.gesture;
    }

    @Nullable
    public final String getGestureStrokeId() {
        return this.gestureStrokeId;
    }

    @Nullable
    public final String[] getItemIds() {
        return this.itemIds;
    }

    public final boolean isScratch() {
        return Intrinsics.areEqual(this.gesture, "scratch");
    }

    public final void setAfter(@Nullable String[] strArr) {
        this.after = strArr;
    }

    public final void setBefore(@Nullable String[] strArr) {
        this.before = strArr;
    }

    public final void setGesture(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.gesture = str;
    }

    public final void setGestureStrokeId(@Nullable String str) {
        this.gestureStrokeId = str;
    }

    public final void setItemIds(@Nullable String[] strArr) {
        this.itemIds = strArr;
    }
}
