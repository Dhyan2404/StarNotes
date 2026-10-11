package com.onyx.android.sdk.note.common.data.text;

import android.graphics.RectF;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.net.MailTo;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.font.FontInfo;
import com.onyx.android.sdk.base.data.font.FontType;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FontUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.path.AppPaths;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.data.text.MeasureRichTextAction;
import com.onyx.android.sdk.note.common.data.text.TextRender;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.replicator.note.utils.TextShapes;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.subjects.PublishSubject;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt__MathJVMKt;
import org.apache.commons.collections4.MapUtils;
import org.apache.commons.collections4.Transformer;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010!\n\u0002\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\u0015\u001a\u00020\u000e\u0012\u0006\u0010\u0019\u001a\u00020\u0016¢\u0006\u0004\b*\u0010+J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u001c\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00000\u00022\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J$\u0010\u000b\u001a\u00020\n2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00000\b2\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\b\u0010\f\u001a\u00020\u0000H\u0002J\b\u0010\r\u001a\u00020\u0000H\u0002R\"\u0010\u0015\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0019\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R$\u0010!\u001a\u0004\u0018\u00010\u001a8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R(\u0010)\u001a\b\u0012\u0004\u0012\u00020\u00050\"8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(¨\u0006,"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "", "fontList", C4921e.f26528e, "Lio/reactivex/rxjava3/subjects/PublishSubject;", MailTo.f5529g, "", GoogleApiAvailabilityLight.f29016b, "q", "m", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "e", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "getRenderContext", "()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "setRenderContext", "(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V", "renderContext", "Lcom/onyx/android/sdk/note/common/shape/Shape;", C6997f.f39671c, "Lcom/onyx/android/sdk/note/common/shape/Shape;", "textShape", "Lcom/onyx/android/sdk/note/common/data/text/TextRender;", C6998g.f39679a, "Lcom/onyx/android/sdk/note/common/data/text/TextRender;", "getTextRender", "()Lcom/onyx/android/sdk/note/common/data/text/TextRender;", "setTextRender", "(Lcom/onyx/android/sdk/note/common/data/text/TextRender;)V", "textRender", "", C6999h.f39688c, "Ljava/util/List;", "getFontDirs", "()Ljava/util/List;", "setFontDirs", "(Ljava/util/List;)V", "fontDirs", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/shape/Shape;)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class MeasureRichTextAction extends RxBaseAction<MeasureRichTextAction> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public RenderContext renderContext;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public Shape textShape;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public TextRender textRender;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public List<String> fontDirs;

    /* renamed from: com.onyx.android.sdk.note.common.data.text.MeasureRichTextAction$a */
    /* loaded from: classes8.dex */
    public static final class C7490a<T, R> implements Function {
        public C7490a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final MeasureRichTextAction apply(@NotNull MeasureRichTextAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return MeasureRichTextAction.this.m33703q();
        }
    }

    /* renamed from: com.onyx.android.sdk.note.common.data.text.MeasureRichTextAction$b */
    /* loaded from: classes8.dex */
    public static final class C7491b<T, R> implements Function {
        public C7491b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final MeasureRichTextAction apply(@NotNull MeasureRichTextAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return MeasureRichTextAction.this.m33700m();
        }
    }

    /* renamed from: com.onyx.android.sdk.note.common.data.text.MeasureRichTextAction$c */
    /* loaded from: classes8.dex */
    public static final class C7492c<T, R> implements Function {
        public C7492c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<String> apply(@NotNull MeasureRichTextAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return TextShapes.INSTANCE.parseTextShapeFontList(MeasureRichTextAction.this.textShape.getRichText());
        }
    }

    /* renamed from: com.onyx.android.sdk.note.common.data.text.MeasureRichTextAction$d */
    /* loaded from: classes8.dex */
    public static final class C7493d<T, R> implements Function {
        public C7493d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends MeasureRichTextAction> apply(@NotNull List<String> fontList) {
            Intrinsics.checkNotNullParameter(fontList, "fontList");
            return MeasureRichTextAction.this.m33702o(fontList);
        }
    }

    public MeasureRichTextAction(@NotNull RenderContext renderContext, @NotNull Shape textShape) {
        List<String> mutableListOf;
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Intrinsics.checkNotNullParameter(textShape, "textShape");
        this.renderContext = renderContext;
        this.textShape = textShape;
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(AppPaths.INSTANCE.appFontDir().toAbsolutePath().toString());
        this.fontDirs = mutableListOf;
    }

    /* renamed from: p */
    public static final void m33699p(MeasureRichTextAction this$0, PublishSubject subject, List fontList) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(subject, "$subject");
        Intrinsics.checkNotNullParameter(fontList, "$fontList");
        this$0.m33701n(subject, fontList);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<MeasureRichTextAction> create() {
        Observable<MeasureRichTextAction> flatMap = Observable.just(this).observeOn(getMainUIScheduler()).map(new C7490a()).observeOn(this.renderContext.getTextRenderObserveOn()).map(new C7491b()).map(new C7492c()).observeOn(getMainUIScheduler()).flatMap(new C7493d());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    @NotNull
    public final List<String> getFontDirs() {
        return this.fontDirs;
    }

    @NotNull
    public final RenderContext getRenderContext() {
        return this.renderContext;
    }

    @Nullable
    public final TextRender getTextRender() {
        return this.textRender;
    }

    /* renamed from: m */
    public final MeasureRichTextAction m33700m() {
        List<String> list;
        TextRender textRender = this.textRender;
        if (CollectionKt.isNonBlank(textRender != null ? textRender.getFontMap() : null)) {
            return this;
        }
        FontUtils fontUtils = FontUtils.INSTANCE;
        list = CollectionsKt___CollectionsKt.toList(this.fontDirs);
        List<FontInfo> buildFontItemAdapter = fontUtils.buildFontItemAdapter(list, null, null, FontType.CUSTOMIZE);
        HashMap hashMap = new HashMap();
        List<FontInfo> list2 = buildFontItemAdapter;
        MapUtils.populateMap(hashMap, list2, new Transformer() { // from class: com.sunia.HTREnginev2.zgj
            @Override // org.apache.commons.collections4.Transformer
            public final Object transform(Object obj) {
                return ((FontInfo) obj).getName();
            }
        });
        MapUtils.populateMap(hashMap, list2, new Transformer() { // from class: com.sunia.HTREnginev2.ahj
            @Override // org.apache.commons.collections4.Transformer
            public final Object transform(Object obj) {
                return ((FontInfo) obj).getFileBaseName();
            }
        });
        TextRender textRender2 = this.textRender;
        if (textRender2 != null) {
            textRender2.setFontMap(hashMap);
        }
        return this;
    }

    /* renamed from: n */
    public final void m33701n(final PublishSubject<MeasureRichTextAction> subject, List<String> fontList) {
        TextRender textRender = this.textRender;
        if (textRender == null) {
            return;
        }
        textRender.setVisualStateCallback(new TextRender.VisualStateCallback() { // from class: com.onyx.android.sdk.note.common.data.text.MeasureRichTextAction$loadContent$1
            @Override // com.onyx.android.sdk.note.common.data.text.TextRender.VisualStateCallback
            public void onComplete() {
                Debug debug = Debug.INSTANCE;
                StringBuilder sb = new StringBuilder();
                sb.append("render complete: ");
                String text = MeasureRichTextAction.this.textShape.getText();
                sb.append(text != null ? StringKt.limitSubString(text, 50) : null);
                debug.m32035d(MeasureRichTextAction$loadContent$1.class, sb.toString(), new Object[0]);
                RxjavaKt.done(subject, MeasureRichTextAction.this);
            }
        });
        Shape shape = this.textShape;
        textRender.loadContent(shape, shape.getRichText(), fontList);
    }

    /* renamed from: o */
    public final Observable<MeasureRichTextAction> m33702o(final List<String> fontList) {
        final PublishSubject<MeasureRichTextAction> create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        TextRender textRender = this.textRender;
        if (textRender == null) {
            return create;
        }
        if (textRender.getIsReady()) {
            m33701n(create, fontList);
        } else {
            textRender.setPageFinishCallback(new Runnable() { // from class: com.sunia.HTREnginev2.ygj
                @Override // java.lang.Runnable
                public final void run() {
                    MeasureRichTextAction.m33699p(MeasureRichTextAction.this, create, fontList);
                }
            });
        }
        return create;
    }

    /* renamed from: q */
    public final MeasureRichTextAction m33703q() {
        int roundToInt;
        int roundToInt2;
        TextRender textRender = this.renderContext.getTextRender();
        this.textRender = textRender;
        if (textRender == null) {
            return this;
        }
        RectF originRect = this.textShape.getOriginRect();
        roundToInt = MathKt__MathJVMKt.roundToInt(originRect.width());
        roundToInt2 = MathKt__MathJVMKt.roundToInt(originRect.height());
        TextRender textRender2 = this.textRender;
        Intrinsics.checkNotNull(textRender2);
        ViewGroup.LayoutParams layoutParams = textRender2.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new ViewGroup.LayoutParams(-2, -2);
        }
        layoutParams.width = roundToInt;
        layoutParams.height = roundToInt2;
        textRender.setLayoutParams(layoutParams);
        textRender.invalidate();
        textRender.measure(View.MeasureSpec.makeMeasureSpec(roundToInt, 1073741824), View.MeasureSpec.makeMeasureSpec(roundToInt2, 1073741824));
        TextRender textRender3 = this.textRender;
        Intrinsics.checkNotNull(textRender3);
        int measuredWidth = textRender3.getMeasuredWidth();
        TextRender textRender4 = this.textRender;
        Intrinsics.checkNotNull(textRender4);
        textRender.layout(0, 0, measuredWidth, textRender4.getMeasuredHeight());
        return this;
    }

    public final void setFontDirs(@NotNull List<String> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.fontDirs = list;
    }

    public final void setRenderContext(@NotNull RenderContext renderContext) {
        Intrinsics.checkNotNullParameter(renderContext, "<set-?>");
        this.renderContext = renderContext;
    }

    public final void setTextRender(@Nullable TextRender textRender) {
        this.textRender = textRender;
    }
}
