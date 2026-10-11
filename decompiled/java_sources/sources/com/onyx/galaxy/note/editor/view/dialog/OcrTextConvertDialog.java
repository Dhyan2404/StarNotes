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
import androidx.fragment.app.FragmentManager;
import com.blankj.utilcode.util.ClipboardUtils;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.ContextKt;
import com.onyx.android.sdk.base.extension.DrawableKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.data.common.data.TextContentType;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.p039ui.TouchModeMaxLengthEditText;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.export.ExportContentToTXTFileAction;
import com.onyx.android.sdk.universal.editor.events.note.InsertConvertedTextEvent;
import com.onyx.android.sdk.universal.editor.events.note.QuitTransformEvent;
import com.onyx.android.sdk.universal.editor.events.note.ShapesConvertTextEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.databinding.DialogOcrTextConvertBinding;
import com.onyx.galaxy.note.editor.view.dialog.OcrTextConvertDialog;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.gon;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0013\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001a¢\u0006\u0004\b)\u0010*J$\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\u001a\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\u001a\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016J\b\u0010\u0012\u001a\u00020\u000bH\u0016J\u0010\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u0013H\u0007J\b\u0010\u0016\u001a\u00020\u000bH\u0002J\b\u0010\u0017\u001a\u00020\u000bH\u0002J\b\u0010\u0018\u001a\u00020\u000bH\u0002J\b\u0010\u0019\u001a\u00020\u000bH\u0002R\u0016\u0010\u001d\u001a\u0004\u0018\u00010\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u001b\u0010#\u001a\u00020\u001e8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"R\u001a\u0010(\u001a\b\u0012\u0004\u0012\u00020%0$8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010'¨\u0006+"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/dialog/OcrTextConvertDialog;", "Landroidx/fragment/app/DialogFragment;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", gon.f71270W, "Landroid/os/Bundle;", C1126e.f7693h, "Landroid/view/View;", "onCreateView", "view", "", "onViewCreated", "Landroidx/fragment/app/FragmentManager;", "manager", "", "tag", "show", "dismiss", "Lcom/onyx/android/sdk/universal/editor/events/note/ShapesConvertTextEvent;", NotificationCompat.CATEGORY_EVENT, "onShapesConvertTextEvent", "B0", "x0", "y0", "w0", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "z1", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lcom/onyx/galaxy/note/databinding/DialogOcrTextConvertBinding;", "A1", "Lkotlin/Lazy;", "A0", "()Lcom/onyx/galaxy/note/databinding/DialogOcrTextConvertBinding;", "binding", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "B1", "Ljava/util/List;", "shapeList", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nOcrTextConvertDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OcrTextConvertDialog.kt\ncom/onyx/galaxy/note/editor/view/dialog/OcrTextConvertDialog\n+ 2 TextView.kt\nandroidx/core/widget/TextViewKt\n*L\n1#1,135:1\n65#2,16:136\n93#2,3:152\n*S KotlinDebug\n*F\n+ 1 OcrTextConvertDialog.kt\ncom/onyx/galaxy/note/editor/view/dialog/OcrTextConvertDialog\n*L\n74#1:136,16\n74#1:152,3\n*E\n"})
/* loaded from: classes9.dex */
public final class OcrTextConvertDialog extends DialogFragment {

    /* renamed from: A1, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: B1, reason: from kotlin metadata */
    @NotNull
    public final List<Shape> shapeList;

    /* renamed from: z1, reason: from kotlin metadata */
    @Nullable
    public final EditorBundle editorBundle;

    /* renamed from: com.onyx.galaxy.note.editor.view.dialog.OcrTextConvertDialog$a */
    /* loaded from: classes9.dex */
    public static final class C12335a<T> implements Consumer {
        public C12335a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            Context requireContext = OcrTextConvertDialog.this.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            ContextKt.shareFile(requireContext, it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.dialog.OcrTextConvertDialog$b */
    /* loaded from: classes9.dex */
    public static final class C12336b<T> implements Consumer {
        public C12336b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            OcrTextConvertDialog.this.dismiss();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public OcrTextConvertDialog() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    /* renamed from: C0 */
    public static final void m48115C0(OcrTextConvertDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    /* renamed from: D0 */
    public static final void m48116D0(OcrTextConvertDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48127w0();
    }

    /* renamed from: E0 */
    public static final void m48117E0(OcrTextConvertDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48128x0();
    }

    /* renamed from: F0 */
    public static final void m48118F0(OcrTextConvertDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48129y0();
    }

    /* renamed from: z0 */
    public static final void m48124z0(EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "$editorBundle");
        EditorBundleKt.postEvent(editorBundle, new QuitTransformEvent(false, 1, null));
    }

    /* renamed from: A0 */
    public final DialogOcrTextConvertBinding m48125A0() {
        return (DialogOcrTextConvertBinding) this.binding.getValue();
    }

    /* renamed from: B0 */
    public final void m48126B0() {
        Drawable background = m48125A0().ivLoading.getBackground();
        Intrinsics.checkNotNullExpressionValue(background, "getBackground(...)");
        DrawableKt.animationStart(background);
        TouchModeMaxLengthEditText content = m48125A0().content;
        Intrinsics.checkNotNullExpressionValue(content, "content");
        content.addTextChangedListener(new TextWatcher() { // from class: com.onyx.galaxy.note.editor.view.dialog.OcrTextConvertDialog$initView$$inlined$addTextChangedListener$default$1
            @Override // android.text.TextWatcher
            public void afterTextChanged(@Nullable Editable s) {
                DialogOcrTextConvertBinding m48125A0;
                DialogOcrTextConvertBinding m48125A02;
                boolean isNotBlank = StringKt.isNotBlank(StringKt.trim(String.valueOf(s)));
                m48125A0 = OcrTextConvertDialog.this.m48125A0();
                m48125A0.convert.setEnabled(isNotBlank);
                m48125A02 = OcrTextConvertDialog.this.m48125A0();
                ViewKt.setViewVisibleOrGone(m48125A02.llBtnLayout, isNotBlank);
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(@Nullable CharSequence text, int start, int count, int after) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(@Nullable CharSequence text, int start, int before, int count) {
            }
        });
        m48125A0().btnCancel.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.tek
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                OcrTextConvertDialog.m48115C0(OcrTextConvertDialog.this, view);
            }
        });
        m48125A0().convert.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.uek
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                OcrTextConvertDialog.m48116D0(OcrTextConvertDialog.this, view);
            }
        });
        m48125A0().copy.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.vek
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                OcrTextConvertDialog.m48117E0(OcrTextConvertDialog.this, view);
            }
        });
        m48125A0().export.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.wek
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                OcrTextConvertDialog.m48118F0(OcrTextConvertDialog.this, view);
            }
        });
    }

    @Override // androidx.fragment.app.DialogFragment
    public void dismiss() {
        super.dismiss();
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle != null) {
            EditorBundleKt.unregister(editorBundle, this);
        }
    }

    @Override // androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Window window;
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        Dialog dialog = getDialog();
        if (dialog != null && (window = dialog.getWindow()) != null) {
            window.setBackgroundDrawableResource(R.color.transparent);
        }
        Dialog dialog2 = getDialog();
        if (dialog2 != null) {
            dialog2.setCanceledOnTouchOutside(false);
        }
        m48126B0();
        View root = m48125A0().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onShapesConvertTextEvent(@NotNull ShapesConvertTextEvent event) {
        boolean isBlank;
        Intrinsics.checkNotNullParameter(event, "event");
        this.shapeList.addAll(event.getShapeList());
        Drawable background = m48125A0().ivLoading.getBackground();
        Intrinsics.checkNotNullExpressionValue(background, "getBackground(...)");
        DrawableKt.animationStop(background);
        ViewKt.setViewVisibleOrGone(m48125A0().recognizing, false);
        isBlank = StringsKt__StringsJVMKt.isBlank(event.getQuoteTextOrAIContent());
        if (isBlank) {
            m48125A0().content.setHint(getString(C10651R.string.character_recognition_tips));
            m48125A0().convert.setEnabled(false);
            return;
        }
        Editable text = m48125A0().content.getText();
        Intrinsics.checkNotNullExpressionValue(text, "getText(...)");
        if (text.length() > 0) {
            m48125A0().content.append("\n");
        }
        m48125A0().content.append(event.getQuoteTextOrAIContent());
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
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle != null) {
            EditorBundleKt.register(editorBundle, this);
        }
    }

    /* renamed from: w0 */
    public final void m48127w0() {
        List mutableList;
        String obj = m48125A0().content.getText().toString();
        if (obj.length() == 0) {
            return;
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) CollectionKt.asList(TextContentType.OCR_TEXT));
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle != null) {
            EditorBundleKt.postEvent(editorBundle, new InsertConvertedTextEvent(this.shapeList, obj, mutableList));
        }
        dismiss();
    }

    /* renamed from: x0 */
    public final void m48128x0() {
        String obj = m48125A0().content.getText().toString();
        if (obj.length() == 0) {
            return;
        }
        ClipboardUtils.copyText(obj);
        ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.option_copy_success, false, 2, (Object) null);
    }

    /* renamed from: y0 */
    public final void m48129y0() {
        final EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            return;
        }
        String trim = StringKt.trim(m48125A0().content.getText().toString());
        if (trim == null || trim.length() == 0) {
            return;
        }
        ExportContentToTXTFileAction exportContentToTXTFileAction = new ExportContentToTXTFileAction(editorBundle, trim, null, null, null, 28, null);
        exportContentToTXTFileAction.setDesc(ResManager.INSTANCE.getStringSafely(C10651R.string.optical_character_recognition));
        exportContentToTXTFileAction.build().doOnNext(new C12335a()).doOnNext(new C12336b()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.xek
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                OcrTextConvertDialog.m48124z0(EditorBundle.this);
            }
        }).subscribe();
    }

    public OcrTextConvertDialog(@Nullable EditorBundle editorBundle) {
        Lazy lazy;
        this.editorBundle = editorBundle;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<DialogOcrTextConvertBinding>() { // from class: com.onyx.galaxy.note.editor.view.dialog.OcrTextConvertDialog$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final DialogOcrTextConvertBinding invoke() {
                return DialogOcrTextConvertBinding.inflate(LayoutInflater.from(OcrTextConvertDialog.this.requireActivity()));
            }
        });
        this.binding = lazy;
        this.shapeList = new ArrayList();
    }

    public /* synthetic */ OcrTextConvertDialog(EditorBundle editorBundle, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : editorBundle);
    }
}
