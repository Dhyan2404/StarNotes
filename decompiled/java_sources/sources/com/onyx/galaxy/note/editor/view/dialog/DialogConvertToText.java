package com.onyx.galaxy.note.editor.view.dialog;

import android.R;
import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.C1126e;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.blankj.utilcode.util.ClipboardUtils;
import com.onyx.android.sdk.base.data.DockPoint;
import com.onyx.android.sdk.base.data.WindowLocation;
import com.onyx.android.sdk.base.extension.Activity;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.ContextKt;
import com.onyx.android.sdk.base.extension.DataBindingKt;
import com.onyx.android.sdk.base.extension.DrawableKt;
import com.onyx.android.sdk.base.extension.PopupLocator;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.common.data.TextContentType;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.p039ui.TouchModeMaxLengthEditText;
import com.onyx.android.sdk.replicator.note.p035db.model.HwrResourceModel;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.action.export.ExportContentToTXTFileAction;
import com.onyx.android.sdk.universal.editor.events.app.ActivityPausedEvent;
import com.onyx.android.sdk.universal.editor.events.note.InsertConvertedTextEvent;
import com.onyx.android.sdk.universal.editor.events.note.QuitTransformEvent;
import com.onyx.android.sdk.universal.editor.events.note.SelectionHWREvent;
import com.onyx.android.sdk.universal.editor.events.note.ShapesConvertTextEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.event.OrientationChangedEvent;
import com.onyx.galaxy.note.databinding.DialogConvertToTextBinding;
import com.onyx.galaxy.note.editor.event.HwrResourceFetchedEvent;
import com.onyx.galaxy.note.editor.event.HwrResourceLoadedEvent;
import com.onyx.galaxy.note.editor.event.HwrResourceSelectedEvent;
import com.onyx.galaxy.note.editor.event.SmartHwrDisabledEvent;
import com.onyx.galaxy.note.editor.event.SmartHwrEnabledEvent;
import com.onyx.galaxy.note.editor.view.dialog.DialogConvertToText;
import com.onyx.galaxy.note.editor.view.popup.HwrResourceListPopup;
import com.onyx.galaxy.note.editor.viewmodel.SelectionHwrViewModel;
import com.onyx.galaxy.note.p048ui.view.TextSwitchButton;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.gon;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0013\u0012\n\b\u0002\u0010*\u001a\u0004\u0018\u00010'¢\u0006\u0004\b;\u0010<J$\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\u001a\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\u001a\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016J\b\u0010\u0012\u001a\u00020\u000bH\u0016J\u0010\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u0013H\u0007J\u0010\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u0016H\u0007J\u0010\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u0018H\u0007J\b\u0010\u001a\u001a\u00020\u000bH\u0002J\b\u0010\u001b\u001a\u00020\u000bH\u0002J\u0010\u0010\u001d\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u001cH\u0002J\b\u0010\u001e\u001a\u00020\u000bH\u0002J\b\u0010\u001f\u001a\u00020\u000bH\u0002J\b\u0010 \u001a\u00020\u000bH\u0002J\b\u0010!\u001a\u00020\u000bH\u0002J\b\u0010\"\u001a\u00020\u000bH\u0002J\b\u0010#\u001a\u00020\u000bH\u0002J\u0010\u0010&\u001a\u00020\u000b2\u0006\u0010%\u001a\u00020$H\u0002R\u0016\u0010*\u001a\u0004\u0018\u00010'8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b(\u0010)R\u0016\u0010.\u001a\u00020+8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b,\u0010-R\u0014\u00102\u001a\u00020/8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b0\u00101R\u001c\u00107\u001a\b\u0012\u0004\u0012\u000204038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u00106R\u001c\u0010:\u001a\b\u0012\u0004\u0012\u000208038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u00106¨\u0006="}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/dialog/DialogConvertToText;", "Landroidx/fragment/app/DialogFragment;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", gon.f71270W, "Landroid/os/Bundle;", C1126e.f7693h, "Landroid/view/View;", "onCreateView", "view", "", "onViewCreated", "Landroidx/fragment/app/FragmentManager;", "manager", "", "tag", "show", "dismiss", "Lcom/onyx/android/sdk/universal/editor/events/note/ShapesConvertTextEvent;", NotificationCompat.CATEGORY_EVENT, "onShapesConvertTextEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/ActivityPausedEvent;", "onActivityPausedEvent", "Lcom/onyx/galaxy/note/category/event/OrientationChangedEvent;", "onOrientationChanged", "D0", "K0", "", "C0", "M0", "z0", "A0", "y0", "L0", "N0", "", "loading", "O0", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "z1", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lcom/onyx/galaxy/note/databinding/DialogConvertToTextBinding;", "A1", "Lcom/onyx/galaxy/note/databinding/DialogConvertToTextBinding;", "binding", "Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;", "B1", "Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;", "viewModel", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "C1", "Ljava/util/List;", "shapeList", "Lcom/onyx/android/sdk/data/common/data/TextContentType;", "D1", "textContentTypes", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nDialogConvertToText.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DialogConvertToText.kt\ncom/onyx/galaxy/note/editor/view/dialog/DialogConvertToText\n+ 2 TextView.kt\nandroidx/core/widget/TextViewKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,247:1\n65#2,16:248\n93#2,3:264\n256#3,2:267\n256#3,2:269\n256#3,2:271\n*S KotlinDebug\n*F\n+ 1 DialogConvertToText.kt\ncom/onyx/galaxy/note/editor/view/dialog/DialogConvertToText\n*L\n103#1:248,16\n103#1:264,3\n118#1:267,2\n133#1:269,2\n138#1:271,2\n*E\n"})
/* loaded from: classes9.dex */
public final class DialogConvertToText extends DialogFragment {

    /* renamed from: A1, reason: from kotlin metadata */
    public DialogConvertToTextBinding binding;

    /* renamed from: B1, reason: from kotlin metadata */
    @NotNull
    public final SelectionHwrViewModel viewModel;

    /* renamed from: C1, reason: from kotlin metadata */
    @NotNull
    public List<Shape> shapeList;

    /* renamed from: D1, reason: from kotlin metadata */
    @NotNull
    public List<TextContentType> textContentTypes;

    /* renamed from: z1, reason: from kotlin metadata */
    @Nullable
    public final EditorBundle editorBundle;

    /* renamed from: com.onyx.galaxy.note.editor.view.dialog.DialogConvertToText$a */
    /* loaded from: classes9.dex */
    public static final class C12301a<T> implements Consumer {
        public C12301a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            Context requireContext = DialogConvertToText.this.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            ContextKt.shareFile(requireContext, it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.dialog.DialogConvertToText$b */
    /* loaded from: classes9.dex */
    public static final class C12302b<T> implements Consumer {
        public C12302b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DialogConvertToText.this.dismiss();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public DialogConvertToText() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    /* renamed from: B0 */
    public static final void m47902B0(EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "$editorBundle");
        EditorBundleKt.postEvent(editorBundle, new QuitTransformEvent(false, 1, null));
    }

    /* renamed from: E0 */
    public static final void m47903E0(DialogConvertToText this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    /* renamed from: F0 */
    public static final void m47904F0(DialogConvertToText this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m47924y0();
    }

    /* renamed from: G0 */
    public static final void m47905G0(DialogConvertToText this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m47925z0();
    }

    /* renamed from: H0 */
    public static final void m47906H0(DialogConvertToText this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m47916A0();
    }

    /* renamed from: I0 */
    public static final void m47907I0(DialogConvertToText this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        SelectionHwrViewModel selectionHwrViewModel = this$0.viewModel;
        DialogConvertToTextBinding dialogConvertToTextBinding = this$0.binding;
        if (dialogConvertToTextBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogConvertToTextBinding = null;
        }
        TextSwitchButton smartHwrButton = dialogConvertToTextBinding.smartHwrButton;
        Intrinsics.checkNotNullExpressionValue(smartHwrButton, "smartHwrButton");
        selectionHwrViewModel.toggleSmartHwr(smartHwrButton, OnyxStatisticConstant.TRIGGER_SMART_HWR_FROM_SELECTION);
    }

    /* renamed from: J0 */
    public static final void m47908J0(DialogConvertToText this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m47921M0();
    }

    /* renamed from: A0 */
    public final void m47916A0() {
        final EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            return;
        }
        DialogConvertToTextBinding dialogConvertToTextBinding = this.binding;
        if (dialogConvertToTextBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogConvertToTextBinding = null;
        }
        String trim = StringKt.trim(dialogConvertToTextBinding.content.getText().toString());
        if (trim == null || trim.length() == 0) {
            return;
        }
        ExportContentToTXTFileAction exportContentToTXTFileAction = new ExportContentToTXTFileAction(editorBundle, trim, null, null, null, 28, null);
        exportContentToTXTFileAction.setDesc(ResManager.INSTANCE.getStringSafely(C10651R.string.optical_character_recognition));
        exportContentToTXTFileAction.build().doOnNext(new C12301a()).doOnNext(new C12302b()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.m4f
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                DialogConvertToText.m47902B0(EditorBundle.this);
            }
        }).subscribe();
    }

    /* renamed from: C0 */
    public final void m47917C0(Object event) {
        DialogConvertToTextBinding dialogConvertToTextBinding = null;
        if (event instanceof SmartHwrEnabledEvent) {
            DialogConvertToTextBinding dialogConvertToTextBinding2 = this.binding;
            if (dialogConvertToTextBinding2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                dialogConvertToTextBinding = dialogConvertToTextBinding2;
            }
            TintLinearLayout langSelectLayout = dialogConvertToTextBinding.langSelectLayout;
            Intrinsics.checkNotNullExpressionValue(langSelectLayout, "langSelectLayout");
            langSelectLayout.setVisibility(0);
            m47922N0();
            m47920L0();
            return;
        }
        if (event instanceof SmartHwrDisabledEvent) {
            DialogConvertToTextBinding dialogConvertToTextBinding3 = this.binding;
            if (dialogConvertToTextBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                dialogConvertToTextBinding = dialogConvertToTextBinding3;
            }
            TintLinearLayout langSelectLayout2 = dialogConvertToTextBinding.langSelectLayout;
            Intrinsics.checkNotNullExpressionValue(langSelectLayout2, "langSelectLayout");
            langSelectLayout2.setVisibility(8);
            m47922N0();
            m47920L0();
            return;
        }
        if (event instanceof HwrResourceFetchedEvent) {
            this.viewModel.loadFromLocal();
            return;
        }
        if (event instanceof HwrResourceLoadedEvent) {
            m47922N0();
        } else if (event instanceof HwrResourceSelectedEvent) {
            m47922N0();
            m47920L0();
        }
    }

    /* renamed from: D0 */
    public final void m47918D0() {
        DialogConvertToTextBinding dialogConvertToTextBinding = this.binding;
        DialogConvertToTextBinding dialogConvertToTextBinding2 = null;
        if (dialogConvertToTextBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogConvertToTextBinding = null;
        }
        Drawable background = dialogConvertToTextBinding.ivLoading.getBackground();
        Intrinsics.checkNotNullExpressionValue(background, "getBackground(...)");
        DrawableKt.animationStart(background);
        DialogConvertToTextBinding dialogConvertToTextBinding3 = this.binding;
        if (dialogConvertToTextBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogConvertToTextBinding3 = null;
        }
        TouchModeMaxLengthEditText content = dialogConvertToTextBinding3.content;
        Intrinsics.checkNotNullExpressionValue(content, "content");
        content.addTextChangedListener(new TextWatcher() { // from class: com.onyx.galaxy.note.editor.view.dialog.DialogConvertToText$initView$$inlined$addTextChangedListener$default$1
            @Override // android.text.TextWatcher
            public void afterTextChanged(@Nullable Editable s) {
                DialogConvertToTextBinding dialogConvertToTextBinding4;
                DialogConvertToTextBinding dialogConvertToTextBinding5;
                DialogConvertToTextBinding dialogConvertToTextBinding6;
                DialogConvertToTextBinding dialogConvertToTextBinding7;
                boolean isNotBlank = StringKt.isNotBlank(StringKt.trim(String.valueOf(s)));
                dialogConvertToTextBinding4 = DialogConvertToText.this.binding;
                DialogConvertToTextBinding dialogConvertToTextBinding8 = null;
                if (dialogConvertToTextBinding4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    dialogConvertToTextBinding4 = null;
                }
                dialogConvertToTextBinding4.convert.setEnabled(isNotBlank);
                dialogConvertToTextBinding5 = DialogConvertToText.this.binding;
                if (dialogConvertToTextBinding5 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    dialogConvertToTextBinding5 = null;
                }
                ViewKt.setViewVisibleOrInvisible(dialogConvertToTextBinding5.copy, isNotBlank);
                dialogConvertToTextBinding6 = DialogConvertToText.this.binding;
                if (dialogConvertToTextBinding6 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    dialogConvertToTextBinding6 = null;
                }
                ViewKt.setViewVisibleOrInvisible(dialogConvertToTextBinding6.buttonDivider, isNotBlank);
                dialogConvertToTextBinding7 = DialogConvertToText.this.binding;
                if (dialogConvertToTextBinding7 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                } else {
                    dialogConvertToTextBinding8 = dialogConvertToTextBinding7;
                }
                ViewKt.setViewVisibleOrInvisible(dialogConvertToTextBinding8.export, isNotBlank);
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(@Nullable CharSequence text, int start, int count, int after) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(@Nullable CharSequence text, int start, int before, int count) {
            }
        });
        DialogConvertToTextBinding dialogConvertToTextBinding4 = this.binding;
        if (dialogConvertToTextBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogConvertToTextBinding4 = null;
        }
        TintTextView btnCancel = dialogConvertToTextBinding4.btnCancel;
        Intrinsics.checkNotNullExpressionValue(btnCancel, "btnCancel");
        com.onyx.android.sdk.extension.ViewKt.click$default(btnCancel, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.g4f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DialogConvertToText.m47903E0(DialogConvertToText.this, view);
            }
        }, 1, null);
        DialogConvertToTextBinding dialogConvertToTextBinding5 = this.binding;
        if (dialogConvertToTextBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogConvertToTextBinding5 = null;
        }
        TintTextView convert = dialogConvertToTextBinding5.convert;
        Intrinsics.checkNotNullExpressionValue(convert, "convert");
        com.onyx.android.sdk.extension.ViewKt.click$default(convert, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.h4f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DialogConvertToText.m47904F0(DialogConvertToText.this, view);
            }
        }, 1, null);
        DialogConvertToTextBinding dialogConvertToTextBinding6 = this.binding;
        if (dialogConvertToTextBinding6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogConvertToTextBinding6 = null;
        }
        TintTextView copy = dialogConvertToTextBinding6.copy;
        Intrinsics.checkNotNullExpressionValue(copy, "copy");
        com.onyx.android.sdk.extension.ViewKt.click$default(copy, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.i4f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DialogConvertToText.m47905G0(DialogConvertToText.this, view);
            }
        }, 1, null);
        DialogConvertToTextBinding dialogConvertToTextBinding7 = this.binding;
        if (dialogConvertToTextBinding7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogConvertToTextBinding7 = null;
        }
        TintTextView export = dialogConvertToTextBinding7.export;
        Intrinsics.checkNotNullExpressionValue(export, "export");
        com.onyx.android.sdk.extension.ViewKt.click$default(export, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.j4f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DialogConvertToText.m47906H0(DialogConvertToText.this, view);
            }
        }, 1, null);
        DialogConvertToTextBinding dialogConvertToTextBinding8 = this.binding;
        if (dialogConvertToTextBinding8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogConvertToTextBinding8 = null;
        }
        TextSwitchButton smartHwrButton = dialogConvertToTextBinding8.smartHwrButton;
        Intrinsics.checkNotNullExpressionValue(smartHwrButton, "smartHwrButton");
        com.onyx.android.sdk.extension.ViewKt.click$default(smartHwrButton, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.k4f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DialogConvertToText.m47907I0(DialogConvertToText.this, view);
            }
        }, 1, null);
        DialogConvertToTextBinding dialogConvertToTextBinding9 = this.binding;
        if (dialogConvertToTextBinding9 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogConvertToTextBinding9 = null;
        }
        TintLinearLayout langSelectLayout = dialogConvertToTextBinding9.langSelectLayout;
        Intrinsics.checkNotNullExpressionValue(langSelectLayout, "langSelectLayout");
        com.onyx.android.sdk.extension.ViewKt.click$default(langSelectLayout, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.l4f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DialogConvertToText.m47908J0(DialogConvertToText.this, view);
            }
        }, 1, null);
        DialogConvertToTextBinding dialogConvertToTextBinding10 = this.binding;
        if (dialogConvertToTextBinding10 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogConvertToTextBinding10 = null;
        }
        TextSwitchButton smartHwrButton2 = dialogConvertToTextBinding10.smartHwrButton;
        Intrinsics.checkNotNullExpressionValue(smartHwrButton2, "smartHwrButton");
        smartHwrButton2.setVisibility(NoteConfigManager.INSTANCE.isSmartHwrFeatureEnabled() ? 0 : 8);
        SelectionHwrViewModel selectionHwrViewModel = this.viewModel;
        DialogConvertToTextBinding dialogConvertToTextBinding11 = this.binding;
        if (dialogConvertToTextBinding11 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            dialogConvertToTextBinding2 = dialogConvertToTextBinding11;
        }
        selectionHwrViewModel.updateSmartHwr(dialogConvertToTextBinding2);
    }

    /* renamed from: K0 */
    public final void m47919K0() {
        DataBindingKt.observeOnce(this.viewModel.getLoading(), this, new Function1<Boolean, Unit>() { // from class: com.onyx.galaxy.note.editor.view.dialog.DialogConvertToText$initViewModel$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                invoke2(bool);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Boolean bool) {
                DialogConvertToTextBinding dialogConvertToTextBinding;
                dialogConvertToTextBinding = DialogConvertToText.this.binding;
                if (dialogConvertToTextBinding == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    dialogConvertToTextBinding = null;
                }
                ViewKt.setViewVisibleOrInvisible(dialogConvertToTextBinding.llBtnLayout, !bool.booleanValue());
            }
        });
        DataBindingKt.observeOnce(this.viewModel.getEvent(), this, new DialogConvertToText$initViewModel$2(this));
        this.viewModel.init();
    }

    /* renamed from: L0 */
    public final void m47920L0() {
        DialogConvertToTextBinding dialogConvertToTextBinding = this.binding;
        DialogConvertToTextBinding dialogConvertToTextBinding2 = null;
        if (dialogConvertToTextBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogConvertToTextBinding = null;
        }
        dialogConvertToTextBinding.content.getText().clear();
        DialogConvertToTextBinding dialogConvertToTextBinding3 = this.binding;
        if (dialogConvertToTextBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogConvertToTextBinding3 = null;
        }
        ViewKt.hideInputKeyboard(dialogConvertToTextBinding3.getRoot());
        DialogConvertToTextBinding dialogConvertToTextBinding4 = this.binding;
        if (dialogConvertToTextBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            dialogConvertToTextBinding2 = dialogConvertToTextBinding4;
        }
        dialogConvertToTextBinding2.content.clearFocus();
        m47923O0(true);
        SelectionHWREvent selectionHWREvent = new SelectionHWREvent(this.viewModel.getHWRArgs());
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle != null) {
            EditorBundleKt.postEvent(editorBundle, selectionHWREvent);
        }
    }

    /* renamed from: M0 */
    public final void m47921M0() {
        WindowLocation windowLocation;
        DialogConvertToTextBinding dialogConvertToTextBinding = this.binding;
        if (dialogConvertToTextBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogConvertToTextBinding = null;
        }
        TintLinearLayout langSelectLayout = dialogConvertToTextBinding.langSelectLayout;
        Intrinsics.checkNotNullExpressionValue(langSelectLayout, "langSelectLayout");
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        HwrResourceListPopup hwrResourceListPopup = new HwrResourceListPopup(requireActivity, this.viewModel);
        PopupLocator popupLocator = PopupLocator.INSTANCE;
        windowLocation = popupLocator.getWindowLocation((PopupLocator) hwrResourceListPopup, langSelectLayout, (r17 & 2) != 0 ? DockPoint.BOTTOM_CENTER : DockPoint.BOTTOM_CENTER, (r17 & 4) != 0 ? DockPoint.TOP_CENTER : DockPoint.TOP_CENTER, (r17 & 8) != 0 ? 0 : 0, (r17 & 16) != 0 ? 0 : 0, (r17 & 32) != 0 ? Activity.INSTANCE.getTopContentView() : langSelectLayout);
        popupLocator.show(hwrResourceListPopup, windowLocation, langSelectLayout);
    }

    /* renamed from: N0 */
    public final void m47922N0() {
        HwrResourceModel selectPrimaryResource = this.viewModel.selectPrimaryResource();
        DialogConvertToTextBinding dialogConvertToTextBinding = this.binding;
        if (dialogConvertToTextBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogConvertToTextBinding = null;
        }
        TintTextView tintTextView = dialogConvertToTextBinding.langText;
        String name = selectPrimaryResource != null ? selectPrimaryResource.getName() : null;
        if (name == null) {
            name = "";
        }
        tintTextView.setText(name);
    }

    /* renamed from: O0 */
    public final void m47923O0(boolean loading) {
        this.viewModel.getLoading().setValue(Boolean.valueOf(loading));
        DialogConvertToTextBinding dialogConvertToTextBinding = null;
        if (loading) {
            DialogConvertToTextBinding dialogConvertToTextBinding2 = this.binding;
            if (dialogConvertToTextBinding2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                dialogConvertToTextBinding2 = null;
            }
            Drawable background = dialogConvertToTextBinding2.ivLoading.getBackground();
            Intrinsics.checkNotNullExpressionValue(background, "getBackground(...)");
            DrawableKt.animationStart(background);
            DialogConvertToTextBinding dialogConvertToTextBinding3 = this.binding;
            if (dialogConvertToTextBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                dialogConvertToTextBinding = dialogConvertToTextBinding3;
            }
            ViewKt.setViewVisibleOrGone(dialogConvertToTextBinding.recognizing, true);
            return;
        }
        DialogConvertToTextBinding dialogConvertToTextBinding4 = this.binding;
        if (dialogConvertToTextBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogConvertToTextBinding4 = null;
        }
        Drawable background2 = dialogConvertToTextBinding4.ivLoading.getBackground();
        Intrinsics.checkNotNullExpressionValue(background2, "getBackground(...)");
        DrawableKt.animationStop(background2);
        DialogConvertToTextBinding dialogConvertToTextBinding5 = this.binding;
        if (dialogConvertToTextBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            dialogConvertToTextBinding = dialogConvertToTextBinding5;
        }
        ViewKt.setViewVisibleOrGone(dialogConvertToTextBinding.recognizing, false);
    }

    @Override // androidx.fragment.app.DialogFragment
    public void dismiss() {
        this.viewModel.clear();
        super.dismiss();
        GlobalBundle.INSTANCE.unregister(this);
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle != null) {
            EditorBundleKt.unregister(editorBundle, this);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onActivityPausedEvent(@NotNull ActivityPausedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        dismiss();
    }

    @Override // androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Window window;
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        DialogConvertToTextBinding inflate = DialogConvertToTextBinding.inflate(inflater, container, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        Dialog dialog = getDialog();
        if (dialog != null && (window = dialog.getWindow()) != null) {
            window.setBackgroundDrawableResource(R.color.transparent);
        }
        Dialog dialog2 = getDialog();
        if (dialog2 != null) {
            dialog2.setCanceledOnTouchOutside(false);
        }
        m47919K0();
        m47918D0();
        m47920L0();
        DialogConvertToTextBinding dialogConvertToTextBinding = this.binding;
        if (dialogConvertToTextBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogConvertToTextBinding = null;
        }
        View root = dialogConvertToTextBinding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onOrientationChanged(@NotNull OrientationChangedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        dismiss();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onShapesConvertTextEvent(@NotNull ShapesConvertTextEvent event) {
        boolean isBlank;
        Intrinsics.checkNotNullParameter(event, "event");
        m47923O0(false);
        this.shapeList.addAll(event.getShapeList());
        CollectionKt.addIfNotContains(this.textContentTypes, event.getTextContentTypes());
        isBlank = StringsKt__StringsJVMKt.isBlank(event.getQuoteTextOrAIContent());
        DialogConvertToTextBinding dialogConvertToTextBinding = null;
        if (isBlank) {
            DialogConvertToTextBinding dialogConvertToTextBinding2 = this.binding;
            if (dialogConvertToTextBinding2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                dialogConvertToTextBinding2 = null;
            }
            dialogConvertToTextBinding2.content.setHint(ResManager.INSTANCE.getString(C10651R.string.character_recognition_tips));
            DialogConvertToTextBinding dialogConvertToTextBinding3 = this.binding;
            if (dialogConvertToTextBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                dialogConvertToTextBinding = dialogConvertToTextBinding3;
            }
            dialogConvertToTextBinding.convert.setEnabled(false);
            return;
        }
        DialogConvertToTextBinding dialogConvertToTextBinding4 = this.binding;
        if (dialogConvertToTextBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogConvertToTextBinding4 = null;
        }
        Editable text = dialogConvertToTextBinding4.content.getText();
        Intrinsics.checkNotNullExpressionValue(text, "getText(...)");
        if (!(text.length() == 0)) {
            DialogConvertToTextBinding dialogConvertToTextBinding5 = this.binding;
            if (dialogConvertToTextBinding5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                dialogConvertToTextBinding5 = null;
            }
            dialogConvertToTextBinding5.content.append("\n");
        }
        DialogConvertToTextBinding dialogConvertToTextBinding6 = this.binding;
        if (dialogConvertToTextBinding6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            dialogConvertToTextBinding = dialogConvertToTextBinding6;
        }
        dialogConvertToTextBinding.content.append(event.getQuoteTextOrAIContent());
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        if (this.editorBundle == null) {
            dismiss();
        }
    }

    @Override // androidx.fragment.app.DialogFragment
    public void show(@NotNull FragmentManager manager, @Nullable String tag) {
        Intrinsics.checkNotNullParameter(manager, "manager");
        super.show(manager, tag);
        GlobalBundle.INSTANCE.register(this);
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle != null) {
            EditorBundleKt.register(editorBundle, this);
        }
    }

    /* renamed from: y0 */
    public final void m47924y0() {
        DialogConvertToTextBinding dialogConvertToTextBinding = this.binding;
        if (dialogConvertToTextBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogConvertToTextBinding = null;
        }
        String obj = dialogConvertToTextBinding.content.getText().toString();
        if (obj.length() == 0) {
            return;
        }
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle != null) {
            EditorBundleKt.postEvent(editorBundle, new InsertConvertedTextEvent(this.shapeList, obj, this.textContentTypes));
        }
        dismiss();
    }

    /* renamed from: z0 */
    public final void m47925z0() {
        DialogConvertToTextBinding dialogConvertToTextBinding = this.binding;
        if (dialogConvertToTextBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogConvertToTextBinding = null;
        }
        String obj = dialogConvertToTextBinding.content.getText().toString();
        if (obj.length() == 0) {
            return;
        }
        ClipboardUtils.copyText(obj);
        ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.option_copy_success, false, 2, (Object) null);
    }

    public DialogConvertToText(@Nullable EditorBundle editorBundle) {
        this.editorBundle = editorBundle;
        this.viewModel = new SelectionHwrViewModel();
        this.shapeList = new ArrayList();
        this.textContentTypes = new ArrayList();
    }

    public /* synthetic */ DialogConvertToText(EditorBundle editorBundle, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : editorBundle);
    }
}
