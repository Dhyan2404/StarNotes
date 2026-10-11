package com.onyx.galaxy.note.editor.action.audio;

import android.content.Context;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.data.shape.ShapeBean;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.utils.ShapeLinkUtils;
import com.onyx.android.sdk.replicator.note.data.audio.AudioInfoBean;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeLinkBean;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.ComputeBoxListActionsKt;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.request.page.FindBoxInfoByNotePageIdRequest;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\f\u0010\rJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0002R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioLinkShapeNameAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "Lcom/onyx/android/sdk/note/common/shape/Shape;", C6999h.f39688c, "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/shape/Shape;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class RenameAudioLinkShapeNameAction extends RxBaseAppAction<Boolean> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final Shape shape;

    /* renamed from: com.onyx.galaxy.note.editor.action.audio.RenameAudioLinkShapeNameAction$a */
    /* loaded from: classes9.dex */
    public static final class C11814a<T, R> implements Function {
        public C11814a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull RenameAudioLinkShapeNameAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RenameAudioLinkShapeNameAction.this.m45658l();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.audio.RenameAudioLinkShapeNameAction$b */
    /* loaded from: classes9.dex */
    public static final class C11815b<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ ShapeLinkBean f58165e;

        /* renamed from: f */
        public final /* synthetic */ Ref.ObjectRef<AudioInfoBean> f58166f;

        public C11815b(ShapeLinkBean shapeLinkBean, Ref.ObjectRef<AudioInfoBean> objectRef) {
            this.f58165e = shapeLinkBean;
            this.f58166f = objectRef;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull RenameAudioNameAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f58165e.setRemark(this.f58166f.element.getTitle());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.audio.RenameAudioLinkShapeNameAction$c */
    /* loaded from: classes9.dex */
    public static final class C11816c<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ ShapeLinkBean f58167e;

        /* renamed from: f */
        public final /* synthetic */ Ref.ObjectRef<AudioInfoBean> f58168f;

        public C11816c(ShapeLinkBean shapeLinkBean, Ref.ObjectRef<AudioInfoBean> objectRef) {
            this.f58167e = shapeLinkBean;
            this.f58168f = objectRef;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull RenameAudioNameAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f58167e.setValue(JSONUtils.INSTANCE.toJson(this.f58168f.element));
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.audio.RenameAudioLinkShapeNameAction$d */
    /* loaded from: classes9.dex */
    public static final class C11817d<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ ShapeLinkBean f58170f;

        public C11817d(ShapeLinkBean shapeLinkBean) {
            this.f58170f = shapeLinkBean;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull RenameAudioNameAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RenameAudioLinkShapeNameAction.this.shape.setText(JSONUtils.INSTANCE.toJson(this.f58170f));
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.audio.RenameAudioLinkShapeNameAction$e */
    /* loaded from: classes9.dex */
    public static final class C11818e<T, R> implements Function {
        public C11818e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends FindBoxInfoByNotePageIdRequest> apply(@NotNull RenameAudioNameAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RenameAudioLinkShapeNameAction renameAudioLinkShapeNameAction = RenameAudioLinkShapeNameAction.this;
            return ComputeBoxListActionsKt.findBoxInfoByNotePageId(renameAudioLinkShapeNameAction, renameAudioLinkShapeNameAction.shape.getPageUniqueId());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.audio.RenameAudioLinkShapeNameAction$f */
    /* loaded from: classes9.dex */
    public static final class C11819f<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ ShapeLinkBean f58173f;

        public C11819f(ShapeLinkBean shapeLinkBean) {
            this.f58173f = shapeLinkBean;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull FindBoxInfoByNotePageIdRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RenderContext.Companion companion = RenderContext.INSTANCE;
            BoxInfo virtualPageBoxInfo = it2.getVirtualPageBoxInfo();
            ShapeLinkUtils.INSTANCE.resetSize(companion.createByViewPort(RectKt.orEmpty(virtualPageBoxInfo != null ? virtualPageBoxInfo.getOriginRectFWithMargin() : null)), RenameAudioLinkShapeNameAction.this.shape, this.f58173f);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.audio.RenameAudioLinkShapeNameAction$g */
    /* loaded from: classes9.dex */
    public static final class C11820g<T, R> implements Function {

        /* renamed from: e */
        public static final C11820g<T, R> f58174e = new C11820g<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull FindBoxInfoByNotePageIdRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.TRUE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RenameAudioLinkShapeNameAction(@NotNull EditorBundle editorBundle, @NotNull Shape shape) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(shape, "shape");
        this.shape = shape;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable<Boolean> flatMap = Observable.just(this).observeOn(getMainUIScheduler()).flatMap(new C11814a());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [T, com.onyx.android.sdk.replicator.note.data.audio.AudioInfoBean] */
    /* JADX WARN: Type inference failed for: r0v6, types: [T, com.onyx.android.sdk.replicator.note.data.audio.AudioInfoBean] */
    /* renamed from: l */
    public final Observable<Boolean> m45658l() {
        JSONUtils jSONUtils = JSONUtils.INSTANCE;
        ShapeLinkBean shapeLinkBean = (ShapeLinkBean) jSONUtils.parseObject(this.shape.getText(), ShapeLinkBean.class);
        if (shapeLinkBean == null) {
            Observable<Boolean> just = Observable.just(Boolean.FALSE);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        ?? r0 = (AudioInfoBean) jSONUtils.parseObject(shapeLinkBean.getValue(), AudioInfoBean.class);
        if (r0 == 0) {
            Observable<Boolean> just2 = Observable.just(Boolean.FALSE);
            Intrinsics.checkNotNullExpressionValue(just2, "just(...)");
            return just2;
        }
        objectRef.element = r0;
        ShapeBean findShapeBean = EditorBundleKt.noteBundle(getEditorBundle()).findShapeBean((AudioInfoBean) objectRef.element);
        if (findShapeBean == null) {
            Observable<Boolean> just3 = Observable.just(Boolean.FALSE);
            Intrinsics.checkNotNullExpressionValue(just3, "just(...)");
            return just3;
        }
        ?? audioInfoBean = findShapeBean.getAudioInfoBean();
        if (audioInfoBean == 0) {
            Observable<Boolean> just4 = Observable.just(Boolean.FALSE);
            Intrinsics.checkNotNullExpressionValue(just4, "just(...)");
            return just4;
        }
        objectRef.element = audioInfoBean;
        RenameAudioNameAction renameAudioNameAction = new RenameAudioNameAction(getEditorBundle(), (AudioInfoBean) objectRef.element, null, 4, null);
        Context activityContext = getActivityContext();
        if (activityContext != null) {
            renameAudioNameAction.setActivityContext(activityContext);
        }
        Observable<Boolean> map = renameAudioNameAction.build().doOnNext(new C11815b(shapeLinkBean, objectRef)).doOnNext(new C11816c(shapeLinkBean, objectRef)).doOnNext(new C11817d(shapeLinkBean)).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).flatMap(new C11818e()).doOnNext(new C11819f(shapeLinkBean)).map(C11820g.f58174e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
