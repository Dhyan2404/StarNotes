package com.onyx.galaxy.note.editor.action.audio;

import android.content.Context;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.common.document.doc.TransformShapeContext;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.replicator.note.data.audio.AudioInfoBean;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppShapeAction;
import com.onyx.android.sdk.universal.editor.action.extension.DisplayActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.EditorShapesActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.ForceRenderSliceListActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.RenderRequestManagerKt;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.events.note.AudioInfoBeanRenamedEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.request.audio.RenameAudioLinkShapeRequest;
import com.onyx.android.sdk.universal.editor.request.audio.RenameAudioNameRequest;
import com.onyx.galaxy.note.editor.action.audio.RenameAudioNameAction;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B#\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u0011\u001a\u00020\u000e\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0016\u0010\u0017J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0002H\u0002J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00040\u00022\u0006\u0010\u0006\u001a\u00020\u0004H\u0002J\u0016\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\u00022\u0006\u0010\t\u001a\u00020\bH\u0002J\u0016\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u00022\u0006\u0010\u0006\u001a\u00020\u0004H\u0002R\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppShapeAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "q", "newName", "p", "Lcom/onyx/android/sdk/universal/editor/request/audio/RenameAudioLinkShapeRequest;", AbstractLogger.REQUEST, "", GoogleApiAvailabilityLight.f29016b, "", C4921e.f26528e, "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;", "i", "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;", "audioInfoBean", "j", Constants.STRING_SIG, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;Ljava/lang/String;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class RenameAudioNameAction extends RxBaseAppShapeAction<RenameAudioNameAction> {

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final AudioInfoBean audioInfoBean;

    /* renamed from: j, reason: from kotlin metadata */
    @Nullable
    public String newName;

    /* renamed from: com.onyx.galaxy.note.editor.action.audio.RenameAudioNameAction$a */
    /* loaded from: classes9.dex */
    public static final class C11821a<T, R> implements Function {
        public C11821a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends String> apply(@NotNull RenameAudioNameAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RenameAudioNameAction.this.m45671q();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.audio.RenameAudioNameAction$b */
    /* loaded from: classes9.dex */
    public static final class C11822b<T, R> implements Function {
        public C11822b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends String> apply(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RenameAudioNameAction.this.m45670p(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.audio.RenameAudioNameAction$c */
    /* loaded from: classes9.dex */
    public static final class C11823c<T, R> implements Function {
        public C11823c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RenameAudioNameAction.this.m45669o(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.audio.RenameAudioNameAction$d */
    /* loaded from: classes9.dex */
    public static final class C11824d<T> implements Predicate {

        /* renamed from: e */
        public static final C11824d<T> f58180e = new C11824d<>();

        /* renamed from: a */
        public final boolean m45675a(boolean z) {
            return !z;
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        public /* bridge */ /* synthetic */ boolean test(Object obj) {
            return m45675a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.audio.RenameAudioNameAction$e */
    /* loaded from: classes9.dex */
    public static final class C11825e<T, R> implements Function {
        public C11825e() {
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends Object> m45676a(boolean z) {
            return RenderRequestManagerKt.safeClearAllNoteSliceCache(RenameAudioNameAction.this);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m45676a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.audio.RenameAudioNameAction$f */
    /* loaded from: classes9.dex */
    public static final class C11826f<T, R> implements Function {
        public C11826f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DisplayActionsKt.display(RenameAudioNameAction.this);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.audio.RenameAudioNameAction$g */
    /* loaded from: classes9.dex */
    public static final class C11827g<T, R> implements Function {
        public C11827g() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final RenameAudioNameAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RenameAudioNameAction.this;
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.audio.RenameAudioNameAction$h */
    /* loaded from: classes9.dex */
    public static final class C11828h<T, R> implements Function {
        public C11828h() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Map<Shape, BoxInfo> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ForceRenderSliceListActionsKt.forceRenderNoteDirtyRectToDisplay(RenameAudioNameAction.this, it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.audio.RenameAudioNameAction$i */
    /* loaded from: classes9.dex */
    public static final class C11829i<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ RenameAudioNameRequest f58185e;

        public C11829i(RenameAudioNameRequest renameAudioNameRequest) {
            this.f58185e = renameAudioNameRequest;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull RenameAudioNameRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.valueOf(this.f58185e.getDuplicatedName());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.audio.RenameAudioNameAction$j */
    /* loaded from: classes9.dex */
    public static final class C11830j<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ String f58186e;

        public C11830j(String str) {
            this.f58186e = str;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f58186e;
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.audio.RenameAudioNameAction$k */
    /* loaded from: classes9.dex */
    public static final class C11831k<T> implements Consumer {
        public C11831k() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RenameAudioNameAction.this.newName = it2;
        }
    }

    public /* synthetic */ RenameAudioNameAction(EditorBundle editorBundle, AudioInfoBean audioInfoBean, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(editorBundle, audioInfoBean, (i & 4) != 0 ? null : str);
    }

    /* renamed from: m */
    public static final void m45667m(RenameAudioNameAction this$0, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        EditorBundleKt.postEvent(this$0.getEditorBundle(), new AudioInfoBeanRenamedEvent(this$0.audioInfoBean));
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<RenameAudioNameAction> create() {
        Observable filter = Observable.just(this).observeOn(getMainUIScheduler()).flatMap(new C11821a()).flatMap(new C11822b()).flatMap(new C11823c()).filter(C11824d.f58180e);
        Intrinsics.checkNotNullExpressionValue(filter, "filter(...)");
        Observable<RenameAudioNameAction> map = RxjavaKt.doOnNextIf(filter, new Function1<Boolean, Boolean>() { // from class: com.onyx.galaxy.note.editor.action.audio.RenameAudioNameAction$create$5
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Boolean it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(RenameAudioNameAction.this.getPostShapeChangedEvent());
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.akl
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                RenameAudioNameAction.m45667m(RenameAudioNameAction.this, ((Boolean) obj).booleanValue());
            }
        }).flatMap(new C11825e()).flatMap(new C11826f()).map(new C11827g());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: n */
    public final Observable<Object> m45668n(RenameAudioLinkShapeRequest request) {
        TransformShapeContext transformShapeContext = request.getTransformShapeContext();
        Intrinsics.checkNotNull(transformShapeContext);
        Observable<Object> flatMap = EditorShapesActionsKt.addCrossPageShapes$default(this, transformShapeContext, null, 2, null).flatMap(new C11828h());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: o */
    public final Observable<Boolean> m45669o(String newName) {
        RenameAudioNameRequest renameAudioNameRequest = new RenameAudioNameRequest(getEditorBundle(), this.audioInfoBean, newName, false);
        Observable<Boolean> map = RxBaseAppActionKt.submitRequestToNote(this, renameAudioNameRequest).map(new C11829i(renameAudioNameRequest));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: p */
    public final Observable<String> m45670p(String newName) {
        final RenameAudioLinkShapeRequest renameAudioLinkShapeRequest = new RenameAudioLinkShapeRequest(getEditorBundle(), this.audioInfoBean, newName);
        Observable map = RxjavaKt.flatMapIf(RxBaseAppActionKt.submitRequestToNote(this, renameAudioLinkShapeRequest), new Function1<RenameAudioLinkShapeRequest, Boolean>() { // from class: com.onyx.galaxy.note.editor.action.audio.RenameAudioNameAction$renameListShape$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull RenameAudioLinkShapeRequest it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(RenameAudioLinkShapeRequest.this.getTransformShapeContext() != null);
            }
        }, new Function1<RenameAudioLinkShapeRequest, Observable<? extends Object>>() { // from class: com.onyx.galaxy.note.editor.action.audio.RenameAudioNameAction$renameListShape$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull RenameAudioLinkShapeRequest it2) {
                Observable<? extends Object> m45668n;
                Intrinsics.checkNotNullParameter(it2, "it");
                m45668n = RenameAudioNameAction.this.m45668n(renameAudioLinkShapeRequest);
                return m45668n;
            }
        }).map(new C11830j(newName));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: q */
    public final Observable<String> m45671q() {
        if (StringKt.isNotBlank(this.newName)) {
            String str = this.newName;
            Observable<String> just = Observable.just(str != null ? str : "");
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Context activityContext = getActivityContext();
        if (activityContext != null) {
            Observable<String> doOnNext = new ShowRenameAudioNameDialogAction(getEditorBundle(), this.audioInfoBean, this.newName).setActivityContext(activityContext).build().doOnNext(new C11831k());
            Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
            return doOnNext;
        }
        String str2 = this.newName;
        Observable<String> just2 = Observable.just(str2 != null ? str2 : "");
        Intrinsics.checkNotNullExpressionValue(just2, "just(...)");
        return just2;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RenameAudioNameAction(@NotNull EditorBundle editorBundle, @NotNull AudioInfoBean audioInfoBean, @Nullable String str) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(audioInfoBean, "audioInfoBean");
        this.audioInfoBean = audioInfoBean;
        this.newName = str;
    }
}
