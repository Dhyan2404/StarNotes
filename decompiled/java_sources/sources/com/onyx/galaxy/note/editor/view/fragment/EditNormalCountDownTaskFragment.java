package com.onyx.galaxy.note.editor.view.fragment;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.text.InputFilter;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.C1126e;
import androidx.navigation.fragment.FragmentKt;
import com.onyx.android.sdk.base.extension.MotionEventKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.replicator.counter.data.CounterType;
import com.onyx.android.sdk.replicator.counter.model.CounterTaskModel;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.common.events.EditDoneEvent;
import com.onyx.android.sdk.universal.common.events.EditFocusEvent;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.base.BaseFragment;
import com.onyx.galaxy.note.databinding.FragmentEditNormalCountDownBinding;
import com.onyx.galaxy.note.editor.action.counter.CreateCounterTaskAction;
import com.onyx.galaxy.note.editor.action.counter.RxCounterBaseAction;
import com.onyx.galaxy.note.editor.action.counter.UpdateCounterTaskAction;
import com.onyx.galaxy.note.editor.event.EnableCounterSettingInputEvent;
import com.onyx.galaxy.note.editor.event.SaveCounterSettingEvent;
import com.onyx.galaxy.note.editor.event.UpdateSaveButtonEvent;
import com.onyx.galaxy.note.editor.view.fragment.EditNormalCountDownTaskFragment;
import com.onyx.galaxy.note.utils.CounterUtils;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.gon;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\"\u0010#J$\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\b\u0010\u000b\u001a\u00020\nH\u0016J\b\u0010\f\u001a\u00020\nH\u0016J\u001a\u0010\u000e\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0017J\u0010\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u000fH\u0007J\u0010\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u0012H\u0007J\b\u0010\u0014\u001a\u00020\nH\u0002J\b\u0010\u0015\u001a\u00020\nH\u0002J\b\u0010\u0016\u001a\u00020\nH\u0002J\b\u0010\u0017\u001a\u00020\nH\u0002R\u001b\u0010\u001d\u001a\u00020\u00188BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR\u0018\u0010!\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 ¨\u0006$"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/fragment/EditNormalCountDownTaskFragment;", "Lcom/onyx/galaxy/note/common/base/BaseFragment;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", gon.f71270W, "Landroid/os/Bundle;", C1126e.f7693h, "Landroid/view/View;", "onCreateView", "", "onResume", "onPause", "view", "onViewCreated", "Lcom/onyx/android/sdk/universal/common/events/EditDoneEvent;", NotificationCompat.CATEGORY_EVENT, "onEditDoneEvent", "Lcom/onyx/galaxy/note/editor/event/SaveCounterSettingEvent;", "onSaveCounterSettingEvent", "t0", "o0", "p0", "s0", "Lcom/onyx/galaxy/note/databinding/FragmentEditNormalCountDownBinding;", "d1", "Lkotlin/Lazy;", "n0", "()Lcom/onyx/galaxy/note/databinding/FragmentEditNormalCountDownBinding;", "binding", "Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;", "e1", "Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;", "taskModel", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class EditNormalCountDownTaskFragment extends BaseFragment {

    /* renamed from: d1, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: e1, reason: from kotlin metadata */
    @Nullable
    public CounterTaskModel taskModel;

    /* renamed from: com.onyx.galaxy.note.editor.view.fragment.EditNormalCountDownTaskFragment$a */
    /* loaded from: classes9.dex */
    public static final class C12358a<T> implements Consumer {
        public C12358a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull RxCounterBaseAction<?> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            FragmentKt.findNavController(EditNormalCountDownTaskFragment.this).navigateUp();
        }
    }

    public EditNormalCountDownTaskFragment() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<FragmentEditNormalCountDownBinding>() { // from class: com.onyx.galaxy.note.editor.view.fragment.EditNormalCountDownTaskFragment$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final FragmentEditNormalCountDownBinding invoke() {
                return FragmentEditNormalCountDownBinding.inflate(LayoutInflater.from(EditNormalCountDownTaskFragment.this.getContext()));
            }
        });
        this.binding = lazy;
    }

    /* renamed from: q0 */
    public static final boolean m48410q0(EditNormalCountDownTaskFragment this$0, View view, MotionEvent motionEvent) {
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
        return this$0.m48412n0().edtCounterName.onTouchEvent(motionEvent);
    }

    /* renamed from: r0 */
    public static final void m48411r0(View view, boolean z) {
        if (!z) {
            GlobalBundle.INSTANCE.postEvent(new EnableCounterSettingInputEvent(false));
            ViewKt.hideInputKeyboard(view);
        } else {
            GlobalBundle globalBundle = GlobalBundle.INSTANCE;
            Intrinsics.checkNotNull(view);
            globalBundle.postEvent(new EditFocusEvent(ViewKt.globalVisibleRect(view)));
        }
    }

    /* renamed from: n0 */
    public final FragmentEditNormalCountDownBinding m48412n0() {
        return (FragmentEditNormalCountDownBinding) this.binding.getValue();
    }

    /* renamed from: o0 */
    public final void m48413o0() {
        CounterTaskModel parseTaskModelBundle = CounterUtils.INSTANCE.parseTaskModelBundle(getArguments());
        this.taskModel = parseTaskModelBundle;
        if (parseTaskModelBundle != null && parseTaskModelBundle.getType() == CounterType.COUNT_DOWN.ordinal()) {
            m48412n0().edtCounterName.setText(parseTaskModelBundle.getTitle());
            m48412n0().timePicker.setDuration(parseTaskModelBundle.getDuration());
        }
        m48416t0();
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        View root = m48412n0().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onEditDoneEvent(@NotNull EditDoneEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m48412n0().edtCounterName.clearFocus();
        ViewKt.hideInputKeyboard(m48412n0().edtCounterName);
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
        m48415s0();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSaveCounterSettingEvent(@NotNull SaveCounterSettingEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m48414p0();
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    @SuppressLint({"ClickableViewAccessibility"})
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        m48412n0().timePicker.setTimeUpdateCallback(new Function3<String, String, String, Unit>() { // from class: com.onyx.galaxy.note.editor.view.fragment.EditNormalCountDownTaskFragment$onViewCreated$1
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(String str, String str2, String str3) {
                invoke2(str, str2, str3);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull String str, @NotNull String str2, @NotNull String str3) {
                Intrinsics.checkNotNullParameter(str, "<anonymous parameter 0>");
                Intrinsics.checkNotNullParameter(str2, "<anonymous parameter 1>");
                Intrinsics.checkNotNullParameter(str3, "<anonymous parameter 2>");
                EditNormalCountDownTaskFragment.this.m48416t0();
            }
        });
        m48412n0().edtCounterName.setFilters(new InputFilter.LengthFilter[]{new InputFilter.LengthFilter(ResManager.INSTANCE.getInteger(C10651R.integer.counter_name_max_length))});
        m48412n0().edtCounterName.setOnTouchListener(new View.OnTouchListener() { // from class: com.sunia.HTREnginev2.qlf
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view2, MotionEvent motionEvent) {
                boolean m48410q0;
                m48410q0 = EditNormalCountDownTaskFragment.m48410q0(EditNormalCountDownTaskFragment.this, view2, motionEvent);
                return m48410q0;
            }
        });
        m48412n0().edtCounterName.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.sunia.HTREnginev2.rlf
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view2, boolean z) {
                EditNormalCountDownTaskFragment.m48411r0(view2, z);
            }
        });
        m48413o0();
    }

    /* renamed from: p0 */
    public final void m48414p0() {
        List<CounterTaskModel.CountTimeSetting> mutableListOf;
        List listOf;
        Observable<CreateCounterTaskAction> build;
        List listOf2;
        long selectedDuration = m48412n0().timePicker.getSelectedDuration();
        if (selectedDuration == 0) {
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.counter_count_time_not_zero, false, 2, (Object) null);
            return;
        }
        String obj = m48412n0().edtCounterName.getText().toString();
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(new CounterTaskModel.CountTimeSetting(null, selectedDuration, 1, null));
        CounterTaskModel counterTaskModel = this.taskModel;
        if (counterTaskModel != null) {
            Intrinsics.checkNotNull(counterTaskModel);
            counterTaskModel.setTitle(obj);
            counterTaskModel.setCountList(mutableListOf);
            listOf2 = CollectionsKt__CollectionsJVMKt.listOf(counterTaskModel);
            build = new UpdateCounterTaskAction(listOf2).build();
        } else {
            CounterTaskModel counterTaskModel2 = new CounterTaskModel();
            counterTaskModel2.setTitle(obj);
            counterTaskModel2.setType(CounterType.COUNT_DOWN.ordinal());
            counterTaskModel2.setCountList(mutableListOf);
            listOf = CollectionsKt__CollectionsJVMKt.listOf(counterTaskModel2);
            build = new CreateCounterTaskAction(listOf).build();
        }
        Observable<CreateCounterTaskAction> doOnNext = build.doOnNext(new C12358a());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        RxjavaKt.subscribeWithDefault$default(doOnNext, null, null, null, 7, null);
    }

    /* renamed from: s0 */
    public final void m48415s0() {
        if (isResumed()) {
            GlobalBundle.INSTANCE.postEvent(new UpdateSaveButtonEvent(true));
        }
    }

    /* renamed from: t0 */
    public final void m48416t0() {
        TintTextView tintTextView = m48412n0().tvTotalTime;
        DateTimeUtil dateTimeUtil = DateTimeUtil.INSTANCE;
        long selectedDuration = m48412n0().timePicker.getSelectedDuration();
        String string = ResManager.INSTANCE.getString(C10651R.string.duration_format_with_space);
        if (string == null) {
            string = "";
        }
        tintTextView.setText(dateTimeUtil.formatDuration(selectedDuration, string));
    }
}
