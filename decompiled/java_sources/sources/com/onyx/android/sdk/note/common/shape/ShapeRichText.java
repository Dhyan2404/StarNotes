package com.onyx.android.sdk.note.common.shape;

import com.onyx.android.sdk.replicator.note.data.shape.ShapeTextStyle;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\bf\u0018\u00002\u00020\u0001R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u0003X¦\u000e¢\u0006\f\u001a\u0004\b\u0004\u0010\u0005\"\u0004\b\u0006\u0010\u0007R\u001a\u0010\b\u001a\u0004\u0018\u00010\tX¦\u000e¢\u0006\f\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\r¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/ShapeRichText;", "", "richText", "", "getRichText", "()Ljava/lang/String;", "setRichText", "(Ljava/lang/String;)V", "textStyle", "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;", "getTextStyle", "()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;", "setTextStyle", "(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public interface ShapeRichText {
    @Nullable
    String getRichText();

    @Nullable
    ShapeTextStyle getTextStyle();

    void setRichText(@Nullable String str);

    void setTextStyle(@Nullable ShapeTextStyle shapeTextStyle);
}
