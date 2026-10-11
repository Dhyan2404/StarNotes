package com.onyx.galaxy.note.editor.view.dialog;

import android.content.Context;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.p039ui.AutoSizeDialog;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.common.extension.IntExtKt;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringNumberConversionsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b&\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000e\u001a\u00020\u000b¢\u0006\u0004\b\u000f\u0010\u0010J\u0019\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0004¢\u0006\u0004\b\u0005\u0010\u0006R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/dialog/BaseTocUpdateDialog;", "Lcom/onyx/android/sdk/ui/AutoSizeDialog;", "", "pageNumberText", "", "checkInputPageNumber", "(Ljava/lang/String;)Ljava/lang/Integer;", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", C6999h.f39688c, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Landroid/content/Context;", "i", "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public abstract class BaseTocUpdateDialog extends AutoSizeDialog {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseTocUpdateDialog(@NotNull EditorBundle editorBundle, @NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(context, "context");
        this.editorBundle = editorBundle;
        this.context = context;
    }

    @Nullable
    public final Integer checkInputPageNumber(@NotNull String pageNumberText) {
        Integer intOrNull;
        Intrinsics.checkNotNullParameter(pageNumberText, "pageNumberText");
        intOrNull = StringsKt__StringNumberConversionsKt.toIntOrNull(pageNumberText);
        if (intOrNull != null && intOrNull.intValue() > 0 && intOrNull.intValue() <= EditorBundleKt.pageCount(this.editorBundle)) {
            return Integer.valueOf(Math.max(0, intOrNull.intValue() - 1));
        }
        ToastUtils.show$default(ToastUtils.INSTANCE, (CharSequence) IntExtKt.pageCountTips(EditorBundleKt.pageCount(this.editorBundle)), false, 2, (Object) null);
        return null;
    }
}
