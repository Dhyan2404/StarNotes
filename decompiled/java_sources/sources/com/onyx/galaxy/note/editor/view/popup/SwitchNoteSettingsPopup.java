package com.onyx.galaxy.note.editor.view.popup;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.view.BasePopupWindow;
import com.onyx.galaxy.note.databinding.PopupSwitchNoteSettingsBinding;
import com.onyx.galaxy.note.editor.view.popup.SwitchNoteSettingsPopup;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\u000b\u001a\u00020\u0004\u0012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00020\f¢\u0006\u0004\b\u0018\u0010\u0019J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\t\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0002R\u0014\u0010\u000b\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u001a\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u001b\u0010\u0015\u001a\u00020\u00108FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/SwitchNoteSettingsPopup;", "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;", "", GoogleApiAvailabilityLight.f29016b, "", "isToggle", "m", "Landroid/widget/TextView;", "textView", "q", Constants.HASIDCALL_INDEX_SIG, "isEnabledDocConfig", "Lkotlin/Function0;", "r", "Lkotlin/jvm/functions/Function0;", "onToggleFunc", "Lcom/onyx/galaxy/note/databinding/PopupSwitchNoteSettingsBinding;", "s", "Lkotlin/Lazy;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/PopupSwitchNoteSettingsBinding;", "binding", "Landroid/content/Context;", "context", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;ZLkotlin/jvm/functions/Function0;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class SwitchNoteSettingsPopup extends BasePopupWindow {

    /* renamed from: q, reason: from kotlin metadata */
    public final boolean isEnabledDocConfig;

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final Function0<Unit> onToggleFunc;

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SwitchNoteSettingsPopup(@NotNull final Context context, boolean z, @NotNull Function0<Unit> onToggleFunc) {
        super(context, null, 2, null);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(onToggleFunc, "onToggleFunc");
        this.isEnabledDocConfig = z;
        this.onToggleFunc = onToggleFunc;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<PopupSwitchNoteSettingsBinding>() { // from class: com.onyx.galaxy.note.editor.view.popup.SwitchNoteSettingsPopup$binding$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PopupSwitchNoteSettingsBinding invoke() {
                return PopupSwitchNoteSettingsBinding.inflate(LayoutInflater.from(context));
            }
        });
        this.binding = lazy;
        View root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setContentView(root);
        m49597n();
    }

    /* renamed from: o */
    public static final void m49594o(SwitchNoteSettingsPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m49596m(this$0.isEnabledDocConfig);
    }

    /* renamed from: p */
    public static final void m49595p(SwitchNoteSettingsPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m49596m(!this$0.isEnabledDocConfig);
    }

    @NotNull
    public final PopupSwitchNoteSettingsBinding getBinding() {
        return (PopupSwitchNoteSettingsBinding) this.binding.getValue();
    }

    /* renamed from: m */
    public final void m49596m(boolean isToggle) {
        if (isToggle) {
            this.onToggleFunc.invoke();
        }
        dismiss();
    }

    /* renamed from: n */
    public final void m49597n() {
        TintTextView tintTextView = this.isEnabledDocConfig ? getBinding().tvDocLocalSettings : getBinding().tvCommonSettings;
        Intrinsics.checkNotNull(tintTextView);
        m49598q(tintTextView);
        TintTextView tvCommonSettings = getBinding().tvCommonSettings;
        Intrinsics.checkNotNullExpressionValue(tvCommonSettings, "tvCommonSettings");
        ViewKt.click$default(tvCommonSettings, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.f6n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SwitchNoteSettingsPopup.m49594o(SwitchNoteSettingsPopup.this, view);
            }
        }, 1, null);
        TintTextView tvDocLocalSettings = getBinding().tvDocLocalSettings;
        Intrinsics.checkNotNullExpressionValue(tvDocLocalSettings, "tvDocLocalSettings");
        ViewKt.click$default(tvDocLocalSettings, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.g6n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SwitchNoteSettingsPopup.m49595p(SwitchNoteSettingsPopup.this, view);
            }
        }, 1, null);
    }

    /* renamed from: q */
    public final void m49598q(TextView textView) {
        Drawable themeDrawable = ThemeUtils.getThemeDrawable(C10651R.drawable.icon_switch_note_settings_check);
        themeDrawable.setBounds(0, 0, themeDrawable.getIntrinsicWidth(), themeDrawable.getIntrinsicHeight());
        textView.setCompoundDrawablesRelativeWithIntrinsicBounds((Drawable) null, (Drawable) null, themeDrawable, (Drawable) null);
    }
}
