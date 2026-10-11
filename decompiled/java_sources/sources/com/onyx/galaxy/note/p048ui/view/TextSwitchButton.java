package com.onyx.galaxy.note.p048ui.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CanvasKt;
import com.onyx.android.sdk.base.utils.DimenUtils;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0007\n\u0002\b\"\n\u0002\u0010\u000e\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010Z\u001a\u00020Y¢\u0006\u0004\b[\u0010\\B\u0019\b\u0016\u0012\u0006\u0010Z\u001a\u00020Y\u0012\u0006\u0010\u0017\u001a\u00020\u0016¢\u0006\u0004\b[\u0010]J\u0018\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0014J\u0010\u0010\t\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0014J\u0006\u0010\u000b\u001a\u00020\nJ\u000e\u0010\r\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\nJ\u0006\u0010\u000e\u001a\u00020\u0005J$\u0010\u0012\u001a\u00020\u00052\u001c\u0010\u0011\u001a\u0018\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00050\u000fj\b\u0012\u0004\u0012\u00020\n`\u0010J\u0018\u0010\u0015\u001a\u00020\u00052\u0010\u0010\u0011\u001a\f\u0012\u0004\u0012\u00020\u00050\u0013j\u0002`\u0014J\u0010\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u0016H\u0002J\u0010\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u0016H\u0002J\b\u0010\u001a\u001a\u00020\u0005H\u0002R,\u0010\u0011\u001a\u0018\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00050\u000fj\b\u0012\u0004\u0012\u00020\n`\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR \u0010\u001f\u001a\f\u0012\u0004\u0012\u00020\u00050\u0013j\u0002`\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0014\u0010#\u001a\u00020 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\"R\u0014\u0010%\u001a\u00020 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010\"R\u0014\u0010'\u001a\u00020 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010\"R\u0014\u0010)\u001a\u00020 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b(\u0010\"R\u0014\u0010+\u001a\u00020 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b*\u0010\"R\u0014\u0010-\u001a\u00020 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b,\u0010\"R\u0014\u0010/\u001a\u00020 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b.\u0010\"R\u0014\u00102\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b0\u00101R\u0014\u00104\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b3\u00101R\u0014\u00106\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b5\u00101R\u0014\u00108\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b7\u00101R\u0016\u0010:\u001a\u00020 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u0010\"R\u0016\u0010<\u001a\u00020 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b;\u0010\"R\u0016\u0010>\u001a\u00020 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b=\u0010\"R\u0016\u0010@\u001a\u00020 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u0010\"R\u0016\u0010B\u001a\u00020 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bA\u0010\"R\u0016\u0010F\u001a\u00020C8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bD\u0010ER\u0016\u0010H\u001a\u00020 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bG\u0010\"R\u0016\u0010J\u001a\u00020 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bI\u0010\"R\u0016\u0010L\u001a\u00020 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bK\u0010\"R\u0016\u0010N\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bM\u00101R\u0016\u0010P\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bO\u00101R\u0016\u0010R\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bQ\u00101R\u0016\u0010T\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bS\u00101R\u0014\u0010X\u001a\u00020U8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bV\u0010W¨\u0006^"}, m61528d2 = {"Lcom/onyx/galaxy/note/ui/view/TextSwitchButton;", "Lcom/onyx/android/sdk/theme/widgets/TintView;", "", "widthMeasureSpec", "heightMeasureSpec", "", "onMeasure", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "onDraw", "", "isChecked", "checked", "setChecked", "toggleCheckState", "Lkotlin/Function1;", "Lcom/onyx/android/sdk/base/extension/SingleArgCallbackFunc;", "callback", "setCallback", "Lkotlin/Function0;", "Lcom/onyx/android/sdk/base/extension/NoArgCallbackFunc;", "setOnCheckedChangedCallback", "Landroid/util/AttributeSet;", "attrs", "b", "c", "a", C6997f.f39671c, "Lkotlin/jvm/functions/Function1;", C6998g.f39679a, "Lkotlin/jvm/functions/Function0;", "checkedChangedCallback", "", C6999h.f39688c, "F", "defaultThumbWidth", "i", "defaultThumbHeight", "j", "defaultThumbMarginStart", C4921e.f26537n, "defaultThumbMarginEnd", "l", "defaultThumbMarginVertical", "m", "defaultTextSize", GoogleApiAvailabilityLight.f29016b, "defaultTextMarginEnd", C4921e.f26528e, "I", "defaultTextCheckedColorRes", "p", "defaultTextUncheckedColorRes", "q", "defaultBackgroundCheckedColorRes", "r", "defaultBackgroundUncheckedColorRes", "s", "thumbWidth", "t", "thumbHeight", "u", "thumbMarginStart", "v", "thumbMarginEnd", "w", "thumbMarginVertical", "", "x", Constants.STRING_SIG, "text", "y", "textSize", "z", "textWidth", "J", "textMarginEnd", BaseTLSIdentity.CERT_ATTRIBUTE_ORGANIZATION, "textCheckedColorRes", "Q", "textUncheckedColorRes", "k0", "backgroundCheckedColorRes", "q0", "backgroundUncheckedColorRes", "Landroid/graphics/Paint;", "t0", "Landroid/graphics/Paint;", "paint", "Landroid/content/Context;", "context", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nTextSwitchButton.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextSwitchButton.kt\ncom/onyx/galaxy/note/ui/view/TextSwitchButton\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,158:1\n1#2:159\n*E\n"})
/* loaded from: classes9.dex */
public final class TextSwitchButton extends TintView {

    /* renamed from: J, reason: from kotlin metadata */
    public float textMarginEnd;

    /* renamed from: O, reason: from kotlin metadata */
    public int textCheckedColorRes;

    /* renamed from: Q, reason: from kotlin metadata */
    public int textUncheckedColorRes;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public Function1<? super Boolean, Unit> callback;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public Function0<Unit> checkedChangedCallback;

    /* renamed from: h, reason: from kotlin metadata */
    public final float defaultThumbWidth;

    /* renamed from: i, reason: from kotlin metadata */
    public final float defaultThumbHeight;

    /* renamed from: j, reason: from kotlin metadata */
    public final float defaultThumbMarginStart;

    /* renamed from: k, reason: from kotlin metadata */
    public final float defaultThumbMarginEnd;

    /* renamed from: k0, reason: from kotlin metadata */
    public int backgroundCheckedColorRes;

    /* renamed from: l, reason: from kotlin metadata */
    public final float defaultThumbMarginVertical;

    /* renamed from: m, reason: from kotlin metadata */
    public final float defaultTextSize;

    /* renamed from: n, reason: from kotlin metadata */
    public final float defaultTextMarginEnd;

    /* renamed from: o, reason: from kotlin metadata */
    public final int defaultTextCheckedColorRes;

    /* renamed from: p, reason: from kotlin metadata */
    public final int defaultTextUncheckedColorRes;

    /* renamed from: q, reason: from kotlin metadata */
    public final int defaultBackgroundCheckedColorRes;

    /* renamed from: q0, reason: from kotlin metadata */
    public int backgroundUncheckedColorRes;

    /* renamed from: r, reason: from kotlin metadata */
    public final int defaultBackgroundUncheckedColorRes;

    /* renamed from: s, reason: from kotlin metadata */
    public float thumbWidth;

    /* renamed from: t, reason: from kotlin metadata */
    public float thumbHeight;

    /* renamed from: t0, reason: from kotlin metadata */
    @NotNull
    public final Paint paint;

    /* renamed from: u, reason: from kotlin metadata */
    public float thumbMarginStart;

    /* renamed from: v, reason: from kotlin metadata */
    public float thumbMarginEnd;

    /* renamed from: w, reason: from kotlin metadata */
    public float thumbMarginVertical;

    /* renamed from: x, reason: from kotlin metadata */
    @NotNull
    public String text;

    /* renamed from: y, reason: from kotlin metadata */
    public float textSize;

    /* renamed from: z, reason: from kotlin metadata */
    public float textWidth;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TextSwitchButton(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.callback = TextSwitchButton$callback$1.INSTANCE;
        this.checkedChangedCallback = TextSwitchButton$checkedChangedCallback$1.INSTANCE;
        DimenUtils dimenUtils = DimenUtils.INSTANCE;
        float dp2PxFloat = dimenUtils.dp2PxFloat(12.0f);
        this.defaultThumbWidth = dp2PxFloat;
        float dp2PxFloat2 = dimenUtils.dp2PxFloat(12.0f);
        this.defaultThumbHeight = dp2PxFloat2;
        float dp2PxFloat3 = dimenUtils.dp2PxFloat(6.0f);
        this.defaultThumbMarginStart = dp2PxFloat3;
        float dp2PxFloat4 = dimenUtils.dp2PxFloat(2.0f);
        this.defaultThumbMarginEnd = dp2PxFloat4;
        float dp2PxFloat5 = dimenUtils.dp2PxFloat(6.0f);
        this.defaultThumbMarginVertical = dp2PxFloat5;
        float dp2PxFloat6 = dimenUtils.dp2PxFloat(10.0f);
        this.defaultTextSize = dp2PxFloat6;
        float dp2PxFloat7 = dimenUtils.dp2PxFloat(8.0f);
        this.defaultTextMarginEnd = dp2PxFloat7;
        int i = C10651R.color.white;
        this.defaultTextCheckedColorRes = i;
        int i2 = C7996R.color.theme_text_color_03;
        this.defaultTextUncheckedColorRes = i2;
        int i3 = C7996R.color.theme_primary_color_01;
        this.defaultBackgroundCheckedColorRes = i3;
        int i4 = C7996R.color.theme_background_color_03;
        this.defaultBackgroundUncheckedColorRes = i4;
        this.thumbWidth = dp2PxFloat;
        this.thumbHeight = dp2PxFloat2;
        this.thumbMarginStart = dp2PxFloat3;
        this.thumbMarginEnd = dp2PxFloat4;
        this.thumbMarginVertical = dp2PxFloat5;
        this.text = "";
        this.textSize = dp2PxFloat6;
        this.textMarginEnd = dp2PxFloat7;
        this.textCheckedColorRes = i;
        this.textUncheckedColorRes = i2;
        this.backgroundCheckedColorRes = i3;
        this.backgroundUncheckedColorRes = i4;
        this.paint = new Paint();
    }

    /* renamed from: a */
    public final void m51475a() {
        this.paint.setAntiAlias(true);
        this.paint.setTextSize(this.textSize);
    }

    /* renamed from: b */
    public final void m51476b(AttributeSet attrs) {
        m51477c(attrs);
        setClickable(true);
    }

    /* renamed from: c */
    public final void m51477c(AttributeSet attrs) {
        String str;
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attrs, C10651R.styleable.TextSwitchButton);
        Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "obtainStyledAttributes(...)");
        this.thumbWidth = obtainStyledAttributes.getDimension(C10651R.styleable.TextSwitchButton_thumbWidth, this.defaultThumbWidth);
        this.thumbHeight = obtainStyledAttributes.getDimension(C10651R.styleable.TextSwitchButton_thumbHeight, this.defaultThumbHeight);
        this.thumbMarginStart = obtainStyledAttributes.getDimension(C10651R.styleable.TextSwitchButton_thumbMarginStart, this.defaultThumbMarginStart);
        this.thumbMarginEnd = obtainStyledAttributes.getDimension(C10651R.styleable.TextSwitchButton_thumbMarginEnd, this.defaultThumbMarginEnd);
        this.thumbMarginVertical = obtainStyledAttributes.getDimension(C10651R.styleable.TextSwitchButton_thumbMarginVertical, this.defaultThumbMarginVertical);
        CharSequence text = obtainStyledAttributes.getText(C10651R.styleable.TextSwitchButton_text);
        if (text == null || (str = text.toString()) == null) {
            str = "";
        }
        this.text = str;
        this.textSize = obtainStyledAttributes.getDimension(C10651R.styleable.TextSwitchButton_textSize, this.defaultTextSize);
        this.textWidth = obtainStyledAttributes.getDimension(C10651R.styleable.TextSwitchButton_textWidth, 0.0f);
        this.textMarginEnd = obtainStyledAttributes.getDimension(C10651R.styleable.TextSwitchButton_textMarginEnd, this.defaultTextMarginEnd);
        this.textCheckedColorRes = obtainStyledAttributes.getResourceId(C10651R.styleable.TextSwitchButton_textCheckedColor, this.defaultTextCheckedColorRes);
        this.textUncheckedColorRes = obtainStyledAttributes.getResourceId(C10651R.styleable.TextSwitchButton_textUncheckedColor, this.defaultTextUncheckedColorRes);
        this.backgroundCheckedColorRes = obtainStyledAttributes.getResourceId(C10651R.styleable.TextSwitchButton_backgroundCheckedColor, this.defaultBackgroundCheckedColorRes);
        this.backgroundUncheckedColorRes = obtainStyledAttributes.getResourceId(C10651R.styleable.TextSwitchButton_backgroundUncheckedColor, this.defaultBackgroundUncheckedColorRes);
        obtainStyledAttributes.recycle();
    }

    public final boolean isChecked() {
        return isSelected();
    }

    @Override // android.view.View
    public void onDraw(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        float measuredWidth = getMeasuredWidth();
        float measuredHeight = getMeasuredHeight();
        boolean isSelected = isSelected();
        boolean z = getLayoutDirection() == 1;
        int colorById = ThemeUtils.getColorById(isSelected ? this.backgroundCheckedColorRes : this.backgroundUncheckedColorRes);
        this.paint.setStyle(Paint.Style.FILL);
        this.paint.setColor(colorById);
        float f = 2;
        float f2 = measuredHeight / f;
        canvas.drawRoundRect(0.0f, 0.0f, measuredWidth, measuredHeight, f2, f2, this.paint);
        float f3 = this.thumbMarginStart;
        float f4 = this.thumbWidth;
        float f5 = f3 + (f4 / f);
        if (isSelected != z) {
            f5 = measuredWidth - f5;
        }
        float f6 = this.thumbMarginVertical;
        float f7 = this.thumbHeight;
        float min = Math.min(f4 / f, f7 / f);
        this.paint.setColor(-1);
        canvas.drawCircle(f5, f6 + (f7 / f), min, this.paint);
        float f8 = (((this.thumbMarginStart + this.thumbWidth) + this.thumbMarginEnd) + (measuredWidth - this.textMarginEnd)) / f;
        if (isSelected != z) {
            f8 = measuredWidth - f8;
        }
        float f9 = this.thumbMarginVertical + (this.thumbHeight / f);
        this.paint.setColor(ThemeUtils.getColorById(isSelected ? this.textCheckedColorRes : this.textUncheckedColorRes));
        CanvasKt.drawTextFromCenter(canvas, this.paint, this.text, Float.valueOf(f8), Float.valueOf(f9));
    }

    @Override // android.view.View
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        Float valueOf = Float.valueOf(this.textWidth);
        if (!(valueOf.floatValue() > 0.0f)) {
            valueOf = null;
        }
        setMeasuredDimension((int) (this.thumbMarginStart + this.thumbWidth + this.thumbMarginEnd + (valueOf != null ? valueOf.floatValue() : this.paint.measureText(this.text)) + this.textMarginEnd), (int) (this.thumbHeight + (this.thumbMarginVertical * 2)));
    }

    public final void setCallback(@NotNull Function1<? super Boolean, Unit> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.callback = callback;
    }

    public final void setChecked(boolean checked) {
        boolean z = checked != isChecked();
        setSelected(checked);
        this.callback.invoke(Boolean.valueOf(checked));
        invalidate();
        if (z) {
            this.checkedChangedCallback.invoke();
        }
    }

    public final void setOnCheckedChangedCallback(@NotNull Function0<Unit> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.checkedChangedCallback = callback;
    }

    public final void toggleCheckState() {
        setSelected(!isSelected());
        invalidate();
        this.checkedChangedCallback.invoke();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TextSwitchButton(@NotNull Context context, @NotNull AttributeSet attrs) {
        super(context, attrs);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
        this.callback = TextSwitchButton$callback$1.INSTANCE;
        this.checkedChangedCallback = TextSwitchButton$checkedChangedCallback$1.INSTANCE;
        DimenUtils dimenUtils = DimenUtils.INSTANCE;
        float dp2PxFloat = dimenUtils.dp2PxFloat(12.0f);
        this.defaultThumbWidth = dp2PxFloat;
        float dp2PxFloat2 = dimenUtils.dp2PxFloat(12.0f);
        this.defaultThumbHeight = dp2PxFloat2;
        float dp2PxFloat3 = dimenUtils.dp2PxFloat(6.0f);
        this.defaultThumbMarginStart = dp2PxFloat3;
        float dp2PxFloat4 = dimenUtils.dp2PxFloat(2.0f);
        this.defaultThumbMarginEnd = dp2PxFloat4;
        float dp2PxFloat5 = dimenUtils.dp2PxFloat(6.0f);
        this.defaultThumbMarginVertical = dp2PxFloat5;
        float dp2PxFloat6 = dimenUtils.dp2PxFloat(10.0f);
        this.defaultTextSize = dp2PxFloat6;
        float dp2PxFloat7 = dimenUtils.dp2PxFloat(8.0f);
        this.defaultTextMarginEnd = dp2PxFloat7;
        int i = C10651R.color.white;
        this.defaultTextCheckedColorRes = i;
        int i2 = C7996R.color.theme_text_color_03;
        this.defaultTextUncheckedColorRes = i2;
        int i3 = C7996R.color.theme_primary_color_01;
        this.defaultBackgroundCheckedColorRes = i3;
        int i4 = C7996R.color.theme_background_color_03;
        this.defaultBackgroundUncheckedColorRes = i4;
        this.thumbWidth = dp2PxFloat;
        this.thumbHeight = dp2PxFloat2;
        this.thumbMarginStart = dp2PxFloat3;
        this.thumbMarginEnd = dp2PxFloat4;
        this.thumbMarginVertical = dp2PxFloat5;
        this.text = "";
        this.textSize = dp2PxFloat6;
        this.textMarginEnd = dp2PxFloat7;
        this.textCheckedColorRes = i;
        this.textUncheckedColorRes = i2;
        this.backgroundCheckedColorRes = i3;
        this.backgroundUncheckedColorRes = i4;
        this.paint = new Paint();
        m51476b(attrs);
        m51475a();
    }
}
