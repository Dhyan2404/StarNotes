package com.onyx.android.sdk.universal.editor.events.note;

import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\b\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\u0013\u0010\u0005\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u0002HÆ\u0001J\t\u0010\u0007\u001a\u00020\u0006HÖ\u0001J\t\u0010\b\u001a\u00020\u0002HÖ\u0001J\u0013\u0010\u000b\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/note/TextAlignEvent;", "", "", "component1", "alignType", "copy", "", "toString", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "I", "getAlignType", "()I", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(I)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class TextAlignEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    public final int alignType;

    public TextAlignEvent() {
        this(0, 1, null);
    }

    public static /* synthetic */ TextAlignEvent copy$default(TextAlignEvent textAlignEvent, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = textAlignEvent.alignType;
        }
        return textAlignEvent.copy(i);
    }

    /* renamed from: component1, reason: from getter */
    public final int getAlignType() {
        return this.alignType;
    }

    @NotNull
    public final TextAlignEvent copy(int alignType) {
        return new TextAlignEvent(alignType);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof TextAlignEvent) && this.alignType == ((TextAlignEvent) other).alignType;
    }

    public final int getAlignType() {
        return this.alignType;
    }

    public int hashCode() {
        return Integer.hashCode(this.alignType);
    }

    @NotNull
    public String toString() {
        return "TextAlignEvent(alignType=" + this.alignType + ')';
    }

    public TextAlignEvent(int i) {
        this.alignType = i;
    }

    public /* synthetic */ TextAlignEvent(int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 0 : i);
    }
}
