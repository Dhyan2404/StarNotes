package com.onyx.android.sdk.note.common.data.split;

import android.graphics.RectF;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0018\u0010\u0019J\u0016\u0010\u0006\u001a\u00020\u00052\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002J\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002R\u001e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\b\u0010\tR*\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\t\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\"\u0010\u0013\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u0011\u0010\u0017\u001a\u00020\u00108F¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0014¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/split/SplitRectResult;", "", "", "Landroid/graphics/RectF;", "splitRectList", "", "setSplitRectList", "getSplitRectList", "a", "Ljava/util/List;", "b", "getRemoveRectList", "()Ljava/util/List;", "setRemoveRectList", "(Ljava/util/List;)V", "removeRectList", "", "c", Constants.HASIDCALL_INDEX_SIG, "isPathErased", Constants.BOOLEAN_VALUE_SIG, "setPathErased", "(Z)V", "isErased", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class SplitRectResult {

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public List<? extends RectF> splitRectList;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public List<? extends RectF> removeRectList;

    /* renamed from: c, reason: from kotlin metadata */
    public boolean isPathErased;

    @Nullable
    public final List<RectF> getRemoveRectList() {
        return this.removeRectList;
    }

    @Nullable
    public final List<RectF> getSplitRectList() {
        return this.splitRectList;
    }

    public final boolean isErased() {
        return this.isPathErased || CollectionKt.isNonBlank(this.splitRectList);
    }

    /* renamed from: isPathErased, reason: from getter */
    public final boolean getIsPathErased() {
        return this.isPathErased;
    }

    public final void setPathErased(boolean z) {
        this.isPathErased = z;
    }

    public final void setRemoveRectList(@Nullable List<? extends RectF> list) {
        this.removeRectList = list;
    }

    public final void setSplitRectList(@Nullable List<? extends RectF> splitRectList) {
        this.splitRectList = splitRectList;
    }
}
