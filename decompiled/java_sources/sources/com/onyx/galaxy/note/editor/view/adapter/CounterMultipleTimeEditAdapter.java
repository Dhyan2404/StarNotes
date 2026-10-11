package com.onyx.galaxy.note.editor.view.adapter;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.Editable;
import android.text.InputFilter;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.chad.library.adapter4.viewholder.DataBindingHolder;
import com.onyx.android.sdk.base.extension.MotionEventKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.replicator.counter.model.CounterTaskModel;
import com.onyx.android.sdk.theme.widgets.TintEditText;
import com.onyx.android.sdk.universal.common.events.EditFocusEvent;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.extension.BaseQuickAdapterKt;
import com.onyx.galaxy.note.databinding.ItemCountDownMultipleTimeListBinding;
import com.onyx.galaxy.note.editor.event.EnableCounterSettingInputEvent;
import com.onyx.galaxy.note.editor.view.adapter.CounterMultipleTimeEditAdapter;
import com.onyx.galaxy.note.utils.CounterUtils;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Arrays;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0001B\u0007¢\u0006\u0004\b,\u0010-J(\u0010\n\u001a\u00020\t2\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\b\u001a\u0004\u0018\u00010\u0002H\u0015J&\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0006H\u0014J\u0010\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u000e\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u0006J\u000e\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u0006J\u0006\u0010\u0014\u001a\u00020\u0006J\u0006\u0010\u0015\u001a\u00020\tJ\u0006\u0010\u0016\u001a\u00020\tJ\u0006\u0010\u0018\u001a\u00020\u0017J\u0006\u0010\u0019\u001a\u00020\tJ\b\u0010\u001a\u001a\u00020\tH\u0002J\u0010\u0010\u001b\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0018\u0010\u001e\u001a\u00020\t2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\b\u001a\u00020\u0002H\u0002R\u0016\u0010!\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0016\u0010#\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010 R(\u0010+\u001a\b\u0012\u0004\u0012\u00020\t0$8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*¨\u0006."}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;", "Lcom/chad/library/adapter4/viewholder/DataBindingHolder;", "Lcom/onyx/galaxy/note/databinding/ItemCountDownMultipleTimeListBinding;", "holder", "", "position", "item", "", "onBindViewHolder", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", "removeAt", "selectItem", "editTitle", "getSelectedIndex", "confirm", "quitEditAndSave", "", "isEditingTitle", "quitEditMode", "w", "x", "Landroid/widget/EditText;", "edittext", "q", "r", "I", "selectedIndex", "s", "editTitleIndex", "Lkotlin/Function0;", "t", "Lkotlin/jvm/functions/Function0;", "getOnSelectItemChangeListener", "()Lkotlin/jvm/functions/Function0;", "setOnSelectItemChangeListener", "(Lkotlin/jvm/functions/Function0;)V", "onSelectItemChangeListener", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class CounterMultipleTimeEditAdapter extends BaseQuickAdapter<CounterTaskModel.CountTimeSetting, DataBindingHolder<ItemCountDownMultipleTimeListBinding>> {

    /* renamed from: r, reason: from kotlin metadata */
    public int selectedIndex;

    /* renamed from: s, reason: from kotlin metadata */
    public int editTitleIndex;

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public Function0<Unit> onSelectItemChangeListener;

    public CounterMultipleTimeEditAdapter() {
        super(null, 1, null);
        this.selectedIndex = -1;
        this.editTitleIndex = -1;
        this.onSelectItemChangeListener = new Function0<Unit>() { // from class: com.onyx.galaxy.note.editor.view.adapter.CounterMultipleTimeEditAdapter$onSelectItemChangeListener$1
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }
        };
    }

    /* renamed from: r */
    public static final void m47478r(CounterMultipleTimeEditAdapter this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.notifyItemRangeChanged(0, this$0.getItemCount());
    }

    /* renamed from: s */
    public static final boolean m47479s(DataBindingHolder holder, View view, MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(holder, "$holder");
        if (!view.hasFocus()) {
            Intrinsics.checkNotNull(motionEvent);
            if (MotionEventKt.isDownAction(motionEvent)) {
                GlobalBundle.INSTANCE.postEvent(new EnableCounterSettingInputEvent(true));
            }
        }
        return ((ItemCountDownMultipleTimeListBinding) holder.getBinding()).edtCountName.onTouchEvent(motionEvent);
    }

    /* renamed from: t */
    public static final void m47480t(CounterMultipleTimeEditAdapter this$0, DataBindingHolder holder, CounterTaskModel.CountTimeSetting countTimeSetting, View view, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(holder, "$holder");
        if (!z) {
            TintEditText edtCountName = ((ItemCountDownMultipleTimeListBinding) holder.getBinding()).edtCountName;
            Intrinsics.checkNotNullExpressionValue(edtCountName, "edtCountName");
            this$0.m47483q(edtCountName, countTimeSetting);
            return;
        }
        TintEditText tintEditText = ((ItemCountDownMultipleTimeListBinding) holder.getBinding()).edtCountName;
        Editable text = ((ItemCountDownMultipleTimeListBinding) holder.getBinding()).edtCountName.getText();
        tintEditText.setSelection(text != null ? text.length() : 0);
        GlobalBundle globalBundle = GlobalBundle.INSTANCE;
        TintEditText edtCountName2 = ((ItemCountDownMultipleTimeListBinding) holder.getBinding()).edtCountName;
        Intrinsics.checkNotNullExpressionValue(edtCountName2, "edtCountName");
        globalBundle.postEvent(new EditFocusEvent(ViewKt.windowVisibleRect(edtCountName2)));
    }

    /* renamed from: u */
    public static final boolean m47481u(final CounterMultipleTimeEditAdapter this$0, DataBindingHolder holder, CounterTaskModel.CountTimeSetting countTimeSetting, TextView textView, int i, KeyEvent keyEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(holder, "$holder");
        if (i != 6) {
            return true;
        }
        TintEditText edtCountName = ((ItemCountDownMultipleTimeListBinding) holder.getBinding()).edtCountName;
        Intrinsics.checkNotNullExpressionValue(edtCountName, "edtCountName");
        this$0.m47483q(edtCountName, countTimeSetting);
        this$0.quitEditMode();
        this$0.getRecyclerView().post(new Runnable() { // from class: com.sunia.HTREnginev2.uee
            @Override // java.lang.Runnable
            public final void run() {
                CounterMultipleTimeEditAdapter.m47482v(CounterMultipleTimeEditAdapter.this);
            }
        });
        return true;
    }

    /* renamed from: v */
    public static final void m47482v(CounterMultipleTimeEditAdapter this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.notifyItemRangeChanged(0, this$0.getItemCount());
    }

    public final void confirm() {
        m47484w();
        quitEditMode();
        notifyItemRangeChanged(0, getItemCount());
    }

    public final void editTitle(int position) {
        this.editTitleIndex = position;
        GlobalBundle.INSTANCE.postEvent(new EnableCounterSettingInputEvent(true));
        notifyItemRangeChanged(0, getItemCount());
    }

    @NotNull
    public final Function0<Unit> getOnSelectItemChangeListener() {
        return this.onSelectItemChangeListener;
    }

    public final int getSelectedIndex() {
        return this.selectedIndex;
    }

    public final boolean isEditingTitle() {
        return this.editTitleIndex >= 0;
    }

    /* renamed from: q */
    public final void m47483q(EditText edittext, CounterTaskModel.CountTimeSetting item) {
        if (this.editTitleIndex < 0) {
            return;
        }
        item.setTitle(edittext.getText().toString());
        edittext.clearFocus();
        ViewKt.hideInputKeyboard(edittext);
        edittext.setEnabled(false);
        getRecyclerView().post(new Runnable() { // from class: com.sunia.HTREnginev2.vee
            @Override // java.lang.Runnable
            public final void run() {
                CounterMultipleTimeEditAdapter.m47478r(CounterMultipleTimeEditAdapter.this);
            }
        });
        GlobalBundle.INSTANCE.postEvent(new EnableCounterSettingInputEvent(false));
    }

    public final void quitEditAndSave() {
        View findViewByPosition;
        if (this.editTitleIndex < 0) {
            return;
        }
        RecyclerView.LayoutManager layoutManager = getRecyclerView().getLayoutManager();
        if (layoutManager != null && (findViewByPosition = layoutManager.findViewByPosition(this.editTitleIndex)) != null) {
            View findViewById = findViewByPosition.findViewById(C10651R.id.edt_count_name);
            Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById(...)");
            m47483q((EditText) findViewById, getItems().get(this.editTitleIndex));
        }
        quitEditMode();
    }

    public final void quitEditMode() {
        int i = this.editTitleIndex;
        if (i < 0) {
            return;
        }
        this.editTitleIndex = -1;
        BaseQuickAdapterKt.notifyItemChangedSafety(this, i);
        ViewKt.hideInputKeyboard(getRecyclerView());
        GlobalBundle.INSTANCE.postEvent(new EnableCounterSettingInputEvent(false));
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x002e, code lost:
    
        if (r10 == false) goto L6;
     */
    @Override // com.chad.library.adapter4.BaseQuickAdapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void removeAt(int r10) {
        /*
            r9 = this;
            super.removeAt(r10)
            java.util.List r10 = r9.getItems()
            boolean r10 = r10.isEmpty()
            if (r10 != 0) goto L30
            com.onyx.android.sdk.base.utils.MathUtils r0 = com.onyx.android.sdk.base.utils.MathUtils.INSTANCE
            int r10 = r9.selectedIndex
            java.lang.Integer r1 = java.lang.Integer.valueOf(r10)
            r10 = 0
            java.lang.Integer r2 = java.lang.Integer.valueOf(r10)
            int r10 = r9.getItemCount()
            int r10 = r10 + (-1)
            java.lang.Integer r3 = java.lang.Integer.valueOf(r10)
            r4 = 0
            r5 = 0
            r6 = 0
            r7 = 28
            r8 = 0
            boolean r10 = com.onyx.android.sdk.base.utils.MathUtils.inRange$default(r0, r1, r2, r3, r4, r5, r6, r7, r8)
            if (r10 != 0) goto L33
        L30:
            r9.m47484w()
        L33:
            r9.notifyDataSetChanged()
            r9.quitEditMode()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.editor.view.adapter.CounterMultipleTimeEditAdapter.removeAt(int):void");
    }

    public final void selectItem(int position) {
        m47485x(position);
        quitEditMode();
        notifyItemRangeChanged(0, getItemCount());
    }

    public final void setOnSelectItemChangeListener(@NotNull Function0<Unit> function0) {
        Intrinsics.checkNotNullParameter(function0, "<set-?>");
        this.onSelectItemChangeListener = function0;
    }

    /* renamed from: w */
    public final void m47484w() {
        m47485x(-1);
    }

    /* renamed from: x */
    public final void m47485x(int position) {
        this.selectedIndex = position;
        this.onSelectItemChangeListener.invoke();
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @SuppressLint({"ClickableViewAccessibility"})
    public void onBindViewHolder(@NotNull final DataBindingHolder<ItemCountDownMultipleTimeListBinding> holder, int position, @Nullable final CounterTaskModel.CountTimeSetting item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (item == null) {
            return;
        }
        holder.itemView.setSelected(position == this.selectedIndex);
        boolean z = position == this.editTitleIndex;
        holder.getBinding().edtCountName.setEnabled(z);
        TintEditText tintEditText = holder.getBinding().edtCountName;
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        Locale locale = Locale.getDefault();
        ResManager resManager = ResManager.INSTANCE;
        String format = String.format(locale, resManager.getStringSafely(C10651R.string.counter_count_down_multiple_time_default_name), Arrays.copyOf(new Object[]{Integer.valueOf(position + 1)}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        tintEditText.setHint(format);
        holder.getBinding().edtCountName.setOnTouchListener(new View.OnTouchListener() { // from class: com.sunia.HTREnginev2.ree
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean m47479s;
                m47479s = CounterMultipleTimeEditAdapter.m47479s(DataBindingHolder.this, view, motionEvent);
                return m47479s;
            }
        });
        holder.getBinding().edtCountName.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.sunia.HTREnginev2.see
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z2) {
                CounterMultipleTimeEditAdapter.m47480t(CounterMultipleTimeEditAdapter.this, holder, item, view, z2);
            }
        });
        holder.getBinding().edtCountName.setFilters(new InputFilter.LengthFilter[]{new InputFilter.LengthFilter(resManager.getInteger(C10651R.integer.counter_name_max_length))});
        holder.getBinding().edtCountName.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.sunia.HTREnginev2.tee
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                boolean m47481u;
                m47481u = CounterMultipleTimeEditAdapter.m47481u(CounterMultipleTimeEditAdapter.this, holder, item, textView, i, keyEvent);
                return m47481u;
            }
        });
        if (z) {
            TintEditText edtCountName = holder.getBinding().edtCountName;
            Intrinsics.checkNotNullExpressionValue(edtCountName, "edtCountName");
            ViewKt.postToShowInputKeyboardWithDelay(edtCountName);
        }
        holder.getBinding().tvTotalTime.setText(DateTimeUtil.formatDuration$default(DateTimeUtil.INSTANCE, item.getDuration(), null, 2, null));
        if (z) {
            holder.getBinding().edtCountName.setText(item.getTitle());
        } else {
            holder.getBinding().edtCountName.setText(CounterUtils.INSTANCE.getFormatedSegmentName(getItems(), position));
        }
        holder.getBinding().itemContainer.setPaddingRelative(resManager.getDimens(C7384R.dimen.dp_32), 0, resManager.getDimens(C7384R.dimen.dp_12), 0);
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public DataBindingHolder<ItemCountDownMultipleTimeListBinding> onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new DataBindingHolder<>(ItemCountDownMultipleTimeListBinding.inflate(LayoutInflater.from(context), parent, false));
    }
}
