package com.onyx.android.sdk.universal.editor.events.app;

import androidx.core.app.NotificationCompat;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u000e\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004¢\u0006\u0004\b\u0015\u0010\u0016J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\u001d\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0006\u001a\u00020\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u0004HÆ\u0001J\t\u0010\n\u001a\u00020\tHÖ\u0001J\t\u0010\u000b\u001a\u00020\u0002HÖ\u0001J\u0013\u0010\r\u001a\u00020\u00042\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0006\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u0017\u0010\u0007\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0007\u0010\u0014¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/app/ChangeScrollerGravityEvent;", "", "", "component1", "", "component2", NotificationCompat.WearableExtender.f5060z, "isHorizontal", "copy", "", "toString", "hashCode", Constants.ATTRVAL_OTHER, "equals", "a", "I", "getGravity", "()I", "b", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(IZ)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class ChangeScrollerGravityEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    public final int gravity;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    public final boolean isHorizontal;

    /* JADX WARN: Multi-variable type inference failed */
    public ChangeScrollerGravityEvent() {
        this(0, 0 == true ? 1 : 0, 3, null);
    }

    public static /* synthetic */ ChangeScrollerGravityEvent copy$default(ChangeScrollerGravityEvent changeScrollerGravityEvent, int i, boolean z, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = changeScrollerGravityEvent.gravity;
        }
        if ((i2 & 2) != 0) {
            z = changeScrollerGravityEvent.isHorizontal;
        }
        return changeScrollerGravityEvent.copy(i, z);
    }

    /* renamed from: component1, reason: from getter */
    public final int getGravity() {
        return this.gravity;
    }

    /* renamed from: component2, reason: from getter */
    public final boolean getIsHorizontal() {
        return this.isHorizontal;
    }

    @NotNull
    public final ChangeScrollerGravityEvent copy(int gravity, boolean isHorizontal) {
        return new ChangeScrollerGravityEvent(gravity, isHorizontal);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ChangeScrollerGravityEvent)) {
            return false;
        }
        ChangeScrollerGravityEvent changeScrollerGravityEvent = (ChangeScrollerGravityEvent) other;
        return this.gravity == changeScrollerGravityEvent.gravity && this.isHorizontal == changeScrollerGravityEvent.isHorizontal;
    }

    public final int getGravity() {
        return this.gravity;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = Integer.hashCode(this.gravity) * 31;
        boolean z = this.isHorizontal;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return hashCode + i;
    }

    public final boolean isHorizontal() {
        return this.isHorizontal;
    }

    @NotNull
    public String toString() {
        return "ChangeScrollerGravityEvent(gravity=" + this.gravity + ", isHorizontal=" + this.isHorizontal + ')';
    }

    public ChangeScrollerGravityEvent(int i, boolean z) {
        this.gravity = i;
        this.isHorizontal = z;
    }

    public /* synthetic */ ChangeScrollerGravityEvent(int i, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 8388613 : i, (i2 & 2) != 0 ? true : z);
    }
}
