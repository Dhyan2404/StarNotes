package com.onyx.galaxy.note.editor.view.popup;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeOptions;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.action.shape.DeleteShapesAction;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.extension.PopupWindowKt;
import com.onyx.galaxy.note.common.view.BasePopupWindow;
import com.onyx.galaxy.note.databinding.PopupShapeTagBinding;
import com.onyx.galaxy.note.editor.view.popup.TagShapePopup;
import com.sun.org.apache.xalan.internal.templates.Constants;
import io.reactivex.rxjava3.functions.Action;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\n\u001a\u00020\b\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u0012\u0006\u0010\u0012\u001a\u00020\u000f¢\u0006\u0004\b\u001b\u0010\u001cJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0006\u001a\u00020\u0004H\u0002J\b\u0010\u0007\u001a\u00020\u0004H\u0002R\u0014\u0010\n\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\tR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0014\u0010\u0012\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u001b\u0010\u0018\u001a\u00020\u00138BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/TagShapePopup;", "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;", "Landroid/view/View;", Constants.ELEMNAME_ANCHOR_STRING, "", "show", "q", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "r", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "hitTestVirtualPage", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "s", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", "Lcom/onyx/galaxy/note/databinding/PopupShapeTagBinding;", "t", "Lkotlin/Lazy;", "p", "()Lcom/onyx/galaxy/note/databinding/PopupShapeTagBinding;", "binding", "Landroid/content/Context;", "context", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/note/common/shape/Shape;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class TagShapePopup extends BasePopupWindow {

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final BoxInfo hitTestVirtualPage;

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public final Shape shape;

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TagShapePopup(@NotNull final Context context, @NotNull EditorBundle editorBundle, @NotNull BoxInfo hitTestVirtualPage, @NotNull Shape shape) {
        super(context, null, 2, null);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(hitTestVirtualPage, "hitTestVirtualPage");
        Intrinsics.checkNotNullParameter(shape, "shape");
        this.editorBundle = editorBundle;
        this.hitTestVirtualPage = hitTestVirtualPage;
        this.shape = shape;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<PopupShapeTagBinding>() { // from class: com.onyx.galaxy.note.editor.view.popup.TagShapePopup$binding$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PopupShapeTagBinding invoke() {
                return PopupShapeTagBinding.inflate(LayoutInflater.from(context));
            }
        });
        this.binding = lazy;
        m49613q();
    }

    /* renamed from: o */
    public static final void m49608o(TagShapePopup this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    /* renamed from: r */
    public static final void m49609r(TagShapePopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        GlobalBundle.INSTANCE.copyShapeTag(ShapeOptions.INSTANCE.getTagBean(this$0.shape));
        ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.copy_success_and_long_press_paste, false, 2, (Object) null);
        this$0.dismiss();
    }

    /* renamed from: s */
    public static final void m49610s(TagShapePopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m49611n();
    }

    /* renamed from: n */
    public final void m49611n() {
        List listOf;
        EditorBundle editorBundle = this.editorBundle;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(this.shape);
        new DeleteShapesAction(editorBundle, listOf, true, false, 8, null).build().doFinally(new Action() { // from class: com.sunia.HTREnginev2.b9n
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                TagShapePopup.m49608o(TagShapePopup.this);
            }
        }).subscribe();
    }

    /* renamed from: p */
    public final PopupShapeTagBinding m49612p() {
        return (PopupShapeTagBinding) this.binding.getValue();
    }

    /* renamed from: q */
    public final void m49613q() {
        View root = m49612p().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setContentView(root);
        m49612p().copy.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.c9n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TagShapePopup.m49609r(TagShapePopup.this, view);
            }
        });
        m49612p().delete.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.d9n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TagShapePopup.m49610s(TagShapePopup.this, view);
            }
        });
    }

    @Override // com.onyx.galaxy.note.common.view.BasePopupWindow
    public void show(@NotNull View anchor) {
        Intrinsics.checkNotNullParameter(anchor, "anchor");
        View root = m49612p().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        PopupWindowKt.showAtShapeTop(this, anchor, root, this.shape, this.hitTestVirtualPage, (r16 & 16) != 0 ? 0 : 0, (r16 & 32) != 0 ? 0 : 0);
    }
}
