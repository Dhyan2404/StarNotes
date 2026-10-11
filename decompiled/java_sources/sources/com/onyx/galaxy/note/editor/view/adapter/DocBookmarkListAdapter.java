package com.onyx.galaxy.note.editor.view.adapter;

import android.content.Context;
import android.graphics.Rect;
import android.text.Editable;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.chad.library.adapter4.util.ItemClickUtilsKt;
import com.chad.library.adapter4.viewholder.DataBindingHolder;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.onyx.android.sdk.base.extension.PopupExtKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.SpanUtils;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.p039ui.MaxLengthInputTextEdit;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualBookmarkModel;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualPageModel;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.common.events.EditFocusEvent;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.data.PageDataModel;
import com.onyx.android.sdk.universal.editor.events.app.UpdateBookmarkEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.extension.BaseQuickAdapterKt;
import com.onyx.galaxy.note.common.keyboard.WindowSoftInputManager;
import com.onyx.galaxy.note.databinding.ItemDocBookmarkBinding;
import com.onyx.galaxy.note.editor.view.adapter.DocBookmarkListAdapter;
import com.onyx.galaxy.note.editor.view.popup.DocBookmarkActionPopup;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0018\b\u0016\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0001:\u0001hB\u0017\u0012\u0006\u0010C\u001a\u00020>\u0012\u0006\u0010G\u001a\u00020\u000e¢\u0006\u0004\bf\u0010gJ\u0018\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0002J\b\u0010\u000b\u001a\u00020\tH\u0002J \u0010\u0010\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0018\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0002H\u0002J \u0010\u0017\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0002H\u0002J \u0010\u0018\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0002H\u0002J\u0010\u0010\u0019\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u0004H\u0002J\u0018\u0010\u001c\u001a\u00020\t2\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\r\u001a\u00020\u0002H\u0002J\u0018\u0010\u001e\u001a\u00020\t2\u0006\u0010\u001d\u001a\u00020\u001a2\u0006\u0010\r\u001a\u00020\u0002H\u0002J\b\u0010\u001f\u001a\u00020\tH\u0002J\u0014\u0010#\u001a\u00020\t2\f\u0010\"\u001a\b\u0012\u0004\u0012\u00020!0 J\u0014\u0010$\u001a\u00020\t2\f\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u00020 J\u0014\u0010'\u001a\u00020\t2\f\u0010&\u001a\b\u0012\u0004\u0012\u00020\t0%J\u000e\u0010)\u001a\u00020\t2\u0006\u0010(\u001a\u00020\u0007J\u0006\u0010*\u001a\u00020\u0007J\u000e\u0010,\u001a\u00020\t2\u0006\u0010+\u001a\u00020\u0007J\u000e\u0010-\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007J(\u00101\u001a\u00020\t2\f\u0010.\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010/\u001a\u00020\u00072\b\u00100\u001a\u0004\u0018\u00010\u0002H\u0014J&\u00107\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u00103\u001a\u0002022\u0006\u00105\u001a\u0002042\u0006\u00106\u001a\u00020\u0007H\u0014J\u000e\u0010:\u001a\u00020\t2\u0006\u00109\u001a\u000208J\u0006\u0010;\u001a\u00020\tJ\u0018\u0010<\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\u00052\u0006\u0010/\u001a\u00020\u0007H\u0014J\u0018\u0010=\u001a\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u00052\u0006\u0010/\u001a\u00020\u0007H\u0014R\u0017\u0010C\u001a\u00020>8\u0006¢\u0006\f\n\u0004\b?\u0010@\u001a\u0004\bA\u0010BR\u0017\u0010G\u001a\u00020\u000e8\u0006¢\u0006\f\n\u0004\b\u001c\u0010D\u001a\u0004\bE\u0010FR\"\u0010L\u001a\u000e\u0012\u0004\u0012\u00020I\u0012\u0004\u0012\u00020J0H8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010KR\u0016\u0010N\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\n\u0010MR\u0016\u0010P\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bO\u0010MR\u001b\u0010V\u001a\u00020Q8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bR\u0010S\u001a\u0004\bT\u0010UR\u0018\u0010Y\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bW\u0010XR\u0018\u0010\\\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bZ\u0010[R\u0018\u0010^\u001a\u0004\u0018\u0001088\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bM\u0010]R\"\u0010e\u001a\u00020I8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b_\u0010`\u001a\u0004\ba\u0010b\"\u0004\bc\u0010d¨\u0006i"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;", "Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableDifferAdapter;", "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;", "Lcom/chad/library/adapter4/viewholder/DataBindingHolder;", "Lcom/onyx/galaxy/note/databinding/ItemDocBookmarkBinding;", "Landroid/view/View;", "view", "", "pos", "", SardineUtil.DEFAULT_NAMESPACE_PREFIX, "quitEditMode", "binding", "model", "", "editing", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "Landroid/widget/ImageView;", "imageView", "bookmarkModel", "z", "Landroid/widget/TextView;", "textView", "y", "v", "s", "Landroid/widget/EditText;", "editText", "B", "edittext", "t", "quitEditAndSave", "", "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;", "list", "setVirtualPageList", "setBookmarkList", "Lkotlin/Function0;", "callback", "setEditFocusCallback", FirebaseAnalytics.Param.INDEX, "setCurrentIndex", "getCurrentIndex", "newPosition", "clearLastFocus", "enterEditMode", "holder", "position", "item", "onBindViewHolder", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", "Landroid/graphics/Rect;", "areaRect", "setListAreaRect", "commitTitleEdit", "onItemChildClick", "onItemChildLongClick", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "A", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.HASIDCALL_INDEX_SIG, "getFullscreen", Constants.BOOLEAN_VALUE_SIG, "fullscreen", "", "", "Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;", "Ljava/util/Map;", "pageDataMap", "I", "currentIndex", "E", "editingIndex", "Lcom/onyx/galaxy/note/common/keyboard/WindowSoftInputManager;", "F", "Lkotlin/Lazy;", "u", "()Lcom/onyx/galaxy/note/common/keyboard/WindowSoftInputManager;", "windowInputManager", "G", "Landroid/widget/EditText;", "currentEditText", "H", "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;", "currentModel", "Landroid/graphics/Rect;", "listAreaRect", "J", Constants.STRING_SIG, "getKeyword", "()Ljava/lang/String;", "setKeyword", "(Ljava/lang/String;)V", "keyword", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Z)V", "a", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nDocBookmarkListAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DocBookmarkListAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,334:1\n1855#2,2:335\n372#3,7:337\n*S KotlinDebug\n*F\n+ 1 DocBookmarkListAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter\n*L\n79#1:335,2\n194#1:337,7\n*E\n"})
/* loaded from: classes9.dex */
public class DocBookmarkListAdapter extends BaseSelectableDifferAdapter<VirtualBookmarkModel, DataBindingHolder<ItemDocBookmarkBinding>> {

    /* renamed from: A */
    @NotNull
    public final EditorBundle f59456A;

    /* renamed from: B */
    public final boolean f59457B;

    /* renamed from: C */
    @NotNull
    public Map<String, PageDataModel> f59458C;

    /* renamed from: D */
    public int f59459D;

    /* renamed from: E */
    public int f59460E;

    /* renamed from: F */
    @NotNull
    public final Lazy f59461F;

    /* renamed from: G */
    @Nullable
    public EditText f59462G;

    /* renamed from: H */
    @Nullable
    public VirtualBookmarkModel f59463H;

    /* renamed from: I */
    @Nullable
    public Rect f59464I;

    /* renamed from: J */
    @NotNull
    public String f59465J;

    /* renamed from: com.onyx.galaxy.note.editor.view.adapter.DocBookmarkListAdapter$a */
    /* loaded from: classes9.dex */
    public static final class C12258a extends DiffUtil.ItemCallback<VirtualBookmarkModel> {
        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean areContentsTheSame(@NotNull VirtualBookmarkModel oldItem, @NotNull VirtualBookmarkModel newItem) {
            Intrinsics.checkNotNullParameter(oldItem, "oldItem");
            Intrinsics.checkNotNullParameter(newItem, "newItem");
            return Intrinsics.areEqual(oldItem.getPageUniqueId(), newItem.getPageUniqueId()) && oldItem.getPageIndex() == newItem.getPageIndex() && Intrinsics.areEqual(oldItem.getTitle(), newItem.getTitle()) && Intrinsics.areEqual(oldItem.getQuote(), newItem.getQuote());
        }

        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public boolean areItemsTheSame(@NotNull VirtualBookmarkModel oldItem, @NotNull VirtualBookmarkModel newItem) {
            Intrinsics.checkNotNullParameter(oldItem, "oldItem");
            Intrinsics.checkNotNullParameter(newItem, "newItem");
            return Intrinsics.areEqual(oldItem.getUniqueId(), newItem.getUniqueId());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DocBookmarkListAdapter(@NotNull EditorBundle editorBundle, boolean z) {
        super(new C12258a());
        Lazy lazy;
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.f59456A = editorBundle;
        this.f59457B = z;
        this.f59458C = new LinkedHashMap();
        this.f59459D = -1;
        this.f59460E = -1;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<WindowSoftInputManager>() { // from class: com.onyx.galaxy.note.editor.view.adapter.DocBookmarkListAdapter$windowInputManager$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final WindowSoftInputManager invoke() {
                return new WindowSoftInputManager(DocBookmarkListAdapter.this.getContext());
            }
        });
        this.f59461F = lazy;
        this.f59465J = "";
        ItemClickUtilsKt.addOnDebouncedChildClick$default(this, C10651R.id.more_settings, 0L, new BaseQuickAdapter.OnItemChildClickListener() { // from class: com.sunia.HTREnginev2.i6f
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemChildClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                DocBookmarkListAdapter.m47503r(DocBookmarkListAdapter.this, baseQuickAdapter, view, i);
            }
        }, 2, null);
    }

    /* renamed from: A */
    public static final void m47498A(DataBindingHolder holder, View view) {
        Intrinsics.checkNotNullParameter(holder, "$holder");
        ((ItemDocBookmarkBinding) holder.getBinding()).moreSettings.performClick();
    }

    /* renamed from: r */
    public static final void m47503r(DocBookmarkListAdapter this$0, BaseQuickAdapter adapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(view, "view");
        RecyclerView.ViewHolder findViewHolderForAdapterPosition = adapter.getRecyclerView().findViewHolderForAdapterPosition(i);
        Intrinsics.checkNotNull(findViewHolderForAdapterPosition);
        View findViewById = findViewHolderForAdapterPosition.itemView.findViewById(C10651R.id.centerSettingButton);
        if (this$0.f59457B) {
            view = findViewById;
        }
        Intrinsics.checkNotNull(view);
        this$0.m47508D(view, i);
    }

    /* renamed from: w */
    public static final void m47504w(DocBookmarkListAdapter this$0, MaxLengthInputTextEdit editText, VirtualBookmarkModel model, View view, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(editText, "$editText");
        Intrinsics.checkNotNullParameter(model, "$model");
        if (!z) {
            this$0.m47510t(editText, model);
            GlobalBundle.INSTANCE.postEvent(new EditFocusEvent(null));
        } else {
            Editable text = editText.getText();
            editText.setSelection(text != null ? text.length() : 0);
            this$0.m47506B(editText, model);
        }
    }

    /* renamed from: x */
    public static final boolean m47505x(DocBookmarkListAdapter this$0, MaxLengthInputTextEdit editText, VirtualBookmarkModel model, TextView textView, int i, KeyEvent keyEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(editText, "$editText");
        Intrinsics.checkNotNullParameter(model, "$model");
        if (i != 6) {
            return true;
        }
        this$0.m47510t(editText, model);
        return true;
    }

    /* renamed from: B */
    public final void m47506B(EditText editText, VirtualBookmarkModel virtualBookmarkModel) {
        this.f59462G = editText;
        this.f59463H = virtualBookmarkModel;
        GlobalBundle.INSTANCE.postEvent(new EditFocusEvent(this.f59464I));
    }

    /* renamed from: C */
    public final void m47507C(ItemDocBookmarkBinding binding, VirtualBookmarkModel model, boolean editing) {
        if (this.f59457B) {
            float dimension = ResManager.INSTANCE.getDimension(C7384R.dimen.dp_14);
            binding.title.setTextSize(0, dimension);
            binding.titleEdit.setTextSize(0, dimension);
            ViewKt.setViewVisibleOrInvisible(binding.dividerView, !editing);
        }
    }

    /* renamed from: D */
    public final void m47508D(View view, final int pos) {
        final VirtualBookmarkModel item = getItem(pos);
        if (item == null) {
            return;
        }
        DocBookmarkActionPopup docBookmarkActionPopup = new DocBookmarkActionPopup(this.f59456A, getContext(), item, this.f59459D, this.f59457B);
        docBookmarkActionPopup.setListener(new DocBookmarkActionPopup.ActionListener() { // from class: com.onyx.galaxy.note.editor.view.adapter.DocBookmarkListAdapter$showActionPopup$1$1
            @Override // com.onyx.galaxy.note.editor.view.popup.DocBookmarkActionPopup.ActionListener
            public void onDeleted() {
                Map map;
                map = DocBookmarkListAdapter.this.f59458C;
                map.remove(item.getPageUniqueId());
                DocBookmarkListAdapter.this.removeAt(pos);
            }

            @Override // com.onyx.galaxy.note.editor.view.popup.DocBookmarkActionPopup.ActionListener
            public void onEdited() {
                DocBookmarkListAdapter.this.enterEditMode(pos);
            }
        });
        PopupExtKt.showActionPopup$default(docBookmarkActionPopup, view, ViewKt.globalVisibleRect(getRecyclerView()), 0, ResManager.INSTANCE.getDimens(C7384R.dimen.dp_16), 4, null);
    }

    public final void clearLastFocus(int i) {
        if (i == this.f59460E) {
            return;
        }
        RecyclerView.LayoutManager layoutManager = getRecyclerView().getLayoutManager();
        View findViewByPosition = layoutManager != null ? layoutManager.findViewByPosition(this.f59460E) : null;
        EditText editText = findViewByPosition != null ? (EditText) findViewByPosition.findViewById(C10651R.id.title_edit) : null;
        if (editText != null) {
            editText.clearFocus();
        }
    }

    public final void commitTitleEdit() {
        EditText editText = this.f59462G;
        if (editText == null || this.f59463H == null) {
            return;
        }
        Intrinsics.checkNotNull(editText);
        VirtualBookmarkModel virtualBookmarkModel = this.f59463H;
        Intrinsics.checkNotNull(virtualBookmarkModel);
        m47510t(editText, virtualBookmarkModel);
    }

    public final void enterEditMode(int i) {
        this.f59460E = i;
        m47511u().enterAdjustResizeSoftInput();
        notifyItemChanged(i);
    }

    public final int getCurrentIndex() {
        return this.f59459D;
    }

    @NotNull
    public final EditorBundle getEditorBundle() {
        return this.f59456A;
    }

    public final boolean getFullscreen() {
        return this.f59457B;
    }

    @NotNull
    public final String getKeyword() {
        return this.f59465J;
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void onItemChildClick(@NotNull View v, int i) {
        Intrinsics.checkNotNullParameter(v, "v");
        quitEditAndSave();
        super.onItemChildClick(v, i);
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public boolean onItemChildLongClick(@NotNull View v, int i) {
        Intrinsics.checkNotNullParameter(v, "v");
        quitEditAndSave();
        return super.onItemChildLongClick(v, i);
    }

    public final void quitEditAndSave() {
        View findViewByPosition;
        if (this.f59460E < 0) {
            return;
        }
        RecyclerView.LayoutManager layoutManager = getRecyclerView().getLayoutManager();
        if (layoutManager != null && (findViewByPosition = layoutManager.findViewByPosition(this.f59460E)) != null) {
            View findViewById = findViewByPosition.findViewById(C10651R.id.title_edit);
            Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById(...)");
            m47510t((EditText) findViewById, getItems().get(this.f59460E));
        }
        quitEditMode();
    }

    public final void quitEditMode() {
        final int i = this.f59460E;
        if (i < 0) {
            return;
        }
        this.f59460E = -1;
        requireRecyclerViewSafety(new Function1<RecyclerView, Unit>() { // from class: com.onyx.galaxy.note.editor.view.adapter.DocBookmarkListAdapter$quitEditMode$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(RecyclerView recyclerView) {
                invoke2(recyclerView);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull RecyclerView it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                BaseQuickAdapterKt.notifyItemChangedSafety(DocBookmarkListAdapter.this, i);
            }
        });
        m47511u().backToPreviousSoftInput();
    }

    /* renamed from: s */
    public final void m47509s(final ItemDocBookmarkBinding itemDocBookmarkBinding) {
        itemDocBookmarkBinding.titleEdit.setTextChangeCallback(new Function2<Integer, Integer, Unit>() { // from class: com.onyx.galaxy.note.editor.view.adapter.DocBookmarkListAdapter$bindCharLengthListener$1
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Integer num, Integer num2) {
                invoke(num.intValue(), num2.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(int i, int i2) {
                TintTextView tintTextView = ItemDocBookmarkBinding.this.countText;
                StringBuilder sb = new StringBuilder();
                sb.append(i);
                sb.append('/');
                sb.append(i2);
                tintTextView.setText(sb.toString());
            }
        });
    }

    public final void setBookmarkList(@NotNull List<VirtualBookmarkModel> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        submitList(list);
    }

    public final void setCurrentIndex(int i) {
        this.f59459D = i;
        getRecyclerView().scrollToPosition(i);
        notifyItemRangeChanged(0, getItemCount());
    }

    public final void setEditFocusCallback(@NotNull Function0<Unit> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
    }

    public final void setKeyword(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.f59465J = str;
    }

    public final void setListAreaRect(@NotNull Rect areaRect) {
        Intrinsics.checkNotNullParameter(areaRect, "areaRect");
        this.f59464I = areaRect;
    }

    public final void setVirtualPageList(@NotNull List<VirtualPageModel> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        for (PageDataModel pageDataModel : PageDataModel.INSTANCE.fromVirtualPageList(this.f59456A, list)) {
            this.f59458C.put(pageDataModel.getPageId(), pageDataModel);
        }
    }

    /* renamed from: t */
    public final void m47510t(EditText editText, VirtualBookmarkModel virtualBookmarkModel) {
        if (this.f59460E < 0) {
            return;
        }
        String obj = editText.getText().toString();
        if (!Intrinsics.areEqual(obj, virtualBookmarkModel.getTitle())) {
            virtualBookmarkModel.setTitle(obj);
            EditorBundleKt.postEvent(this.f59456A, new UpdateBookmarkEvent(virtualBookmarkModel));
        }
        quitEditMode();
        editText.clearFocus();
        ViewKt.hideInputKeyboard(editText);
        editText.setEnabled(false);
        requireRecyclerViewSafety(new DocBookmarkListAdapter$commitTitleEdit$1(this));
    }

    /* renamed from: u */
    public final WindowSoftInputManager m47511u() {
        return (WindowSoftInputManager) this.f59461F.getValue();
    }

    /* renamed from: v */
    public final void m47512v(ItemDocBookmarkBinding itemDocBookmarkBinding, int i, final VirtualBookmarkModel virtualBookmarkModel) {
        ViewKt.setViewVisibleOrInvisible(itemDocBookmarkBinding.titleEditContainer, this.f59460E == i);
        ViewKt.setViewVisibleOrInvisible(itemDocBookmarkBinding.countText, this.f59460E == i);
        m47509s(itemDocBookmarkBinding);
        final MaxLengthInputTextEdit titleEdit = itemDocBookmarkBinding.titleEdit;
        Intrinsics.checkNotNullExpressionValue(titleEdit, "titleEdit");
        titleEdit.setImeOptions(6);
        titleEdit.setRawInputType(1);
        titleEdit.setText(virtualBookmarkModel.getTitle());
        titleEdit.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.sunia.HTREnginev2.j6f
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                DocBookmarkListAdapter.m47504w(DocBookmarkListAdapter.this, titleEdit, virtualBookmarkModel, view, z);
            }
        });
        titleEdit.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.sunia.HTREnginev2.k6f
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
                boolean m47505x;
                m47505x = DocBookmarkListAdapter.m47505x(DocBookmarkListAdapter.this, titleEdit, virtualBookmarkModel, textView, i2, keyEvent);
                return m47505x;
            }
        });
        if (ViewKt.isVisible(itemDocBookmarkBinding.titleEditContainer)) {
            ViewKt.postToShowInputKeyboardWithDelay(titleEdit);
        }
    }

    /* renamed from: y */
    public final void m47513y(TextView textView, int i, VirtualBookmarkModel virtualBookmarkModel) {
        String title = virtualBookmarkModel.getTitle();
        if (title == null || title.length() == 0) {
            textView.setTextColor(ThemeUtils.getColorById(C7996R.color.theme_text_color_03));
            textView.setText(C10651R.string.no_key_description);
        } else {
            textView.setTextColor(ThemeUtils.getColorById(C7996R.color.theme_text_color_01));
            textView.setText(SpanUtils.highLightKeyword$default(SpanUtils.INSTANCE, virtualBookmarkModel.getTitle(), this.f59465J, ThemeUtils.getColorById(C7996R.color.theme_text_color_highlight_01), false, 8, null));
        }
        ViewKt.setViewVisibleOrInvisible(textView, this.f59460E != i);
    }

    /*  JADX ERROR: JadxRuntimeException in pass: ConstructorVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r10v0 ??, still in use, count: 1, list:
          (r10v0 ?? I:java.lang.Object) from 0x001e: INVOKE (r9v0 ?? I:java.util.Map), (r8v0 ?? I:java.lang.Object), (r10v0 ?? I:java.lang.Object) INTERFACE call: java.util.Map.put(java.lang.Object, java.lang.Object):java.lang.Object A[MD:(K, V):V (c)]
        	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:151)
        	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:116)
        	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:88)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:87)
        	at jadx.core.utils.InsnRemover.perform(InsnRemover.java:72)
        	at jadx.core.dex.visitors.ConstructorVisitor.replaceInvoke(ConstructorVisitor.java:54)
        	at jadx.core.dex.visitors.ConstructorVisitor.visit(ConstructorVisitor.java:34)
        */
    /* renamed from: z */
    public final void m47514z(
    /*  JADX ERROR: JadxRuntimeException in pass: ConstructorVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r10v0 ??, still in use, count: 1, list:
          (r10v0 ?? I:java.lang.Object) from 0x001e: INVOKE (r9v0 ?? I:java.util.Map), (r8v0 ?? I:java.lang.Object), (r10v0 ?? I:java.lang.Object) INTERFACE call: java.util.Map.put(java.lang.Object, java.lang.Object):java.lang.Object A[MD:(K, V):V (c)]
        	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:151)
        	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:116)
        	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:88)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:87)
        	at jadx.core.utils.InsnRemover.perform(InsnRemover.java:72)
        	at jadx.core.dex.visitors.ConstructorVisitor.replaceInvoke(ConstructorVisitor.java:54)
        */
    /*  JADX ERROR: Method generation error
        jadx.core.utils.exceptions.JadxRuntimeException: Code variable not set in r12v0 ??
        	at jadx.core.dex.instructions.args.SSAVar.getCodeVar(SSAVar.java:237)
        	at jadx.core.codegen.MethodGen.addMethodArguments(MethodGen.java:223)
        	at jadx.core.codegen.MethodGen.addDefinition(MethodGen.java:168)
        	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:401)
        	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:335)
        	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:301)
        	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
        	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:258)
        */

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void onBindViewHolder(@NotNull final DataBindingHolder<ItemDocBookmarkBinding> holder, int i, @Nullable VirtualBookmarkModel virtualBookmarkModel) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (virtualBookmarkModel == null) {
            return;
        }
        boolean z = this.f59460E == i;
        holder.getBinding().getRoot().setSelected(!getSelectionMode() && this.f59459D == i);
        holder.getBinding().setModel(virtualBookmarkModel);
        holder.getBinding().executePendingBindings();
        holder.getBinding().getRoot().setBackgroundResource(z ? C10651R.drawable.bg_stroke_primary : C10651R.drawable.selector_doc_overview_item_bg);
        ViewKt.setViewVisibleOrInvisible(holder.getBinding().moreSettings, (this.f59457B || getSelectionMode() || z) ? false : true);
        ViewKt.setViewVisibleOrInvisible(holder.getBinding().centerSettingButton, (!this.f59457B || getSelectionMode() || z) ? false : true);
        ViewKt.setViewVisibleOrGone(holder.getBinding().checkbox, getSelectionMode());
        holder.getBinding().checkbox.setChecked(isItemSelected(virtualBookmarkModel));
        holder.getBinding().centerSettingButton.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.l6f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DocBookmarkListAdapter.m47498A(DataBindingHolder.this, view);
            }
        });
        holder.getBinding().titleEdit.setEnabled(true);
        holder.getBinding().titleEdit.setPadding(0, holder.getBinding().titleEdit.getPaddingTop(), 0, holder.getBinding().titleEdit.getPaddingBottom());
        TextView title = holder.getBinding().title;
        Intrinsics.checkNotNullExpressionValue(title, "title");
        m47513y(title, i, virtualBookmarkModel);
        ItemDocBookmarkBinding binding = holder.getBinding();
        Intrinsics.checkNotNullExpressionValue(binding, "getBinding(...)");
        m47512v(binding, i, virtualBookmarkModel);
        ItemDocBookmarkBinding binding2 = holder.getBinding();
        Intrinsics.checkNotNullExpressionValue(binding2, "getBinding(...)");
        m47507C(binding2, virtualBookmarkModel, z);
        ImageView image = holder.getBinding().image;
        Intrinsics.checkNotNullExpressionValue(image, "image");
        m47514z(image, virtualBookmarkModel);
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public DataBindingHolder<ItemDocBookmarkBinding> onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int i) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        ItemDocBookmarkBinding inflate = ItemDocBookmarkBinding.inflate(LayoutInflater.from(context), parent, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        return new DataBindingHolder<>(inflate);
    }
}
