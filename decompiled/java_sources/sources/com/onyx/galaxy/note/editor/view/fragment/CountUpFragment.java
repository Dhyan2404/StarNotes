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
import com.jakewharton.rxbinding4.view.RxView;
import com.onyx.android.sdk.base.extension.MotionEventKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.extension.FragmentKt;
import com.onyx.android.sdk.replicator.counter.data.CounterType;
import com.onyx.android.sdk.replicator.counter.model.CounterRecordModel;
import com.onyx.android.sdk.replicator.counter.model.CounterTaskModel;
import com.onyx.android.sdk.theme.widgets.TintRelativeLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.common.events.EditDoneEvent;
import com.onyx.android.sdk.universal.common.events.EditFocusEvent;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.base.BaseFragment;
import com.onyx.galaxy.note.databinding.FragmentCountUpBinding;
import com.onyx.galaxy.note.editor.action.counter.QueryLastCountUpRecordAction;
import com.onyx.galaxy.note.editor.action.counter.StartCounterAction;
import com.onyx.galaxy.note.editor.event.CounterStateChangeEvent;
import com.onyx.galaxy.note.editor.event.EnableCounterSettingInputEvent;
import com.onyx.galaxy.note.editor.p046ui.CounterBundle;
import com.onyx.galaxy.note.editor.view.fragment.CountUpFragment;
import com.onyx.galaxy.note.settings.data.CounterPreference;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.gon;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.Arrays;
import java.util.Locale;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b&\u0010'J$\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\u001a\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0017J\b\u0010\r\u001a\u00020\u000bH\u0016J\b\u0010\u000e\u001a\u00020\u000bH\u0016J\u0010\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u000fH\u0007J\u0010\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u0012H\u0007J\u0012\u0010\u0016\u001a\u00020\u000b2\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0002J\b\u0010\u0017\u001a\u00020\u000bH\u0002J\f\u0010\u0019\u001a\u0006\u0012\u0002\b\u00030\u0018H\u0002J\b\u0010\u001a\u001a\u00020\u000bH\u0002J\b\u0010\u001b\u001a\u00020\u000bH\u0002R\u001b\u0010!\u001a\u00020\u001c8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 R\u0016\u0010%\u001a\u00020\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010$¨\u0006("}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/fragment/CountUpFragment;", "Lcom/onyx/galaxy/note/common/base/BaseFragment;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", gon.f71270W, "Landroid/os/Bundle;", C1126e.f7693h, "Landroid/view/View;", "onCreateView", "view", "", "onViewCreated", "onDestroyView", "onResume", "Lcom/onyx/galaxy/note/editor/event/CounterStateChangeEvent;", NotificationCompat.CATEGORY_EVENT, "onCounterStateChangeEvent", "Lcom/onyx/android/sdk/universal/common/events/EditDoneEvent;", "onEditDoneEvent", "Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;", "recordModel", "u0", "w0", "Lio/reactivex/rxjava3/core/Observable;", "v0", "o0", "t0", "Lcom/onyx/galaxy/note/databinding/FragmentCountUpBinding;", "d1", "Lkotlin/Lazy;", "p0", "()Lcom/onyx/galaxy/note/databinding/FragmentCountUpBinding;", "binding", "", "e1", Constants.HASIDCALL_INDEX_SIG, "inputState", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class CountUpFragment extends BaseFragment {

    /* renamed from: d1, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: e1, reason: from kotlin metadata */
    public boolean inputState;

    /* renamed from: com.onyx.galaxy.note.editor.view.fragment.CountUpFragment$a */
    /* loaded from: classes9.dex */
    public static final class C12352a<T> implements Consumer {
        public C12352a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull QueryLastCountUpRecordAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CountUpFragment.this.m48320u0(it2.getRecord());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.fragment.CountUpFragment$b */
    /* loaded from: classes9.dex */
    public static final class C12353b<T, R> implements Function {
        public C12353b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CountUpFragment.this.m48321v0();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.fragment.CountUpFragment$c */
    /* loaded from: classes9.dex */
    public static final class C12354c<T> implements Consumer {

        /* renamed from: e */
        public static final C12354c<T> f60014e = new C12354c<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull CounterTaskModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CounterPreference.getCounterLastUsedPageOption$default(CounterPreference.INSTANCE, null, 1, null).put(1);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.fragment.CountUpFragment$d */
    /* loaded from: classes9.dex */
    public static final class C12355d<T, R> implements Function {

        /* renamed from: e */
        public static final C12355d<T, R> f60015e = new C12355d<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends StartCounterAction> apply(@NotNull CounterTaskModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new StartCounterAction(CounterBundle.INSTANCE.getDefaultBundle(), it2).build();
        }
    }

    public CountUpFragment() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<FragmentCountUpBinding>() { // from class: com.onyx.galaxy.note.editor.view.fragment.CountUpFragment$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final FragmentCountUpBinding invoke() {
                return FragmentCountUpBinding.inflate(LayoutInflater.from(CountUpFragment.this.getContext()));
            }
        });
        this.binding = lazy;
    }

    /* renamed from: q0 */
    public static final void m48314q0(CountUpFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FragmentKt.navigateWithAnimation$default(this$0, C10651R.id.fragment_count_up_history, (Bundle) null, 2, (Object) null);
        CounterPreference.getHasCounterNewRecordOption$default(CounterPreference.INSTANCE, false, null, 2, null).put(false);
    }

    /* renamed from: r0 */
    public static final boolean m48315r0(CountUpFragment this$0, View view, MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (!view.hasFocus()) {
            Intrinsics.checkNotNull(motionEvent);
            if (MotionEventKt.isDownAction(motionEvent)) {
                this$0.m48317o0();
                Intrinsics.checkNotNull(view);
                ViewKt.postToShowInputKeyboardWithDelay(view);
                return false;
            }
        }
        return this$0.m48318p0().edtCounterName.onTouchEvent(motionEvent);
    }

    /* renamed from: s0 */
    public static final void m48316s0(CountUpFragment this$0, View view, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (!z) {
            this$0.m48319t0();
            ViewKt.hideInputKeyboard(view);
        } else {
            this$0.m48317o0();
            GlobalBundle globalBundle = GlobalBundle.INSTANCE;
            Intrinsics.checkNotNull(view);
            globalBundle.postEvent(new EditFocusEvent(ViewKt.globalVisibleRect(view)));
        }
    }

    /* renamed from: o0 */
    public final void m48317o0() {
        if (this.inputState) {
            return;
        }
        this.inputState = true;
        GlobalBundle.INSTANCE.postEvent(new EnableCounterSettingInputEvent(true));
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onCounterStateChangeEvent(@NotNull CounterStateChangeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m48322w0();
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        View root = m48318p0().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        GlobalBundle.INSTANCE.register(this);
        return root;
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        GlobalBundle globalBundle = GlobalBundle.INSTANCE;
        globalBundle.postEvent(new EnableCounterSettingInputEvent(false));
        globalBundle.unregister(this);
        super.onDestroyView();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onEditDoneEvent(@NotNull EditDoneEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m48318p0().edtCounterName.clearFocus();
        ViewKt.hideInputKeyboard(m48318p0().edtCounterName);
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        m48322w0();
        Observable<QueryLastCountUpRecordAction> doOnNext = new QueryLastCountUpRecordAction().build().doOnNext(new C12352a());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        RxjavaKt.subscribeWithDefault$default(doOnNext, null, null, null, 7, null);
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    @SuppressLint({"ClickableViewAccessibility"})
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        m48322w0();
        TintRelativeLayout rlTimerHistoryRecord = m48318p0().rlTimerHistoryRecord;
        Intrinsics.checkNotNullExpressionValue(rlTimerHistoryRecord, "rlTimerHistoryRecord");
        com.onyx.android.sdk.extension.ViewKt.click$default(rlTimerHistoryRecord, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.ude
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                CountUpFragment.m48314q0(CountUpFragment.this, view2);
            }
        }, 1, null);
        m48318p0().edtCounterName.setFilters(new InputFilter.LengthFilter[]{new InputFilter.LengthFilter(ResManager.INSTANCE.getInteger(C10651R.integer.counter_name_max_length))});
        m48318p0().edtCounterName.setOnTouchListener(new View.OnTouchListener() { // from class: com.sunia.HTREnginev2.vde
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view2, MotionEvent motionEvent) {
                boolean m48315r0;
                m48315r0 = CountUpFragment.m48315r0(CountUpFragment.this, view2, motionEvent);
                return m48315r0;
            }
        });
        m48318p0().edtCounterName.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.sunia.HTREnginev2.wde
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view2, boolean z) {
                CountUpFragment.m48316s0(CountUpFragment.this, view2, z);
            }
        });
        TintTextView tvStart = m48318p0().tvStart;
        Intrinsics.checkNotNullExpressionValue(tvStart, "tvStart");
        RxView.clicks(tvStart).flatMap(new C12353b()).subscribe();
        m48318p0().tvCounter.refresh();
    }

    /* renamed from: p0 */
    public final FragmentCountUpBinding m48318p0() {
        return (FragmentCountUpBinding) this.binding.getValue();
    }

    /* renamed from: t0 */
    public final void m48319t0() {
        this.inputState = false;
        GlobalBundle.INSTANCE.postEvent(new EnableCounterSettingInputEvent(false));
    }

    /* renamed from: u0 */
    public final void m48320u0(CounterRecordModel recordModel) {
        if (recordModel == null) {
            ViewKt.setViewVisibleOrInvisible(m48318p0().tvLastCount, false);
            return;
        }
        ViewKt.setViewVisibleOrInvisible(m48318p0().tvLastCount, true);
        TintTextView tintTextView = m48318p0().tvLastCount;
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format(Locale.getDefault(), ResManager.INSTANCE.getStringSafely(C10651R.string.counter_task_last_count_up_time), Arrays.copyOf(new Object[]{DateTimeUtil.formatDurationSecondExact$default(DateTimeUtil.INSTANCE, recordModel.getDuration(), false, null, null, 12, null)}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        tintTextView.setText(format);
    }

    /* renamed from: v0 */
    public final Observable<?> m48321v0() {
        CounterTaskModel counterTaskModel = new CounterTaskModel();
        counterTaskModel.setTitle(m48318p0().edtCounterName.getText().toString());
        counterTaskModel.setType(CounterType.COUNT_UP.ordinal());
        Observable<?> flatMap = Observable.just(counterTaskModel).doOnNext(C12354c.f60014e).flatMap(C12355d.f60015e);
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: w0 */
    public final void m48322w0() {
        ViewKt.setViewVisibleOrGone(m48318p0().ivNewRecordIndicator, CounterPreference.getHasCounterNewRecordOption$default(CounterPreference.INSTANCE, false, null, 2, null).get());
        m48318p0().tvCounter.refresh();
    }
}
