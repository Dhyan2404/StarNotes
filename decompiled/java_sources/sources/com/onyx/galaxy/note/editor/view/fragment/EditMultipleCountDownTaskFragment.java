package com.onyx.galaxy.note.editor.view.fragment;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Bundle;
import android.text.InputFilter;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.C1126e;
import androidx.navigation.fragment.FragmentKt;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.chad.library.adapter4.util.ItemClickUtilsKt;
import com.google.android.material.divider.MaterialDividerItemDecoration;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.MotionEventKt;
import com.onyx.android.sdk.base.extension.PopupExtKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.replicator.counter.data.CounterType;
import com.onyx.android.sdk.replicator.counter.model.CounterTaskModel;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.widgets.TintEditText;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.common.events.EditDoneEvent;
import com.onyx.android.sdk.universal.common.events.EditFocusEvent;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.base.BaseFragment;
import com.onyx.galaxy.note.common.extension.BaseQuickAdapterKt;
import com.onyx.galaxy.note.databinding.FragmentEditMultipleCountDownBinding;
import com.onyx.galaxy.note.editor.action.counter.CreateCounterTaskAction;
import com.onyx.galaxy.note.editor.action.counter.RxCounterBaseAction;
import com.onyx.galaxy.note.editor.action.counter.UpdateCounterTaskAction;
import com.onyx.galaxy.note.editor.event.EnableCounterSettingInputEvent;
import com.onyx.galaxy.note.editor.event.SaveCounterSettingEvent;
import com.onyx.galaxy.note.editor.event.UpdateSaveButtonEvent;
import com.onyx.galaxy.note.editor.view.TimePickerView;
import com.onyx.galaxy.note.editor.view.adapter.CounterMultipleTimeEditAdapter;
import com.onyx.galaxy.note.editor.view.fragment.EditMultipleCountDownTaskFragment;
import com.onyx.galaxy.note.editor.view.popup.CounterMoreOptionsPopup;
import com.onyx.galaxy.note.utils.CounterUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.gon;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b9\u0010:J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0002H\u0002J\u0010\u0010\b\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\b\u0010\t\u001a\u00020\u0002H\u0002J\b\u0010\n\u001a\u00020\u0002H\u0002J\b\u0010\u000b\u001a\u00020\u0002H\u0002J\b\u0010\f\u001a\u00020\u0002H\u0002J\b\u0010\r\u001a\u00020\u0002H\u0002J\b\u0010\u000e\u001a\u00020\u0002H\u0002J$\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0010\u001a\u00020\u000f2\b\u0010\u0012\u001a\u0004\u0018\u00010\u00112\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0016J\b\u0010\u0017\u001a\u00020\u0002H\u0016J\b\u0010\u0018\u001a\u00020\u0002H\u0016J\u001a\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u00152\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0017J\u0010\u0010\u001d\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u001bH\u0007J\u0010\u0010\u001f\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u001eH\u0007J\u0010\u0010!\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020 H\u0007R\u001b\u0010'\u001a\u00020\"8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&R\u001b\u0010,\u001a\u00020(8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b)\u0010$\u001a\u0004\b*\u0010+R\u0018\u00100\u001a\u0004\u0018\u00010-8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010/R\u0016\u00104\u001a\u0002018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u00103R\u0014\u00108\u001a\u0002058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b6\u00107¨\u0006;"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/fragment/EditMultipleCountDownTaskFragment;", "Lcom/onyx/galaxy/note/common/base/BaseFragment;", "", "u0", "t0", "x0", "", "position", "A0", "B0", "z0", "M0", "y0", "K0", "L0", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", gon.f71270W, "Landroid/os/Bundle;", C1126e.f7693h, "Landroid/view/View;", "onCreateView", "onResume", "onPause", "view", "onViewCreated", "Lcom/onyx/android/sdk/universal/common/events/EditDoneEvent;", NotificationCompat.CATEGORY_EVENT, "onEditDoneEvent", "Lcom/onyx/galaxy/note/editor/event/SaveCounterSettingEvent;", "onSaveCounterSettingEvent", "Lcom/onyx/galaxy/note/editor/event/EnableCounterSettingInputEvent;", "onEnableCounterSettingInputEvent", "Lcom/onyx/galaxy/note/databinding/FragmentEditMultipleCountDownBinding;", "d1", "Lkotlin/Lazy;", "w0", "()Lcom/onyx/galaxy/note/databinding/FragmentEditMultipleCountDownBinding;", "binding", "Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;", "e1", "v0", "()Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;", "adapter", "Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;", "f1", "Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;", "taskModel", "", "g1", Constants.HASIDCALL_INDEX_SIG, "isCreateNew", "", "h1", "J", "maxMultipleDuration", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nEditMultipleCountDownTaskFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditMultipleCountDownTaskFragment.kt\ncom/onyx/galaxy/note/editor/view/fragment/EditMultipleCountDownTaskFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,312:1\n350#2,7:313\n*S KotlinDebug\n*F\n+ 1 EditMultipleCountDownTaskFragment.kt\ncom/onyx/galaxy/note/editor/view/fragment/EditMultipleCountDownTaskFragment\n*L\n277#1:313,7\n*E\n"})
/* loaded from: classes9.dex */
public final class EditMultipleCountDownTaskFragment extends BaseFragment {

    /* renamed from: d1, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: e1, reason: from kotlin metadata */
    @NotNull
    public final Lazy adapter;

    /* renamed from: f1, reason: from kotlin metadata */
    @Nullable
    public CounterTaskModel taskModel;

    /* renamed from: g1, reason: from kotlin metadata */
    public boolean isCreateNew;

    /* renamed from: h1, reason: from kotlin metadata */
    public final long maxMultipleDuration;

    /* renamed from: com.onyx.galaxy.note.editor.view.fragment.EditMultipleCountDownTaskFragment$a */
    /* loaded from: classes9.dex */
    public static final class C12357a<T> implements Consumer {
        public C12357a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull RxCounterBaseAction<?> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            FragmentKt.findNavController(EditMultipleCountDownTaskFragment.this).navigateUp();
        }
    }

    public EditMultipleCountDownTaskFragment() {
        Lazy lazy;
        Lazy lazy2;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<FragmentEditMultipleCountDownBinding>() { // from class: com.onyx.galaxy.note.editor.view.fragment.EditMultipleCountDownTaskFragment$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final FragmentEditMultipleCountDownBinding invoke() {
                return FragmentEditMultipleCountDownBinding.inflate(LayoutInflater.from(EditMultipleCountDownTaskFragment.this.getContext()));
            }
        });
        this.binding = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<CounterMultipleTimeEditAdapter>() { // from class: com.onyx.galaxy.note.editor.view.fragment.EditMultipleCountDownTaskFragment$adapter$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final CounterMultipleTimeEditAdapter invoke() {
                return new CounterMultipleTimeEditAdapter();
            }
        });
        this.adapter = lazy2;
        this.isCreateNew = true;
        this.maxMultipleDuration = DateTimeUtil.getTimeMills$default(DateTimeUtil.INSTANCE, 99, 0, 0, 6, null);
    }

    /* renamed from: C0 */
    public static final void m48378C0(EditMultipleCountDownTaskFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48405z0();
    }

    /* renamed from: D0 */
    public static final void m48379D0(EditMultipleCountDownTaskFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48400u0();
    }

    /* renamed from: E0 */
    public static final void m48380E0(EditMultipleCountDownTaskFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48400u0();
    }

    /* renamed from: F0 */
    public static final boolean m48381F0(EditMultipleCountDownTaskFragment this$0, View view, MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (!view.hasFocus()) {
            Intrinsics.checkNotNull(motionEvent);
            if (MotionEventKt.isDownAction(motionEvent)) {
                GlobalBundle.INSTANCE.postEvent(new EnableCounterSettingInputEvent(true));
                Intrinsics.checkNotNull(view);
                ViewKt.postToShowInputKeyboardWithDelay(view);
                return false;
            }
        }
        return this$0.m48402w0().edtCounterName.onTouchEvent(motionEvent);
    }

    /* renamed from: G0 */
    public static final void m48382G0(EditMultipleCountDownTaskFragment this$0, View view, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (!z) {
            GlobalBundle.INSTANCE.postEvent(new EnableCounterSettingInputEvent(false));
            ViewKt.hideInputKeyboard(view);
        } else {
            this$0.m48401v0().confirm();
            GlobalBundle globalBundle = GlobalBundle.INSTANCE;
            Intrinsics.checkNotNull(view);
            globalBundle.postEvent(new EditFocusEvent(ViewKt.globalVisibleRect(view)));
        }
    }

    /* renamed from: H0 */
    public static final void m48383H0(EditMultipleCountDownTaskFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        this$0.m48394A0(i);
    }

    /* renamed from: I0 */
    public static final void m48384I0(final EditMultipleCountDownTaskFragment this$0, BaseQuickAdapter baseQuickAdapter, View v, final int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(v, "v");
        if (this$0.m48401v0().getItem(i) != null) {
            Context context = v.getContext();
            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
            CounterMoreOptionsPopup counterMoreOptionsPopup = new CounterMoreOptionsPopup(context, C10651R.string.rename, i > 0);
            counterMoreOptionsPopup.setCallback(new CounterMoreOptionsPopup.OperationCallback() { // from class: com.onyx.galaxy.note.editor.view.fragment.EditMultipleCountDownTaskFragment$onViewCreated$9$1$1
                @Override // com.onyx.galaxy.note.editor.view.popup.CounterMoreOptionsPopup.OperationCallback
                public void onDelete() {
                    CounterMultipleTimeEditAdapter m48401v0;
                    CounterTaskModel counterTaskModel;
                    List<CounterTaskModel.CountTimeSetting> countList;
                    m48401v0 = EditMultipleCountDownTaskFragment.this.m48401v0();
                    m48401v0.removeAt(i);
                    counterTaskModel = EditMultipleCountDownTaskFragment.this.taskModel;
                    if (counterTaskModel != null && (countList = counterTaskModel.getCountList()) != null) {
                        countList.remove(i);
                    }
                    EditMultipleCountDownTaskFragment.this.m48397L0();
                }

                @Override // com.onyx.galaxy.note.editor.view.popup.CounterMoreOptionsPopup.OperationCallback
                public void onEdit() {
                    CounterMultipleTimeEditAdapter m48401v0;
                    m48401v0 = EditMultipleCountDownTaskFragment.this.m48401v0();
                    m48401v0.editTitle(i);
                }
            });
            View root = this$0.m48402w0().getRoot();
            Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
            PopupExtKt.showActionPopup$default(counterMoreOptionsPopup, v, ViewKt.globalVisibleRect(root), 0, ViewKt.globalVisibleRect(v).height(), 4, null);
        }
    }

    /* renamed from: J0 */
    public static final void m48385J0(EditMultipleCountDownTaskFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48401v0().confirm();
    }

    /* renamed from: A0 */
    public final void m48394A0(int position) {
        m48401v0().selectItem(position);
        m48395B0();
        m48396K0();
    }

    /* renamed from: B0 */
    public final void m48395B0() {
        int selectedIndex = m48401v0().getSelectedIndex();
        m48402w0().timePicker.setEnabled(selectedIndex >= 0);
        m48402w0().tvSaveTime.setEnabled(m48402w0().timePicker.isEnabled());
        m48402w0().ivIconTaskTimeAdd.setEnabled(!m48402w0().timePicker.isEnabled());
        m48402w0().tvTaskTimeAdd.setEnabled(true ^ m48402w0().timePicker.isEnabled());
        TimePickerView timePickerView = m48402w0().timePicker;
        CounterTaskModel.CountTimeSetting item = m48401v0().getItem(selectedIndex);
        timePickerView.setDuration(item != null ? item.getDuration() : 0L);
        m48398M0();
    }

    /* renamed from: K0 */
    public final void m48396K0() {
        m48402w0().edtCounterName.clearFocus();
        ViewKt.hideInputKeyboard(m48402w0().edtCounterName);
    }

    /* renamed from: L0 */
    public final void m48397L0() {
        CounterTaskModel counterTaskModel = this.taskModel;
        if (counterTaskModel == null) {
            return;
        }
        TintTextView tintTextView = m48402w0().tvTotalTime;
        DateTimeUtil dateTimeUtil = DateTimeUtil.INSTANCE;
        long duration = counterTaskModel.getDuration();
        String string = ResManager.INSTANCE.getString(C10651R.string.duration_format_with_space);
        if (string == null) {
            string = "";
        }
        tintTextView.setText(dateTimeUtil.formatDuration(duration, string));
    }

    /* renamed from: M0 */
    public final void m48398M0() {
        boolean z = m48401v0().getItemCount() > 1 && m48401v0().getSelectedIndex() < 0 && !m48401v0().isEditingTitle();
        if (isResumed()) {
            GlobalBundle.INSTANCE.postEvent(new UpdateSaveButtonEvent(z));
        }
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        View root = m48402w0().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onEditDoneEvent(@NotNull EditDoneEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m48401v0().quitEditAndSave();
        m48396K0();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onEnableCounterSettingInputEvent(@NotNull EnableCounterSettingInputEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m48398M0();
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        GlobalBundle.INSTANCE.unregister(this);
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        GlobalBundle.INSTANCE.register(this);
        m48398M0();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSaveCounterSettingEvent(@NotNull SaveCounterSettingEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m48404y0();
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    @SuppressLint({"ClickableViewAccessibility"})
    public void onViewCreated(@NotNull final View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        TintTextView tvSaveTime = m48402w0().tvSaveTime;
        Intrinsics.checkNotNullExpressionValue(tvSaveTime, "tvSaveTime");
        com.onyx.android.sdk.extension.ViewKt.click$default(tvSaveTime, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.ilf
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                EditMultipleCountDownTaskFragment.m48378C0(EditMultipleCountDownTaskFragment.this, view2);
            }
        }, 1, null);
        TintTextView tvTaskTimeAdd = m48402w0().tvTaskTimeAdd;
        Intrinsics.checkNotNullExpressionValue(tvTaskTimeAdd, "tvTaskTimeAdd");
        com.onyx.android.sdk.extension.ViewKt.click$default(tvTaskTimeAdd, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.jlf
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                EditMultipleCountDownTaskFragment.m48379D0(EditMultipleCountDownTaskFragment.this, view2);
            }
        }, 1, null);
        TintImageView ivIconTaskTimeAdd = m48402w0().ivIconTaskTimeAdd;
        Intrinsics.checkNotNullExpressionValue(ivIconTaskTimeAdd, "ivIconTaskTimeAdd");
        com.onyx.android.sdk.extension.ViewKt.click$default(ivIconTaskTimeAdd, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.klf
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                EditMultipleCountDownTaskFragment.m48380E0(EditMultipleCountDownTaskFragment.this, view2);
            }
        }, 1, null);
        m48402w0().edtCounterName.setFilters(new InputFilter.LengthFilter[]{new InputFilter.LengthFilter(ResManager.INSTANCE.getInteger(C10651R.integer.counter_name_max_length))});
        m48402w0().edtCounterName.setOnTouchListener(new View.OnTouchListener() { // from class: com.sunia.HTREnginev2.llf
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view2, MotionEvent motionEvent) {
                boolean m48381F0;
                m48381F0 = EditMultipleCountDownTaskFragment.m48381F0(EditMultipleCountDownTaskFragment.this, view2, motionEvent);
                return m48381F0;
            }
        });
        m48402w0().edtCounterName.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.sunia.HTREnginev2.mlf
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view2, boolean z) {
                EditMultipleCountDownTaskFragment.m48382G0(EditMultipleCountDownTaskFragment.this, view2, z);
            }
        });
        m48402w0().rvTaskTimeList.setLayoutManager(new LinearLayoutManager(view.getContext(), 1, false));
        m48402w0().rvTaskTimeList.addItemDecoration(new Function0<RecyclerView.ItemDecoration>() { // from class: com.onyx.galaxy.note.editor.view.fragment.EditMultipleCountDownTaskFragment$onViewCreated$6
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final RecyclerView.ItemDecoration invoke() {
                MaterialDividerItemDecoration materialDividerItemDecoration = new MaterialDividerItemDecoration(view.getContext(), 1);
                materialDividerItemDecoration.setDividerColor(ThemeUtils.getColorById(C7996R.color.theme_bg_overlay_color_01));
                ResManager resManager = ResManager.INSTANCE;
                materialDividerItemDecoration.setDividerThickness(resManager.getDimensionPixelSize(C7384R.dimen.dp_0_4));
                materialDividerItemDecoration.setDividerInsetEnd(resManager.getDimensionPixelSize(C7384R.dimen.dp_16));
                materialDividerItemDecoration.setDividerInsetStart(resManager.getDimensionPixelSize(C7384R.dimen.dp_16));
                return materialDividerItemDecoration;
            }
        });
        ItemClickUtilsKt.setOnDebouncedItemClick$default(m48401v0(), 0L, new BaseQuickAdapter.OnItemClickListener() { // from class: com.sunia.HTREnginev2.nlf
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemClickListener
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view2, int i) {
                EditMultipleCountDownTaskFragment.m48383H0(EditMultipleCountDownTaskFragment.this, baseQuickAdapter, view2, i);
            }
        }, 1, null);
        m48401v0().setOnSelectItemChangeListener(new Function0<Unit>() { // from class: com.onyx.galaxy.note.editor.view.fragment.EditMultipleCountDownTaskFragment$onViewCreated$8
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                EditMultipleCountDownTaskFragment.this.m48395B0();
            }
        });
        ItemClickUtilsKt.addOnDebouncedChildClick$default(m48401v0(), C10651R.id.iv_more_option, 0L, new BaseQuickAdapter.OnItemChildClickListener() { // from class: com.sunia.HTREnginev2.olf
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemChildClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view2, int i) {
                EditMultipleCountDownTaskFragment.m48384I0(EditMultipleCountDownTaskFragment.this, baseQuickAdapter, view2, i);
            }
        }, 2, null);
        m48402w0().rvTaskTimeList.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.plf
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                EditMultipleCountDownTaskFragment.m48385J0(EditMultipleCountDownTaskFragment.this, view2);
            }
        });
        m48402w0().rvTaskTimeList.setAdapter(m48401v0());
        m48403x0();
    }

    /* renamed from: t0 */
    public final void m48399t0() {
        CounterTaskModel counterTaskModel = this.taskModel;
        if (counterTaskModel != null) {
            counterTaskModel.getCountList().add(new CounterTaskModel.CountTimeSetting("", 0L));
            m48401v0().submitList(CollectionKt.copy(counterTaskModel.getCountList()));
            ViewKt.postSelf(m48402w0().rvTaskTimeList, new EditMultipleCountDownTaskFragment$addOneRecord$1$1(this));
            m48397L0();
        }
    }

    /* renamed from: u0 */
    public final void m48400u0() {
        if (m48401v0().getItemCount() >= ResManager.INSTANCE.getInteger(C10651R.integer.counter_count_up_max_segment)) {
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.counter_segment_exceed_limit, false, 2, (Object) null);
        } else {
            m48399t0();
        }
    }

    /* renamed from: v0 */
    public final CounterMultipleTimeEditAdapter m48401v0() {
        return (CounterMultipleTimeEditAdapter) this.adapter.getValue();
    }

    /* renamed from: w0 */
    public final FragmentEditMultipleCountDownBinding m48402w0() {
        return (FragmentEditMultipleCountDownBinding) this.binding.getValue();
    }

    /* renamed from: x0 */
    public final void m48403x0() {
        CounterTaskModel parseTaskModelBundle = CounterUtils.INSTANCE.parseTaskModelBundle(getArguments());
        this.taskModel = parseTaskModelBundle;
        if (parseTaskModelBundle != null) {
            Intrinsics.checkNotNull(parseTaskModelBundle);
            if (parseTaskModelBundle.getType() == CounterType.COUNT_DOWN_MULTIPLE.ordinal()) {
                this.isCreateNew = false;
                TintEditText tintEditText = m48402w0().edtCounterName;
                CounterTaskModel counterTaskModel = this.taskModel;
                Intrinsics.checkNotNull(counterTaskModel);
                tintEditText.setText(counterTaskModel.getTitle());
                CounterMultipleTimeEditAdapter m48401v0 = m48401v0();
                CounterTaskModel counterTaskModel2 = this.taskModel;
                Intrinsics.checkNotNull(counterTaskModel2);
                m48401v0.submitList(CollectionKt.copy(counterTaskModel2.getCountList()));
                m48397L0();
                m48395B0();
            }
        }
        CounterTaskModel counterTaskModel3 = new CounterTaskModel();
        counterTaskModel3.setType(CounterType.COUNT_DOWN_MULTIPLE.ordinal());
        this.taskModel = counterTaskModel3;
        m48399t0();
        m48394A0(0);
        m48397L0();
        m48395B0();
    }

    /* renamed from: y0 */
    public final void m48404y0() {
        List listOf;
        Observable<UpdateCounterTaskAction> build;
        List listOf2;
        CounterTaskModel counterTaskModel = this.taskModel;
        if (counterTaskModel == null) {
            return;
        }
        long duration = counterTaskModel.getDuration();
        if (duration == 0) {
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.counter_count_time_not_zero, false, 2, (Object) null);
            return;
        }
        if (duration > this.maxMultipleDuration) {
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            String format = String.format(Locale.getDefault(), ResManager.INSTANCE.getStringSafely(C10651R.string.counter_count_time_multiple_max), Arrays.copyOf(new Object[]{Integer.valueOf((int) DateTimeUtil.INSTANCE.msToHour(this.maxMultipleDuration))}, 1));
            Intrinsics.checkNotNullExpressionValue(format, "format(...)");
            ToastUtils.show$default(ToastUtils.INSTANCE, (CharSequence) format, false, 2, (Object) null);
            return;
        }
        Iterator<CounterTaskModel.CountTimeSetting> it2 = counterTaskModel.getCountList().iterator();
        int i = 0;
        while (true) {
            if (!it2.hasNext()) {
                i = -1;
                break;
            } else {
                if (it2.next().getDuration() == 0) {
                    break;
                } else {
                    i++;
                }
            }
        }
        if (i >= 0) {
            m48394A0(i);
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.counter_count_time_not_zero, false, 2, (Object) null);
            return;
        }
        counterTaskModel.setTitle(m48402w0().edtCounterName.getText().toString());
        if (counterTaskModel.getCountList().isEmpty()) {
            return;
        }
        if (this.isCreateNew) {
            listOf2 = CollectionsKt__CollectionsJVMKt.listOf(counterTaskModel);
            build = new CreateCounterTaskAction(listOf2).build();
        } else {
            listOf = CollectionsKt__CollectionsJVMKt.listOf(counterTaskModel);
            build = new UpdateCounterTaskAction(listOf).build();
        }
        Observable<UpdateCounterTaskAction> doOnNext = build.doOnNext(new C12357a());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        RxjavaKt.subscribeWithDefault$default(doOnNext, null, null, null, 7, null);
    }

    /* renamed from: z0 */
    public final void m48405z0() {
        CounterTaskModel counterTaskModel = this.taskModel;
        if (counterTaskModel == null) {
            return;
        }
        if (m48402w0().timePicker.getSelectedDuration() == 0) {
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.counter_count_time_not_zero, false, 2, (Object) null);
            return;
        }
        int selectedIndex = m48401v0().getSelectedIndex();
        if (selectedIndex >= 0 && selectedIndex < counterTaskModel.getCountList().size()) {
            counterTaskModel.getCountList().get(selectedIndex).setDuration(m48402w0().timePicker.getSelectedDuration());
            BaseQuickAdapterKt.notifyItemChangedSafety(m48401v0(), selectedIndex);
            m48397L0();
        }
        m48401v0().confirm();
        m48396K0();
        m48394A0(-1);
        m48398M0();
    }
}
