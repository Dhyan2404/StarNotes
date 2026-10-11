package com.onyx.galaxy.note.editor.view;

import android.R;
import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.icu.text.DecimalFormat;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import androidx.core.app.NotificationCompat;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.MotionEventKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.p018rx.RxFilter;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.p039ui.CommonDialog;
import com.onyx.android.sdk.replicator.counter.data.CounterState;
import com.onyx.android.sdk.replicator.counter.data.CounterType;
import com.onyx.android.sdk.replicator.counter.model.CounterTaskModel;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.databinding.LayoutCounterViewBinding;
import com.onyx.galaxy.note.editor.action.counter.ResetCounterAction;
import com.onyx.galaxy.note.editor.action.counter.SegmentCounterAction;
import com.onyx.galaxy.note.editor.action.counter.StopCounterAction;
import com.onyx.galaxy.note.editor.data.CounterEntry;
import com.onyx.galaxy.note.editor.data.CounterEntryState;
import com.onyx.galaxy.note.editor.data.CounterTimerHandler;
import com.onyx.galaxy.note.editor.p046ui.CounterBundle;
import com.onyx.galaxy.note.editor.view.CounterView;
import com.onyx.galaxy.note.utils.CounterUtils;
import com.sun.org.apache.bcel.internal.Constants;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Consumer;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u009a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0002YZB\u001f\u0012\u0006\u0010-\u001a\u00020*\u0012\u0006\u00101\u001a\u00020.\u0012\u0006\u0010U\u001a\u00020T¢\u0006\u0004\bV\u0010WB\u0011\b\u0016\u0012\u0006\u0010U\u001a\u00020T¢\u0006\u0004\bV\u0010XJ\b\u0010\u0004\u001a\u00020\u0003H\u0002J\b\u0010\u0005\u001a\u00020\u0003H\u0002J\b\u0010\u0006\u001a\u00020\u0003H\u0002J\b\u0010\u0007\u001a\u00020\u0003H\u0002J\b\u0010\b\u001a\u00020\u0003H\u0002J\b\u0010\t\u001a\u00020\u0003H\u0002J\b\u0010\n\u001a\u00020\u0003H\u0002J\u0010\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u000bH\u0002J\b\u0010\u000f\u001a\u00020\u0003H\u0002J\b\u0010\u0010\u001a\u00020\u0003H\u0002J\b\u0010\u0011\u001a\u00020\u0003H\u0002J\b\u0010\u0012\u001a\u00020\u0003H\u0002J\b\u0010\u0013\u001a\u00020\u0003H\u0002J\b\u0010\u0014\u001a\u00020\u0003H\u0002J\b\u0010\u0015\u001a\u00020\u0003H\u0014J\b\u0010\u0016\u001a\u00020\u0003H\u0014J\u000e\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0018\u001a\u00020\u0017J\u000e\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\u001bJ\u000e\u0010\u001f\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00020\u0019J\u0006\u0010 \u001a\u00020\u0003J\u0006\u0010!\u001a\u00020\u0003J\u0006\u0010\"\u001a\u00020\u0019J\u000e\u0010%\u001a\u00020\u00032\u0006\u0010$\u001a\u00020#J\b\u0010&\u001a\u00020\u0003H\u0016J\u0010\u0010)\u001a\u00020\u00032\u0006\u0010(\u001a\u00020'H\u0016R\u0014\u0010-\u001a\u00020*8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u0010,R\u0014\u00101\u001a\u00020.8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b/\u00100R\u001b\u00106\u001a\u0002028BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0006\u00103\u001a\u0004\b4\u00105R\u0014\u00109\u001a\u0002078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u00108R\u0016\u0010<\u001a\u00020:8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0005\u0010;R\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b=\u0010>R\u0016\u0010A\u001a\u00020#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u0010@R\u0018\u0010E\u001a\u0004\u0018\u00010B8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bC\u0010DR\u001a\u0010J\u001a\b\u0012\u0004\u0012\u00020G0F8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bH\u0010IR\u001b\u0010O\u001a\u00020K8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bL\u00103\u001a\u0004\bM\u0010NR\u0014\u0010S\u001a\u00020P8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bQ\u0010R¨\u0006["}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/CounterView;", "Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;", "Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler$CounterListener;", "", "r", "l", "j", "B", "s", "w", "u", "", "res", "Landroid/graphics/drawable/StateListDrawable;", C4921e.f26537n, "y", "A", "z", "E", SardineUtil.DEFAULT_NAMESPACE_PREFIX, BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "onAttachedToWindow", "onDetachedFromWindow", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "", "interceptTouchEventIf", "Lcom/onyx/galaxy/note/editor/view/CounterView$Callback;", "callback", "setCallback", "isExpand", "setInitState", "toggleState", "refreshUI", "isExpanded", "Landroid/graphics/Rect;", "rect", "updateVisibleRect", "tint", "", NotificationCompat.CarExtender.f4980p, "onTick", "Lcom/onyx/galaxy/note/editor/ui/CounterBundle;", C6999h.f39688c, "Lcom/onyx/galaxy/note/editor/ui/CounterBundle;", "counterBundle", "Lcom/onyx/galaxy/note/editor/data/CounterEntry;", "i", "Lcom/onyx/galaxy/note/editor/data/CounterEntry;", "counterEntry", "Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;", "Lkotlin/Lazy;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;", "binding", "Lcom/onyx/galaxy/note/editor/view/CircleProgressDrawable;", "Lcom/onyx/galaxy/note/editor/view/CircleProgressDrawable;", "counterProgressDrawable", "Lcom/onyx/galaxy/note/editor/view/CounterView$CounterViewState;", "Lcom/onyx/galaxy/note/editor/view/CounterView$CounterViewState;", "state", "m", "Lcom/onyx/galaxy/note/editor/view/CounterView$Callback;", GoogleApiAvailabilityLight.f29016b, "Landroid/graphics/Rect;", "visibleRect", "Lio/reactivex/rxjava3/disposables/Disposable;", C4921e.f26528e, "Lio/reactivex/rxjava3/disposables/Disposable;", "segmentCounterDisposable", "Lcom/onyx/android/sdk/base/rx/RxFilter;", "", "p", "Lcom/onyx/android/sdk/base/rx/RxFilter;", "collapseTimeListFilter", "Ljava/lang/Runnable;", "q", "getRefreshSplitTimeButtonRunnable", "()Ljava/lang/Runnable;", "refreshSplitTimeButtonRunnable", "Lcom/onyx/galaxy/note/editor/data/CounterEntryState;", "getEntryState", "()Lcom/onyx/galaxy/note/editor/data/CounterEntryState;", "entryState", "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/editor/ui/CounterBundle;Lcom/onyx/galaxy/note/editor/data/CounterEntry;Landroid/content/Context;)V", "(Landroid/content/Context;)V", "Callback", "CounterViewState", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class CounterView extends TintFrameLayout implements CounterTimerHandler.CounterListener {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final CounterBundle counterBundle;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final CounterEntry counterEntry;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final CircleProgressDrawable counterProgressDrawable;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public CounterViewState state;

    /* renamed from: m, reason: from kotlin metadata */
    @Nullable
    public Callback callback;

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public Rect visibleRect;

    /* renamed from: o, reason: from kotlin metadata */
    @Nullable
    public Disposable segmentCounterDisposable;

    /* renamed from: p, reason: from kotlin metadata */
    @NotNull
    public final RxFilter<Object> collapseTimeListFilter;

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public final Lazy refreshSplitTimeButtonRunnable;

    @Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/CounterView$Callback;", "", "onExpandStateChanged", "", "isExpand", "", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public interface Callback {
        void onExpandStateChanged(boolean isExpand);
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0082\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/CounterView$CounterViewState;", "", "(Ljava/lang/String;I)V", "COLLAPSE", "EXPAND", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public static final class CounterViewState {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ CounterViewState[] $VALUES;
        public static final CounterViewState COLLAPSE = new CounterViewState("COLLAPSE", 0);
        public static final CounterViewState EXPAND = new CounterViewState("EXPAND", 1);

        private static final /* synthetic */ CounterViewState[] $values() {
            return new CounterViewState[]{COLLAPSE, EXPAND};
        }

        static {
            CounterViewState[] $values = $values();
            $VALUES = $values;
            $ENTRIES = EnumEntriesKt.enumEntries($values);
        }

        private CounterViewState(String str, int i) {
        }

        @NotNull
        public static EnumEntries<CounterViewState> getEntries() {
            return $ENTRIES;
        }

        public static CounterViewState valueOf(String str) {
            return (CounterViewState) Enum.valueOf(CounterViewState.class, str);
        }

        public static CounterViewState[] values() {
            return (CounterViewState[]) $VALUES.clone();
        }
    }

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[CounterState.values().length];
            try {
                iArr[CounterState.STATE_IDLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CounterState.STATE_RUNNING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[CounterState.STATE_PAUSE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[CounterViewState.values().length];
            try {
                iArr2[CounterViewState.EXPAND.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[CounterViewState.COLLAPSE.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.CounterView$a */
    /* loaded from: classes9.dex */
    public static final class C12234a<T> implements Consumer {
        public C12234a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            if (CounterView.this.getBinding().counterTimeList.isEnableAutoCollapse()) {
                CounterView.this.getBinding().counterTimeList.setExpand(false);
            }
            CounterView.this.refreshUI();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.CounterView$b */
    /* loaded from: classes9.dex */
    public static final class C12235b<T> implements Consumer {
        public C12235b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull SegmentCounterAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CounterView.this.getBinding().tvSplitTime.setText(new DecimalFormat("00").format(Integer.valueOf(CounterView.this.getEntryState().getCountTimes())));
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.CounterView$c */
    /* loaded from: classes9.dex */
    public static final class C12236c<T> implements Consumer {
        public C12236c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull SegmentCounterAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CounterView.this.getBinding().counterTimeList.updateData();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.CounterView$d */
    /* loaded from: classes9.dex */
    public static final class C12237d<T> implements Consumer {
        public C12237d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull SegmentCounterAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CounterView.this.m47124j();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CounterView(@NotNull CounterBundle counterBundle, @NotNull CounterEntry counterEntry, @NotNull final Context context) {
        super(context);
        Lazy lazy;
        Lazy lazy2;
        Intrinsics.checkNotNullParameter(counterBundle, "counterBundle");
        Intrinsics.checkNotNullParameter(counterEntry, "counterEntry");
        Intrinsics.checkNotNullParameter(context, "context");
        this.counterBundle = counterBundle;
        this.counterEntry = counterEntry;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<LayoutCounterViewBinding>() { // from class: com.onyx.galaxy.note.editor.view.CounterView$binding$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final LayoutCounterViewBinding invoke() {
                return LayoutCounterViewBinding.inflate(LayoutInflater.from(context), this, false);
            }
        });
        this.binding = lazy;
        this.counterProgressDrawable = new CircleProgressDrawable();
        this.state = CounterViewState.COLLAPSE;
        this.visibleRect = new Rect();
        RxFilter<Object> rxFilter = new RxFilter<>();
        this.collapseTimeListFilter = rxFilter;
        lazy2 = LazyKt__LazyJVMKt.lazy(new CounterView$refreshSplitTimeButtonRunnable$2(this));
        this.refreshSplitTimeButtonRunnable = lazy2;
        addView(getBinding().getRoot());
        m47127r();
        m47131y();
        m47126l();
        refreshUI();
        rxFilter.subscribeDebounce(ResManager.INSTANCE.getLong(C10651R.integer.counter_count_up_segment_auto_collapse_delay), new C12234a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final LayoutCounterViewBinding getBinding() {
        return (LayoutCounterViewBinding) this.binding.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CounterEntryState getEntryState() {
        return this.counterEntry.getEntryState();
    }

    private final Runnable getRefreshSplitTimeButtonRunnable() {
        return (Runnable) this.refreshSplitTimeButtonRunnable.getValue();
    }

    /* renamed from: m */
    public static final void m47111m(CounterView this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.toggleState();
    }

    /* renamed from: n */
    public static final void m47112n(CounterView this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.toggleState();
    }

    /* renamed from: o */
    public static final void m47113o(CounterView this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.getEntryState().getCountTimes() >= ResManager.INSTANCE.getInteger(C10651R.integer.counter_count_up_max_segment) - 1) {
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.counter_segment_exceed_limit, false, 2, (Object) null);
        } else if (RxjavaKt.isDisposed(this$0.segmentCounterDisposable)) {
            Observable<SegmentCounterAction> doOnNext = new SegmentCounterAction(this$0.counterEntry).build().doOnNext(new C12235b()).doOnNext(new C12236c()).doOnNext(new C12237d());
            Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
            this$0.segmentCounterDisposable = RxjavaKt.subscribeWithDefault$default(doOnNext, null, null, null, 7, null);
        }
    }

    /* renamed from: p */
    public static final void m47114p(final CounterView this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Context context = this$0.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        new CommonDialog.Builder(context).setWarning(true).setTitle(C10651R.string.hint).setMessage(C10651R.string.counter_reset_warning).setConfirmCallback(new Function2<CommonDialog, String, Unit>() { // from class: com.onyx.galaxy.note.editor.view.CounterView$initEvent$4$1

            /* renamed from: com.onyx.galaxy.note.editor.view.CounterView$initEvent$4$1$a */
            /* loaded from: classes9.dex */
            public static final class C12238a<T> implements Consumer {

                /* renamed from: e */
                public final /* synthetic */ CounterView f59245e;

                public C12238a(CounterView counterView) {
                    this.f59245e = counterView;
                }

                @Override // io.reactivex.rxjava3.functions.Consumer
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final void accept(@NotNull ResetCounterAction it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    this.f59245e.getBinding().counterTimeList.resetState();
                }
            }

            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(CommonDialog commonDialog, String str) {
                invoke2(commonDialog, str);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull CommonDialog commonDialog, @NotNull String str) {
                CounterEntry counterEntry;
                Intrinsics.checkNotNullParameter(commonDialog, "<anonymous parameter 0>");
                Intrinsics.checkNotNullParameter(str, "<anonymous parameter 1>");
                counterEntry = CounterView.this.counterEntry;
                Observable<ResetCounterAction> doOnNext = new ResetCounterAction(counterEntry).build().doOnNext(new C12238a(CounterView.this));
                Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
                RxjavaKt.subscribeWithDefault$default(doOnNext, null, null, null, 7, null);
            }
        }).create().show();
    }

    /* renamed from: q */
    public static final void m47115q(final CounterView this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Context context = this$0.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        new CommonDialog.Builder(context).setWarning(true).setTitle(C10651R.string.hint).setMessage(C10651R.string.counter_shutdown_warning).setConfirmCallback(new Function2<CommonDialog, String, Unit>() { // from class: com.onyx.galaxy.note.editor.view.CounterView$initEvent$5$1
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(CommonDialog commonDialog, String str) {
                invoke2(commonDialog, str);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull CommonDialog commonDialog, @NotNull String str) {
                CounterBundle counterBundle;
                CounterEntry counterEntry;
                Intrinsics.checkNotNullParameter(commonDialog, "<anonymous parameter 0>");
                Intrinsics.checkNotNullParameter(str, "<anonymous parameter 1>");
                counterBundle = CounterView.this.counterBundle;
                counterEntry = CounterView.this.counterEntry;
                RxBaseAction.execute$default(new StopCounterAction(counterBundle, counterEntry, false, true, 4, null), null, null, null, 7, null);
            }
        }).create().show();
    }

    /* renamed from: t */
    public static final void m47116t(CounterView this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.counterEntry.start();
        this$0.m47131y();
    }

    /* renamed from: v */
    public static final void m47117v(CounterView this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.counterEntry.resume();
        this$0.m47131y();
    }

    /* renamed from: x */
    public static final void m47118x(CounterView this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.counterEntry.pause();
        this$0.m47131y();
    }

    /* renamed from: A */
    public final void m47119A() {
        getBinding().counterTimeList.setVisible(true);
        getBinding().tvCollapseCounting.stop();
        ViewKt.setViewVisibleOrGone(getBinding().flCollapse, false);
        ViewKt.setViewVisibleOrGone(getBinding().ctlExpand, true);
        getBinding().tvCollapseCounting.setBackground(null);
        getBinding().flControl.setBackground(null);
        getBinding().flControl.setBackground(this.counterProgressDrawable);
        CountingTextView countingTextView = getBinding().tvExpandCounting;
        countingTextView.setCountUp(this.counterEntry.isCountUp());
        countingTextView.startCount(this.counterEntry);
        countingTextView.refresh();
        refreshUI();
    }

    /* renamed from: B */
    public final void m47120B() {
        getBinding().tvSplitTime.setEnabled(this.counterEntry.isCounting());
        getBinding().tvReset.setEnabled(this.counterEntry.hasStart());
        if (this.counterEntry.isCountUp()) {
            getBinding().tvSplitTime.setText(ResManager.INSTANCE.getString(C10651R.string.counter_split_time));
        }
        m47122D();
        int i = WhenMappings.$EnumSwitchMapping$0[getEntryState().getState().ordinal()];
        if (i == 1) {
            m47128s();
        } else if (i == 2) {
            m47130w();
        } else {
            if (i != 3) {
                return;
            }
            m47129u();
        }
    }

    /* renamed from: C */
    public final void m47121C() {
        if (this.counterEntry.isMultipleCountDown()) {
            this.counterProgressDrawable.setProgress(1.0f - this.counterEntry.getCurrentCountPercent());
        } else {
            this.counterProgressDrawable.setProgress(1.0f - this.counterEntry.getCountPercent());
        }
        m47122D();
    }

    /* renamed from: D */
    public final void m47122D() {
        CounterTaskModel taskModel = this.counterEntry.getTaskModel();
        CounterUtils counterUtils = CounterUtils.INSTANCE;
        String formatedTaskName = counterUtils.getFormatedTaskName(taskModel);
        if (!this.counterEntry.isMultipleCountDown() || !this.counterEntry.hasStart()) {
            getBinding().tvCountName.setText(formatedTaskName);
            return;
        }
        CounterTaskModel.CountTimeSetting currentTimeSetting = this.counterEntry.getCurrentTimeSetting();
        TintTextView tintTextView = getBinding().tvCountName;
        if (currentTimeSetting != null) {
            formatedTaskName = formatedTaskName + ": " + counterUtils.getFormatedSegmentName(taskModel.getCountList(), getEntryState().getCountTimes());
        }
        tintTextView.setText(formatedTaskName);
    }

    /* renamed from: E */
    public final void m47123E() {
        int i;
        long duration;
        if (this.counterEntry.hasStart() || this.counterEntry.isCounting()) {
            CounterTaskModel.CountTimeSetting currentTimeSetting = this.counterEntry.getCurrentTimeSetting();
            if (currentTimeSetting == null) {
                i = 0;
                getBinding().tvCollapseCounting.setTotalCountTime(i);
                getBinding().tvExpandCounting.setTotalCountTime(i);
            }
            duration = currentTimeSetting.getDuration();
        } else {
            duration = this.counterEntry.getTaskModel().getDuration();
        }
        i = (int) duration;
        getBinding().tvCollapseCounting.setTotalCountTime(i);
        getBinding().tvExpandCounting.setTotalCountTime(i);
    }

    public final boolean interceptTouchEventIf(@NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.collapseTimeListFilter.onNext(event);
        if (MotionEventKt.isDownAction(event) && ViewKt.isVisible(getBinding().counterTimeList)) {
            return getBinding().counterTimeList.interceptTouchEventIf(event);
        }
        return false;
    }

    public final boolean isExpanded() {
        return this.state == CounterViewState.EXPAND;
    }

    /* renamed from: j */
    public final void m47124j() {
        this.collapseTimeListFilter.onNext(new Object());
        getHandler().removeCallbacks(getRefreshSplitTimeButtonRunnable());
        getHandler().postDelayed(getRefreshSplitTimeButtonRunnable(), ResManager.INSTANCE.getLong(C10651R.integer.counter_count_up_segment_refresh_delay));
    }

    /* renamed from: k */
    public final StateListDrawable m47125k(int res) {
        Drawable mutate = ThemeUtils.getThemeDrawable(res).mutate();
        Intrinsics.checkNotNullExpressionValue(mutate, "mutate(...)");
        mutate.setAlpha(128);
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{R.attr.state_pressed}, mutate);
        stateListDrawable.addState(new int[]{R.attr.state_enabled}, ThemeUtils.getThemeDrawable(res).mutate());
        return stateListDrawable;
    }

    /* renamed from: l */
    public final void m47126l() {
        getBinding().flCollapse.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.ffe
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CounterView.m47111m(CounterView.this, view);
            }
        });
        getBinding().ivCollapse.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.gfe
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CounterView.m47112n(CounterView.this, view);
            }
        });
        getBinding().tvSplitTime.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.hfe
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CounterView.m47113o(CounterView.this, view);
            }
        });
        TintTextView tvReset = getBinding().tvReset;
        Intrinsics.checkNotNullExpressionValue(tvReset, "tvReset");
        com.onyx.android.sdk.extension.ViewKt.click$default(tvReset, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.ife
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CounterView.m47114p(CounterView.this, view);
            }
        }, 1, null);
        TintTextView tvShutdown = getBinding().tvShutdown;
        Intrinsics.checkNotNullExpressionValue(tvShutdown, "tvShutdown");
        com.onyx.android.sdk.extension.ViewKt.click$default(tvShutdown, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.jfe
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CounterView.m47115q(CounterView.this, view);
            }
        }, 1, null);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.counterEntry.getTimerHandler().registerListener(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        this.counterEntry.getTimerHandler().unregisterListener(this);
        this.callback = null;
        super.onDetachedFromWindow();
    }

    @Override // com.onyx.galaxy.note.editor.data.CounterTimerHandler.CounterListener
    public void onTick(long timestamp) {
        CounterTimerHandler.CounterListener.DefaultImpls.onTick(this, timestamp);
        if (this.counterEntry.isCountUp()) {
            return;
        }
        m47123E();
        m47121C();
    }

    /* renamed from: r */
    public final void m47127r() {
        getBinding().counterTimeList.setCounterEntry(this.counterEntry);
    }

    public final void refreshUI() {
        getBinding().tvSplitTime.setTextColor(ThemeUtils.getThemeColorStateList(ResManager.INSTANCE.getContext(), C10651R.color.selector_color_enabled_black_gray));
        ViewKt.setViewVisibleOrGone(getBinding().tvSplitTime, this.counterEntry.getTaskModel().getType() == CounterType.COUNT_UP.ordinal());
        m47120B();
        m47123E();
        getBinding().tvExpandCounting.refresh();
        getBinding().tvCollapseCounting.refresh();
        getBinding().counterTimeList.updateData();
        m47121C();
    }

    /* renamed from: s */
    public final void m47128s() {
        getBinding().tvControl.setText(C10651R.string.counter_enable);
        getBinding().tvControl.setBackground(m47125k(C10651R.drawable.shape_counter_circle_button_primary_bg));
        getBinding().tvControl.setTextColor(ThemeUtils.getColorById(C7996R.color.theme_text_btn_color));
        getBinding().tvControl.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.kfe
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CounterView.m47116t(CounterView.this, view);
            }
        });
    }

    public final void setCallback(@NotNull Callback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.callback = callback;
    }

    public final void setInitState(boolean isExpand) {
        this.state = isExpand ? CounterViewState.EXPAND : CounterViewState.COLLAPSE;
        m47131y();
        Callback callback = this.callback;
        if (callback != null) {
            callback.onExpandStateChanged(isExpand);
        }
        refreshUI();
    }

    @Override // com.onyx.android.sdk.theme.widgets.TintFrameLayout, com.onyx.android.sdk.theme.widgets.Tintable
    public void tint() {
        super.tint();
        m47131y();
        refreshUI();
    }

    public final void toggleState() {
        CounterViewState counterViewState = this.state;
        CounterViewState counterViewState2 = CounterViewState.COLLAPSE;
        if (counterViewState == counterViewState2) {
            counterViewState2 = CounterViewState.EXPAND;
        }
        this.state = counterViewState2;
        m47131y();
        refreshUI();
        Callback callback = this.callback;
        if (callback != null) {
            callback.onExpandStateChanged(isExpanded());
        }
    }

    /* renamed from: u */
    public final void m47129u() {
        getBinding().tvControl.setText(C10651R.string.counter_resume);
        getBinding().tvControl.setBackground(m47125k(C10651R.drawable.shape_counter_circle_button_running_bg));
        getBinding().tvControl.setTextColor(ThemeUtils.getColorById(C7996R.color.theme_text_color_01));
        getBinding().tvControl.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.efe
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CounterView.m47117v(CounterView.this, view);
            }
        });
    }

    public final void updateVisibleRect(@NotNull Rect rect) {
        Intrinsics.checkNotNullParameter(rect, "rect");
        this.visibleRect.set(rect);
    }

    /* renamed from: w */
    public final void m47130w() {
        getBinding().tvControl.setText(C10651R.string.counter_pause);
        getBinding().tvControl.setBackground(m47125k(C10651R.drawable.shape_counter_circle_button_pause_bg));
        getBinding().tvControl.setTextColor(ThemeUtils.getColorById(C7996R.color.theme_primary_color_01));
        getBinding().tvControl.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.dfe
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CounterView.m47118x(CounterView.this, view);
            }
        });
    }

    /* renamed from: y */
    public final void m47131y() {
        int i;
        int i2;
        int i3 = WhenMappings.$EnumSwitchMapping$1[this.state.ordinal()];
        if (i3 == 1) {
            m47119A();
        } else if (i3 == 2) {
            m47132z();
        }
        this.counterProgressDrawable.setBackgroundArcColor(0);
        if (this.state == CounterViewState.COLLAPSE) {
            int i4 = WhenMappings.$EnumSwitchMapping$0[getEntryState().getState().ordinal()];
            if (i4 == 1 || i4 == 2) {
                i2 = C7996R.color.theme_bg_primary_color_01;
            } else {
                if (i4 != 3) {
                    throw new NoWhenBranchMatchedException();
                }
                i2 = C7996R.color.theme_background_color_02;
            }
            this.counterProgressDrawable.setBackgroundArcColor(ThemeUtils.getColorById(i2));
        }
        int i5 = WhenMappings.$EnumSwitchMapping$0[getEntryState().getState().ordinal()];
        if (i5 == 1 || i5 == 2) {
            i = C7996R.color.theme_primary_color_01;
        } else {
            if (i5 != 3) {
                throw new NoWhenBranchMatchedException();
            }
            i = C7996R.color.theme_text_color_01;
        }
        int colorById = ThemeUtils.getColorById(i);
        if (this.counterEntry.isCountUp()) {
            this.counterProgressDrawable.setProgressArcColor(0);
        } else {
            this.counterProgressDrawable.setProgressArcColor(colorById);
        }
        getBinding().tvCollapseCounting.setTextColor(colorById);
    }

    /* renamed from: z */
    public final void m47132z() {
        getBinding().counterTimeList.setVisible(false);
        getBinding().tvExpandCounting.stop();
        getBinding().tvCollapseCounting.setBackground(null);
        getBinding().flControl.setBackground(null);
        getBinding().tvCollapseCounting.setBackground(this.counterProgressDrawable);
        ViewKt.setViewVisibleOrGone(getBinding().flCollapse, true);
        ViewKt.setViewVisibleOrGone(getBinding().ctlExpand, false);
        CountingTextView countingTextView = getBinding().tvCollapseCounting;
        countingTextView.setCountUp(this.counterEntry.isCountUp());
        countingTextView.startCount(this.counterEntry);
        countingTextView.refresh();
        refreshUI();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CounterView(@NotNull Context context) {
        this(new CounterBundle(), new CounterEntry(new CounterTaskModel()), context);
        Intrinsics.checkNotNullParameter(context, "context");
    }
}
