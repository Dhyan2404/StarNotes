package com.onyx.android.sdk.universal.editor.events.note;

import com.onyx.android.sdk.replicator.note.data.shape.NoteChineseConvertType;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\r\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0004¢\u0006\u0004\b\u0016\u0010\u0017J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\u001d\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0006\u001a\u00020\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u0004HÆ\u0001J\t\u0010\n\u001a\u00020\tHÖ\u0001J\t\u0010\f\u001a\u00020\u000bHÖ\u0001J\u0013\u0010\u000e\u001a\u00020\u00022\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0006\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0006\u0010\u0011R\u0017\u0010\u0007\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/note/TextChineseConvertTypeChangeEvent;", "", "", "component1", "Lcom/onyx/android/sdk/replicator/note/data/shape/NoteChineseConvertType;", "component2", "isEnable", "convertType", "copy", "", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "equals", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, "b", "Lcom/onyx/android/sdk/replicator/note/data/shape/NoteChineseConvertType;", "getConvertType", "()Lcom/onyx/android/sdk/replicator/note/data/shape/NoteChineseConvertType;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(ZLcom/onyx/android/sdk/replicator/note/data/shape/NoteChineseConvertType;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class TextChineseConvertTypeChangeEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    public final boolean isEnable;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public final NoteChineseConvertType convertType;

    public TextChineseConvertTypeChangeEvent(boolean z, @NotNull NoteChineseConvertType convertType) {
        Intrinsics.checkNotNullParameter(convertType, "convertType");
        this.isEnable = z;
        this.convertType = convertType;
    }

    public static /* synthetic */ TextChineseConvertTypeChangeEvent copy$default(TextChineseConvertTypeChangeEvent textChineseConvertTypeChangeEvent, boolean z, NoteChineseConvertType noteChineseConvertType, int i, Object obj) {
        if ((i & 1) != 0) {
            z = textChineseConvertTypeChangeEvent.isEnable;
        }
        if ((i & 2) != 0) {
            noteChineseConvertType = textChineseConvertTypeChangeEvent.convertType;
        }
        return textChineseConvertTypeChangeEvent.copy(z, noteChineseConvertType);
    }

    /* renamed from: component1, reason: from getter */
    public final boolean getIsEnable() {
        return this.isEnable;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final NoteChineseConvertType getConvertType() {
        return this.convertType;
    }

    @NotNull
    public final TextChineseConvertTypeChangeEvent copy(boolean isEnable, @NotNull NoteChineseConvertType convertType) {
        Intrinsics.checkNotNullParameter(convertType, "convertType");
        return new TextChineseConvertTypeChangeEvent(isEnable, convertType);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TextChineseConvertTypeChangeEvent)) {
            return false;
        }
        TextChineseConvertTypeChangeEvent textChineseConvertTypeChangeEvent = (TextChineseConvertTypeChangeEvent) other;
        return this.isEnable == textChineseConvertTypeChangeEvent.isEnable && this.convertType == textChineseConvertTypeChangeEvent.convertType;
    }

    @NotNull
    public final NoteChineseConvertType getConvertType() {
        return this.convertType;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    public int hashCode() {
        boolean z = this.isEnable;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        return (r0 * 31) + this.convertType.hashCode();
    }

    public final boolean isEnable() {
        return this.isEnable;
    }

    @NotNull
    public String toString() {
        return "TextChineseConvertTypeChangeEvent(isEnable=" + this.isEnable + ", convertType=" + this.convertType + ')';
    }
}
