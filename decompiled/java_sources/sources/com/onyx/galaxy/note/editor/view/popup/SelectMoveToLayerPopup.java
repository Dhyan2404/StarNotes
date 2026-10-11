package com.onyx.galaxy.note.editor.view.popup;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.material.divider.MaterialDividerItemDecoration;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.replicator.note.data.page.LayerInfo;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.widgets.TintRecycleView;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.events.note.MoveShapesToLayerEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.common.extension.PopupWindowKt;
import com.onyx.galaxy.note.common.view.BasePopupWindow;
import com.onyx.galaxy.note.databinding.PopupSelectMoveToLayerBinding;
import com.onyx.galaxy.note.editor.view.adapter.SelectMoveToLayerListAdapter;
import com.onyx.galaxy.note.editor.view.popup.SelectMoveToLayerPopup;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\n\u001a\u00020\t\u0012\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\r0\u0002\u0012\u0006\u0010\u0018\u001a\u00020\u0013¢\u0006\u0004\b#\u0010$J\u001c\u0010\b\u001a\u00020\u00072\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0006\u001a\u00020\u0005J\u0010\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0002R\u001d\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\r0\u00028\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u0017\u0010\u0018\u001a\u00020\u00138\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u001b\u0010\u001e\u001a\u00020\u00198BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR\u0014\u0010\"\u001a\u00020\u001f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010!¨\u0006%"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/SelectMoveToLayerPopup;", "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;", "", "Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;", "layerList", "", "selectedLayerId", "", "setData", "Landroid/content/Context;", "context", "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/note/common/shape/Shape;", "q", "Ljava/util/List;", "getShapes", "()Ljava/util/List;", "shapes", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "r", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lcom/onyx/galaxy/note/databinding/PopupSelectMoveToLayerBinding;", "s", "Lkotlin/Lazy;", "m", "()Lcom/onyx/galaxy/note/databinding/PopupSelectMoveToLayerBinding;", "binding", "Lcom/onyx/galaxy/note/editor/view/adapter/SelectMoveToLayerListAdapter;", "t", "Lcom/onyx/galaxy/note/editor/view/adapter/SelectMoveToLayerListAdapter;", "adapter", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSelectMoveToLayerPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectMoveToLayerPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/SelectMoveToLayerPopup\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,68:1\n350#2,7:69\n*S KotlinDebug\n*F\n+ 1 SelectMoveToLayerPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/SelectMoveToLayerPopup\n*L\n66#1:69,7\n*E\n"})
/* loaded from: classes9.dex */
public final class SelectMoveToLayerPopup extends BasePopupWindow {

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public final List<Shape> shapes;

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public final SelectMoveToLayerListAdapter adapter;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public SelectMoveToLayerPopup(@NotNull final Context context, @NotNull List<? extends Shape> shapes, @NotNull EditorBundle editorBundle) {
        super(context, null, 2, null);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.shapes = shapes;
        this.editorBundle = editorBundle;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<PopupSelectMoveToLayerBinding>() { // from class: com.onyx.galaxy.note.editor.view.popup.SelectMoveToLayerPopup$binding$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PopupSelectMoveToLayerBinding invoke() {
                return PopupSelectMoveToLayerBinding.inflate(LayoutInflater.from(context));
            }
        });
        this.binding = lazy;
        SelectMoveToLayerListAdapter selectMoveToLayerListAdapter = new SelectMoveToLayerListAdapter();
        this.adapter = selectMoveToLayerListAdapter;
        View root = m49420m().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setContentView(root);
        PopupWindowKt.setDefaultAttribute(this);
        m49420m().recyclerView.setLayoutManager(new LinearLayoutManager(context));
        m49420m().recyclerView.setAdapter(selectMoveToLayerListAdapter);
        m49420m().recyclerView.addItemDecoration(m49421n(context));
        selectMoveToLayerListAdapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() { // from class: com.sunia.HTREnginev2.sem
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemClickListener
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                SelectMoveToLayerPopup.m49419l(SelectMoveToLayerPopup.this, baseQuickAdapter, view, i);
            }
        });
    }

    /* renamed from: l */
    public static final void m49419l(SelectMoveToLayerPopup this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        EditorBundleKt.postEvent(this$0.editorBundle, new MoveShapesToLayerEvent(this$0.shapes, this$0.adapter.getItems().get(i).getId()));
        this$0.dismiss();
    }

    @NotNull
    public final EditorBundle getEditorBundle() {
        return this.editorBundle;
    }

    @NotNull
    public final List<Shape> getShapes() {
        return this.shapes;
    }

    /* renamed from: m */
    public final PopupSelectMoveToLayerBinding m49420m() {
        return (PopupSelectMoveToLayerBinding) this.binding.getValue();
    }

    /* renamed from: n */
    public final RecyclerView.ItemDecoration m49421n(Context context) {
        MaterialDividerItemDecoration materialDividerItemDecoration = new MaterialDividerItemDecoration(context, 1);
        materialDividerItemDecoration.setLastItemDecorated(false);
        ResManager resManager = ResManager.INSTANCE;
        materialDividerItemDecoration.setDividerInsetStart(resManager.getDimens(C7384R.dimen.dp_16));
        materialDividerItemDecoration.setDividerInsetEnd(resManager.getDimens(C7384R.dimen.dp_16));
        materialDividerItemDecoration.setDividerColor(resManager.getColor(C7996R.color.theme_divider_color_01));
        materialDividerItemDecoration.setDividerThickness(resManager.getDimens(C7384R.dimen.dp_0_5));
        return materialDividerItemDecoration;
    }

    public final void setData(@NotNull List<LayerInfo> layerList, int selectedLayerId) {
        Intrinsics.checkNotNullParameter(layerList, "layerList");
        this.adapter.setSelectedLayerId(selectedLayerId);
        this.adapter.submitList(layerList);
        TintRecycleView tintRecycleView = m49420m().recyclerView;
        Iterator<LayerInfo> it2 = layerList.iterator();
        int i = 0;
        while (true) {
            if (!it2.hasNext()) {
                i = -1;
                break;
            } else {
                if (it2.next().getId() == selectedLayerId) {
                    break;
                } else {
                    i++;
                }
            }
        }
        tintRecycleView.scrollToPosition(i);
    }
}
