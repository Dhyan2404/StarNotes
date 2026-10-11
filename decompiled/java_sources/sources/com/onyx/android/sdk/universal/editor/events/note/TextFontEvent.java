package com.onyx.android.sdk.universal.editor.events.note;

import com.onyx.android.sdk.base.data.font.FontInfo;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u000b\u0010\u0003\u001a\u0004\u0018\u00010\u0002HÆ\u0003J\u0015\u0010\u0005\u001a\u00020\u00002\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002HÆ\u0001J\t\u0010\u0007\u001a\u00020\u0006HÖ\u0001J\t\u0010\t\u001a\u00020\bHÖ\u0001J\u0013\u0010\f\u001a\u00020\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0019\u0010\u0004\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/note/TextFontEvent;", "", "Lcom/onyx/android/sdk/base/data/font/FontInfo;", "component1", "fontInfo", "copy", "", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "Lcom/onyx/android/sdk/base/data/font/FontInfo;", "getFontInfo", "()Lcom/onyx/android/sdk/base/data/font/FontInfo;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/base/data/font/FontInfo;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class TextFontEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @Nullable
    public final FontInfo fontInfo;

    public TextFontEvent(@Nullable FontInfo fontInfo) {
        this.fontInfo = fontInfo;
    }

    public static /* synthetic */ TextFontEvent copy$default(TextFontEvent textFontEvent, FontInfo fontInfo, int i, Object obj) {
        if ((i & 1) != 0) {
            fontInfo = textFontEvent.fontInfo;
        }
        return textFontEvent.copy(fontInfo);
    }

    @Nullable
    /* renamed from: component1, reason: from getter */
    public final FontInfo getFontInfo() {
        return this.fontInfo;
    }

    @NotNull
    public final TextFontEvent copy(@Nullable FontInfo fontInfo) {
        return new TextFontEvent(fontInfo);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof TextFontEvent) && Intrinsics.areEqual(this.fontInfo, ((TextFontEvent) other).fontInfo);
    }

    @Nullable
    public final FontInfo getFontInfo() {
        return this.fontInfo;
    }

    public int hashCode() {
        FontInfo fontInfo = this.fontInfo;
        if (fontInfo == null) {
            return 0;
        }
        return fontInfo.hashCode();
    }

    @NotNull
    public String toString() {
        return "TextFontEvent(fontInfo=" + this.fontInfo + ')';
    }
}
