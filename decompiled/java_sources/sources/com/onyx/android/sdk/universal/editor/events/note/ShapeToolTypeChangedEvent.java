package com.onyx.android.sdk.universal.editor.events.note;

import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\b\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\u0013\u0010\u0005\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u0002HÆ\u0001J\t\u0010\u0007\u001a\u00020\u0006HÖ\u0001J\t\u0010\b\u001a\u00020\u0002HÖ\u0001J\u0013\u0010\u000b\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/note/ShapeToolTypeChangedEvent;", "", "", "component1", "shapeType", "copy", "", "toString", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "I", "getShapeType", "()I", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(I)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class ShapeToolTypeChangedEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    public final int shapeType;

    public ShapeToolTypeChangedEvent(int i) {
        this.shapeType = i;
    }

    public static /* synthetic */ ShapeToolTypeChangedEvent copy$default(ShapeToolTypeChangedEvent shapeToolTypeChangedEvent, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = shapeToolTypeChangedEvent.shapeType;
        }
        return shapeToolTypeChangedEvent.copy(i);
    }

    /* renamed from: component1, reason: from getter */
    public final int getShapeType() {
        return this.shapeType;
    }

    @NotNull
    public final ShapeToolTypeChangedEvent copy(int shapeType) {
        return new ShapeToolTypeChangedEvent(shapeType);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof ShapeToolTypeChangedEvent) && this.shapeType == ((ShapeToolTypeChangedEvent) other).shapeType;
    }

    public final int getShapeType() {
        return this.shapeType;
    }

    public int hashCode() {
        return Integer.hashCode(this.shapeType);
    }

    @NotNull
    public String toString() {
        return "ShapeToolTypeChangedEvent(shapeType=" + this.shapeType + ')';
    }
}
