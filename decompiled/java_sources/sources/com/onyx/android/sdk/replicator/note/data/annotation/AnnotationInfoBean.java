package com.onyx.android.sdk.replicator.note.data.annotation;

import android.graphics.RectF;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.sunia.HTREnginev2.gon;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 )2\u00020\u0001:\u0001)B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010(\u001a\u00020\u0000H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\f\"\u0004\b\u0011\u0010\u000eR\u001a\u0010\u0012\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\f\"\u0004\b\u0014\u0010\u000eR \u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00170\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001a\u0010\u001c\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\f\"\u0004\b\u001e\u0010\u000eR\u001a\u0010\u001f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u0006\"\u0004\b!\u0010\bR\u001a\u0010\"\u001a\u00020#X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'¨\u0006*"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;", "", "()V", "color", "", "getColor", "()I", "setColor", "(I)V", "endPosition", "", "getEndPosition", "()Ljava/lang/String;", "setEndPosition", "(Ljava/lang/String;)V", "note", "getNote", "setNote", "quote", "getQuote", "setQuote", "rectFList", "", "Landroid/graphics/RectF;", "getRectFList", "()Ljava/util/List;", "setRectFList", "(Ljava/util/List;)V", "startPosition", "getStartPosition", "setStartPosition", "style", "getStyle", "setStyle", gon.f71267T, "Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;", "getWritingMode", "()Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;", "setWritingMode", "(Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;)V", "clone", "Companion", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class AnnotationInfoBean implements Cloneable {
    public static final int HIGHLIGHT_STYLE_COVER = 4;
    public static final int HIGHLIGHT_STYLE_DASH_UNDERLINE = 2;
    public static final int HIGHLIGHT_STYLE_HIGHLIGHT = 0;
    public static final int HIGHLIGHT_STYLE_NORMAL_DARKEN = 5;
    public static final int HIGHLIGHT_STYLE_NOTHING = -1;
    public static final int HIGHLIGHT_STYLE_STRIKE_OUT = 6;
    public static final int HIGHLIGHT_STYLE_UNDERLINE = 1;
    public static final int HIGHLIGHT_STYLE_WAVY_LINE = 3;
    private int style;

    @NotNull
    private List<RectF> rectFList = new ArrayList();

    @NotNull
    private String quote = "";

    @NotNull
    private String note = "";

    @NotNull
    private String startPosition = "";

    @NotNull
    private String endPosition = "";
    private int color = -256;

    @NotNull
    private WritingMode writingMode = WritingMode.HORIZONTAL;

    public final int getColor() {
        return this.color;
    }

    @NotNull
    public final String getEndPosition() {
        return this.endPosition;
    }

    @NotNull
    public final String getNote() {
        return this.note;
    }

    @NotNull
    public final String getQuote() {
        return this.quote;
    }

    @NotNull
    public final List<RectF> getRectFList() {
        return this.rectFList;
    }

    @NotNull
    public final String getStartPosition() {
        return this.startPosition;
    }

    public final int getStyle() {
        return this.style;
    }

    @NotNull
    public final WritingMode getWritingMode() {
        return this.writingMode;
    }

    public final void setColor(int i) {
        this.color = i;
    }

    public final void setEndPosition(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.endPosition = str;
    }

    public final void setNote(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.note = str;
    }

    public final void setQuote(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.quote = str;
    }

    public final void setRectFList(@NotNull List<RectF> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.rectFList = list;
    }

    public final void setStartPosition(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.startPosition = str;
    }

    public final void setStyle(int i) {
        this.style = i;
    }

    public final void setWritingMode(@NotNull WritingMode writingMode) {
        Intrinsics.checkNotNullParameter(writingMode, "<set-?>");
        this.writingMode = writingMode;
    }

    @NotNull
    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public AnnotationInfoBean m72351clone() {
        Sequence asSequence;
        Sequence map;
        List<RectF> mutableList;
        Object clone = super.clone();
        Intrinsics.checkNotNull(clone, "null cannot be cast to non-null type com.onyx.android.sdk.replicator.note.data.annotation.AnnotationInfoBean");
        AnnotationInfoBean annotationInfoBean = (AnnotationInfoBean) clone;
        asSequence = CollectionsKt___CollectionsKt.asSequence(this.rectFList);
        map = SequencesKt___SequencesKt.map(asSequence, new Function1<RectF, RectF>() { // from class: com.onyx.android.sdk.replicator.note.data.annotation.AnnotationInfoBean$clone$1$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final RectF invoke(@NotNull RectF it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return RectFKt.copy(it2);
            }
        });
        mutableList = SequencesKt___SequencesKt.toMutableList(map);
        annotationInfoBean.rectFList = mutableList;
        annotationInfoBean.writingMode = this.writingMode;
        return annotationInfoBean;
    }
}
