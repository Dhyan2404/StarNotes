package com.onyx.galaxy.note.editor.view.popup;

import android.view.View;
import androidx.appcompat.app.AppCompatActivity;
import com.onyx.galaxy.note.common.view.BasePopupWindow;
import com.onyx.galaxy.note.databinding.PopupInkBeautifyHelpBinding;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\n\u0010\u000bR\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\f"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/InkBeautifyHelpPopup;", "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;", "Landroidx/appcompat/app/AppCompatActivity;", "q", "Landroidx/appcompat/app/AppCompatActivity;", "activityContext", "Lcom/onyx/galaxy/note/databinding/PopupInkBeautifyHelpBinding;", "r", "Lcom/onyx/galaxy/note/databinding/PopupInkBeautifyHelpBinding;", "binding", Constants.CONSTRUCTOR_NAME, "(Landroidx/appcompat/app/AppCompatActivity;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class InkBeautifyHelpPopup extends BasePopupWindow {

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public final AppCompatActivity activityContext;

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final PopupInkBeautifyHelpBinding binding;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InkBeautifyHelpPopup(@NotNull AppCompatActivity activityContext) {
        super(activityContext, null, 2, null);
        Intrinsics.checkNotNullParameter(activityContext, "activityContext");
        this.activityContext = activityContext;
        PopupInkBeautifyHelpBinding inflate = PopupInkBeautifyHelpBinding.inflate(activityContext.getLayoutInflater());
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        setOutsideTouchable(true);
        setFocusable(true);
        View root = inflate.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setContentView(root);
    }
}
