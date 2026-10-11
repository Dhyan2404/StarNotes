package com.onyx.galaxy.note.p048ui.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.RawResourceUtil;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.common.error.OnyxErrorHandler;
import com.onyx.galaxy.note.C10651R;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0016\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010(\u001a\u00020'¢\u0006\u0004\b)\u0010*B\u001b\b\u0016\u0012\u0006\u0010(\u001a\u00020'\u0012\b\u0010,\u001a\u0004\u0018\u00010+¢\u0006\u0004\b)\u0010-B#\b\u0016\u0012\u0006\u0010(\u001a\u00020'\u0012\b\u0010,\u001a\u0004\u0018\u00010+\u0012\u0006\u0010/\u001a\u00020.¢\u0006\u0004\b)\u00100J\b\u0010\u0003\u001a\u00020\u0002H\u0014J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0004J\u0018\u0010\u000b\u001a\u00020\u00002\u0010\u0010\n\u001a\f\u0012\u0004\u0012\u00020\b0\u0007j\u0002`\tJ\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\fJ\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\bH\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0002H\u0002J\b\u0010\u0013\u001a\u00020\u0002H\u0002R\u0016\u0010\u0006\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0016\u0010\u0018\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u0017R\u0014\u0010\u0019\u001a\u00020\u00168\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0012\u0010\u0017R \u0010\n\u001a\f\u0012\u0004\u0012\u00020\b0\u0007j\u0002`\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u001c\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\f0\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0016\u0010!\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010\u0015R\u0014\u0010$\u001a\u00020\b8\u0002X\u0082D¢\u0006\u0006\n\u0004\b\"\u0010#R\u0014\u0010&\u001a\u00020\b8\u0002X\u0082D¢\u0006\u0006\n\u0004\b%\u0010#¨\u00061"}, m61528d2 = {"Lcom/onyx/galaxy/note/ui/view/RichTextView;", "Lcom/onyx/galaxy/note/ui/view/MaxSizeWebView;", "", "onDetachedFromWindow", "", "autoFit", "fitContentHeight", "Lkotlin/Function0;", "", "Lcom/onyx/galaxy/note/ui/view/ScriptBuilder;", "scriptBuilder", "setScriptBuilder", "Ljava/lang/Runnable;", "runnable", "runAfterLoaded", "richText", "setRichText", "onDataLoaded", "m", "l", C4921e.f26537n, Constants.HASIDCALL_INDEX_SIG, "", "F", "pageScale", "standardDestiny", GoogleApiAvailabilityLight.f29016b, "Lkotlin/jvm/functions/Function0;", "", C4921e.f26528e, "Ljava/util/List;", "runnables", "p", "loaded", "q", Constants.STRING_SIG, "PLACEHOLDER_CONTENT", "r", "PLACEHOLDER_SCRIPT", "Landroid/content/Context;", "context", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nRichTextView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RichTextView.kt\ncom/onyx/galaxy/note/ui/view/RichTextView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,96:1\n1#2:97\n1855#3,2:98\n*S KotlinDebug\n*F\n+ 1 RichTextView.kt\ncom/onyx/galaxy/note/ui/view/RichTextView\n*L\n83#1:98,2\n*E\n"})
/* loaded from: classes9.dex */
public class RichTextView extends MaxSizeWebView {

    /* renamed from: k, reason: from kotlin metadata */
    public boolean fitContentHeight;

    /* renamed from: l, reason: from kotlin metadata */
    public float pageScale;

    /* renamed from: m, reason: from kotlin metadata */
    public final float standardDestiny;

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public Function0<String> scriptBuilder;

    /* renamed from: o, reason: from kotlin metadata */
    @NotNull
    public List<Runnable> runnables;

    /* renamed from: p, reason: from kotlin metadata */
    public boolean loaded;

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public final String PLACEHOLDER_CONTENT;

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final String PLACEHOLDER_SCRIPT;

    /* renamed from: com.onyx.galaxy.note.ui.view.RichTextView$a */
    /* loaded from: classes9.dex */
    public static final class C12828a<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ String f62221f;

        public C12828a(String str) {
            this.f62221f = str;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String apply(@NotNull Unit it2) {
            String replace$default;
            String replace$default2;
            Intrinsics.checkNotNullParameter(it2, "it");
            String contentOfRawResource = RawResourceUtil.INSTANCE.contentOfRawResource(ResManager.INSTANCE.getAppContext(), C10651R.raw.rich_text);
            if (contentOfRawResource == null) {
                contentOfRawResource = "";
            }
            replace$default = StringsKt__StringsJVMKt.replace$default(contentOfRawResource, RichTextView.this.PLACEHOLDER_CONTENT, this.f62221f, false, 4, (Object) null);
            replace$default2 = StringsKt__StringsJVMKt.replace$default(replace$default, RichTextView.this.PLACEHOLDER_SCRIPT, (String) RichTextView.this.scriptBuilder.invoke(), false, 4, (Object) null);
            return replace$default2;
        }
    }

    /* renamed from: com.onyx.galaxy.note.ui.view.RichTextView$b */
    /* loaded from: classes9.dex */
    public static final class C12829b<T> implements Consumer {
        public C12829b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RichTextView.this.openHtmlText(it2);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public RichTextView(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @NotNull
    public final RichTextView fitContentHeight(boolean autoFit) {
        this.fitContentHeight = autoFit;
        return this;
    }

    /* renamed from: l */
    public final void m51460l() {
        executeJavascriptVariable("document.getElementById('content').scrollHeight", Integer.TYPE, new Function1<Integer, Unit>() { // from class: com.onyx.galaxy.note.ui.view.RichTextView$fitContentHeight$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                invoke2(num);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable Integer num) {
                if (num != null) {
                    final int intValue = num.intValue();
                    final RichTextView richTextView = RichTextView.this;
                    ViewKt.setLayoutParams(richTextView, new Function1<ViewGroup.LayoutParams, Unit>() { // from class: com.onyx.galaxy.note.ui.view.RichTextView$fitContentHeight$2.1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Unit invoke(ViewGroup.LayoutParams layoutParams) {
                            invoke2(layoutParams);
                            return Unit.INSTANCE;
                        }

                        /* renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2(@NotNull ViewGroup.LayoutParams setLayoutParams) {
                            float f;
                            Intrinsics.checkNotNullParameter(setLayoutParams, "$this$setLayoutParams");
                            float f2 = intValue;
                            f = richTextView.pageScale;
                            setLayoutParams.height = ((int) (f2 * f)) + 30;
                        }
                    });
                }
            }
        });
    }

    /* renamed from: m */
    public final void m51461m() {
        this.pageScale = getContext().getResources().getDisplayMetrics().density / this.standardDestiny;
        getSettings().setLoadWithOverviewMode(false);
        setInitialScale((int) (this.pageScale * 100));
    }

    @Override // com.onyx.galaxy.note.p048ui.view.OnyxWebView
    public void onDataLoaded() {
        Iterator<T> it2 = this.runnables.iterator();
        while (it2.hasNext()) {
            ((Runnable) it2.next()).run();
        }
        if (this.fitContentHeight) {
            m51460l();
        }
        this.loaded = true;
    }

    @Override // com.onyx.galaxy.note.utils.AutoCloseWebView, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        this.runnables.clear();
        super.onDetachedFromWindow();
    }

    @NotNull
    public final RichTextView runAfterLoaded(@NotNull Runnable runnable) {
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        if (this.loaded) {
            runnable.run();
        } else {
            this.runnables.add(runnable);
        }
        return this;
    }

    public void setRichText(@NotNull String richText) {
        Intrinsics.checkNotNullParameter(richText, "richText");
        this.loaded = false;
        this.runnables.clear();
        OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
        Observable doOnNext = Observable.just(Unit.INSTANCE).observeOn(Schedulers.m61350io()).map(new C12828a(richText)).observeOn(AndroidSchedulers.mainThread()).doOnNext(new C12829b());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        OnyxErrorHandler.subscribeWithErrorHandler$default(onyxErrorHandler, doOnNext, null, null, 3, null);
    }

    @NotNull
    public final RichTextView setScriptBuilder(@NotNull Function0<String> scriptBuilder) {
        Intrinsics.checkNotNullParameter(scriptBuilder, "scriptBuilder");
        this.scriptBuilder = scriptBuilder;
        return this;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public RichTextView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RichTextView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        this.pageScale = 1.0f;
        this.standardDestiny = 1.2f;
        this.scriptBuilder = new Function0<String>() { // from class: com.onyx.galaxy.note.ui.view.RichTextView$scriptBuilder$1
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final String invoke() {
                return "";
            }
        };
        this.runnables = new ArrayList();
        this.PLACEHOLDER_CONTENT = "#{content}";
        this.PLACEHOLDER_SCRIPT = "#{script}";
        m51461m();
    }
}
