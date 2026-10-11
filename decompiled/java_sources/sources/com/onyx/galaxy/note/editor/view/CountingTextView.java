package com.onyx.galaxy.note.editor.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriverConstants;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.data.CounterEntry;
import com.onyx.galaxy.note.editor.data.CounterEntryState;
import com.onyx.galaxy.note.editor.data.CounterTimerHandler;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.gon;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0010\u0007\n\u0002\b\n\n\u0002\u0010\u0015\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u0019\u0012\u0006\u0010R\u001a\u00020Q\u0012\b\u0010T\u001a\u0004\u0018\u00010S¢\u0006\u0004\bU\u0010VJ\b\u0010\u0004\u001a\u00020\u0003H\u0014J\b\u0010\u0005\u001a\u00020\u0003H\u0014J\u0010\u0010\b\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\b\u0010\t\u001a\u00020\u0003H\u0016J0\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\fH\u0014J\u001c\u0010\u0016\u001a\u00020\u00032\b\u0010\u0013\u001a\u0004\u0018\u00010\u00122\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016J\u000e\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u0017J\u0006\u0010\u001a\u001a\u00020\u0003J\u0006\u0010\u001b\u001a\u00020\u0003J\u000e\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\fJ\u000e\u0010\u001f\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00020\nJ\u0010\u0010\"\u001a\u00020!2\u0006\u0010 \u001a\u00020\u0006H\u0002J\b\u0010#\u001a\u00020\u0003H\u0002J\b\u0010$\u001a\u00020\nH\u0002J\u0010\u0010'\u001a\u00020\f2\u0006\u0010&\u001a\u00020%H\u0002J\u0018\u0010)\u001a\u00020\n2\u0006\u0010(\u001a\u00020\f2\u0006\u0010&\u001a\u00020%H\u0002J\b\u0010*\u001a\u00020!H\u0002R\u0016\u0010-\u001a\u00020!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010,R\u0016\u0010/\u001a\u00020!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010,R\u0016\u00102\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u00101R\u0016\u00104\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00101R\u0016\u00107\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u00106R\u0016\u00109\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00106R\u0016\u0010=\u001a\u00020:8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b;\u0010<R\u0016\u0010?\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b>\u00106R\u0014\u0010B\u001a\u00020%8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b@\u0010AR\u0016\u0010D\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bC\u00106R\u0016\u0010H\u001a\u00020E8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bF\u0010GR\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bI\u0010JR\u001b\u0010P\u001a\u00020K8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bL\u0010M\u001a\u0004\bN\u0010O¨\u0006W"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/CountingTextView;", "Lcom/onyx/android/sdk/theme/widgets/TintTextView;", "Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler$CounterListener;", "", "onAttachedToWindow", "onDetachedFromWindow", "", NotificationCompat.CarExtender.f4980p, "onTick", "tint", "", "changed", "", "left", OneDriverConstants.TOP, gon.f71288n0, "bottom", "onLayout", "", "text", "Landroid/widget/TextView$BufferType;", "type", "setText", "Lcom/onyx/galaxy/note/editor/data/CounterEntry;", "counterEntry", "startCount", "stop", "refresh", "total", "setTotalCountTime", "countUp", "setCountUp", "mills", "", "c", "d", "a", "Landroid/graphics/RectF;", "availableSpace", "b", "suggestedSizeInPx", C6997f.f39671c, "e", C6999h.f39688c, Constants.STRING_SIG, "shortTimeFormat", "i", "longTimeFormat", "j", Constants.HASIDCALL_INDEX_SIG, "isCountUp", C4921e.f26537n, "isEnableAutoSize", "l", "I", "autoSizeMin", "m", "autoSizeMax", "", GoogleApiAvailabilityLight.f29016b, "F", "autoSizeStep", C4921e.f26528e, "currentTextLength", "p", "Landroid/graphics/RectF;", "tempRect", "q", "totalCountTime", "", "r", Constants.TYPES_INDEX_SIG, "autoSizeTextSizesInPx", "s", "Lcom/onyx/galaxy/note/editor/data/CounterEntry;", "Landroid/text/TextPaint;", "t", "Lkotlin/Lazy;", "getMeasureTextPaint", "()Landroid/text/TextPaint;", "measureTextPaint", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attributeSet", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class CountingTextView extends TintTextView implements CounterTimerHandler.CounterListener {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public String shortTimeFormat;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public String longTimeFormat;

    /* renamed from: j, reason: from kotlin metadata */
    public boolean isCountUp;

    /* renamed from: k, reason: from kotlin metadata */
    public boolean isEnableAutoSize;

    /* renamed from: l, reason: from kotlin metadata */
    public int autoSizeMin;

    /* renamed from: m, reason: from kotlin metadata */
    public int autoSizeMax;

    /* renamed from: n, reason: from kotlin metadata */
    public float autoSizeStep;

    /* renamed from: o, reason: from kotlin metadata */
    public int currentTextLength;

    /* renamed from: p, reason: from kotlin metadata */
    @NotNull
    public final RectF tempRect;

    /* renamed from: q, reason: from kotlin metadata */
    public int totalCountTime;

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public int[] autoSizeTextSizesInPx;

    /* renamed from: s, reason: from kotlin metadata */
    @Nullable
    public CounterEntry counterEntry;

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public final Lazy measureTextPaint;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CountingTextView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        ResManager resManager = ResManager.INSTANCE;
        String string = resManager.getString(C10651R.string.duration_format_short_with_space);
        this.shortTimeFormat = string == null ? "" : string;
        String string2 = resManager.getString(C10651R.string.duration_format);
        this.longTimeFormat = string2 != null ? string2 : "";
        this.isCountUp = true;
        this.autoSizeMin = -1;
        this.autoSizeMax = -1;
        this.autoSizeStep = 1.0f;
        this.currentTextLength = -1;
        this.tempRect = new RectF();
        this.autoSizeTextSizesInPx = new int[0];
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<TextPaint>() { // from class: com.onyx.galaxy.note.editor.view.CountingTextView$measureTextPaint$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final TextPaint invoke() {
                return new TextPaint();
            }
        });
        this.measureTextPaint = lazy;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C10651R.styleable.CountingTextView);
        Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "obtainStyledAttributes(...)");
        String string3 = obtainStyledAttributes.getString(C10651R.styleable.CountingTextView_short_time_format);
        this.shortTimeFormat = string3 == null ? this.shortTimeFormat : string3;
        String string4 = obtainStyledAttributes.getString(C10651R.styleable.CountingTextView_long_time_format);
        this.longTimeFormat = string4 == null ? this.longTimeFormat : string4;
        this.isCountUp = obtainStyledAttributes.getBoolean(C10651R.styleable.CountingTextView_is_count_up, this.isCountUp);
        this.totalCountTime = obtainStyledAttributes.getInt(C10651R.styleable.CountingTextView_count_down_total, this.totalCountTime);
        this.isEnableAutoSize = obtainStyledAttributes.getBoolean(C10651R.styleable.CountingTextView_is_enable_auto_size, this.isEnableAutoSize);
        this.autoSizeMin = obtainStyledAttributes.getDimensionPixelOffset(C10651R.styleable.CountingTextView_auto_size_min, this.autoSizeMin);
        this.autoSizeMax = obtainStyledAttributes.getDimensionPixelOffset(C10651R.styleable.CountingTextView_auto_size_max, this.autoSizeMax);
        this.autoSizeStep = obtainStyledAttributes.getDimension(C10651R.styleable.CountingTextView_auto_size_step, this.autoSizeStep);
        obtainStyledAttributes.recycle();
        m47141d();
    }

    private final TextPaint getMeasureTextPaint() {
        return (TextPaint) this.measureTextPaint.getValue();
    }

    /* renamed from: a */
    public final boolean m47138a() {
        if (getMeasuredWidth() > 0 && getMeasuredHeight() > 0) {
            int measuredWidth = (getMeasuredWidth() - getTotalPaddingLeft()) - getTotalPaddingRight();
            int measuredHeight = (getMeasuredHeight() - getExtendedPaddingBottom()) - getExtendedPaddingTop();
            if (measuredWidth > 0 && measuredHeight > 0) {
                this.tempRect.setEmpty();
                RectF rectF = this.tempRect;
                rectF.right = measuredWidth;
                rectF.bottom = measuredHeight;
                float m47139b = m47139b(rectF);
                if (!(getTextSize() == m47139b)) {
                    setTextSize(0, m47139b);
                    invalidate();
                }
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    public final int m47139b(RectF availableSpace) {
        int i = 1;
        int length = this.autoSizeTextSizesInPx.length - 1;
        int i2 = 0;
        while (i <= length) {
            int i3 = (i + length) / 2;
            if (m47143f(this.autoSizeTextSizesInPx[i3], availableSpace)) {
                int i4 = i3 + 1;
                i2 = i;
                i = i4;
            } else {
                i2 = i3 - 1;
                length = i2;
            }
        }
        return this.autoSizeTextSizesInPx[i2];
    }

    /* renamed from: c */
    public final String m47140c(long mills) {
        return DateTimeUtil.INSTANCE.formatDurationSecondExact(mills, Intrinsics.areEqual(this.longTimeFormat, this.shortTimeFormat), this.longTimeFormat, this.shortTimeFormat);
    }

    /* renamed from: d */
    public final void m47141d() {
        if (this.isEnableAutoSize) {
            int floor = ((int) Math.floor((this.autoSizeMax - this.autoSizeMin) / this.autoSizeStep)) + 1;
            this.autoSizeTextSizesInPx = new int[floor];
            for (int i = 0; i < floor; i++) {
                this.autoSizeTextSizesInPx[i] = Math.round(this.autoSizeMin + (i * this.autoSizeStep));
            }
        }
    }

    /* renamed from: e */
    public final String m47142e() {
        return this.isCountUp ? m47140c(0L) : m47140c(this.totalCountTime);
    }

    /* renamed from: f */
    public final boolean m47143f(int suggestedSizeInPx, RectF availableSpace) {
        int maxLines = getMaxLines();
        getMeasureTextPaint().reset();
        getMeasureTextPaint().set(getPaint());
        getMeasureTextPaint().setTextSize(suggestedSizeInPx);
        StaticLayout.Builder obtain = StaticLayout.Builder.obtain(getText(), 0, getText().length(), getMeasureTextPaint(), Math.round(availableSpace.right));
        Intrinsics.checkNotNullExpressionValue(obtain, "obtain(...)");
        obtain.setAlignment(Layout.Alignment.ALIGN_NORMAL).setLineSpacing(getLineSpacingExtra(), getLineSpacingMultiplier()).setIncludePad(getIncludeFontPadding()).setUseLineSpacingFromFallbacks(false).setBreakStrategy(getBreakStrategy()).setHyphenationFrequency(getHyphenationFrequency()).setJustificationMode(getJustificationMode()).setMaxLines(maxLines);
        StaticLayout build = obtain.build();
        Intrinsics.checkNotNullExpressionValue(build, "build(...)");
        return (maxLines == -1 || build.getLineCount() <= maxLines) && ((float) build.getHeight()) <= availableSpace.bottom;
    }

    @Override // android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        refresh();
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        stop();
        super.onDetachedFromWindow();
    }

    @Override // android.widget.TextView, android.view.View
    public void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
        if (this.isEnableAutoSize && m47138a()) {
            CharSequence text = getText();
            this.currentTextLength = text != null ? text.length() : 0;
        }
    }

    @Override // com.onyx.galaxy.note.editor.data.CounterTimerHandler.CounterListener
    public void onTick(long timestamp) {
        CounterTimerHandler.CounterListener.DefaultImpls.onTick(this, timestamp);
        refresh();
    }

    public final void refresh() {
        String m47142e;
        CounterEntry counterEntry = this.counterEntry;
        if (counterEntry == null) {
            setText(m47142e());
            return;
        }
        CounterEntryState entryState = counterEntry.getEntryState();
        if (!(counterEntry.isCountUp() == this.isCountUp) || counterEntry.isStop()) {
            m47142e = m47142e();
        } else {
            m47142e = m47140c(this.isCountUp ? RangesKt___RangesKt.coerceAtMost(entryState.totalTime(), CounterTimerHandler.INSTANCE.getMAX_COUNT_UP_DURATION_MS()) : 1000 + (this.totalCountTime - entryState.segmentTotalTime()));
        }
        setText(m47142e);
    }

    public final void setCountUp(boolean countUp) {
        this.isCountUp = countUp;
    }

    @Override // android.widget.TextView
    public void setText(@Nullable CharSequence text, @Nullable TextView.BufferType type) {
        super.setText(text, type);
        int length = text != null ? text.length() : 0;
        if (this.isEnableAutoSize && length != this.currentTextLength && m47138a()) {
            this.currentTextLength = length;
        }
    }

    public final void setTotalCountTime(int total) {
        this.totalCountTime = total;
    }

    public final void startCount(@NotNull CounterEntry counterEntry) {
        Intrinsics.checkNotNullParameter(counterEntry, "counterEntry");
        this.counterEntry = counterEntry;
        counterEntry.getTimerHandler().registerListener(this);
    }

    public final void stop() {
        CounterTimerHandler timerHandler;
        CounterEntry counterEntry = this.counterEntry;
        if (counterEntry == null || (timerHandler = counterEntry.getTimerHandler()) == null) {
            return;
        }
        timerHandler.unregisterListener(this);
    }

    @Override // com.onyx.android.sdk.theme.widgets.TintTextView, com.onyx.android.sdk.theme.widgets.Tintable
    public void tint() {
        Drawable background = getBackground();
        super.tint();
        setBackground(background);
    }
}
