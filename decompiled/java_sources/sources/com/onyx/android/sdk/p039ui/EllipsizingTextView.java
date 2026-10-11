package com.onyx.android.sdk.p039ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.StaticLayout;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriverConstants;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.widgets.Tintable;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.gon;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\u0018\u0000 [2\u00020\u00012\u00020\u0002:\u0007[\\]^_`aB\u0011\b\u0016\u0012\u0006\u0010S\u001a\u00020R¢\u0006\u0004\bT\u0010UB\u001b\b\u0016\u0012\u0006\u0010S\u001a\u00020R\u0012\b\u0010W\u001a\u0004\u0018\u00010V¢\u0006\u0004\bT\u0010XB#\b\u0016\u0012\u0006\u0010S\u001a\u00020R\u0012\b\u0010W\u001a\u0004\u0018\u00010V\u0012\u0006\u0010Y\u001a\u00020\u0003¢\u0006\u0004\bT\u0010ZJ\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0016J\u0018\u0010\n\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0016J\u0018\u0010\u000f\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0016J\u0012\u0010\u0012\u001a\u00020\u00052\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0016J(\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u0003H\u0014J(\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u0003H\u0016J\u0010\u0010\u001f\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\u001dH\u0014J\u0006\u0010!\u001a\u00020 J&\u0010$\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\"2\u0006\u0010#\u001a\u00020\"2\u0006\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u0003J\u001e\u0010%\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\"2\u0006\u0010#\u001a\u00020\"2\u0006\u0010\u0018\u001a\u00020\u0003J\u000e\u0010(\u001a\u00020\u00052\u0006\u0010'\u001a\u00020&J\u000e\u0010)\u001a\u00020\u00052\u0006\u0010'\u001a\u00020&J\b\u0010*\u001a\u00020\u0005H\u0016J\b\u0010+\u001a\u00020\u0005H\u0002J\b\u0010,\u001a\u00020\u0005H\u0002R\u001a\u00100\u001a\b\u0012\u0004\u0012\u00020&0-8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b.\u0010/R\u001c\u00104\u001a\b\u0018\u000101R\u00020\u00008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u00103R\u0016\u00107\u001a\u00020 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u00106R\u0016\u00108\u001a\u00020 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u00106R\u0016\u0010:\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u00109R\u0016\u0010<\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b;\u00109R\u0016\u0010?\u001a\u00020\u000b8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b=\u0010>R$\u0010F\u001a\u00020@2\u0006\u0010A\u001a\u00020@8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\bB\u0010C\u001a\u0004\bD\u0010ER$\u0010H\u001a\u00020 2\u0006\u0010A\u001a\u00020 8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\bG\u00106\u001a\u0004\bH\u0010IR$\u0010N\u001a\u00020\u00032\u0006\u0010A\u001a\u00020\u00038\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\bJ\u0010K\u001a\u0004\bL\u0010MR\u0016\u0010P\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bO\u0010KR\u0016\u0010Q\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010K¨\u0006b"}, m61528d2 = {"Lcom/onyx/android/sdk/ui/EllipsizingTextView;", "Landroidx/appcompat/widget/AppCompatTextView;", "Lcom/onyx/android/sdk/theme/widgets/Tintable;", "", "maxLines", "", "setMaxLines", "", "add", "mult", "setLineSpacing", "", "text", "Landroid/widget/TextView$BufferType;", "type", "setText", "Landroid/text/TextUtils$TruncateAt;", "where", "setEllipsize", "w", C6999h.f39688c, "oldw", "oldh", "onSizeChanged", "left", OneDriverConstants.TOP, gon.f71288n0, "bottom", "setPadding", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "onDraw", "", "ellipsizingLastFullyVisibleLine", "", "pattern", "searchMostRight", Constants.NEXT, "Lcom/onyx/android/sdk/ui/EllipsizingTextView$EllipsizeListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "addEllipsizeListener", "removeEllipsizeListener", "tint", C4921e.f26528e, "p", "", "l", "Ljava/util/List;", "ellipsizeListeners", "Lcom/onyx/android/sdk/ui/EllipsizingTextView$e;", "m", "Lcom/onyx/android/sdk/ui/EllipsizingTextView$e;", "ellipsizeStrategy", GoogleApiAvailabilityLight.f29016b, Constants.HASIDCALL_INDEX_SIG, "isStale", "programmaticChange", "F", "lineSpacingMult", "q", "lineAddVertPad", "r", "Ljava/lang/CharSequence;", "fullText", "Ljava/util/regex/Pattern;", "<set-?>", "s", "Ljava/util/regex/Pattern;", "getEndPunctPattern", "()Ljava/util/regex/Pattern;", "endPunctPattern", "t", "isEllipsized", Constants.BOOLEAN_VALUE_SIG, "u", "I", "getTextMaxLines", "()I", "textMaxLines", "v", "textColorRes", "drawableTintRes", "Landroid/content/Context;", "context", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Companion", "a", "EllipsizeListener", "b", "c", "d", "e", "sdk-ui_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class EllipsizingTextView extends AppCompatTextView implements Tintable {

    /* renamed from: J */
    @NotNull
    public static final CharSequence f47085J = "…";

    /* renamed from: O */
    public static final Pattern f47086O = Pattern.compile("[\\.!?,;:…]*$", 32);

    /* renamed from: x */
    public static final int f47087x = 1;

    /* renamed from: y */
    public static final int f47088y = 4;

    /* renamed from: z */
    public static final int f47089z = 3;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final List<EllipsizeListener> ellipsizeListeners;

    /* renamed from: m, reason: from kotlin metadata */
    @Nullable
    public AbstractC8034e ellipsizeStrategy;

    /* renamed from: n, reason: from kotlin metadata */
    public boolean isStale;

    /* renamed from: o, reason: from kotlin metadata */
    public boolean programmaticChange;

    /* renamed from: p, reason: from kotlin metadata */
    public float lineSpacingMult;

    /* renamed from: q, reason: from kotlin metadata */
    public float lineAddVertPad;

    /* renamed from: r, reason: from kotlin metadata */
    public CharSequence fullText;

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public Pattern endPunctPattern;

    /* renamed from: t, reason: from kotlin metadata */
    public boolean isEllipsized;

    /* renamed from: u, reason: from kotlin metadata */
    public int textMaxLines;

    /* renamed from: v, reason: from kotlin metadata */
    public int textColorRes;

    /* renamed from: w, reason: from kotlin metadata */
    public int drawableTintRes;

    @Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/android/sdk/ui/EllipsizingTextView$EllipsizeListener;", "", "ellipsizeStateChanged", "", "ellipsized", "", "sdk-ui_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public interface EllipsizeListener {
        void ellipsizeStateChanged(boolean ellipsized);
    }

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[TextUtils.TruncateAt.values().length];
            try {
                iArr[TextUtils.TruncateAt.END.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[TextUtils.TruncateAt.START.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[TextUtils.TruncateAt.MIDDLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[TextUtils.TruncateAt.MARQUEE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @SourceDebugExtension({"SMAP\nEllipsizingTextView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EllipsizingTextView.kt\ncom/onyx/android/sdk/ui/EllipsizingTextView$EllipsizeEndStrategy\n+ 2 Strings.kt\nkotlin/text/StringsKt__StringsKt\n*L\n1#1,531:1\n107#2:532\n79#2,22:533\n107#2:555\n79#2,22:556\n*S KotlinDebug\n*F\n+ 1 EllipsizingTextView.kt\ncom/onyx/android/sdk/ui/EllipsizingTextView$EllipsizeEndStrategy\n*L\n377#1:532\n377#1:533,22\n386#1:555\n386#1:556,22\n*E\n"})
    /* renamed from: com.onyx.android.sdk.ui.EllipsizingTextView$a */
    /* loaded from: classes8.dex */
    public final class C8030a extends AbstractC8034e {
        public C8030a() {
            super();
        }

        /* JADX WARN: Code restructure failed: missing block: B:22:0x008a, code lost:
        
            r3 = kotlin.text.StringsKt__StringsKt.lastIndexOf$default((java.lang.CharSequence) r1, ' ', 0, false, 6, (java.lang.Object) null);
         */
        @Override // com.onyx.android.sdk.p039ui.EllipsizingTextView.AbstractC8034e
        @org.jetbrains.annotations.NotNull
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.CharSequence mo36395a(@org.jetbrains.annotations.NotNull java.lang.CharSequence r14) {
            /*
                Method dump skipped, instructions count: 262
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.p039ui.EllipsizingTextView.C8030a.mo36395a(java.lang.CharSequence):java.lang.CharSequence");
        }

        @NotNull
        /* renamed from: g */
        public final String m36396g(@NotNull CharSequence workingText) {
            Intrinsics.checkNotNullParameter(workingText, "workingText");
            String replaceFirst = EllipsizingTextView.this.getEndPunctPattern().matcher(workingText).replaceFirst("");
            Intrinsics.checkNotNullExpressionValue(replaceFirst, "replaceFirst(...)");
            return replaceFirst;
        }
    }

    /* renamed from: com.onyx.android.sdk.ui.EllipsizingTextView$b */
    /* loaded from: classes8.dex */
    public final class C8031b extends AbstractC8034e {
        public C8031b() {
            super();
        }

        @Override // com.onyx.android.sdk.p039ui.EllipsizingTextView.AbstractC8034e
        @NotNull
        /* renamed from: a */
        public CharSequence mo36395a(@NotNull CharSequence fullText) {
            Intrinsics.checkNotNullParameter(fullText, "fullText");
            Layout m36398b = m36398b(fullText);
            int lineStart = m36398b.getLineStart(EllipsizingTextView.this.getTextMaxLines() - 1);
            int lineEnd = m36398b.getLineEnd(EllipsizingTextView.this.getTextMaxLines() - 1);
            int length = fullText.length();
            String obj = fullText.toString();
            if (lineEnd + 1 >= length) {
                return m36397g(obj, fullText);
            }
            int i = (lineEnd + lineStart) / 2;
            int max = length - Math.max(lineEnd - lineStart, 4);
            int searchMostRight = EllipsizingTextView.this.searchMostRight(obj, " ", lineStart, i);
            int next = EllipsizingTextView.this.next(obj, " ", max);
            if (next < length - 4 && next >= 0) {
                max = next;
            }
            String substring = obj.substring(0, searchMostRight);
            Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
            String substring2 = TextUtils.substring(fullText, max, length);
            boolean z = true;
            String str = substring + ((Object) EllipsizingTextView.f47085J) + substring2;
            String str2 = substring2;
            String str3 = substring;
            int i2 = searchMostRight;
            int i3 = max;
            while (!m36401e(str) && i2 > 1) {
                if (length - max <= 4) {
                    i2--;
                    str3 = TextUtils.substring(fullText, 0, i2);
                    Intrinsics.checkNotNullExpressionValue(str3, "substring(...)");
                    str = str3 + ((Object) EllipsizingTextView.f47085J) + str2;
                } else {
                    if (z) {
                        i3 = EllipsizingTextView.this.next(obj, " ", max);
                    }
                    if (i3 > 0) {
                        max = i3 + 1;
                    } else {
                        max++;
                        z = false;
                    }
                    str2 = TextUtils.substring(fullText, max, length);
                    str = str3 + ((Object) EllipsizingTextView.f47085J) + str2;
                }
            }
            return m36397g(str, fullText);
        }

        @NotNull
        /* renamed from: g */
        public final CharSequence m36397g(@NotNull String workingText, @Nullable CharSequence charSequence) {
            Intrinsics.checkNotNullParameter(workingText, "workingText");
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(workingText);
            if (charSequence instanceof Spanned) {
                TextUtils.copySpansFrom((Spanned) charSequence, 0, workingText.length(), null, spannableStringBuilder, 0);
            }
            return spannableStringBuilder;
        }
    }

    /* renamed from: com.onyx.android.sdk.ui.EllipsizingTextView$c */
    /* loaded from: classes8.dex */
    public final class C8032c extends AbstractC8034e {
        public C8032c() {
            super();
        }

        @Override // com.onyx.android.sdk.p039ui.EllipsizingTextView.AbstractC8034e
        @NotNull
        /* renamed from: a */
        public CharSequence mo36395a(@NotNull CharSequence fullText) {
            Intrinsics.checkNotNullParameter(fullText, "fullText");
            return fullText;
        }
    }

    @SourceDebugExtension({"SMAP\nEllipsizingTextView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EllipsizingTextView.kt\ncom/onyx/android/sdk/ui/EllipsizingTextView$EllipsizeStartStrategy\n+ 2 Strings.kt\nkotlin/text/StringsKt__StringsKt\n*L\n1#1,531:1\n107#2:532\n79#2,22:533\n107#2:555\n79#2,22:556\n*S KotlinDebug\n*F\n+ 1 EllipsizingTextView.kt\ncom/onyx/android/sdk/ui/EllipsizingTextView$EllipsizeStartStrategy\n*L\n428#1:532\n428#1:533,22\n438#1:555\n438#1:556,22\n*E\n"})
    /* renamed from: com.onyx.android.sdk.ui.EllipsizingTextView$d */
    /* loaded from: classes8.dex */
    public final class C8033d extends AbstractC8034e {
        public C8033d() {
            super();
        }

        /* JADX WARN: Code restructure failed: missing block: B:22:0x0085, code lost:
        
            r1 = kotlin.text.StringsKt__StringsKt.indexOf$default((java.lang.CharSequence) r0, ' ', 0, false, 6, (java.lang.Object) null);
         */
        @Override // com.onyx.android.sdk.p039ui.EllipsizingTextView.AbstractC8034e
        @org.jetbrains.annotations.NotNull
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.CharSequence mo36395a(@org.jetbrains.annotations.NotNull java.lang.CharSequence r15) {
            /*
                Method dump skipped, instructions count: 258
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.p039ui.EllipsizingTextView.C8033d.mo36395a(java.lang.CharSequence):java.lang.CharSequence");
        }
    }

    /* renamed from: com.onyx.android.sdk.ui.EllipsizingTextView$e */
    /* loaded from: classes8.dex */
    public abstract class AbstractC8034e {
        public AbstractC8034e() {
        }

        @NotNull
        /* renamed from: a */
        public abstract CharSequence mo36395a(@NotNull CharSequence charSequence);

        @NotNull
        /* renamed from: b */
        public final Layout m36398b(@Nullable CharSequence charSequence) {
            if (charSequence == null) {
                charSequence = "";
            }
            StaticLayout.Builder obtain = StaticLayout.Builder.obtain(charSequence, 0, charSequence.length(), EllipsizingTextView.this.getPaint(), (EllipsizingTextView.this.getWidth() - EllipsizingTextView.this.getCompoundPaddingLeft()) - EllipsizingTextView.this.getCompoundPaddingRight());
            Intrinsics.checkNotNullExpressionValue(obtain, "obtain(...)");
            StaticLayout build = obtain.setAlignment(Layout.Alignment.ALIGN_NORMAL).setLineSpacing(EllipsizingTextView.this.lineAddVertPad, EllipsizingTextView.this.lineSpacingMult).setIncludePad(true).build();
            Intrinsics.checkNotNullExpressionValue(build, "build(...)");
            return build;
        }

        /* renamed from: c */
        public final int m36399c() {
            return ((EllipsizingTextView.this.getHeight() - EllipsizingTextView.this.getCompoundPaddingTop()) - EllipsizingTextView.this.getCompoundPaddingBottom()) / m36398b("").getLineBottom(0);
        }

        /* renamed from: d */
        public final int m36400d() {
            if (!EllipsizingTextView.this.ellipsizingLastFullyVisibleLine()) {
                return EllipsizingTextView.this.getTextMaxLines();
            }
            int m36399c = m36399c();
            if (m36399c == -1) {
                return 1;
            }
            return m36399c;
        }

        /* renamed from: e */
        public final boolean m36401e(@Nullable CharSequence charSequence) {
            return m36398b(charSequence).getLineCount() <= m36400d();
        }

        @NotNull
        /* renamed from: f */
        public final CharSequence m36402f(@NotNull CharSequence text) {
            Intrinsics.checkNotNullParameter(text, "text");
            return !m36401e(text) ? mo36395a(text) : text;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public EllipsizingTextView(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public final void addEllipsizeListener(@NotNull EllipsizeListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.ellipsizeListeners.add(listener);
    }

    public final boolean ellipsizingLastFullyVisibleLine() {
        return this.textMaxLines == Integer.MAX_VALUE;
    }

    @NotNull
    public final Pattern getEndPunctPattern() {
        return this.endPunctPattern;
    }

    public final int getTextMaxLines() {
        return this.textMaxLines;
    }

    /* renamed from: isEllipsized, reason: from getter */
    public final boolean getIsEllipsized() {
        return this.isEllipsized;
    }

    public final int next(@NotNull String text, @NotNull String pattern, int left) {
        int indexOf$default;
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(pattern, "pattern");
        indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) text, pattern, left, false, 4, (Object) null);
        if (indexOf$default > 0) {
            return indexOf$default;
        }
        return -1;
    }

    /* renamed from: o */
    public final void m36393o() {
        int i = this.textColorRes;
        if (i != 0) {
            setTextColor(ThemeUtils.getColorById(i));
        }
        if (this.drawableTintRes != 0) {
            setCompoundDrawableTintList(ThemeUtils.getThemeColorStateList(getContext(), this.drawableTintRes));
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onDraw(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        try {
            if (this.isStale) {
                m36394p();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        super.onDraw(canvas);
    }

    @Override // android.view.View
    public void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        if (ellipsizingLastFullyVisibleLine()) {
            this.isStale = true;
        }
    }

    /* renamed from: p */
    public final void m36394p() {
        boolean z;
        int maxLines = getMaxLines();
        CharSequence charSequence = this.fullText;
        CharSequence charSequence2 = null;
        if (charSequence == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fullText");
            charSequence = null;
        }
        if (maxLines != -1) {
            if (this.ellipsizeStrategy == null) {
                setEllipsize(null);
            }
            AbstractC8034e abstractC8034e = this.ellipsizeStrategy;
            Intrinsics.checkNotNull(abstractC8034e);
            CharSequence charSequence3 = this.fullText;
            if (charSequence3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("fullText");
                charSequence3 = null;
            }
            charSequence = abstractC8034e.m36402f(charSequence3);
            AbstractC8034e abstractC8034e2 = this.ellipsizeStrategy;
            Intrinsics.checkNotNull(abstractC8034e2);
            CharSequence charSequence4 = this.fullText;
            if (charSequence4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("fullText");
            } else {
                charSequence2 = charSequence4;
            }
            z = !abstractC8034e2.m36401e(charSequence2);
        } else {
            z = false;
        }
        if (!Intrinsics.areEqual(charSequence, getText())) {
            this.programmaticChange = false;
            setText(charSequence);
        }
        this.isStale = false;
        if (z != this.isEllipsized) {
            this.isEllipsized = z;
            Iterator<EllipsizeListener> it2 = this.ellipsizeListeners.iterator();
            while (it2.hasNext()) {
                it2.next().ellipsizeStateChanged(z);
            }
        }
    }

    public final void removeEllipsizeListener(@NotNull EllipsizeListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.ellipsizeListeners.remove(listener);
    }

    public final int searchMostRight(@NotNull String text, @NotNull String pattern, int left, int right) {
        int indexOf$default;
        int indexOf$default2;
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(pattern, "pattern");
        indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) text, pattern, left, false, 4, (Object) null);
        while (true) {
            boolean z = false;
            if (!(1 <= indexOf$default && indexOf$default < right)) {
                return right;
            }
            indexOf$default2 = StringsKt__StringsKt.indexOf$default((CharSequence) text, pattern, indexOf$default + pattern.length(), false, 4, (Object) null);
            if (1 <= indexOf$default2 && indexOf$default2 < right) {
                z = true;
            }
            if (!z) {
                return indexOf$default;
            }
            indexOf$default = indexOf$default2;
        }
    }

    @Override // android.widget.TextView
    public void setEllipsize(@Nullable TextUtils.TruncateAt where) {
        if (where == null) {
            this.ellipsizeStrategy = new C8032c();
        } else {
            int i = WhenMappings.$EnumSwitchMapping$0[where.ordinal()];
            this.ellipsizeStrategy = i != 1 ? i != 2 ? i != 3 ? i != 4 ? new C8032c() : new C8032c() : new C8031b() : new C8033d() : new C8030a();
        }
    }

    @Override // android.widget.TextView
    public void setLineSpacing(float add, float mult) {
        this.lineAddVertPad = add;
        this.lineSpacingMult = mult;
        super.setLineSpacing(add, mult);
    }

    @Override // android.widget.TextView
    public void setMaxLines(int maxLines) {
        super.setMaxLines(maxLines);
        this.textMaxLines = maxLines;
        this.isStale = true;
    }

    @Override // android.widget.TextView, android.view.View
    public void setPadding(int left, int top, int right, int bottom) {
        super.setPadding(left, top, right, bottom);
        if (ellipsizingLastFullyVisibleLine()) {
            this.isStale = true;
        }
    }

    @Override // android.widget.TextView
    public void setText(@NotNull CharSequence text, @NotNull TextView.BufferType type) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(type, "type");
        if (!this.programmaticChange) {
            boolean z = text instanceof Spanned;
            this.fullText = text;
            this.isStale = true;
        }
        super.setText(text, type);
    }

    @Override // com.onyx.android.sdk.theme.widgets.Tintable
    public void tint() {
        m36393o();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public EllipsizingTextView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, -1);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EllipsizingTextView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        this.ellipsizeListeners = new ArrayList();
        this.lineSpacingMult = 1.0f;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C8037R.styleable.EllipsizingTextView);
        Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "obtainStyledAttributes(...)");
        this.textColorRes = obtainStyledAttributes.getResourceId(C8037R.styleable.EllipsizingTextView_android_textColor, 0);
        this.drawableTintRes = obtainStyledAttributes.getResourceId(C8037R.styleable.EllipsizingTextView_drawableTint, 0);
        m36393o();
        setMaxLines(obtainStyledAttributes.getInt(C8037R.styleable.EllipsizingTextView_android_maxLines, 3));
        obtainStyledAttributes.recycle();
        Pattern DEFAULT_END_PUNCTUATION = f47086O;
        Intrinsics.checkNotNullExpressionValue(DEFAULT_END_PUNCTUATION, "DEFAULT_END_PUNCTUATION");
        this.endPunctPattern = DEFAULT_END_PUNCTUATION;
    }
}
