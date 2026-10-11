package com.onyx.galaxy.note.editor.view.adapter;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.InputFilter;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.chad.library.adapter4.viewholder.DataBindingHolder;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.replicator.counter.model.CounterRecordModel;
import com.onyx.android.sdk.theme.widgets.TintEditText;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.common.events.EditFocusEvent;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.extension.BaseQuickAdapterKt;
import com.onyx.galaxy.note.databinding.ItemCountDownRecordBinding;
import com.onyx.galaxy.note.editor.action.counter.SaveCounterRecordAction;
import com.onyx.galaxy.note.editor.event.EnableCounterSettingInputEvent;
import com.onyx.galaxy.note.editor.view.adapter.CountDownHistoryAdapter;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\b\r\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0001B\u0007¢\u0006\u0004\b/\u00100J(\u0010\n\u001a\u00020\t2\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\b\u001a\u0004\u0018\u00010\u0002H\u0015J&\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0006H\u0014J\u000e\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u0002J\u0006\u0010\u0014\u001a\u00020\u0013J\u0006\u0010\u0015\u001a\u00020\tJ\u0006\u0010\u0016\u001a\u00020\u0013J\u0006\u0010\u0017\u001a\u00020\u0013J\u000e\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u0006J\u0006\u0010\u0019\u001a\u00020\tJ\u0006\u0010\u001a\u001a\u00020\u0013J\u0018\u0010\u001c\u001a\u00020\t2\u0006\u0010\u001b\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0002H\u0002J\u0018\u0010\u001f\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u0011\u001a\u00020\u0002H\u0002J\b\u0010 \u001a\u00020\tH\u0002R\u0016\u0010#\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"R(\u0010+\u001a\b\u0012\u0004\u0012\u00020\u00020$8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R\u0016\u0010.\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010-¨\u00061"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter;", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;", "Lcom/chad/library/adapter4/viewholder/DataBindingHolder;", "Lcom/onyx/galaxy/note/databinding/ItemCountDownRecordBinding;", "holder", "", "position", "item", "", "onBindViewHolder", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", "model", "onItemClick", "", "toggleSelectionMode", "toggleSelectAll", "isAllItemSelected", "hasItemContains", "onEditCountName", "quitEditAndSave", "getSelectionMode", "binding", "q", "Landroid/widget/EditText;", "edittext", C4921e.f26528e, "quitEditMode", "r", Constants.HASIDCALL_INDEX_SIG, "selectionMode", "", "s", "Ljava/util/List;", "getSelectedItems", "()Ljava/util/List;", "setSelectedItems", "(Ljava/util/List;)V", "selectedItems", "t", "I", "editingIndex", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCountDownHistoryAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CountDownHistoryAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,190:1\n256#2,2:191\n256#2,2:193\n254#2:195\n*S KotlinDebug\n*F\n+ 1 CountDownHistoryAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter\n*L\n58#1:191,2\n59#1:193,2\n86#1:195\n*E\n"})
/* loaded from: classes9.dex */
public final class CountDownHistoryAdapter extends BaseQuickAdapter<CounterRecordModel, DataBindingHolder<ItemCountDownRecordBinding>> {

    /* renamed from: r, reason: from kotlin metadata */
    public boolean selectionMode;

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public List<CounterRecordModel> selectedItems;

    /* renamed from: t, reason: from kotlin metadata */
    public int editingIndex;

    public CountDownHistoryAdapter() {
        super(null, 1, null);
        this.selectedItems = new ArrayList();
        this.editingIndex = -1;
    }

    /* renamed from: p */
    public static final void m47454p(CountDownHistoryAdapter this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.notifyDataSetChanged();
    }

    /* renamed from: r */
    public static final boolean m47455r(CountDownHistoryAdapter this$0, ItemCountDownRecordBinding binding, CounterRecordModel item, TextView textView, int i, KeyEvent keyEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(binding, "$binding");
        Intrinsics.checkNotNullParameter(item, "$item");
        if (i != 6) {
            return true;
        }
        TintEditText editCounterName = binding.editCounterName;
        Intrinsics.checkNotNullExpressionValue(editCounterName, "editCounterName");
        this$0.m47457o(editCounterName, item);
        this$0.quitEditMode();
        BaseQuickAdapterKt.postNotifyDataSetChanged(this$0);
        return true;
    }

    /* renamed from: s */
    public static final void m47456s(CountDownHistoryAdapter this$0, View view, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (z) {
            GlobalBundle globalBundle = GlobalBundle.INSTANCE;
            Intrinsics.checkNotNull(view);
            globalBundle.postEvent(new EditFocusEvent(ViewKt.globalVisibleRect(view)));
        } else {
            GlobalBundle.INSTANCE.postEvent(new EnableCounterSettingInputEvent(false));
            ViewKt.hideInputKeyboard(view);
            this$0.quitEditMode();
        }
    }

    @NotNull
    public final List<CounterRecordModel> getSelectedItems() {
        return this.selectedItems;
    }

    public final boolean getSelectionMode() {
        return this.selectionMode;
    }

    public final boolean hasItemContains() {
        return CollectionKt.isNonBlank(this.selectedItems);
    }

    public final boolean isAllItemSelected() {
        return CollectionKt.getSize(this.selectedItems) >= getItemCount();
    }

    /* renamed from: o */
    public final void m47457o(EditText edittext, CounterRecordModel model) {
        CharSequence trim;
        List listOf;
        if (this.editingIndex < 0) {
            return;
        }
        trim = StringsKt__StringsKt.trim((CharSequence) edittext.getText().toString());
        String obj = trim.toString();
        if (StringKt.isNotEmpty(obj) && !Intrinsics.areEqual(obj, model.getTitle())) {
            model.setTitle(obj);
            listOf = CollectionsKt__CollectionsJVMKt.listOf(model);
            RxBaseAction.execute$default(new SaveCounterRecordAction(listOf, null, 2, null), null, null, null, 7, null);
        }
        quitEditMode();
        edittext.clearFocus();
        ViewKt.hideInputKeyboard(edittext);
        getRecyclerView().post(new Runnable() { // from class: com.sunia.HTREnginev2.kde
            @Override // java.lang.Runnable
            public final void run() {
                CountDownHistoryAdapter.m47454p(CountDownHistoryAdapter.this);
            }
        });
    }

    public final void onEditCountName(int position) {
        boolean z = false;
        if (position >= 0 && position < getItems().size()) {
            z = true;
        }
        if (z) {
            this.editingIndex = position;
            notifyItemChanged(position);
        }
    }

    public final void onItemClick(@NotNull CounterRecordModel model) {
        int indexOf;
        Intrinsics.checkNotNullParameter(model, "model");
        if (this.selectionMode && (indexOf = getItems().indexOf(model)) >= 0) {
            if (this.selectedItems.contains(model)) {
                this.selectedItems.remove(model);
            } else {
                this.selectedItems.add(model);
            }
            notifyItemChanged(indexOf);
        }
    }

    /* renamed from: q */
    public final void m47458q(final ItemCountDownRecordBinding binding, final CounterRecordModel item) {
        binding.editCounterName.setFilters(new InputFilter.LengthFilter[]{new InputFilter.LengthFilter(ResManager.INSTANCE.getInteger(C10651R.integer.counter_name_max_length))});
        binding.editCounterName.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.sunia.HTREnginev2.lde
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                boolean m47455r;
                m47455r = CountDownHistoryAdapter.m47455r(CountDownHistoryAdapter.this, binding, item, textView, i, keyEvent);
                return m47455r;
            }
        });
        binding.editCounterName.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.sunia.HTREnginev2.mde
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                CountDownHistoryAdapter.m47456s(CountDownHistoryAdapter.this, view, z);
            }
        });
        TintFrameLayout flyInput = binding.flyInput;
        Intrinsics.checkNotNullExpressionValue(flyInput, "flyInput");
        if (flyInput.getVisibility() == 0) {
            binding.editCounterName.setText(item.getTitle());
            binding.editCounterName.setSelection(item.getTitle().length());
            GlobalBundle.INSTANCE.postEvent(new EnableCounterSettingInputEvent(true));
            TintEditText editCounterName = binding.editCounterName;
            Intrinsics.checkNotNullExpressionValue(editCounterName, "editCounterName");
            ViewKt.postToShowInputKeyboardWithDelay(editCounterName);
        }
    }

    public final void quitEditAndSave() {
        View findViewByPosition;
        if (this.editingIndex < 0) {
            return;
        }
        RecyclerView.LayoutManager layoutManager = getRecyclerView().getLayoutManager();
        if (layoutManager != null && (findViewByPosition = layoutManager.findViewByPosition(this.editingIndex)) != null) {
            View findViewById = findViewByPosition.findViewById(C10651R.id.edit_counter_name);
            Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById(...)");
            m47457o((EditText) findViewById, getItems().get(this.editingIndex));
        }
        quitEditMode();
    }

    public final void quitEditMode() {
        int i = this.editingIndex;
        if (i < 0) {
            return;
        }
        this.editingIndex = -1;
        BaseQuickAdapterKt.notifyItemChangedSafety(this, i);
        ViewKt.hideInputKeyboard(getRecyclerView());
    }

    public final void setSelectedItems(@NotNull List<CounterRecordModel> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.selectedItems = list;
    }

    public final void toggleSelectAll() {
        if (CollectionKt.getSize(this.selectedItems) >= getItemCount()) {
            this.selectedItems.clear();
        } else {
            this.selectedItems.clear();
            this.selectedItems.addAll(getItems());
        }
        notifyItemRangeChanged(0, getItemCount());
    }

    public final boolean toggleSelectionMode() {
        this.selectionMode = !this.selectionMode;
        this.selectedItems.clear();
        notifyDataSetChanged();
        return this.selectionMode;
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @SuppressLint({"ClickableViewAccessibility"})
    public void onBindViewHolder(@NotNull DataBindingHolder<ItemCountDownRecordBinding> holder, int position, @Nullable CounterRecordModel item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (item == null) {
            return;
        }
        ItemCountDownRecordBinding binding = holder.getBinding();
        binding.tvCountName.setText(item.getTitle());
        TintTextView tintTextView = binding.tvTotalTime;
        DateTimeUtil dateTimeUtil = DateTimeUtil.INSTANCE;
        tintTextView.setText(DateTimeUtil.formatDurationSecondExact$default(dateTimeUtil, item.getDuration(), false, null, null, 12, null));
        binding.tvTime.setText(dateTimeUtil.formatDate(new Date(item.getCreatedAt()), dateTimeUtil.getDATE_FORMAT_YYYYMMDD_HHMM_2()));
        TintImageView checkbox = binding.checkbox;
        Intrinsics.checkNotNullExpressionValue(checkbox, "checkbox");
        checkbox.setVisibility(this.selectionMode ? 0 : 8);
        TintImageView ivMoreOption = binding.ivMoreOption;
        Intrinsics.checkNotNullExpressionValue(ivMoreOption, "ivMoreOption");
        ivMoreOption.setVisibility(this.selectionMode ^ true ? 0 : 8);
        holder.getBinding().checkbox.setSelected(this.selectedItems.contains(item));
        ViewKt.setViewVisibleOrInvisible(binding.flyInput, this.editingIndex == position);
        ViewKt.setViewVisibleOrInvisible(binding.tvCountName, this.editingIndex != position);
        Intrinsics.checkNotNull(binding);
        m47458q(binding, item);
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public DataBindingHolder<ItemCountDownRecordBinding> onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new DataBindingHolder<>(ItemCountDownRecordBinding.inflate(LayoutInflater.from(context), parent, false));
    }
}
