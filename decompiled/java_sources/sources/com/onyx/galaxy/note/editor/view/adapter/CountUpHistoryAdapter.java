package com.onyx.galaxy.note.editor.view.adapter;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.InputFilter;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.chad.library.adapter4.viewholder.DataBindingHolder;
import com.google.android.material.divider.MaterialDividerItemDecoration;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.replicator.counter.model.CounterRecordModel;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.widgets.TintEditText;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.common.events.EditFocusEvent;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.extension.BaseQuickAdapterKt;
import com.onyx.galaxy.note.databinding.ItemCountUpRecordBinding;
import com.onyx.galaxy.note.editor.action.counter.SaveCounterRecordAction;
import com.onyx.galaxy.note.editor.event.EnableCounterSettingInputEvent;
import com.onyx.galaxy.note.editor.view.adapter.CountUpHistoryAdapter;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Date;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010#\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\b\f\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0001B\u0007¢\u0006\u0004\b6\u00107J(\u0010\n\u001a\u00020\t2\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\b\u001a\u0004\u0018\u00010\u0002H\u0015J\u0010\u0010\f\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u000bH\u0016J&\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0006H\u0014J\u000e\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u0006J\u000e\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\u0002J\u0006\u0010\u0017\u001a\u00020\u0016J\u0006\u0010\u0018\u001a\u00020\tJ\u0006\u0010\u0019\u001a\u00020\u0016J\u0006\u0010\u001a\u001a\u00020\u0016J\u000e\u0010\u001b\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u0006J\u0006\u0010\u001c\u001a\u00020\tJ\u0006\u0010\u001d\u001a\u00020\u0016J\u0018\u0010\u001f\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0002H\u0002J&\u0010 \u001a\u00020\t2\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0002H\u0002J\u001e\u0010!\u001a\u00020\t2\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\b\u001a\u00020\u0002H\u0002J\u0018\u0010$\u001a\u00020\t2\u0006\u0010#\u001a\u00020\"2\u0006\u0010\u0014\u001a\u00020\u0002H\u0002J\b\u0010%\u001a\u00020\tH\u0002R\u001a\u0010(\u001a\b\u0012\u0004\u0012\u00020\u00060&8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010'R\u0016\u0010+\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010*R(\u00102\u001a\b\u0012\u0004\u0012\u00020\u00020,8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010-\u001a\u0004\b.\u0010/\"\u0004\b0\u00101R\u0016\u00105\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00104¨\u00068"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/adapter/CountUpHistoryAdapter;", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;", "Lcom/chad/library/adapter4/viewholder/DataBindingHolder;", "Lcom/onyx/galaxy/note/databinding/ItemCountUpRecordBinding;", "holder", "", "position", "item", "", "onBindViewHolder", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "onViewRecycled", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", "toggleItemExpandState", "model", "onItemClick", "", "toggleSelectionMode", "toggleSelectAll", "isAllItemSelected", "hasItemContains", "onEditCountName", "quitEditAndSave", "getSelectionMode", "binding", "t", "p", "q", "Landroid/widget/EditText;", "edittext", "r", "quitEditMode", "", "Ljava/util/Set;", "collapsedPositionSet", "s", Constants.HASIDCALL_INDEX_SIG, "selectionMode", "", "Ljava/util/List;", "getSelectedItems", "()Ljava/util/List;", "setSelectedItems", "(Ljava/util/List;)V", "selectedItems", "u", "I", "editingIndex", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCountUpHistoryAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CountUpHistoryAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/CountUpHistoryAdapter\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,281:1\n256#2,2:282\n256#2,2:284\n254#2:286\n*S KotlinDebug\n*F\n+ 1 CountUpHistoryAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/CountUpHistoryAdapter\n*L\n78#1:282,2\n79#1:284,2\n110#1:286\n*E\n"})
/* loaded from: classes9.dex */
public final class CountUpHistoryAdapter extends BaseQuickAdapter<CounterRecordModel, DataBindingHolder<ItemCountUpRecordBinding>> {

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final Set<Integer> collapsedPositionSet;

    /* renamed from: s, reason: from kotlin metadata */
    public boolean selectionMode;

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public List<CounterRecordModel> selectedItems;

    /* renamed from: u, reason: from kotlin metadata */
    public int editingIndex;

    public CountUpHistoryAdapter() {
        super(null, 1, null);
        this.collapsedPositionSet = new LinkedHashSet();
        this.selectedItems = new ArrayList();
        this.editingIndex = -1;
    }

    /* renamed from: s */
    public static final void m47463s(CountUpHistoryAdapter this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.notifyDataSetChanged();
    }

    /* renamed from: u */
    public static final boolean m47464u(CountUpHistoryAdapter this$0, ItemCountUpRecordBinding binding, CounterRecordModel item, TextView textView, int i, KeyEvent keyEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(binding, "$binding");
        Intrinsics.checkNotNullParameter(item, "$item");
        if (i != 6) {
            return true;
        }
        TintEditText editCounterName = binding.editCounterName;
        Intrinsics.checkNotNullExpressionValue(editCounterName, "editCounterName");
        this$0.m47469r(editCounterName, item);
        this$0.quitEditMode();
        BaseQuickAdapterKt.postNotifyDataSetChanged(this$0);
        return true;
    }

    /* renamed from: v */
    public static final void m47465v(CountUpHistoryAdapter this$0, View view, boolean z) {
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

    /* renamed from: w */
    public static final boolean m47466w(DataBindingHolder holder, View view, MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(holder, "$holder");
        return holder.itemView.onTouchEvent(motionEvent);
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

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewRecycled(@NotNull RecyclerView.ViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        RecyclerView recyclerView = (RecyclerView) holder.itemView.findViewById(C10651R.id.rv_task_time_list);
        if (recyclerView != null) {
            recyclerView.setAdapter(null);
        }
        super.onViewRecycled(holder);
    }

    /* renamed from: p */
    public final void m47467p(DataBindingHolder<ItemCountUpRecordBinding> holder, int position, CounterRecordModel item) {
        ViewKt.setViewVisibleOrGone(holder.getBinding().ivExpandFlagArrow, item.getTimeList().size() > 1);
        if (item.getTimeList().size() <= 1) {
            return;
        }
        if (this.collapsedPositionSet.contains(Integer.valueOf(position))) {
            holder.getBinding().ivExpandFlagArrow.setRotation(0.0f);
            return;
        }
        holder.getBinding().ivExpandFlagArrow.setRotation(180.0f);
        holder.getBinding().rvTaskTimeList.setVisibility(0);
        m47468q(holder, item);
    }

    /* renamed from: q */
    public final void m47468q(DataBindingHolder<ItemCountUpRecordBinding> holder, CounterRecordModel item) {
        if (holder.getBinding().rvTaskTimeList.getItemDecorationCount() == 0) {
            holder.getBinding().rvTaskTimeList.addItemDecoration(new Function0<RecyclerView.ItemDecoration>() { // from class: com.onyx.galaxy.note.editor.view.adapter.CountUpHistoryAdapter$bindTimeList$1
                {
                    super(0);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                @NotNull
                public final RecyclerView.ItemDecoration invoke() {
                    MaterialDividerItemDecoration materialDividerItemDecoration = new MaterialDividerItemDecoration(CountUpHistoryAdapter.this.getContext(), 1);
                    materialDividerItemDecoration.setDividerColor(ThemeUtils.getColorById(C7996R.color.theme_bg_overlay_color_01));
                    materialDividerItemDecoration.setDividerThickness(ResManager.INSTANCE.getDimensionPixelSize(C7384R.dimen.dp_0_4));
                    materialDividerItemDecoration.setLastItemDecorated(false);
                    return materialDividerItemDecoration;
                }
            });
        }
        holder.getBinding().rvTaskTimeList.setLayoutManager(new LinearLayoutManager(holder.itemView.getContext(), 1, false));
        holder.getBinding().rvTaskTimeList.setAdapter(new CountUpHistoryTimeAdapter(item.getTimeList()));
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
            m47469r((EditText) findViewById, getItems().get(this.editingIndex));
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

    /* renamed from: r */
    public final void m47469r(EditText edittext, CounterRecordModel model) {
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
        edittext.clearFocus();
        ViewKt.hideInputKeyboard(edittext);
        quitEditMode();
        getRecyclerView().post(new Runnable() { // from class: com.sunia.HTREnginev2.xde
            @Override // java.lang.Runnable
            public final void run() {
                CountUpHistoryAdapter.m47463s(CountUpHistoryAdapter.this);
            }
        });
    }

    public final void setSelectedItems(@NotNull List<CounterRecordModel> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.selectedItems = list;
    }

    /* renamed from: t */
    public final void m47470t(final ItemCountUpRecordBinding binding, final CounterRecordModel item) {
        binding.editCounterName.setFilters(new InputFilter.LengthFilter[]{new InputFilter.LengthFilter(ResManager.INSTANCE.getInteger(C10651R.integer.counter_name_max_length))});
        binding.editCounterName.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.sunia.HTREnginev2.zde
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                boolean m47464u;
                m47464u = CountUpHistoryAdapter.m47464u(CountUpHistoryAdapter.this, binding, item, textView, i, keyEvent);
                return m47464u;
            }
        });
        binding.editCounterName.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.sunia.HTREnginev2.aee
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                CountUpHistoryAdapter.m47465v(CountUpHistoryAdapter.this, view, z);
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

    public final void toggleItemExpandState(int position) {
        List<CounterRecordModel.TimeRecord> timeList;
        CounterRecordModel item = getItem(position);
        if (item == null || (timeList = item.getTimeList()) == null || timeList.size() <= 1) {
            return;
        }
        if (this.collapsedPositionSet.contains(Integer.valueOf(position))) {
            this.collapsedPositionSet.remove(Integer.valueOf(position));
        } else {
            this.collapsedPositionSet.add(Integer.valueOf(position));
        }
        BaseQuickAdapterKt.notifyItemChangedSafety(this, position);
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
    public void onBindViewHolder(@NotNull final DataBindingHolder<ItemCountUpRecordBinding> holder, int position, @Nullable CounterRecordModel item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (item == null) {
            return;
        }
        ItemCountUpRecordBinding binding = holder.getBinding();
        binding.tvCountName.setText(item.getTitle());
        TintTextView tintTextView = binding.tvTotalTime;
        DateTimeUtil dateTimeUtil = DateTimeUtil.INSTANCE;
        tintTextView.setText(DateTimeUtil.formatDurationSecondExact$default(dateTimeUtil, item.getDuration(), false, null, null, 12, null));
        binding.tvTime.setText(dateTimeUtil.formatDate(new Date(item.getCreatedAt()), dateTimeUtil.getDATE_FORMAT_YYYYMMDD_HHMM_2()));
        binding.rvTaskTimeList.setVisibility(8);
        TintImageView checkbox = binding.checkbox;
        Intrinsics.checkNotNullExpressionValue(checkbox, "checkbox");
        checkbox.setVisibility(this.selectionMode ? 0 : 8);
        TintImageView ivMoreOption = binding.ivMoreOption;
        Intrinsics.checkNotNullExpressionValue(ivMoreOption, "ivMoreOption");
        ivMoreOption.setVisibility(this.selectionMode ^ true ? 0 : 8);
        holder.getBinding().checkbox.setSelected(this.selectedItems.contains(item));
        ViewKt.setViewVisibleOrInvisible(binding.flyInput, this.editingIndex == position);
        ViewKt.setViewVisibleOrInvisible(binding.tvCountName, this.editingIndex != position);
        ItemCountUpRecordBinding binding2 = holder.getBinding();
        Intrinsics.checkNotNullExpressionValue(binding2, "getBinding(...)");
        m47470t(binding2, item);
        m47467p(holder, position, item);
        holder.getBinding().rvTaskTimeList.setOnTouchListener(new View.OnTouchListener() { // from class: com.sunia.HTREnginev2.yde
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean m47466w;
                m47466w = CountUpHistoryAdapter.m47466w(DataBindingHolder.this, view, motionEvent);
                return m47466w;
            }
        });
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public DataBindingHolder<ItemCountUpRecordBinding> onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new DataBindingHolder<>(ItemCountUpRecordBinding.inflate(LayoutInflater.from(context), parent, false));
    }
}
