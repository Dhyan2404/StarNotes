package com.onyx.android.sdk.universal.editor.action.excerpt;

import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.reader.api.ReaderSelection;
import com.onyx.android.sdk.reader.data.SelectOnScreenArgs;
import com.onyx.android.sdk.reader.request.SelectOnScreenRequest;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.request.ObtainVirtualPageRequest;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010\f\u001a\u00020\u0007¢\u0006\u0004\b\u001f\u0010 J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002R\u0017\u0010\f\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR$\u0010\u0014\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\"\u0010\u001c\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001b¨\u0006!"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/excerpt/SelectOnScreenAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "m", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/reader/data/SelectOnScreenArgs;", C6999h.f39688c, "Lcom/onyx/android/sdk/reader/data/SelectOnScreenArgs;", "getArgs", "()Lcom/onyx/android/sdk/reader/data/SelectOnScreenArgs;", "args", "Lcom/onyx/android/sdk/reader/api/ReaderSelection;", "i", "Lcom/onyx/android/sdk/reader/api/ReaderSelection;", "getSelection", "()Lcom/onyx/android/sdk/reader/api/ReaderSelection;", "setSelection", "(Lcom/onyx/android/sdk/reader/api/ReaderSelection;)V", "selection", "", "j", Constants.STRING_SIG, "getContentPath", "()Ljava/lang/String;", "setContentPath", "(Ljava/lang/String;)V", "contentPath", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/reader/data/SelectOnScreenArgs;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class SelectOnScreenAction extends RxBaseAppAction<SelectOnScreenAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final SelectOnScreenArgs args;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public ReaderSelection selection;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public String contentPath;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.SelectOnScreenAction$a */
    /* loaded from: classes8.dex */
    public static final class C8848a<T, R> implements Function {
        public C8848a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends SelectOnScreenAction> apply(@NotNull EditorBundle it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SelectOnScreenAction.this.m37912m();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.SelectOnScreenAction$b */
    /* loaded from: classes8.dex */
    public static final class C8849b<T, R> implements Function {
        public C8849b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends SelectOnScreenAction> apply(@NotNull SelectOnScreenAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SelectOnScreenAction.this.m37911l();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.SelectOnScreenAction$c */
    /* loaded from: classes8.dex */
    public static final class C8850c<T, R> implements Function {
        public C8850c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends SelectOnScreenAction> apply(@NotNull SelectOnScreenAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SelectOnScreenAction.this.m37913n();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.SelectOnScreenAction$d */
    /* loaded from: classes8.dex */
    public static final class C8851d<T, R> implements Function {
        public C8851d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SelectOnScreenAction apply(@NotNull SelectOnScreenAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SelectOnScreenAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.SelectOnScreenAction$e */
    /* loaded from: classes8.dex */
    public static final class C8852e<T, R> implements Function {
        public C8852e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SelectOnScreenAction apply(@NotNull ObtainVirtualPageRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            VirtualPage virtualPage = it2.getVirtualPage();
            if (virtualPage == null) {
                return SelectOnScreenAction.this;
            }
            SelectOnScreenAction.this.getArgs().setPath(virtualPage.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getContentPath());
            SelectOnScreenAction.this.setContentPath(virtualPage.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getContentPath());
            Debug.INSTANCE.m32035d(SelectOnScreenAction.this.getClass(), "onStartSelect, contentPath = " + SelectOnScreenAction.this.getContentPath(), new Object[0]);
            return SelectOnScreenAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.SelectOnScreenAction$f */
    /* loaded from: classes8.dex */
    public static final class C8853f<T> implements Predicate {

        /* renamed from: e */
        public static final C8853f<T> f48599e = new C8853f<>();

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull SelectOnScreenRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return !it2.getAbort();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.SelectOnScreenAction$g */
    /* loaded from: classes8.dex */
    public static final class C8854g<T, R> implements Function {
        public C8854g() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SelectOnScreenAction apply(@NotNull SelectOnScreenRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SelectOnScreenAction.this.setSelection(it2.getSelection());
            return SelectOnScreenAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SelectOnScreenAction(@NotNull EditorBundle editorBundle, @NotNull SelectOnScreenArgs args) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(args, "args");
        this.args = args;
        this.contentPath = "";
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<SelectOnScreenAction> create() {
        Observable<SelectOnScreenAction> map = Observable.just(this).flatMap(new C8849b()).flatMap(new C8850c()).map(new C8851d());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final SelectOnScreenArgs getArgs() {
        return this.args;
    }

    @NotNull
    public final String getContentPath() {
        return this.contentPath;
    }

    @Nullable
    public final ReaderSelection getSelection() {
        return this.selection;
    }

    /* renamed from: l */
    public final Observable<SelectOnScreenAction> m37911l() {
        Observable flatMap = getEditorBundle().cancelPendingRequest(Reflection.getOrCreateKotlinClass(SelectOnScreenRequest.class)).flatMap(new C8848a());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: m */
    public final Observable<SelectOnScreenAction> m37912m() {
        boolean isBlank;
        isBlank = StringsKt__StringsJVMKt.isBlank(this.args.getPath());
        if (!(!isBlank)) {
            Observable<SelectOnScreenAction> map = RxBaseAppActionKt.submitRequestToCore(this, new ObtainVirtualPageRequest(getEditorBundle().getWorkBundle(), this.args.getVirtualPageInfo())).map(new C8852e());
            Intrinsics.checkNotNullExpressionValue(map, "map(...)");
            return map;
        }
        this.contentPath = this.args.getPath();
        Observable<SelectOnScreenAction> just = Observable.just(this);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    /* renamed from: n */
    public final Observable<SelectOnScreenAction> m37913n() {
        Observable<SelectOnScreenAction> map = RxBaseAppActionKt.submitRequestToReader(this, new SelectOnScreenRequest(EditorBundleKt.readerBundle(getEditorBundle()), this.args)).filter(C8853f.f48599e).map(new C8854g());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public final void setContentPath(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.contentPath = str;
    }

    public final void setSelection(@Nullable ReaderSelection readerSelection) {
        this.selection = readerSelection;
    }
}
