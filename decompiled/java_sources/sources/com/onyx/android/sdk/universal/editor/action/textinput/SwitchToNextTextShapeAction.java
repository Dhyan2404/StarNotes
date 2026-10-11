package com.onyx.android.sdk.universal.editor.action.textinput;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.request.textinput.GetNextTextShapeRequest;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.common.EnsureNotePageAction;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B!\u0012\u0006\u0010\u001f\u001a\u00020\u001e\u0012\u0006\u0010\r\u001a\u00020\b\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b \u0010!J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002R\u0017\u0010\r\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u0019\u0010\u0013\u001a\u0004\u0018\u00010\u000e8\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R$\u0010\u0018\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0010\u001a\u0004\b\u0015\u0010\u0012\"\u0004\b\u0016\u0010\u0017R\"\u0010\u0005\u001a\u00020\u00048\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0005\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001d¨\u0006\""}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/textinput/SwitchToNextTextShapeAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "notePage", "", "l", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", C6999h.f39688c, "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "getVirtualBoxInfo", "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualBoxInfo", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "i", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "getShape", "()Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", "j", "getNextShape", "setNextShape", "(Lcom/onyx/android/sdk/note/common/shape/Shape;)V", "nextShape", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "getNotePage", "()Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "setNotePage", "(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)V", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/note/common/shape/Shape;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class SwitchToNextTextShapeAction extends RxBaseAppAction<SwitchToNextTextShapeAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final BoxInfo virtualBoxInfo;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public final Shape shape;

    /* renamed from: j, reason: from kotlin metadata */
    @Nullable
    public Shape nextShape;
    public NotePage notePage;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.textinput.SwitchToNextTextShapeAction$a */
    /* loaded from: classes8.dex */
    public static final class C10236a<T> implements Consumer {
        public C10236a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull NotePage it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SwitchToNextTextShapeAction.this.setNotePage(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.textinput.SwitchToNextTextShapeAction$b */
    /* loaded from: classes8.dex */
    public static final class C10237b<T, R> implements Function {
        public C10237b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Unit> apply(@NotNull NotePage it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SwitchToNextTextShapeAction.this.m40462l(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.textinput.SwitchToNextTextShapeAction$c */
    /* loaded from: classes8.dex */
    public static final class C10238c<T, R> implements Function {
        public C10238c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SwitchToNextTextShapeAction apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SwitchToNextTextShapeAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.textinput.SwitchToNextTextShapeAction$d */
    /* loaded from: classes8.dex */
    public static final class C10239d<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ GetNextTextShapeRequest f51147f;

        public C10239d(GetNextTextShapeRequest getNextTextShapeRequest) {
            this.f51147f = getNextTextShapeRequest;
        }

        /* renamed from: a */
        public final void m40466a(@NotNull GetNextTextShapeRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SwitchToNextTextShapeAction.this.setNextShape(this.f51147f.getNextShape());
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m40466a((GetNextTextShapeRequest) obj);
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SwitchToNextTextShapeAction(@NotNull EditorBundle editorBundle, @NotNull BoxInfo virtualBoxInfo, @Nullable Shape shape) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(virtualBoxInfo, "virtualBoxInfo");
        this.virtualBoxInfo = virtualBoxInfo;
        this.shape = shape;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<SwitchToNextTextShapeAction> create() {
        Observable<SwitchToNextTextShapeAction> map = new EnsureNotePageAction(getEditorBundle(), this.virtualBoxInfo).create().doOnNext(new C10236a()).flatMap(new C10237b()).map(new C10238c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @Nullable
    public final Shape getNextShape() {
        return this.nextShape;
    }

    @NotNull
    public final NotePage getNotePage() {
        NotePage notePage = this.notePage;
        if (notePage != null) {
            return notePage;
        }
        Intrinsics.throwUninitializedPropertyAccessException("notePage");
        return null;
    }

    @Nullable
    public final Shape getShape() {
        return this.shape;
    }

    @NotNull
    public final BoxInfo getVirtualBoxInfo() {
        return this.virtualBoxInfo;
    }

    /* renamed from: l */
    public final Observable<Unit> m40462l(NotePage notePage) {
        GetNextTextShapeRequest getNextTextShapeRequest = new GetNextTextShapeRequest(EditorBundleKt.noteBundle(getEditorBundle()), notePage, this.shape);
        Observable<Unit> map = RxBaseAppActionKt.submitRequestToNote(this, getNextTextShapeRequest).map(new C10239d(getNextTextShapeRequest));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public final void setNextShape(@Nullable Shape shape) {
        this.nextShape = shape;
    }

    public final void setNotePage(@NotNull NotePage notePage) {
        Intrinsics.checkNotNullParameter(notePage, "<set-?>");
        this.notePage = notePage;
    }
}
