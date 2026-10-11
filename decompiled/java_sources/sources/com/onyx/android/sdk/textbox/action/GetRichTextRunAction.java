package com.onyx.android.sdk.textbox.action;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.webkit.ValueCallback;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.data.font.FontInfo;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.data.text.MeasureRichTextAction;
import com.onyx.android.sdk.note.common.data.text.TextRender;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.textbox.action.GetRichTextRunAction;
import com.onyx.android.sdk.textbox.richtext.RichTextRun;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.subjects.PublishSubject;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\u0012\u001a\u00020\u000f\u0012\u0006\u0010\u0016\u001a\u00020\u0013¢\u0006\u0004\b\u001a\u0010\u001bJ\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00000\u0004H\u0014J\b\u0010\u0006\u001a\u00020\u0000H\u0002J\u000e\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004H\u0002J\u000e\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0004H\u0002J\u0012\u0010\u000b\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u0002H\u0002J\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u00022\u0006\u0010\r\u001a\u00020\fH\u0002R\u0014\u0010\u0012\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0016\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/android/sdk/textbox/action/GetRichTextRunAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Lcom/onyx/android/sdk/textbox/richtext/RichTextRun;", "getRichTextRun", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "r", "m", "Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;", "p", "textRun", C4921e.f26528e, "", "richTextRunStr", "q", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "e", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "Lcom/onyx/android/sdk/note/common/shape/Shape;", C6997f.f39671c, "Lcom/onyx/android/sdk/note/common/shape/Shape;", "textShape", C6998g.f39679a, "Lcom/onyx/android/sdk/textbox/richtext/RichTextRun;", "richTextRun", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/shape/Shape;)V", "sdk-textbox_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nGetRichTextRunAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GetRichTextRunAction.kt\ncom/onyx/android/sdk/textbox/action/GetRichTextRunAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,91:1\n1855#2,2:92\n*S KotlinDebug\n*F\n+ 1 GetRichTextRunAction.kt\ncom/onyx/android/sdk/textbox/action/GetRichTextRunAction\n*L\n83#1:92,2\n*E\n"})
/* loaded from: classes8.dex */
public final class GetRichTextRunAction extends RxBaseAction<GetRichTextRunAction> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final RenderContext renderContext;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final Shape textShape;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public RichTextRun richTextRun;

    /* renamed from: com.onyx.android.sdk.textbox.action.GetRichTextRunAction$a */
    /* loaded from: classes8.dex */
    public static final class C8003a<T, R> implements Function {
        public C8003a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends MeasureRichTextAction> apply(@NotNull GetRichTextRunAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return GetRichTextRunAction.this.m36064p();
        }
    }

    /* renamed from: com.onyx.android.sdk.textbox.action.GetRichTextRunAction$b */
    /* loaded from: classes8.dex */
    public static final class C8004b<T, R> implements Function {
        public C8004b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final GetRichTextRunAction apply(@NotNull MeasureRichTextAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return GetRichTextRunAction.this.m36066r();
        }
    }

    /* renamed from: com.onyx.android.sdk.textbox.action.GetRichTextRunAction$c */
    /* loaded from: classes8.dex */
    public static final class C8005c<T, R> implements Function {
        public C8005c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends RichTextRun> apply(@NotNull GetRichTextRunAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return GetRichTextRunAction.this.m36062m();
        }
    }

    /* renamed from: com.onyx.android.sdk.textbox.action.GetRichTextRunAction$d */
    /* loaded from: classes8.dex */
    public static final class C8006d<T, R> implements Function {
        public C8006d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final GetRichTextRunAction apply(@Nullable RichTextRun richTextRun) {
            return GetRichTextRunAction.this.m36063o(richTextRun);
        }
    }

    public GetRichTextRunAction(@NotNull RenderContext renderContext, @NotNull Shape textShape) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Intrinsics.checkNotNullParameter(textShape, "textShape");
        this.renderContext = renderContext;
        this.textShape = textShape;
    }

    /* renamed from: n */
    public static final void m36061n(PublishSubject subject, GetRichTextRunAction this$0, String str) {
        Intrinsics.checkNotNullParameter(subject, "$subject");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNull(str);
        RichTextRun m36065q = this$0.m36065q(str);
        Intrinsics.checkNotNull(m36065q);
        RxjavaKt.done(subject, m36065q);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<GetRichTextRunAction> create() {
        Observable<GetRichTextRunAction> map = Observable.just(this).flatMap(new C8003a()).observeOn(getMainUIScheduler()).map(new C8004b()).flatMap(new C8005c()).map(new C8006d());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @Nullable
    public final RichTextRun getRichTextRun() {
        try {
            build().blockingSubscribe();
        } catch (Exception e) {
            Debug.INSTANCE.m32045e(GetRichTextRunAction.class, e);
        }
        return this.richTextRun;
    }

    /* renamed from: m */
    public final Observable<RichTextRun> m36062m() {
        final PublishSubject create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        this.renderContext.getTextRender().evaluateJavascript("javascript:RE.getTextRun()", new ValueCallback() { // from class: com.sunia.HTREnginev2.o2h
            @Override // android.webkit.ValueCallback
            public final void onReceiveValue(Object obj) {
                GetRichTextRunAction.m36061n(PublishSubject.this, this, (String) obj);
            }
        });
        return create;
    }

    /* renamed from: o */
    public final GetRichTextRunAction m36063o(RichTextRun textRun) {
        this.richTextRun = textRun;
        return this;
    }

    /* renamed from: p */
    public final Observable<MeasureRichTextAction> m36064p() {
        return new MeasureRichTextAction(this.renderContext, this.textShape).build();
    }

    /* renamed from: q */
    public final RichTextRun m36065q(String richTextRunStr) {
        FontInfo fontInfo;
        RichTextRun richTextRun = (RichTextRun) JSONUtils.INSTANCE.parseObject(richTextRunStr, RichTextRun.class);
        if (richTextRun == null) {
            return null;
        }
        for (RichTextRun.TextRunChar textRunChar : richTextRun.getItems()) {
            if (StringKt.isNotBlank(textRunChar.getStyle().getFontFamily())) {
                String fontPath = textRunChar.getStyle().getFontPath();
                if (fontPath == null || fontPath.length() == 0) {
                    RichTextRun.TextRunStyle style = textRunChar.getStyle();
                    Map<String, FontInfo> fontMap = this.renderContext.getTextRender().getFontMap();
                    style.setFontPath((fontMap == null || (fontInfo = fontMap.get(textRunChar.getStyle().getFontFamily())) == null) ? null : fontInfo.getFilePath());
                }
            }
        }
        return richTextRun;
    }

    /* renamed from: r */
    public final GetRichTextRunAction m36066r() {
        TextRender textRender = this.renderContext.getTextRender();
        Bitmap createBitmap = Bitmap.createBitmap(textRender.getMeasuredWidth(), textRender.getMeasuredHeight(), Bitmap.Config.RGB_565);
        Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(...)");
        textRender.draw(new Canvas(createBitmap));
        createBitmap.recycle();
        return this;
    }
}
