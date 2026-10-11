package com.onyx.android.sdk.universal.editor.action.excerpt;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.common.data.excerpt.SaveExcerptCollectionArgs;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.request.excerpt.CreateQuoteShapeRequest;
import com.onyx.android.sdk.note.request.excerpt.SaveExcerptCollectionRequest;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.EditorShapesActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.data.AddShapesBackgroundResultBean;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\u0017\u001a\u00020\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002R\"\u0010\u0007\u001a\u00020\u00068\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR(\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u000e0\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveExcerptCollectionAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "m", "Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;", "args", "Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;", "getArgs", "()Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;", "setArgs", "(Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;)V", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", C6999h.f39688c, "Ljava/util/List;", "getShapeList", "()Ljava/util/List;", "setShapeList", "(Ljava/util/List;)V", "shapeList", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSaveExcerptCollectionAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SaveExcerptCollectionAction.kt\ncom/onyx/android/sdk/universal/editor/action/excerpt/SaveExcerptCollectionAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,63:1\n288#2,2:64\n*S KotlinDebug\n*F\n+ 1 SaveExcerptCollectionAction.kt\ncom/onyx/android/sdk/universal/editor/action/excerpt/SaveExcerptCollectionAction\n*L\n55#1:64,2\n*E\n"})
/* loaded from: classes8.dex */
public final class SaveExcerptCollectionAction extends RxBaseAppAction<SaveExcerptCollectionAction> {
    public SaveExcerptCollectionArgs args;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public List<? extends Shape> shapeList;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.SaveExcerptCollectionAction$a */
    /* loaded from: classes8.dex */
    public static final class C8822a<T, R> implements Function {
        public C8822a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends SaveExcerptCollectionAction> apply(@NotNull SaveExcerptCollectionAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SaveExcerptCollectionAction.this.m37878l();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.SaveExcerptCollectionAction$b */
    /* loaded from: classes8.dex */
    public static final class C8823b<T, R> implements Function {
        public C8823b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends SaveExcerptCollectionAction> apply(@NotNull SaveExcerptCollectionAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SaveExcerptCollectionAction.this.m37879m();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.SaveExcerptCollectionAction$c */
    /* loaded from: classes8.dex */
    public static final class C8824c<T, R> implements Function {
        public C8824c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends AddShapesBackgroundResultBean> apply(@NotNull SaveExcerptCollectionAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SaveExcerptCollectionAction saveExcerptCollectionAction = SaveExcerptCollectionAction.this;
            return EditorShapesActionsKt.addShapeAndForceRenderNote(saveExcerptCollectionAction, saveExcerptCollectionAction.getArgs().getVirtualPageBoxInfo(), SaveExcerptCollectionAction.this.getShapeList());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.SaveExcerptCollectionAction$d */
    /* loaded from: classes8.dex */
    public static final class C8825d<T, R> implements Function {
        public C8825d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SaveExcerptCollectionAction apply(@NotNull AddShapesBackgroundResultBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SaveExcerptCollectionAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.SaveExcerptCollectionAction$e */
    /* loaded from: classes8.dex */
    public static final class C8826e<T, R> implements Function {
        public C8826e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SaveExcerptCollectionAction apply(@NotNull CreateQuoteShapeRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SaveExcerptCollectionAction.this.setShapeList(it2.getShapeList());
            return SaveExcerptCollectionAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.SaveExcerptCollectionAction$f */
    /* loaded from: classes8.dex */
    public static final class C8827f<T, R> implements Function {
        public C8827f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SaveExcerptCollectionAction apply(@NotNull SaveExcerptCollectionRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SaveExcerptCollectionAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SaveExcerptCollectionAction(@NotNull EditorBundle editorBundle) {
        super(editorBundle);
        List<? extends Shape> emptyList;
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.shapeList = emptyList;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<SaveExcerptCollectionAction> create() {
        Observable<SaveExcerptCollectionAction> map = Observable.just(this).flatMap(new C8822a()).flatMap(new C8823b()).flatMap(new C8824c()).map(new C8825d());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final SaveExcerptCollectionArgs getArgs() {
        SaveExcerptCollectionArgs saveExcerptCollectionArgs = this.args;
        if (saveExcerptCollectionArgs != null) {
            return saveExcerptCollectionArgs;
        }
        Intrinsics.throwUninitializedPropertyAccessException("args");
        return null;
    }

    @NotNull
    public final List<Shape> getShapeList() {
        return this.shapeList;
    }

    /* renamed from: l */
    public final Observable<SaveExcerptCollectionAction> m37878l() {
        BoxInfo virtualPageBoxInfo = getArgs().getVirtualPageBoxInfo();
        if (virtualPageBoxInfo == null || virtualPageBoxInfo.getNoteInfo() == null) {
            Observable<SaveExcerptCollectionAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable<SaveExcerptCollectionAction> map = RxBaseAppActionKt.submitRequestToNote(this, new CreateQuoteShapeRequest(EditorBundleKt.noteBundle(getEditorBundle()), getArgs())).map(new C8826e());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: m */
    public final Observable<SaveExcerptCollectionAction> m37879m() {
        Object obj;
        List<? extends Shape> list = this.shapeList;
        if (list == null || list.isEmpty()) {
            Observable<SaveExcerptCollectionAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Iterator<T> it2 = this.shapeList.iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            if (((Shape) obj).getType() == 42) {
                break;
            }
        }
        Shape shape = (Shape) obj;
        if (shape == null) {
            Observable<SaveExcerptCollectionAction> just2 = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just2, "just(...)");
            return just2;
        }
        SaveExcerptCollectionRequest saveExcerptCollectionRequest = new SaveExcerptCollectionRequest(EditorBundleKt.noteBundle(getEditorBundle()));
        saveExcerptCollectionRequest.setArgs(getArgs());
        saveExcerptCollectionRequest.setShape(shape);
        Observable<SaveExcerptCollectionAction> map = RxBaseAppActionKt.submitRequestToNote(this, saveExcerptCollectionRequest).map(new C8827f());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public final void setArgs(@NotNull SaveExcerptCollectionArgs saveExcerptCollectionArgs) {
        Intrinsics.checkNotNullParameter(saveExcerptCollectionArgs, "<set-?>");
        this.args = saveExcerptCollectionArgs;
    }

    public final void setShapeList(@NotNull List<? extends Shape> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.shapeList = list;
    }
}
