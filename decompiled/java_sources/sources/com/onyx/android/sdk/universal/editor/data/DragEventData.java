package com.onyx.android.sdk.universal.editor.data;

import android.content.ClipData;
import android.content.Intent;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0007HÆ\u0003J)\u0010\u0014\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÆ\u0001J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/DragEventData;", "", "clipData", "Landroid/content/ClipData;", "touchPoint", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "localIntent", "Landroid/content/Intent;", "(Landroid/content/ClipData;Lcom/onyx/android/sdk/base/data/TouchPoint;Landroid/content/Intent;)V", "getClipData", "()Landroid/content/ClipData;", "getLocalIntent", "()Landroid/content/Intent;", "setLocalIntent", "(Landroid/content/Intent;)V", "getTouchPoint", "()Lcom/onyx/android/sdk/base/data/TouchPoint;", "component1", "component2", "component3", "copy", "equals", "", Constants.ATTRVAL_OTHER, "hashCode", "", "toString", "", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final /* data */ class DragEventData {

    @NotNull
    private final ClipData clipData;

    @Nullable
    private Intent localIntent;

    @NotNull
    private final TouchPoint touchPoint;

    public DragEventData(@NotNull ClipData clipData, @NotNull TouchPoint touchPoint, @Nullable Intent intent) {
        Intrinsics.checkNotNullParameter(clipData, "clipData");
        Intrinsics.checkNotNullParameter(touchPoint, "touchPoint");
        this.clipData = clipData;
        this.touchPoint = touchPoint;
        this.localIntent = intent;
    }

    public static /* synthetic */ DragEventData copy$default(DragEventData dragEventData, ClipData clipData, TouchPoint touchPoint, Intent intent, int i, Object obj) {
        if ((i & 1) != 0) {
            clipData = dragEventData.clipData;
        }
        if ((i & 2) != 0) {
            touchPoint = dragEventData.touchPoint;
        }
        if ((i & 4) != 0) {
            intent = dragEventData.localIntent;
        }
        return dragEventData.copy(clipData, touchPoint, intent);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final ClipData getClipData() {
        return this.clipData;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final TouchPoint getTouchPoint() {
        return this.touchPoint;
    }

    @Nullable
    /* renamed from: component3, reason: from getter */
    public final Intent getLocalIntent() {
        return this.localIntent;
    }

    @NotNull
    public final DragEventData copy(@NotNull ClipData clipData, @NotNull TouchPoint touchPoint, @Nullable Intent localIntent) {
        Intrinsics.checkNotNullParameter(clipData, "clipData");
        Intrinsics.checkNotNullParameter(touchPoint, "touchPoint");
        return new DragEventData(clipData, touchPoint, localIntent);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DragEventData)) {
            return false;
        }
        DragEventData dragEventData = (DragEventData) other;
        return Intrinsics.areEqual(this.clipData, dragEventData.clipData) && Intrinsics.areEqual(this.touchPoint, dragEventData.touchPoint) && Intrinsics.areEqual(this.localIntent, dragEventData.localIntent);
    }

    @NotNull
    public final ClipData getClipData() {
        return this.clipData;
    }

    @Nullable
    public final Intent getLocalIntent() {
        return this.localIntent;
    }

    @NotNull
    public final TouchPoint getTouchPoint() {
        return this.touchPoint;
    }

    public int hashCode() {
        int hashCode = ((this.clipData.hashCode() * 31) + this.touchPoint.hashCode()) * 31;
        Intent intent = this.localIntent;
        return hashCode + (intent == null ? 0 : intent.hashCode());
    }

    public final void setLocalIntent(@Nullable Intent intent) {
        this.localIntent = intent;
    }

    @NotNull
    public String toString() {
        return "DragEventData(clipData=" + this.clipData + ", touchPoint=" + this.touchPoint + ", localIntent=" + this.localIntent + ')';
    }

    public /* synthetic */ DragEventData(ClipData clipData, TouchPoint touchPoint, Intent intent, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(clipData, touchPoint, (i & 4) != 0 ? null : intent);
    }
}
