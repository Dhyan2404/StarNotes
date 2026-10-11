package com.onyx.galaxy.note.editor.view.popup;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.chad.library.adapter4.util.ItemClickUtilsKt;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.FloatList;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.data.utils.FloatListOption;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.events.app.ScaleReset;
import com.onyx.android.sdk.universal.editor.events.note.QuitPendingHandlerEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.extension.WorkBundleKt;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.extension.PopupWindowKt;
import com.onyx.galaxy.note.common.view.BasePopupWindow;
import com.onyx.galaxy.note.databinding.PopupScaleCollectionBinding;
import com.onyx.galaxy.note.editor.view.adapter.ScaleCollectionAdapter;
import com.onyx.galaxy.note.editor.view.popup.ScaleCollectionPopup;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010'\u001a\u00020&\u0012\u0006\u0010\u000f\u001a\u00020\f\u0012\u0006\u0010\u0013\u001a\u00020\u0010\u0012\u0010\b\u0002\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0014¢\u0006\u0004\b(\u0010)J\u0006\u0010\u0003\u001a\u00020\u0002J\u001e\u0010\t\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006J\b\u0010\n\u001a\u00020\u0002H\u0002J\b\u0010\u000b\u001a\u00020\u0002H\u0002R\u0014\u0010\u000f\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0016\u0010\u0013\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u001e\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u001b\u0010\u001d\u001a\u00020\u00188BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR\u0016\u0010!\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0014\u0010%\u001a\u00020\"8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010$¨\u0006*"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/ScaleCollectionPopup;", "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;", "", "updateScaleList", "Landroid/view/View;", "root", "", "anchorViewCenterX", "anchorViewBottomY", "showAsDropDownCenter", C4921e.f26528e, GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "q", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "", "r", "F", "currentScale", "Lkotlin/Function0;", "s", "Lkotlin/jvm/functions/Function0;", "deleteCallback", "Lcom/onyx/galaxy/note/databinding/PopupScaleCollectionBinding;", "t", "Lkotlin/Lazy;", "m", "()Lcom/onyx/galaxy/note/databinding/PopupScaleCollectionBinding;", "binding", "Lcom/onyx/android/sdk/data/utils/FloatListOption;", "u", "Lcom/onyx/android/sdk/data/utils/FloatListOption;", "scaleListOption", "Lcom/onyx/galaxy/note/editor/view/adapter/ScaleCollectionAdapter;", "v", "Lcom/onyx/galaxy/note/editor/view/adapter/ScaleCollectionAdapter;", "scaleAdapter", "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/EditorBundle;FLkotlin/jvm/functions/Function0;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class ScaleCollectionPopup extends BasePopupWindow {

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: r, reason: from kotlin metadata */
    public float currentScale;

    /* renamed from: s, reason: from kotlin metadata */
    @Nullable
    public Function0<Unit> deleteCallback;

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: u, reason: from kotlin metadata */
    @NotNull
    public FloatListOption scaleListOption;

    /* renamed from: v, reason: from kotlin metadata */
    @NotNull
    public final ScaleCollectionAdapter scaleAdapter;

    public /* synthetic */ ScaleCollectionPopup(Context context, EditorBundle editorBundle, float f, Function0 function0, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, editorBundle, f, (i & 8) != 0 ? null : function0);
    }

    /* renamed from: p */
    public static final void m49351p(ScaleCollectionPopup this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        FloatList list = this$0.scaleListOption.getList();
        if (CollectionKt.isNullOrEmpty(list)) {
            return;
        }
        Float f = list.get(i);
        Intrinsics.checkNotNullExpressionValue(f, "get(...)");
        float floatValue = f.floatValue();
        if (floatValue < this$0.scaleAdapter.getMinScale()) {
            return;
        }
        this$0.scaleAdapter.setCurrentScale(floatValue);
        float currentMinScale = EditorBundleKt.currentMinScale(this$0.editorBundle) * floatValue;
        EditorBundleKt.postEvent(this$0.editorBundle, new QuitPendingHandlerEvent());
        EditorBundleKt.postEvent(this$0.editorBundle, new ScaleReset(currentMinScale, 0.0f, 0.0f, 6, null));
    }

    /* renamed from: q */
    public static final void m49352q(ScaleCollectionPopup this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        FloatList list = this$0.scaleListOption.getList();
        if (CollectionKt.isNullOrEmpty(list)) {
            return;
        }
        list.remove((Object) list.get(i));
        NoteConfigManager.INSTANCE.getScaleCollection().put(list);
        this$0.m49354n();
        Function0<Unit> function0 = this$0.deleteCallback;
        if (function0 != null) {
            function0.invoke();
        }
    }

    /* renamed from: m */
    public final PopupScaleCollectionBinding m49353m() {
        return (PopupScaleCollectionBinding) this.binding.getValue();
    }

    /* renamed from: n */
    public final void m49354n() {
        FloatList list = this.scaleListOption.getList();
        this.scaleAdapter.submitList(list);
        ViewKt.setViewVisibleOrGone(m49353m().tvNoCollection, CollectionKt.isNullOrEmpty(list));
    }

    /* renamed from: o */
    public final void m49355o() {
        View root = m49353m().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setContentView(root);
        PopupWindowKt.setDefaultAttribute(this);
        ScaleCollectionAdapter scaleCollectionAdapter = this.scaleAdapter;
        Float minimum = WorkBundleKt.scaleRange(this.editorBundle.getWorkBundle()).getMinimum();
        Intrinsics.checkNotNullExpressionValue(minimum, "getMinimum(...)");
        scaleCollectionAdapter.setMinScale(minimum.floatValue());
        ItemClickUtilsKt.setOnDebouncedItemClick$default(this.scaleAdapter, 0L, new BaseQuickAdapter.OnItemClickListener() { // from class: com.sunia.HTREnginev2.f1m
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemClickListener
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                ScaleCollectionPopup.m49351p(ScaleCollectionPopup.this, baseQuickAdapter, view, i);
            }
        }, 1, null);
        ItemClickUtilsKt.addOnDebouncedChildClick$default(this.scaleAdapter, C10651R.id.iv_delete, 0L, new BaseQuickAdapter.OnItemChildClickListener() { // from class: com.sunia.HTREnginev2.g1m
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemChildClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                ScaleCollectionPopup.m49352q(ScaleCollectionPopup.this, baseQuickAdapter, view, i);
            }
        }, 2, null);
        m49353m().rvList.setLayoutManager(new LinearLayoutManager(m49353m().getRoot().getContext()));
        m49353m().rvList.setAdapter(this.scaleAdapter);
        this.scaleAdapter.setCurrentScale(this.currentScale);
    }

    public final void showAsDropDownCenter(@NotNull View root, int anchorViewCenterX, int anchorViewBottomY) {
        Intrinsics.checkNotNullParameter(root, "root");
        float dimension = getContext().getResources().getDimension(C7384R.dimen.dp_20);
        View contentView = getContentView();
        Intrinsics.checkNotNullExpressionValue(contentView, "getContentView(...)");
        int i = (int) (dimension / 2);
        showAtLocation(root, 0, (anchorViewCenterX - (ViewKt.getMeasureSize$default(contentView, 0, 0, 3, null).getWidth() / 2)) - i, anchorViewBottomY - i);
    }

    public final void updateScaleList() {
        FloatList list = this.scaleListOption.getList();
        ViewKt.setViewVisibleOrGone(m49353m().tvNoCollection, CollectionKt.isNullOrEmpty(list));
        this.scaleAdapter.submitList(list);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScaleCollectionPopup(@NotNull final Context context, @NotNull EditorBundle editorBundle, float f, @Nullable Function0<Unit> function0) {
        super(context, null, 2, null);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.editorBundle = editorBundle;
        this.currentScale = f;
        this.deleteCallback = function0;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<PopupScaleCollectionBinding>() { // from class: com.onyx.galaxy.note.editor.view.popup.ScaleCollectionPopup$binding$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PopupScaleCollectionBinding invoke() {
                return PopupScaleCollectionBinding.inflate(LayoutInflater.from(context));
            }
        });
        this.binding = lazy;
        this.scaleListOption = NoteConfigManager.INSTANCE.getScaleCollection();
        this.scaleAdapter = new ScaleCollectionAdapter();
        m49355o();
        m49354n();
    }
}
