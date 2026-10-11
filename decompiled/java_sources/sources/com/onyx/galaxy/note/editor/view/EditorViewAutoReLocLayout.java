package com.onyx.galaxy.note.editor.view;

import android.content.Context;
import android.text.Editable;
import android.text.method.HideReturnsTransformationMethod;
import android.text.method.PasswordTransformationMethod;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.blankj.utilcode.util.KeyboardUtils;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.extension.TextViewKt;
import com.onyx.android.sdk.base.extension.ViewLocator;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.p039ui.MaxLengthInputTextEdit;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextInputLayoutView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.keyboard.KeyboardHelper;
import com.onyx.galaxy.note.common.keyboard.KeyboardStateListener;
import com.onyx.galaxy.note.databinding.EditorViewLockLayoutBinding;
import com.onyx.galaxy.note.editor.view.EditorViewAutoReLocLayout;
import com.onyx.galaxy.note.utils.NoteLockUtils;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u00012\u00020\u0002:\u0001+B\u0011\b\u0016\u0012\u0006\u0010#\u001a\u00020\"¢\u0006\u0004\b$\u0010%B\u001d\b\u0016\u0012\u0006\u0010#\u001a\u00020\"\u0012\n\b\u0002\u0010'\u001a\u0004\u0018\u00010&¢\u0006\u0004\b$\u0010(B%\b\u0016\u0012\u0006\u0010#\u001a\u00020\"\u0012\n\b\u0002\u0010'\u001a\u0004\u0018\u00010&\u0012\u0006\u0010)\u001a\u00020\n¢\u0006\u0004\b$\u0010*J\b\u0010\u0004\u001a\u00020\u0003H\u0014J\u000e\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005J\u0018\u0010\f\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0014J\u0010\u0010\u000e\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\nH\u0016J\b\u0010\u000f\u001a\u00020\u0003H\u0016J\u000e\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u0010J\b\u0010\u0013\u001a\u00020\u0003H\u0002J\b\u0010\u0014\u001a\u00020\u0003H\u0002J\b\u0010\u0015\u001a\u00020\u0003H\u0002J\b\u0010\u0016\u001a\u00020\u0003H\u0002R\u0016\u0010\u001a\u001a\u00020\u00178\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001e\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0018\u0010!\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 ¨\u0006,"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/EditorViewAutoReLocLayout;", "Landroid/widget/FrameLayout;", "Lcom/onyx/galaxy/note/common/keyboard/KeyboardStateListener;", "", "onDetachedFromWindow", "Lcom/onyx/galaxy/note/editor/view/EditorViewAutoReLocLayout$EditorViewLockLayoutListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "setListener", "Landroid/view/View;", "changedView", "", "visibility", "onVisibilityChanged", "keyboardHeight", "onKeyboardOpen", "onKeyboardClose", "", "isShow", "showIconView", C6999h.f39688c, "q", "r", C4921e.f26528e, "Lcom/onyx/galaxy/note/databinding/EditorViewLockLayoutBinding;", "e", "Lcom/onyx/galaxy/note/databinding/EditorViewLockLayoutBinding;", "binding", "Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;", C6997f.f39671c, "Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;", "keyboardHelper", C6998g.f39679a, "Lcom/onyx/galaxy/note/editor/view/EditorViewAutoReLocLayout$EditorViewLockLayoutListener;", "editorViewLockLayoutListener", "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyle", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "EditorViewLockLayoutListener", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nEditorViewAutoReLocLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditorViewAutoReLocLayout.kt\ncom/onyx/galaxy/note/editor/view/EditorViewAutoReLocLayout\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,176:1\n256#2,2:177\n256#2,2:179\n*S KotlinDebug\n*F\n+ 1 EditorViewAutoReLocLayout.kt\ncom/onyx/galaxy/note/editor/view/EditorViewAutoReLocLayout\n*L\n92#1:177,2\n174#1:179,2\n*E\n"})
/* loaded from: classes9.dex */
public final class EditorViewAutoReLocLayout extends FrameLayout implements KeyboardStateListener {

    /* renamed from: e, reason: from kotlin metadata */
    public EditorViewLockLayoutBinding binding;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public KeyboardHelper keyboardHelper;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public EditorViewLockLayoutListener editorViewLockLayoutListener;

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\b\u0010\u0004\u001a\u00020\u0003H\u0016J\u0010\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/EditorViewAutoReLocLayout$EditorViewLockLayoutListener;", "", "forgetNotePassword", "", "verifyFinger", "verifyNotePassword", "password", "", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public interface EditorViewLockLayoutListener {

        @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
        /* loaded from: classes9.dex */
        public static final class DefaultImpls {
            public static void forgetNotePassword(@NotNull EditorViewLockLayoutListener editorViewLockLayoutListener) {
            }

            public static void verifyFinger(@NotNull EditorViewLockLayoutListener editorViewLockLayoutListener) {
            }

            public static void verifyNotePassword(@NotNull EditorViewLockLayoutListener editorViewLockLayoutListener, @NotNull String password) {
                Intrinsics.checkNotNullParameter(password, "password");
            }
        }

        void forgetNotePassword();

        void verifyFinger();

        void verifyNotePassword(@NotNull String password);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public EditorViewAutoReLocLayout(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* renamed from: i */
    public static final void m47170i(EditorViewAutoReLocLayout this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m47180r();
    }

    /* renamed from: j */
    public static final void m47171j(EditorViewAutoReLocLayout this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        EditorViewLockLayoutListener editorViewLockLayoutListener = this$0.editorViewLockLayoutListener;
        if (editorViewLockLayoutListener != null) {
            editorViewLockLayoutListener.forgetNotePassword();
        }
    }

    /* renamed from: k */
    public static final void m47172k(EditorViewAutoReLocLayout this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        EditorViewLockLayoutListener editorViewLockLayoutListener = this$0.editorViewLockLayoutListener;
        if (editorViewLockLayoutListener != null) {
            editorViewLockLayoutListener.verifyFinger();
        }
    }

    /* renamed from: l */
    public static final void m47173l(EditorViewAutoReLocLayout this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m47179q();
    }

    /* renamed from: m */
    public static final boolean m47174m(View view, MotionEvent motionEvent) {
        return true;
    }

    /* renamed from: n */
    public static final void m47175n(EditorViewAutoReLocLayout this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        EditorViewLockLayoutBinding editorViewLockLayoutBinding = this$0.binding;
        if (editorViewLockLayoutBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            editorViewLockLayoutBinding = null;
        }
        MaxLengthInputTextEdit maxLengthInputTextEdit = editorViewLockLayoutBinding.tieName;
        ResManager resManager = ResManager.INSTANCE;
        maxLengthInputTextEdit.setPaddingRelative(resManager.getDimens(C7384R.dimen.dp_12), 0, resManager.getDimens(C7384R.dimen.dp_52), 0);
    }

    /* renamed from: p */
    public static final void m47176p(EditorViewAutoReLocLayout this$0, ViewGroup viewGroup) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        KeyboardHelper keyboardHelper = new KeyboardHelper();
        this$0.keyboardHelper = keyboardHelper;
        Context context = this$0.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        keyboardHelper.init(context).bindRootLayout(viewGroup).setOnKeyboardStateListener(this$0);
    }

    /* renamed from: h */
    public final void m47177h() {
        EditorViewLockLayoutBinding inflate = EditorViewLockLayoutBinding.inflate(LayoutInflater.from(getContext()), this, true);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        EditorViewLockLayoutBinding editorViewLockLayoutBinding = null;
        if (inflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            inflate = null;
        }
        TintTextView btnOk = inflate.btnOk;
        Intrinsics.checkNotNullExpressionValue(btnOk, "btnOk");
        ViewKt.click$default(btnOk, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.lmf
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EditorViewAutoReLocLayout.m47170i(EditorViewAutoReLocLayout.this, view);
            }
        }, 1, null);
        EditorViewLockLayoutBinding editorViewLockLayoutBinding2 = this.binding;
        if (editorViewLockLayoutBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            editorViewLockLayoutBinding2 = null;
        }
        MaxLengthInputTextEdit tieName = editorViewLockLayoutBinding2.tieName;
        Intrinsics.checkNotNullExpressionValue(tieName, "tieName");
        TextViewKt.onEditorDoneActionListener(tieName, new Function0<Boolean>() { // from class: com.onyx.galaxy.note.editor.view.EditorViewAutoReLocLayout$initView$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Boolean invoke() {
                EditorViewAutoReLocLayout.this.m47180r();
                return Boolean.TRUE;
            }
        });
        EditorViewLockLayoutBinding editorViewLockLayoutBinding3 = this.binding;
        if (editorViewLockLayoutBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            editorViewLockLayoutBinding3 = null;
        }
        TintTextView tvForget = editorViewLockLayoutBinding3.tvForget;
        Intrinsics.checkNotNullExpressionValue(tvForget, "tvForget");
        ViewKt.click$default(tvForget, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.mmf
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EditorViewAutoReLocLayout.m47171j(EditorViewAutoReLocLayout.this, view);
            }
        }, 1, null);
        EditorViewLockLayoutBinding editorViewLockLayoutBinding4 = this.binding;
        if (editorViewLockLayoutBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            editorViewLockLayoutBinding4 = null;
        }
        TintTextView tvFinger = editorViewLockLayoutBinding4.tvFinger;
        Intrinsics.checkNotNullExpressionValue(tvFinger, "tvFinger");
        ViewKt.click$default(tvFinger, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.nmf
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EditorViewAutoReLocLayout.m47172k(EditorViewAutoReLocLayout.this, view);
            }
        }, 1, null);
        EditorViewLockLayoutBinding editorViewLockLayoutBinding5 = this.binding;
        if (editorViewLockLayoutBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            editorViewLockLayoutBinding5 = null;
        }
        TintImageView btnTogglePwdVisible = editorViewLockLayoutBinding5.btnTogglePwdVisible;
        Intrinsics.checkNotNullExpressionValue(btnTogglePwdVisible, "btnTogglePwdVisible");
        ViewKt.click$default(btnTogglePwdVisible, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.omf
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EditorViewAutoReLocLayout.m47173l(EditorViewAutoReLocLayout.this, view);
            }
        }, 1, null);
        EditorViewLockLayoutBinding editorViewLockLayoutBinding6 = this.binding;
        if (editorViewLockLayoutBinding6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            editorViewLockLayoutBinding6 = null;
        }
        TintTextView tvFinger2 = editorViewLockLayoutBinding6.tvFinger;
        Intrinsics.checkNotNullExpressionValue(tvFinger2, "tvFinger");
        NoteLockUtils noteLockUtils = NoteLockUtils.INSTANCE;
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        tvFinger2.setVisibility(noteLockUtils.checkNoteFingerUnLockAvailable(context) ? 0 : 8);
        EditorViewLockLayoutBinding editorViewLockLayoutBinding7 = this.binding;
        if (editorViewLockLayoutBinding7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            editorViewLockLayoutBinding = editorViewLockLayoutBinding7;
        }
        editorViewLockLayoutBinding.vBg.setOnTouchListener(new View.OnTouchListener() { // from class: com.sunia.HTREnginev2.pmf
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean m47174m;
                m47174m = EditorViewAutoReLocLayout.m47174m(view, motionEvent);
                return m47174m;
            }
        });
    }

    /* renamed from: o */
    public final void m47178o() {
        ViewLocator viewLocator = ViewLocator.INSTANCE;
        EditorViewLockLayoutBinding editorViewLockLayoutBinding = this.binding;
        if (editorViewLockLayoutBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            editorViewLockLayoutBinding = null;
        }
        View root = editorViewLockLayoutBinding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        View activityContentView = viewLocator.getActivityContentView(root);
        final ViewGroup viewGroup = activityContentView instanceof ViewGroup ? (ViewGroup) activityContentView : null;
        if (viewGroup != null) {
            viewGroup.post(new Runnable() { // from class: com.sunia.HTREnginev2.jmf
                @Override // java.lang.Runnable
                public final void run() {
                    EditorViewAutoReLocLayout.m47176p(EditorViewAutoReLocLayout.this, viewGroup);
                }
            });
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        this.keyboardHelper.release();
        super.onDetachedFromWindow();
    }

    @Override // com.onyx.galaxy.note.common.keyboard.KeyboardStateListener
    public void onKeyboardClose() {
        KeyboardHelper keyboardHelper = this.keyboardHelper;
        EditorViewLockLayoutBinding editorViewLockLayoutBinding = this.binding;
        EditorViewLockLayoutBinding editorViewLockLayoutBinding2 = null;
        if (editorViewLockLayoutBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            editorViewLockLayoutBinding = null;
        }
        TintConstraintLayout clsLockRoot = editorViewLockLayoutBinding.clsLockRoot;
        Intrinsics.checkNotNullExpressionValue(clsLockRoot, "clsLockRoot");
        KeyboardHelper.animateDown$default(keyboardHelper, clsLockRoot, null, false, 6, null);
        KeyboardHelper keyboardHelper2 = this.keyboardHelper;
        EditorViewLockLayoutBinding editorViewLockLayoutBinding3 = this.binding;
        if (editorViewLockLayoutBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            editorViewLockLayoutBinding2 = editorViewLockLayoutBinding3;
        }
        TintConstraintLayout clsLockRoot2 = editorViewLockLayoutBinding2.clsLockRoot;
        Intrinsics.checkNotNullExpressionValue(clsLockRoot2, "clsLockRoot");
        keyboardHelper2.removeTranslateRule(clsLockRoot2);
    }

    @Override // com.onyx.galaxy.note.common.keyboard.KeyboardStateListener
    public void onKeyboardOpen(int keyboardHeight) {
        EditorViewLockLayoutBinding editorViewLockLayoutBinding = this.binding;
        if (editorViewLockLayoutBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            editorViewLockLayoutBinding = null;
        }
        TintTextInputLayoutView tilName = editorViewLockLayoutBinding.tilName;
        Intrinsics.checkNotNullExpressionValue(tilName, "tilName");
        int measuredHeight = com.onyx.android.sdk.base.extension.ViewKt.getLocationOnScreen(tilName)[1] + tilName.getMeasuredHeight();
        int height = ViewLocator.INSTANCE.getScreenSize().getHeight() - keyboardHeight;
        if (measuredHeight > height) {
            int i = measuredHeight - height;
            EditorViewLockLayoutBinding editorViewLockLayoutBinding2 = this.binding;
            if (editorViewLockLayoutBinding2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                editorViewLockLayoutBinding2 = null;
            }
            TintConstraintLayout clsLockRoot = editorViewLockLayoutBinding2.clsLockRoot;
            Intrinsics.checkNotNullExpressionValue(clsLockRoot, "clsLockRoot");
            this.keyboardHelper.setTranslateRule(clsLockRoot, Float.valueOf(clsLockRoot.getTranslationY()), Float.valueOf(clsLockRoot.getTranslationY() - i));
            KeyboardHelper.animateUp$default(this.keyboardHelper, clsLockRoot, false, 2, null);
        }
    }

    @Override // android.view.View
    public void onVisibilityChanged(@NotNull View changedView, int visibility) {
        Intrinsics.checkNotNullParameter(changedView, "changedView");
        super.onVisibilityChanged(changedView, visibility);
        if (visibility == 0) {
            changedView.post(new Runnable() { // from class: com.sunia.HTREnginev2.kmf
                @Override // java.lang.Runnable
                public final void run() {
                    EditorViewAutoReLocLayout.m47175n(EditorViewAutoReLocLayout.this);
                }
            });
        }
    }

    /* renamed from: q */
    public final void m47179q() {
        EditorViewLockLayoutBinding editorViewLockLayoutBinding = this.binding;
        EditorViewLockLayoutBinding editorViewLockLayoutBinding2 = null;
        if (editorViewLockLayoutBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            editorViewLockLayoutBinding = null;
        }
        boolean isSelected = editorViewLockLayoutBinding.btnTogglePwdVisible.isSelected();
        TransformationMethod passwordTransformationMethod = isSelected ? PasswordTransformationMethod.getInstance() : HideReturnsTransformationMethod.getInstance();
        EditorViewLockLayoutBinding editorViewLockLayoutBinding3 = this.binding;
        if (editorViewLockLayoutBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            editorViewLockLayoutBinding3 = null;
        }
        Editable text = editorViewLockLayoutBinding3.tieName.getText();
        int length = text != null ? text.length() : 0;
        EditorViewLockLayoutBinding editorViewLockLayoutBinding4 = this.binding;
        if (editorViewLockLayoutBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            editorViewLockLayoutBinding4 = null;
        }
        editorViewLockLayoutBinding4.tieName.setTransformationMethod(passwordTransformationMethod);
        EditorViewLockLayoutBinding editorViewLockLayoutBinding5 = this.binding;
        if (editorViewLockLayoutBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            editorViewLockLayoutBinding5 = null;
        }
        editorViewLockLayoutBinding5.btnTogglePwdVisible.setSelected(!isSelected);
        EditorViewLockLayoutBinding editorViewLockLayoutBinding6 = this.binding;
        if (editorViewLockLayoutBinding6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            editorViewLockLayoutBinding2 = editorViewLockLayoutBinding6;
        }
        editorViewLockLayoutBinding2.tieName.setSelection(length);
    }

    /* renamed from: r */
    public final void m47180r() {
        CharSequence trim;
        EditorViewLockLayoutBinding editorViewLockLayoutBinding = this.binding;
        EditorViewLockLayoutBinding editorViewLockLayoutBinding2 = null;
        if (editorViewLockLayoutBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            editorViewLockLayoutBinding = null;
        }
        trim = StringsKt__StringsKt.trim((CharSequence) String.valueOf(editorViewLockLayoutBinding.tieName.getText()));
        String obj = trim.toString();
        if (!StringKt.isNotBlank(obj)) {
            ToastUtils.INSTANCE.show(C10651R.string.dialog_note_input_pwd_empty, true);
            return;
        }
        ResManager resManager = ResManager.INSTANCE;
        int integer = resManager.getInteger(C10651R.integer.note_pwd_max_input_length);
        int integer2 = resManager.getInteger(C10651R.integer.note_pwd_min_input_length);
        int length = obj.length();
        if (length < integer2 || length > integer) {
            ToastUtils.INSTANCE.show(C10651R.string.dialog_note_pwd_hint_title, true);
            return;
        }
        EditorViewLockLayoutListener editorViewLockLayoutListener = this.editorViewLockLayoutListener;
        if (editorViewLockLayoutListener != null) {
            editorViewLockLayoutListener.verifyNotePassword(obj);
        }
        EditorViewLockLayoutBinding editorViewLockLayoutBinding3 = this.binding;
        if (editorViewLockLayoutBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            editorViewLockLayoutBinding3 = null;
        }
        KeyboardUtils.hideSoftInput(editorViewLockLayoutBinding3.tieName);
        EditorViewLockLayoutBinding editorViewLockLayoutBinding4 = this.binding;
        if (editorViewLockLayoutBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            editorViewLockLayoutBinding2 = editorViewLockLayoutBinding4;
        }
        Editable text = editorViewLockLayoutBinding2.tieName.getText();
        if (text != null) {
            text.clear();
        }
    }

    public final void setListener(@NotNull EditorViewLockLayoutListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.editorViewLockLayoutListener = listener;
    }

    public final void showIconView(boolean isShow) {
        EditorViewLockLayoutBinding editorViewLockLayoutBinding = this.binding;
        if (editorViewLockLayoutBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            editorViewLockLayoutBinding = null;
        }
        TintImageView tintImageView = editorViewLockLayoutBinding.tintImageView;
        Intrinsics.checkNotNullExpressionValue(tintImageView, "tintImageView");
        tintImageView.setVisibility(isShow ? 0 : 8);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public EditorViewAutoReLocLayout(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, -1);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ EditorViewAutoReLocLayout(Context context, AttributeSet attributeSet, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? null : attributeSet);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EditorViewAutoReLocLayout(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        this.keyboardHelper = new KeyboardHelper();
        m47177h();
        m47178o();
    }

    public /* synthetic */ EditorViewAutoReLocLayout(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, i);
    }
}
