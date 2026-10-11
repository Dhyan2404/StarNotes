package com.onyx.galaxy.note.editor.view.popup;

import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import androidx.core.app.NotificationCompat;
import com.blankj.utilcode.util.KeyboardUtils;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.extension.PopupExtKt;
import com.onyx.android.sdk.base.extension.TextViewKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.p039ui.MaxLengthInputTextEdit;
import com.onyx.android.sdk.replicator.note.data.pen.PencilBox;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.common.events.ChangePenBoxEvent;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.helper.PencilBoxManager;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.view.BasePopupWindow;
import com.onyx.galaxy.note.databinding.PopupPenCreateBinding;
import com.onyx.galaxy.note.editor.event.KeyboardCloseEvent;
import com.onyx.galaxy.note.editor.event.KeyboardOpenEvent;
import com.onyx.galaxy.note.editor.view.popup.PenCreateAndRenamePopup;
import com.onyx.galaxy.note.editor.view.toolbar.DockType;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.Arrays;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt__StringsKt;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0015\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u001a\u001a\u00020\u0013\u0012\u0006\u0010!\u001a\u00020\u001b\u0012\u0006\u0010%\u001a\u00020\u001b\u0012\u0006\u00107\u001a\u000206\u0012\n\b\u0002\u0010-\u001a\u0004\u0018\u00010&¢\u0006\u0004\b8\u00109J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0007J\u0010\u0010\b\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0007H\u0007J\b\u0010\t\u001a\u00020\u0002H\u0002J\b\u0010\n\u001a\u00020\u0002H\u0002J\u0010\u0010\r\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u000bH\u0002J\b\u0010\u000e\u001a\u00020\u0002H\u0002J\u0010\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\b\u0010\u0012\u001a\u00020\u0002H\u0002R\"\u0010\u001a\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\"\u0010!\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\"\u0010%\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\"\u0010\u001c\u001a\u0004\b#\u0010\u001e\"\u0004\b$\u0010 R$\u0010-\u001a\u0004\u0018\u00010&8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,R\u001b\u00101\u001a\u00020.8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010/\u001a\u0004\b\u0014\u00100R\u0018\u00105\u001a\u0004\u0018\u0001028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00104¨\u0006:"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/PenCreateAndRenamePopup;", "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;", "", "dismiss", "Lcom/onyx/galaxy/note/editor/event/KeyboardOpenEvent;", NotificationCompat.CATEGORY_EVENT, "onKeyboardOpenEvent", "Lcom/onyx/galaxy/note/editor/event/KeyboardCloseEvent;", "onKeyboardCloseEvent", "u", "r", "", "count", "x", C4921e.f26528e, "", "name", "p", "y", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "q", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "setEditorBundle", "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "editorBundle", "Landroid/view/View;", "Landroid/view/View;", "getRootView", "()Landroid/view/View;", "setRootView", "(Landroid/view/View;)V", "rootView", "s", "getAnchor", "setAnchor", Constants.ELEMNAME_ANCHOR_STRING, "Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;", "t", "Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;", "getPenBox", "()Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;", "setPenBox", "(Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;)V", "penBox", "Lcom/onyx/galaxy/note/databinding/PopupPenCreateBinding;", "Lkotlin/Lazy;", "()Lcom/onyx/galaxy/note/databinding/PopupPenCreateBinding;", "binding", "", "v", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.TYPES_INDEX_SIG, "originLocation", "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;", "dockType", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/view/View;Landroid/view/View;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nPenCreateAndRenamePopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PenCreateAndRenamePopup.kt\ncom/onyx/galaxy/note/editor/view/popup/PenCreateAndRenamePopup\n+ 2 TextView.kt\nandroidx/core/widget/TextViewKt\n*L\n1#1,166:1\n65#2,16:167\n93#2,3:183\n*S KotlinDebug\n*F\n+ 1 PenCreateAndRenamePopup.kt\ncom/onyx/galaxy/note/editor/view/popup/PenCreateAndRenamePopup\n*L\n75#1:167,16\n75#1:183,3\n*E\n"})
/* loaded from: classes9.dex */
public final class PenCreateAndRenamePopup extends BasePopupWindow {

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public EditorBundle editorBundle;

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public View rootView;

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public View anchor;

    /* renamed from: t, reason: from kotlin metadata */
    @Nullable
    public PencilBox penBox;

    /* renamed from: u, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: v, reason: from kotlin metadata */
    @Nullable
    public int[] originLocation;

    public /* synthetic */ PenCreateAndRenamePopup(EditorBundle editorBundle, View view, View view2, DockType dockType, PencilBox pencilBox, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(editorBundle, view, view2, dockType, (i & 16) != 0 ? null : pencilBox);
    }

    /* renamed from: s */
    public static final void m49277s(PenCreateAndRenamePopup this$0, View view, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (z) {
            return;
        }
        KeyboardUtils.hideSoftInput(this$0.m49283q().editText);
    }

    /* renamed from: t */
    public static final void m49278t(PenCreateAndRenamePopup this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        KeyboardUtils.showSoftInput(this$0.m49283q().editText);
    }

    /* renamed from: v */
    public static final void m49279v(PenCreateAndRenamePopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m49287y();
    }

    /* renamed from: w */
    public static final void m49280w(PenCreateAndRenamePopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m49281o();
    }

    @Override // com.onyx.galaxy.note.common.view.BasePopupWindow, android.widget.PopupWindow
    public void dismiss() {
        GlobalBundle.INSTANCE.unregister(this);
        super.dismiss();
    }

    @NotNull
    public final View getAnchor() {
        return this.anchor;
    }

    @NotNull
    public final EditorBundle getEditorBundle() {
        return this.editorBundle;
    }

    @Nullable
    public final PencilBox getPenBox() {
        return this.penBox;
    }

    @NotNull
    public final View getRootView() {
        return this.rootView;
    }

    /* renamed from: o */
    public final void m49281o() {
        Editable text = m49283q().editText.getText();
        String valueOf = String.valueOf(text != null ? StringsKt__StringsKt.trim(text) : null);
        PencilBox pencilBox = this.penBox;
        if (pencilBox == null) {
            m49282p(valueOf);
            return;
        }
        if (pencilBox != null) {
            pencilBox.setName(valueOf);
        }
        m49287y();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onKeyboardCloseEvent(@NotNull KeyboardCloseEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        int[] iArr = this.originLocation;
        if (iArr != null) {
            Intrinsics.checkNotNull(iArr);
            int i = iArr[0];
            int[] iArr2 = this.originLocation;
            Intrinsics.checkNotNull(iArr2);
            update(i, iArr2[1], -1, -1, true);
            this.originLocation = null;
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onKeyboardOpenEvent(@NotNull KeyboardOpenEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (m49283q().editText.isFocusable()) {
            Object parent = getContentView().getParent();
            Intrinsics.checkNotNull(parent, "null cannot be cast to non-null type android.view.View");
            View view = (View) parent;
            int[] locationOnScreen = ViewKt.getLocationOnScreen(view);
            Size windowOffset = PopupExtKt.getWindowOffset(this.rootView);
            Size screenContentSize = ResManager.INSTANCE.getScreenContentSize();
            if (screenContentSize.getHeight() - ((locationOnScreen[1] + windowOffset.getHeight()) + view.getMeasuredHeight()) < event.getKeyboardHeight()) {
                int height = (screenContentSize.getHeight() - event.getKeyboardHeight()) - view.getMeasuredHeight();
                this.originLocation = locationOnScreen;
                update(locationOnScreen[0], height, -1, -1, true);
            }
        }
    }

    /* renamed from: p */
    public final void m49282p(String name) {
        PencilBox pencilBox = new PencilBox();
        pencilBox.setName(name);
        PencilBoxManager.INSTANCE.addPencilBox(pencilBox);
        EditorBundleKt.postEvent(this.editorBundle, new ChangePenBoxEvent());
        m49287y();
    }

    /* renamed from: q */
    public final PopupPenCreateBinding m49283q() {
        return (PopupPenCreateBinding) this.binding.getValue();
    }

    /* renamed from: r */
    public final void m49284r() {
        MaxLengthInputTextEdit maxLengthInputTextEdit = m49283q().editText;
        Intrinsics.checkNotNull(maxLengthInputTextEdit);
        maxLengthInputTextEdit.addTextChangedListener(new TextWatcher() { // from class: com.onyx.galaxy.note.editor.view.popup.PenCreateAndRenamePopup$initInput$lambda$6$$inlined$addTextChangedListener$default$1
            @Override // android.text.TextWatcher
            public void afterTextChanged(@Nullable Editable s) {
                PopupPenCreateBinding m49283q;
                CharSequence charSequence;
                PopupPenCreateBinding m49283q2;
                if (s != null) {
                    m49283q = PenCreateAndRenamePopup.this.m49283q();
                    Editable text = m49283q.editText.getText();
                    if (text != null) {
                        Intrinsics.checkNotNull(text);
                        charSequence = StringsKt__StringsKt.trim(text);
                    } else {
                        charSequence = null;
                    }
                    String valueOf = String.valueOf(charSequence);
                    PenCreateAndRenamePopup.this.m49286x(valueOf.length());
                    m49283q2 = PenCreateAndRenamePopup.this.m49283q();
                    m49283q2.tvConfirm.setEnabled(valueOf.length() > 0);
                }
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(@Nullable CharSequence text, int start, int count, int after) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(@Nullable CharSequence text, int start, int before, int count) {
            }
        });
        maxLengthInputTextEdit.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.sunia.HTREnginev2.o1l
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                PenCreateAndRenamePopup.m49277s(PenCreateAndRenamePopup.this, view, z);
            }
        });
        TextViewKt.onEditorDoneActionListener(maxLengthInputTextEdit, new Function0<Boolean>() { // from class: com.onyx.galaxy.note.editor.view.popup.PenCreateAndRenamePopup$initInput$1$3
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Boolean invoke() {
                PenCreateAndRenamePopup.this.m49281o();
                return Boolean.TRUE;
            }
        });
        maxLengthInputTextEdit.post(new Runnable() { // from class: com.sunia.HTREnginev2.p1l
            @Override // java.lang.Runnable
            public final void run() {
                PenCreateAndRenamePopup.m49278t(PenCreateAndRenamePopup.this);
            }
        });
    }

    public final void setAnchor(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<set-?>");
        this.anchor = view;
    }

    public final void setEditorBundle(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<set-?>");
        this.editorBundle = editorBundle;
    }

    public final void setPenBox(@Nullable PencilBox pencilBox) {
        this.penBox = pencilBox;
    }

    public final void setRootView(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<set-?>");
        this.rootView = view;
    }

    /* renamed from: u */
    public final void m49285u() {
        View root = m49283q().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setContentView(root);
        setOutsideTouchable(true);
        setFocusable(true);
        TintImageView ivBack = m49283q().ivBack;
        Intrinsics.checkNotNullExpressionValue(ivBack, "ivBack");
        com.onyx.android.sdk.extension.ViewKt.shortClick(ivBack, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.m1l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PenCreateAndRenamePopup.m49279v(PenCreateAndRenamePopup.this, view);
            }
        });
        TintTextView tvConfirm = m49283q().tvConfirm;
        Intrinsics.checkNotNullExpressionValue(tvConfirm, "tvConfirm");
        com.onyx.android.sdk.extension.ViewKt.shortClick(tvConfirm, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.n1l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PenCreateAndRenamePopup.m49280w(PenCreateAndRenamePopup.this, view);
            }
        });
        m49286x(0);
        m49284r();
        if (this.penBox == null) {
            m49283q().tvTitle.setText(ResManager.INSTANCE.getString(C10651R.string.new_pen_box));
            return;
        }
        m49283q().tvTitle.setText(ResManager.INSTANCE.getString(C10651R.string.rename));
        MaxLengthInputTextEdit maxLengthInputTextEdit = m49283q().editText;
        PencilBox pencilBox = this.penBox;
        maxLengthInputTextEdit.setText(pencilBox != null ? pencilBox.getName() : null);
        maxLengthInputTextEdit.setSelection(String.valueOf(maxLengthInputTextEdit.getText()).length());
        m49283q().tvConfirm.setText(C10651R.string.confirm);
    }

    /* renamed from: x */
    public final void m49286x(int count) {
        TintTextView tintTextView = m49283q().tvNameSize;
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String string = getContext().getString(C10651R.string.oblique);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        String format = String.format(string, Arrays.copyOf(new Object[]{Integer.valueOf(count), Integer.valueOf(ResManager.INSTANCE.getInteger(C10651R.integer.pen_box_name_max_length))}, 2));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        tintTextView.setText(format);
    }

    /* renamed from: y */
    public final void m49287y() {
        ViewKt.hideInputKeyboard(getContentView());
        dismiss();
        new PenListPopup(this.editorBundle, this.rootView, this.anchor, getDockType()).showAlignByDockType(this.anchor);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public PenCreateAndRenamePopup(@org.jetbrains.annotations.NotNull com.onyx.android.sdk.universal.editor.EditorBundle r3, @org.jetbrains.annotations.NotNull android.view.View r4, @org.jetbrains.annotations.NotNull android.view.View r5, @org.jetbrains.annotations.NotNull com.onyx.galaxy.note.editor.view.toolbar.DockType r6, @org.jetbrains.annotations.Nullable com.onyx.android.sdk.replicator.note.data.pen.PencilBox r7) {
        /*
            r2 = this;
            java.lang.String r0 = "editorBundle"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            java.lang.String r0 = "rootView"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            java.lang.String r0 = "anchor"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            java.lang.String r0 = "dockType"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
            android.content.Context r0 = r5.getContext()
            java.lang.String r1 = "getContext(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            r2.<init>(r0, r6)
            r2.editorBundle = r3
            r2.rootView = r4
            r2.anchor = r5
            r2.penBox = r7
            com.onyx.galaxy.note.editor.view.popup.PenCreateAndRenamePopup$binding$2 r3 = new com.onyx.galaxy.note.editor.view.popup.PenCreateAndRenamePopup$binding$2
            r3.<init>()
            kotlin.Lazy r3 = kotlin.LazyKt.lazy(r3)
            r2.binding = r3
            r2.m49285u()
            com.onyx.android.sdk.universal.editor.EditorBundle r3 = r2.editorBundle
            com.onyx.galaxy.note.editor.event.CreateOtherPopupEvent r4 = new com.onyx.galaxy.note.editor.event.CreateOtherPopupEvent
            r4.<init>(r2)
            com.onyx.android.sdk.universal.editor.extension.EditorBundleKt.postEvent(r3, r4)
            com.onyx.android.sdk.universal.editor.GlobalBundle r3 = com.onyx.android.sdk.universal.editor.GlobalBundle.INSTANCE
            r3.register(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.editor.view.popup.PenCreateAndRenamePopup.<init>(com.onyx.android.sdk.universal.editor.EditorBundle, android.view.View, android.view.View, com.onyx.galaxy.note.editor.view.toolbar.DockType, com.onyx.android.sdk.replicator.note.data.pen.PencilBox):void");
    }
}
