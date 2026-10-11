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
import androidx.fragment.app.Fragment;
import com.jakewharton.rxbinding4.view.RxView;
import com.onyx.android.sdk.base.extension.MotionEventKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.extension.FragmentKt;
import com.onyx.android.sdk.replicator.counter.data.CounterType;
import com.onyx.android.sdk.replicator.counter.model.CounterTaskModel;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintRelativeLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.common.events.EditDoneEvent;
import com.onyx.android.sdk.universal.common.events.EditFocusEvent;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.databinding.FragmentCountDownBinding;
import com.onyx.galaxy.note.editor.action.counter.StartCounterAction;
import com.onyx.galaxy.note.editor.event.EnableCounterSettingInputEvent;
import com.onyx.galaxy.note.editor.p046ui.CounterBundle;
import com.onyx.galaxy.note.editor.view.fragment.CountDownFragment;
import com.onyx.galaxy.note.settings.data.CounterPreference;
import com.onyx.galaxy.note.utils.CounterUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.gon;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b \u0010!J$\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\b\u0010\u000b\u001a\u00020\nH\u0016J\u001a\u0010\r\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\b\u0010\u000e\u001a\u00020\nH\u0016J\u0010\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u000fH\u0007J\b\u0010\u0012\u001a\u00020\nH\u0003J\b\u0010\u0013\u001a\u00020\nH\u0002J\b\u0010\u0014\u001a\u00020\nH\u0002J\b\u0010\u0015\u001a\u00020\nH\u0002R\u001b\u0010\u001b\u001a\u00020\u00168BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\u0016\u0010\u001f\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001e¨\u0006\""}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/fragment/CountDownFragment;", "Landroidx/fragment/app/Fragment;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", gon.f71270W, "Landroid/os/Bundle;", C1126e.f7693h, "Landroid/view/View;", "onCreateView", "", "onResume", "view", "onViewCreated", "onDestroyView", "Lcom/onyx/android/sdk/universal/common/events/EditDoneEvent;", NotificationCompat.CATEGORY_EVENT, "onEditDoneEvent", "t0", "q0", "o0", "w0", "Lcom/onyx/galaxy/note/databinding/FragmentCountDownBinding;", "c1", "Lkotlin/Lazy;", "p0", "()Lcom/onyx/galaxy/note/databinding/FragmentCountDownBinding;", "binding", "", "d1", Constants.HASIDCALL_INDEX_SIG, "inputState", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class CountDownFragment extends Fragment {

    /* renamed from: c1, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: d1, reason: from kotlin metadata */
    public boolean inputState;

    /* renamed from: com.onyx.galaxy.note.editor.view.fragment.CountDownFragment$a */
    /* loaded from: classes9.dex */
    public static final class C12350a<T> implements Consumer {
        public C12350a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            FragmentKt.navigateWithAnimation$default(CountDownFragment.this, C10651R.id.fragment_my_count_down_task, (Bundle) null, 2, (Object) null);
        }
    }

    public CountDownFragment() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<FragmentCountDownBinding>() { // from class: com.onyx.galaxy.note.editor.view.fragment.CountDownFragment$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final FragmentCountDownBinding invoke() {
                return FragmentCountDownBinding.inflate(LayoutInflater.from(CountDownFragment.this.getContext()));
            }
        });
        this.binding = lazy;
    }

    /* renamed from: r0 */
    public static final void m48278r0(CountDownFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FragmentKt.navigateWithAnimation$default(this$0, C10651R.id.fragment_count_down_history, (Bundle) null, 2, (Object) null);
        CounterPreference.getHasCounterNewRecordOption$default(CounterPreference.INSTANCE, true, null, 2, null).put(false);
    }

    /* renamed from: s0 */
    public static final void m48279s0(CountDownFragment this$0, View view) {
        CharSequence trim;
        List<CounterTaskModel.CountTimeSetting> mutableListOf;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        CounterBundle.Companion companion = CounterBundle.INSTANCE;
        if (companion.getDefaultBundle().notifyIfRunning()) {
            return;
        }
        long selectedDuration = this$0.m48283p0().timePicker.getSelectedDuration();
        if (selectedDuration == 0) {
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.counter_count_time_not_zero, false, 2, (Object) null);
            return;
        }
        String obj = this$0.m48283p0().edtCounterName.getText().toString();
        trim = StringsKt__StringsKt.trim((CharSequence) obj);
        if (trim.toString().length() == 0) {
            obj = CounterUtils.INSTANCE.formatReadableDuration(selectedDuration);
        }
        CounterTaskModel counterTaskModel = new CounterTaskModel();
        counterTaskModel.setTitle(obj);
        counterTaskModel.setType(CounterType.COUNT_DOWN.ordinal());
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(new CounterTaskModel.CountTimeSetting(null, selectedDuration, 1, null));
        counterTaskModel.setCountList(mutableListOf);
        CounterPreference.getCounterLastUsedPageOption$default(CounterPreference.INSTANCE, null, 1, null).put(0);
        RxBaseAction.execute$default(new StartCounterAction(companion.getDefaultBundle(), counterTaskModel), null, null, null, 7, null);
    }

    /* renamed from: u0 */
    public static final boolean m48280u0(CountDownFragment this$0, View view, MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (!view.hasFocus()) {
            Intrinsics.checkNotNull(motionEvent);
            if (MotionEventKt.isDownAction(motionEvent)) {
                this$0.m48282o0();
                Intrinsics.checkNotNull(view);
                ViewKt.postToShowInputKeyboardWithDelay(view);
                return false;
            }
        }
        return this$0.m48283p0().edtCounterName.onTouchEvent(motionEvent);
    }

    /* renamed from: v0 */
    public static final void m48281v0(CountDownFragment this$0, View view, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (!z) {
            this$0.m48286w0();
            ViewKt.hideInputKeyboard(view);
        } else {
            this$0.m48282o0();
            GlobalBundle globalBundle = GlobalBundle.INSTANCE;
            Intrinsics.checkNotNull(view);
            globalBundle.postEvent(new EditFocusEvent(ViewKt.globalVisibleRect(view)));
        }
    }

    /* renamed from: o0 */
    public final void m48282o0() {
        if (this.inputState) {
            return;
        }
        this.inputState = true;
        GlobalBundle.INSTANCE.postEvent(new EnableCounterSettingInputEvent(true));
    }

    @Override // androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        View root = m48283p0().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        GlobalBundle globalBundle = GlobalBundle.INSTANCE;
        globalBundle.unregister(this);
        globalBundle.postEvent(new EnableCounterSettingInputEvent(false));
        super.onDestroyView();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onEditDoneEvent(@NotNull EditDoneEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m48283p0().edtCounterName.clearFocus();
        ViewKt.hideInputKeyboard(m48283p0().edtCounterName);
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        ViewKt.setViewVisibleOrGone(m48283p0().ivNewRecordIndicator, CounterPreference.getHasCounterNewRecordOption$default(CounterPreference.INSTANCE, true, null, 2, null).get());
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        GlobalBundle.INSTANCE.register(this);
        m48285t0();
        m48284q0();
    }

    /* renamed from: p0 */
    public final FragmentCountDownBinding m48283p0() {
        return (FragmentCountDownBinding) this.binding.getValue();
    }

    /* renamed from: q0 */
    public final void m48284q0() {
        TintFrameLayout tvMyTimerTask = m48283p0().tvMyTimerTask;
        Intrinsics.checkNotNullExpressionValue(tvMyTimerTask, "tvMyTimerTask");
        RxView.clicks(tvMyTimerTask).doOnNext(new C12350a()).subscribe();
        TintRelativeLayout rlTimerHistoryRecord = m48283p0().rlTimerHistoryRecord;
        Intrinsics.checkNotNullExpressionValue(rlTimerHistoryRecord, "rlTimerHistoryRecord");
        com.onyx.android.sdk.extension.ViewKt.click$default(rlTimerHistoryRecord, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.ide
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CountDownFragment.m48278r0(CountDownFragment.this, view);
            }
        }, 1, null);
        TintTextView tvStart = m48283p0().tvStart;
        Intrinsics.checkNotNullExpressionValue(tvStart, "tvStart");
        com.onyx.android.sdk.extension.ViewKt.click$default(tvStart, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.jde
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CountDownFragment.m48279s0(CountDownFragment.this, view);
            }
        }, 1, null);
    }

    @SuppressLint({"ClickableViewAccessibility"})
    /* renamed from: t0 */
    public final void m48285t0() {
        m48283p0().edtCounterName.setFilters(new InputFilter.LengthFilter[]{new InputFilter.LengthFilter(ResManager.INSTANCE.getInteger(C10651R.integer.counter_name_max_length))});
        m48283p0().edtCounterName.setOnTouchListener(new View.OnTouchListener() { // from class: com.sunia.HTREnginev2.gde
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean m48280u0;
                m48280u0 = CountDownFragment.m48280u0(CountDownFragment.this, view, motionEvent);
                return m48280u0;
            }
        });
        m48283p0().edtCounterName.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.sunia.HTREnginev2.hde
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                CountDownFragment.m48281v0(CountDownFragment.this, view, z);
            }
        });
    }

    /* renamed from: w0 */
    public final void m48286w0() {
        this.inputState = false;
        GlobalBundle.INSTANCE.postEvent(new EnableCounterSettingInputEvent(false));
    }
}
