package com.onyx.android.sdk.universal.editor.events.note;

import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u000e\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004¢\u0006\u0004\b\u0016\u0010\u0017J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\u001d\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0006\u001a\u00020\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u0004HÆ\u0001J\t\u0010\t\u001a\u00020\u0002HÖ\u0001J\t\u0010\u000b\u001a\u00020\nHÖ\u0001J\u0013\u0010\r\u001a\u00020\u00042\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0006\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u0017\u0010\u0007\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/note/ShapeHandlerChangedEvent;", "", "", "component1", "", "component2", "activeProviderName", "updateToolbar", "copy", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "equals", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getActiveProviderName", "()Ljava/lang/String;", "b", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "getUpdateToolbar", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Z)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class ShapeHandlerChangedEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final String activeProviderName;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    public final boolean updateToolbar;

    public ShapeHandlerChangedEvent(@NotNull String activeProviderName, boolean z) {
        Intrinsics.checkNotNullParameter(activeProviderName, "activeProviderName");
        this.activeProviderName = activeProviderName;
        this.updateToolbar = z;
    }

    public static /* synthetic */ ShapeHandlerChangedEvent copy$default(ShapeHandlerChangedEvent shapeHandlerChangedEvent, String str, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            str = shapeHandlerChangedEvent.activeProviderName;
        }
        if ((i & 2) != 0) {
            z = shapeHandlerChangedEvent.updateToolbar;
        }
        return shapeHandlerChangedEvent.copy(str, z);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getActiveProviderName() {
        return this.activeProviderName;
    }

    /* renamed from: component2, reason: from getter */
    public final boolean getUpdateToolbar() {
        return this.updateToolbar;
    }

    @NotNull
    public final ShapeHandlerChangedEvent copy(@NotNull String activeProviderName, boolean updateToolbar) {
        Intrinsics.checkNotNullParameter(activeProviderName, "activeProviderName");
        return new ShapeHandlerChangedEvent(activeProviderName, updateToolbar);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ShapeHandlerChangedEvent)) {
            return false;
        }
        ShapeHandlerChangedEvent shapeHandlerChangedEvent = (ShapeHandlerChangedEvent) other;
        return Intrinsics.areEqual(this.activeProviderName, shapeHandlerChangedEvent.activeProviderName) && this.updateToolbar == shapeHandlerChangedEvent.updateToolbar;
    }

    @NotNull
    public final String getActiveProviderName() {
        return this.activeProviderName;
    }

    public final boolean getUpdateToolbar() {
        return this.updateToolbar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = this.activeProviderName.hashCode() * 31;
        boolean z = this.updateToolbar;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return hashCode + i;
    }

    @NotNull
    public String toString() {
        return "ShapeHandlerChangedEvent(activeProviderName=" + this.activeProviderName + ", updateToolbar=" + this.updateToolbar + ')';
    }

    public /* synthetic */ ShapeHandlerChangedEvent(String str, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? true : z);
    }
}
