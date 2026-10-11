package com.onyx.android.sdk.universal.editor.action;

import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.note.request.SaveNoteModelRequest;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.action.tag.CheckAndUpdateTagPageIndexAction;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.request.SaveDocRequest;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/SaveDocInfoAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "m", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class SaveDocInfoAction extends RxBaseAppAction<SaveDocInfoAction> {

    /* renamed from: com.onyx.android.sdk.universal.editor.action.SaveDocInfoAction$a */
    /* loaded from: classes8.dex */
    public static final class C8371a<T, R> implements Function {
        public C8371a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends SaveDocInfoAction> apply(@NotNull SaveDocInfoAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SaveDocInfoAction.this.m37075m();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.SaveDocInfoAction$b */
    /* loaded from: classes8.dex */
    public static final class C8372b<T, R> implements Function {
        public C8372b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends SaveDocInfoAction> apply(@NotNull SaveDocInfoAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SaveDocInfoAction.this.m37074l();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.SaveDocInfoAction$c */
    /* loaded from: classes8.dex */
    public static final class C8373c<T, R> implements Function {
        public C8373c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends CheckAndUpdateTagPageIndexAction> apply(@NotNull SaveDocInfoAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new CheckAndUpdateTagPageIndexAction(SaveDocInfoAction.this.getEditorBundle()).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.SaveDocInfoAction$d */
    /* loaded from: classes8.dex */
    public static final class C8374d<T, R> implements Function {
        public C8374d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SaveDocInfoAction apply(@NotNull CheckAndUpdateTagPageIndexAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SaveDocInfoAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.SaveDocInfoAction$e */
    /* loaded from: classes8.dex */
    public static final class C8375e<T, R> implements Function {
        public C8375e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SaveDocInfoAction apply(@NotNull SaveNoteModelRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SaveDocInfoAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.SaveDocInfoAction$f */
    /* loaded from: classes8.dex */
    public static final class C8376f<T, R> implements Function {
        public C8376f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SaveDocInfoAction apply(@NotNull SaveDocRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SaveDocInfoAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SaveDocInfoAction(@NotNull EditorBundle editorBundle) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<SaveDocInfoAction> create() {
        Observable<SaveDocInfoAction> map = Observable.just(this).flatMap(new C8371a()).flatMap(new C8372b()).flatMap(new C8373c()).map(new C8374d());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final Observable<SaveDocInfoAction> m37074l() {
        Observable<SaveDocInfoAction> map = RxBaseAppActionKt.submitRequestToNote(this, new SaveNoteModelRequest(EditorBundleKt.noteBundle(getEditorBundle()))).map(new C8375e());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: m */
    public final Observable<SaveDocInfoAction> m37075m() {
        if (EditorBundleKt.isDocumentPending(getEditorBundle())) {
            Observable<SaveDocInfoAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable<SaveDocInfoAction> map = RxBaseAppActionKt.submitRequestToCore(this, new SaveDocRequest(getEditorBundle().getWorkBundle())).map(new C8376f());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
