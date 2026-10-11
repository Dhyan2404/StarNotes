package com.onyx.galaxy.note.editor.view.popup;

import android.annotation.SuppressLint;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.ActivityChooserModel;
import androidx.core.app.NotificationCompat;
import androidx.lifecycle.ViewModelProvider;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.data.WindowLocation;
import com.onyx.android.sdk.base.extension.PopupLocator;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.extension.ViewLocator;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.p039ui.PopupDragHandler;
import com.onyx.android.sdk.theme.widgets.TintEditText;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.universal.common.events.OutsideTouchedEvent;
import com.onyx.android.sdk.universal.editor.events.app.FinishEditBeautifyResultEvent;
import com.onyx.android.sdk.universal.editor.events.app.StartEditBeautifyResultEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.common.keyboard.KeyboardHelper;
import com.onyx.galaxy.note.common.keyboard.KeyboardStateListener;
import com.onyx.galaxy.note.common.view.BasePopupWindow;
import com.onyx.galaxy.note.databinding.PopupEditBeautifyResultBinding;
import com.onyx.galaxy.note.editor.view.popup.EditBeautifyResultPopup;
import com.onyx.galaxy.note.editor.viewmodel.InkBeautifyViewModel;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0017\u0012\u0006\u0010\u001b\u001a\u00020\u0018\u0012\u0006\u0010\u001e\u001a\u00020\u0003¢\u0006\u0004\b)\u0010*J\u000e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003J\b\u0010\u0007\u001a\u00020\u0005H\u0014J\b\u0010\b\u001a\u00020\u0005H\u0014J\b\u0010\n\u001a\u0004\u0018\u00010\tJ\u0010\u0010\r\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u000bH\u0016J\b\u0010\u000e\u001a\u00020\u0005H\u0016J\u0010\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u000fH\u0007J\b\u0010\u0011\u001a\u00020\u0005H\u0002J\b\u0010\u0012\u001a\u00020\u0005H\u0002J\b\u0010\u0013\u001a\u00020\u0005H\u0002J\u0010\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0014H\u0002J\b\u0010\u0017\u001a\u00020\u0005H\u0002R\u0014\u0010\u001b\u001a\u00020\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0014\u0010\u001e\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0014\u0010!\u001a\u00020\u001f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010 R\u0014\u0010$\u001a\u00020\"8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010#R\u0016\u0010'\u001a\u00020%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010&R\u0016\u0010\u0004\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010\u001d¨\u0006+"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/EditBeautifyResultPopup;", "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;", "Lcom/onyx/galaxy/note/common/keyboard/KeyboardStateListener;", "Lcom/onyx/android/sdk/universal/editor/events/app/StartEditBeautifyResultEvent;", NotificationCompat.CATEGORY_EVENT, "", "updateResult", "onShow", "onDismiss", "Lcom/onyx/android/sdk/base/data/WindowLocation;", "getLastWindowLocation", "", "keyboardHeight", "onKeyboardOpen", "onKeyboardClose", "Lcom/onyx/android/sdk/universal/common/events/OutsideTouchedEvent;", "onActivityTouchedEvent", "s", C4921e.f26528e, GoogleApiAvailabilityLight.f29016b, "", "newText", "t", "u", "Landroidx/appcompat/app/AppCompatActivity;", "q", "Landroidx/appcompat/app/AppCompatActivity;", ActivityChooserModel.f1429r, "r", "Lcom/onyx/android/sdk/universal/editor/events/app/StartEditBeautifyResultEvent;", "originEvent", "Lcom/onyx/galaxy/note/databinding/PopupEditBeautifyResultBinding;", "Lcom/onyx/galaxy/note/databinding/PopupEditBeautifyResultBinding;", "binding", "Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;", "Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;", "viewModel", "Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;", "Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;", "keyboardHelper", "v", Constants.CONSTRUCTOR_NAME, "(Landroidx/appcompat/app/AppCompatActivity;Lcom/onyx/android/sdk/universal/editor/events/app/StartEditBeautifyResultEvent;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SuppressLint({"NewApi"})
@SourceDebugExtension({"SMAP\nEditBeautifyResultPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditBeautifyResultPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/EditBeautifyResultPopup\n+ 2 DataBinding.kt\ncom/onyx/android/sdk/base/extension/DataBindingKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,150:1\n64#2:151\n1#3:152\n*S KotlinDebug\n*F\n+ 1 EditBeautifyResultPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/EditBeautifyResultPopup\n*L\n37#1:151\n*E\n"})
/* loaded from: classes9.dex */
public final class EditBeautifyResultPopup extends BasePopupWindow implements KeyboardStateListener {

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public final AppCompatActivity activity;

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final StartEditBeautifyResultEvent originEvent;

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public final PopupEditBeautifyResultBinding binding;

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public final InkBeautifyViewModel viewModel;

    /* renamed from: u, reason: from kotlin metadata */
    @NotNull
    public KeyboardHelper keyboardHelper;

    /* renamed from: v, reason: from kotlin metadata */
    @NotNull
    public StartEditBeautifyResultEvent event;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EditBeautifyResultPopup(@NotNull AppCompatActivity activity, @NotNull StartEditBeautifyResultEvent originEvent) {
        super(activity, null, 2, null);
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(originEvent, "originEvent");
        this.activity = activity;
        this.originEvent = originEvent;
        PopupEditBeautifyResultBinding inflate = PopupEditBeautifyResultBinding.inflate(activity.getLayoutInflater());
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        this.viewModel = (InkBeautifyViewModel) new ViewModelProvider(activity).get(InkBeautifyViewModel.class);
        this.keyboardHelper = new KeyboardHelper();
        this.event = originEvent;
        setOutsideTouchable(false);
        setFocusable(false);
        setTouchModal(false);
        TintLinearLayout root = inflate.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setContentView(root);
    }

    /* renamed from: p */
    public static final void m48694p(EditBeautifyResultPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.binding.resultText.getText().clear();
    }

    /* renamed from: q */
    public static final void m48695q(EditBeautifyResultPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48700t(this$0.binding.resultText.getText().toString());
        this$0.dismiss();
    }

    /* renamed from: r */
    public static final void m48696r(EditBeautifyResultPopup this$0, View view, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.setFocusable(z);
        this$0.setInputMethodMode(z ? 0 : 2);
        this$0.update();
        if (z) {
            TintEditText resultText = this$0.binding.resultText;
            Intrinsics.checkNotNullExpressionValue(resultText, "resultText");
            ViewKt.postToShowInputKeyboard(resultText, 100L);
        }
    }

    @Nullable
    public final WindowLocation getLastWindowLocation() {
        return this.viewModel.getLastWindowLocationOfEditPopup();
    }

    /* renamed from: n */
    public final void m48697n() {
        TintImageView dragButton = this.binding.dragButton;
        Intrinsics.checkNotNullExpressionValue(dragButton, "dragButton");
        new PopupDragHandler(this, dragButton, null, new Function0<Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.EditBeautifyResultPopup$initDragHandler$1
            {
                super(0);
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                InkBeautifyViewModel inkBeautifyViewModel;
                InkBeautifyViewModel inkBeautifyViewModel2;
                inkBeautifyViewModel = EditBeautifyResultPopup.this.viewModel;
                inkBeautifyViewModel.setLastWindowLocationOfEditPopup(PopupLocator.INSTANCE.getCachedWindowLocation(EditBeautifyResultPopup.this));
                inkBeautifyViewModel2 = EditBeautifyResultPopup.this.viewModel;
                inkBeautifyViewModel2.setWindowLocationBeforeKeyboardOpen(null);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }
        }, 4, null).initialize();
    }

    /* renamed from: o */
    public final void m48698o() {
        TintImageView clearButton = this.binding.clearButton;
        Intrinsics.checkNotNullExpressionValue(clearButton, "clearButton");
        com.onyx.android.sdk.extension.ViewKt.click$default(clearButton, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.wkf
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EditBeautifyResultPopup.m48694p(EditBeautifyResultPopup.this, view);
            }
        }, 1, null);
        TintImageView confirmButton = this.binding.confirmButton;
        Intrinsics.checkNotNullExpressionValue(confirmButton, "confirmButton");
        com.onyx.android.sdk.extension.ViewKt.click$default(confirmButton, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.xkf
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EditBeautifyResultPopup.m48695q(EditBeautifyResultPopup.this, view);
            }
        }, 1, null);
        this.binding.resultText.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.sunia.HTREnginev2.ykf
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                EditBeautifyResultPopup.m48696r(EditBeautifyResultPopup.this, view, z);
            }
        });
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onActivityTouchedEvent(@NotNull OutsideTouchedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.binding.resultText.clearFocus();
    }

    @Override // com.onyx.galaxy.note.common.view.BasePopupWindow
    public void onDismiss() {
        this.keyboardHelper.release();
        super.onDismiss();
    }

    @Override // com.onyx.galaxy.note.common.keyboard.KeyboardStateListener
    public void onKeyboardClose() {
        WindowLocation windowLocationBeforeKeyboardOpen = this.viewModel.getWindowLocationBeforeKeyboardOpen();
        if (windowLocationBeforeKeyboardOpen != null) {
        }
    }

    @Override // com.onyx.galaxy.note.common.keyboard.KeyboardStateListener
    public void onKeyboardOpen(int keyboardHeight) {
        PopupLocator popupLocator = PopupLocator.INSTANCE;
        WindowLocation cachedWindowLocation = popupLocator.getCachedWindowLocation(this);
        if (cachedWindowLocation == null) {
            return;
        }
        int dimens = ResManager.INSTANCE.getDimens(C7384R.dimen.dp_16);
        if (cachedWindowLocation.getY() + cachedWindowLocation.getDy() < keyboardHeight) {
            this.viewModel.setWindowLocationBeforeKeyboardOpen(cachedWindowLocation);
            WindowLocation copy$default = WindowLocation.copy$default(cachedWindowLocation, 0, 0, 0, 0, 0, null, null, 127, null);
            copy$default.setY(keyboardHeight);
            copy$default.setDy(dimens);
            PopupLocator.update$default(popupLocator, this, copy$default, 0, 0, 6, null);
        }
    }

    @Override // com.onyx.galaxy.note.common.view.BasePopupWindow
    public void onShow() {
        super.onShow();
        m48699s();
        m48698o();
        m48697n();
        m48701u();
    }

    /* renamed from: s */
    public final void m48699s() {
        this.binding.resultText.setText(this.event.getText());
    }

    /* renamed from: t */
    public final void m48700t(String newText) {
        if (Intrinsics.areEqual(newText, this.event.getText())) {
            return;
        }
        EditorBundleKt.postEvent(this.event.getEditorBundle(), new FinishEditBeautifyResultEvent(this.event.getOriginShapes(), newText, this.event.getStartX(), this.event.getBaseline(), this.event.getTypesetArgs()));
    }

    /* renamed from: u */
    public final void m48701u() {
        ViewLocator viewLocator = ViewLocator.INSTANCE;
        TintLinearLayout root = this.binding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        View activityContentView = viewLocator.getActivityContentView(root);
        ViewGroup viewGroup = activityContentView instanceof ViewGroup ? (ViewGroup) activityContentView : null;
        if (viewGroup == null) {
            return;
        }
        KeyboardHelper keyboardHelper = new KeyboardHelper();
        this.keyboardHelper = keyboardHelper;
        keyboardHelper.init(getContext()).bindRootLayout(viewGroup).bindKeyboardInsetsListener(viewGroup).setOnKeyboardStateListener(this);
    }

    public final void updateResult(@NotNull StartEditBeautifyResultEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.event = event;
        m48699s();
    }
}
