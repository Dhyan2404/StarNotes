package com.onyx.galaxy.note.editor.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.p039ui.wheelview.NumericWheelAdapter;
import com.onyx.android.sdk.p039ui.wheelview.WheelView;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.databinding.LayoutTimePickerViewBinding;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u00103\u001a\u000202\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0012¢\u0006\u0004\b4\u00105J\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0002J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0016J\b\u0010\u000b\u001a\u00020\u0005H\u0016J\u0010\u0010\r\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\tH\u0016J\b\u0010\u000e\u001a\u00020\u0005H\u0002J\b\u0010\u000f\u001a\u00020\u0005H\u0002J\b\u0010\u0010\u001a\u00020\u0005H\u0002J\b\u0010\u0011\u001a\u00020\u0005H\u0002R\u0016\u0010\u0015\u001a\u0004\u0018\u00010\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u001b\u0010\u001b\u001a\u00020\u00168BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\u0014\u0010\u001f\u001a\u00020\u001c8\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0016\u0010#\u001a\u00020 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"R:\u0010,\u001a\u001a\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020\u00050$8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R\u0014\u0010/\u001a\u00020\u001c8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b-\u0010.R\u0014\u00101\u001a\u00020\u001c8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b0\u0010.¨\u00066"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/TimePickerView;", "Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;", "", "getSelectedDuration", "duration", "", "setDuration", "Landroid/view/MotionEvent;", "ev", "", "dispatchTouchEvent", "tint", "enabled", "setEnabled", "b", "c", "e", "d", "Landroid/util/AttributeSet;", C6999h.f39688c, "Landroid/util/AttributeSet;", "attributeSet", "Lcom/onyx/galaxy/note/databinding/LayoutTimePickerViewBinding;", "i", "Lkotlin/Lazy;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/LayoutTimePickerViewBinding;", "binding", "", "j", "I", "visibleItemCount", "", C4921e.f26537n, "F", "disabledAlpha", "Lkotlin/Function3;", "", "l", "Lkotlin/jvm/functions/Function3;", "getTimeUpdateCallback", "()Lkotlin/jvm/functions/Function3;", "setTimeUpdateCallback", "(Lkotlin/jvm/functions/Function3;)V", "timeUpdateCallback", "getCenterTextColor", "()I", "centerTextColor", "getOutTextColor", "outTextColor", "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class TimePickerView extends TintFrameLayout {

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public final AttributeSet attributeSet;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: j, reason: from kotlin metadata */
    public final int visibleItemCount;

    /* renamed from: k, reason: from kotlin metadata */
    public float disabledAlpha;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public Function3<? super String, ? super String, ? super String, Unit> timeUpdateCallback;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TimePickerView(@NotNull final Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        this.attributeSet = attributeSet;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<LayoutTimePickerViewBinding>() { // from class: com.onyx.galaxy.note.editor.view.TimePickerView$binding$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final LayoutTimePickerViewBinding invoke() {
                return LayoutTimePickerViewBinding.inflate(LayoutInflater.from(context), this, false);
            }
        });
        this.binding = lazy;
        this.visibleItemCount = 5;
        this.disabledAlpha = 1.0f;
        this.timeUpdateCallback = new Function3<String, String, String, Unit>() { // from class: com.onyx.galaxy.note.editor.view.TimePickerView$timeUpdateCallback$1
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull String str, @NotNull String str2, @NotNull String str3) {
                Intrinsics.checkNotNullParameter(str, "<anonymous parameter 0>");
                Intrinsics.checkNotNullParameter(str2, "<anonymous parameter 1>");
                Intrinsics.checkNotNullParameter(str3, "<anonymous parameter 2>");
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(String str, String str2, String str3) {
                invoke2(str, str2, str3);
                return Unit.INSTANCE;
            }
        };
        m47439b();
        addView(getBinding().getRoot());
        m47440c();
    }

    private final LayoutTimePickerViewBinding getBinding() {
        return (LayoutTimePickerViewBinding) this.binding.getValue();
    }

    private final int getCenterTextColor() {
        return -16777216;
    }

    private final int getOutTextColor() {
        return ThemeUtils.getColorById(C7996R.color.theme_text_color_03);
    }

    /* renamed from: b */
    public final void m47439b() {
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(this.attributeSet, C10651R.styleable.TimePickerView);
        Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "obtainStyledAttributes(...)");
        this.disabledAlpha = obtainStyledAttributes.getFloat(C10651R.styleable.TimePickerView_disabled_alpha, this.disabledAlpha);
        obtainStyledAttributes.recycle();
    }

    /* renamed from: c */
    public final void m47440c() {
        int i = this.visibleItemCount;
        m47442e();
        WheelView wheelView = getBinding().wvHour;
        wheelView.setAlphaGradient(true);
        wheelView.setCyclic(false);
        ResManager resManager = ResManager.INSTANCE;
        wheelView.setLabel(resManager.getString(C10651R.string.counter_label_hour));
        wheelView.isCenterLabel(true);
        wheelView.setItemsVisibleCount(i);
        wheelView.setOnItemSelectedListener(new WheelView.OnItemSelectedListener() { // from class: com.onyx.galaxy.note.editor.view.TimePickerView$initView$1$1
            @Override // com.onyx.android.sdk.ui.wheelview.WheelView.OnItemSelectedListener
            public void onItemSelected(int index) {
                TimePickerView.this.m47441d();
            }
        });
        WheelView wheelView2 = getBinding().wvMinute;
        wheelView2.setAlphaGradient(true);
        wheelView2.setCyclic(false);
        wheelView2.setLabel(resManager.getString(C10651R.string.counter_label_minute));
        wheelView2.isCenterLabel(true);
        wheelView2.setItemsVisibleCount(i);
        wheelView2.setOnItemSelectedListener(new WheelView.OnItemSelectedListener() { // from class: com.onyx.galaxy.note.editor.view.TimePickerView$initView$2$1
            @Override // com.onyx.android.sdk.ui.wheelview.WheelView.OnItemSelectedListener
            public void onItemSelected(int index) {
                TimePickerView.this.m47441d();
            }
        });
        WheelView wheelView3 = getBinding().wvSecond;
        wheelView3.setAlphaGradient(true);
        wheelView3.setCyclic(false);
        wheelView3.setLabel(resManager.getString(C10651R.string.counter_label_second));
        wheelView3.isCenterLabel(true);
        wheelView3.setItemsVisibleCount(i);
        wheelView3.setOnItemSelectedListener(new WheelView.OnItemSelectedListener() { // from class: com.onyx.galaxy.note.editor.view.TimePickerView$initView$3$1
            @Override // com.onyx.android.sdk.ui.wheelview.WheelView.OnItemSelectedListener
            public void onItemSelected(int index) {
                TimePickerView.this.m47441d();
            }
        });
        getBinding().wvHour.setAdapter(new NumericWheelAdapter(0, 23));
        getBinding().wvMinute.setAdapter(new NumericWheelAdapter(0, 59));
        getBinding().wvSecond.setAdapter(new NumericWheelAdapter(0, 59));
    }

    /* renamed from: d */
    public final void m47441d() {
        this.timeUpdateCallback.invoke(getBinding().wvHour.getCurrentItemText(), getBinding().wvMinute.getCurrentItemText(), getBinding().wvSecond.getCurrentItemText());
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(@NotNull MotionEvent ev) {
        Intrinsics.checkNotNullParameter(ev, "ev");
        if (isEnabled()) {
            return super.dispatchTouchEvent(ev);
        }
        return false;
    }

    /* renamed from: e */
    public final void m47442e() {
        getBinding().wvHour.setTextColorOut(getOutTextColor());
        getBinding().wvHour.setTextColorCenter(getCenterTextColor());
        getBinding().wvMinute.setTextColorOut(getOutTextColor());
        getBinding().wvMinute.setTextColorCenter(getCenterTextColor());
        getBinding().wvSecond.setTextColorOut(getOutTextColor());
        getBinding().wvSecond.setTextColorCenter(getCenterTextColor());
    }

    public final long getSelectedDuration() {
        return TimeUnit.HOURS.toMillis(getBinding().wvHour.getCurrentItem()) + TimeUnit.MINUTES.toMillis(getBinding().wvMinute.getCurrentItem()) + TimeUnit.SECONDS.toMillis(getBinding().wvSecond.getCurrentItem());
    }

    @NotNull
    public final Function3<String, String, String, Unit> getTimeUpdateCallback() {
        return this.timeUpdateCallback;
    }

    public final void setDuration(long duration) {
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        long hours = timeUnit.toHours(duration);
        long minutes = timeUnit.toMinutes(duration);
        long seconds = timeUnit.toSeconds(duration);
        getBinding().wvHour.setCurrentItem(((int) hours) % 24);
        getBinding().wvMinute.setCurrentItem(((int) minutes) % 60);
        getBinding().wvSecond.setCurrentItem(((int) seconds) % 60);
        m47441d();
    }

    @Override // android.view.View
    public void setEnabled(boolean enabled) {
        setAlpha(enabled ? 1.0f : this.disabledAlpha);
        super.setEnabled(enabled);
    }

    public final void setTimeUpdateCallback(@NotNull Function3<? super String, ? super String, ? super String, Unit> function3) {
        Intrinsics.checkNotNullParameter(function3, "<set-?>");
        this.timeUpdateCallback = function3;
    }

    @Override // com.onyx.android.sdk.theme.widgets.TintFrameLayout, com.onyx.android.sdk.theme.widgets.Tintable
    public void tint() {
        m47442e();
        super.tint();
    }
}
