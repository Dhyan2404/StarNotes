package com.onyx.android.sdk.universal.editor.data;

import android.graphics.Rect;
import androidx.appcompat.app.AppCompatActivity;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0014\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\f¢\u0006\u0002\u0010\rJ\t\u0010\u001a\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0005HÆ\u0003J\u000f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\b0\u0007HÆ\u0003J\t\u0010\u001d\u001a\u00020\nHÆ\u0003J\t\u0010\u001e\u001a\u00020\fHÆ\u0003JA\u0010\u001f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\fHÆ\u0001J\u0013\u0010 \u001a\u00020!2\b\u0010\"\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010#\u001a\u00020$HÖ\u0001J\t\u0010%\u001a\u00020\fHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u000b\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0017\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019¨\u0006&"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;", "", "activityContext", "Landroidx/appcompat/app/AppCompatActivity;", "editorBundle", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "originShapes", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "selectionRectInActivity", "Landroid/graphics/Rect;", "lang", "", "(Landroidx/appcompat/app/AppCompatActivity;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;Landroid/graphics/Rect;Ljava/lang/String;)V", "getActivityContext", "()Landroidx/appcompat/app/AppCompatActivity;", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getLang", "()Ljava/lang/String;", "getOriginShapes", "()Ljava/util/List;", "getSelectionRectInActivity", "()Landroid/graphics/Rect;", "setSelectionRectInActivity", "(Landroid/graphics/Rect;)V", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", Constants.ATTRVAL_OTHER, "hashCode", "", "toString", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final /* data */ class InkBeautifyArgs {

    @NotNull
    private final AppCompatActivity activityContext;

    @NotNull
    private final EditorBundle editorBundle;

    @NotNull
    private final String lang;

    @NotNull
    private final List<Shape> originShapes;

    @NotNull
    private Rect selectionRectInActivity;

    /* JADX WARN: Multi-variable type inference failed */
    public InkBeautifyArgs(@NotNull AppCompatActivity activityContext, @NotNull EditorBundle editorBundle, @NotNull List<? extends Shape> originShapes, @NotNull Rect selectionRectInActivity, @NotNull String lang) {
        Intrinsics.checkNotNullParameter(activityContext, "activityContext");
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(originShapes, "originShapes");
        Intrinsics.checkNotNullParameter(selectionRectInActivity, "selectionRectInActivity");
        Intrinsics.checkNotNullParameter(lang, "lang");
        this.activityContext = activityContext;
        this.editorBundle = editorBundle;
        this.originShapes = originShapes;
        this.selectionRectInActivity = selectionRectInActivity;
        this.lang = lang;
    }

    public static /* synthetic */ InkBeautifyArgs copy$default(InkBeautifyArgs inkBeautifyArgs, AppCompatActivity appCompatActivity, EditorBundle editorBundle, List list, Rect rect, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            appCompatActivity = inkBeautifyArgs.activityContext;
        }
        if ((i & 2) != 0) {
            editorBundle = inkBeautifyArgs.editorBundle;
        }
        EditorBundle editorBundle2 = editorBundle;
        if ((i & 4) != 0) {
            list = inkBeautifyArgs.originShapes;
        }
        List list2 = list;
        if ((i & 8) != 0) {
            rect = inkBeautifyArgs.selectionRectInActivity;
        }
        Rect rect2 = rect;
        if ((i & 16) != 0) {
            str = inkBeautifyArgs.lang;
        }
        return inkBeautifyArgs.copy(appCompatActivity, editorBundle2, list2, rect2, str);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final AppCompatActivity getActivityContext() {
        return this.activityContext;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final EditorBundle getEditorBundle() {
        return this.editorBundle;
    }

    @NotNull
    public final List<Shape> component3() {
        return this.originShapes;
    }

    @NotNull
    /* renamed from: component4, reason: from getter */
    public final Rect getSelectionRectInActivity() {
        return this.selectionRectInActivity;
    }

    @NotNull
    /* renamed from: component5, reason: from getter */
    public final String getLang() {
        return this.lang;
    }

    @NotNull
    public final InkBeautifyArgs copy(@NotNull AppCompatActivity activityContext, @NotNull EditorBundle editorBundle, @NotNull List<? extends Shape> originShapes, @NotNull Rect selectionRectInActivity, @NotNull String lang) {
        Intrinsics.checkNotNullParameter(activityContext, "activityContext");
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(originShapes, "originShapes");
        Intrinsics.checkNotNullParameter(selectionRectInActivity, "selectionRectInActivity");
        Intrinsics.checkNotNullParameter(lang, "lang");
        return new InkBeautifyArgs(activityContext, editorBundle, originShapes, selectionRectInActivity, lang);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof InkBeautifyArgs)) {
            return false;
        }
        InkBeautifyArgs inkBeautifyArgs = (InkBeautifyArgs) other;
        return Intrinsics.areEqual(this.activityContext, inkBeautifyArgs.activityContext) && Intrinsics.areEqual(this.editorBundle, inkBeautifyArgs.editorBundle) && Intrinsics.areEqual(this.originShapes, inkBeautifyArgs.originShapes) && Intrinsics.areEqual(this.selectionRectInActivity, inkBeautifyArgs.selectionRectInActivity) && Intrinsics.areEqual(this.lang, inkBeautifyArgs.lang);
    }

    @NotNull
    public final AppCompatActivity getActivityContext() {
        return this.activityContext;
    }

    @NotNull
    public final EditorBundle getEditorBundle() {
        return this.editorBundle;
    }

    @NotNull
    public final String getLang() {
        return this.lang;
    }

    @NotNull
    public final List<Shape> getOriginShapes() {
        return this.originShapes;
    }

    @NotNull
    public final Rect getSelectionRectInActivity() {
        return this.selectionRectInActivity;
    }

    public int hashCode() {
        return (((((((this.activityContext.hashCode() * 31) + this.editorBundle.hashCode()) * 31) + this.originShapes.hashCode()) * 31) + this.selectionRectInActivity.hashCode()) * 31) + this.lang.hashCode();
    }

    public final void setSelectionRectInActivity(@NotNull Rect rect) {
        Intrinsics.checkNotNullParameter(rect, "<set-?>");
        this.selectionRectInActivity = rect;
    }

    @NotNull
    public String toString() {
        return "InkBeautifyArgs(activityContext=" + this.activityContext + ", editorBundle=" + this.editorBundle + ", originShapes=" + this.originShapes + ", selectionRectInActivity=" + this.selectionRectInActivity + ", lang=" + this.lang + ')';
    }
}
