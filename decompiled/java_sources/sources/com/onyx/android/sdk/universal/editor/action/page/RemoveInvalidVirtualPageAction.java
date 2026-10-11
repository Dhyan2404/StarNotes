package com.onyx.android.sdk.universal.editor.action.page;

import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.Benchmark;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.replicator.note.p035db.VirtualModelProvider;
import com.onyx.android.sdk.replicator.note.p035db.VirtualPageQueryArgsKt;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualPageModel;
import com.onyx.android.sdk.universal.C8045R;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.action.render.RedrawNoteAction;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.request.AfterDocumentOpenRequest;
import com.onyx.android.sdk.universal.editor.request.page.CloseVirtualPolicyRequest;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000fJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0016\u0010\t\u001a\u00020\b2\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0002J\u0014\u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\u00032\u0006\u0010\n\u001a\u00020\bH\u0002¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/page/RemoveInvalidVirtualPageAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "", "validShapePageSet", "", "m", "count", "l", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class RemoveInvalidVirtualPageAction extends RxBaseAppAction<Boolean> {

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.RemoveInvalidVirtualPageAction$a */
    /* loaded from: classes8.dex */
    public static final class C9709a<T, R> implements Function {
        public C9709a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Long apply(@NotNull Set<String> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Long.valueOf(RemoveInvalidVirtualPageAction.this.m39533m(it2));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.RemoveInvalidVirtualPageAction$b */
    /* loaded from: classes8.dex */
    public static final class C9713b<T> implements Consumer {
        public C9713b() {
        }

        /* renamed from: a */
        public final void m39537a(long j) {
            ToastUtils.show$default(ToastUtils.INSTANCE, (CharSequence) (RemoveInvalidVirtualPageAction.this.getAppContext().getString(C8045R.string.page_removed) + ':' + j), false, 2, (Object) null);
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m39537a(((Number) obj).longValue());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.RemoveInvalidVirtualPageAction$c */
    /* loaded from: classes8.dex */
    public static final class C9714c<T, R> implements Function {
        public C9714c() {
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends Object> m39538a(long j) {
            return RemoveInvalidVirtualPageAction.this.m39532l(j);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m39538a(((Number) obj).longValue());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.RemoveInvalidVirtualPageAction$d */
    /* loaded from: classes8.dex */
    public static final class C9715d<T, R> implements Function {

        /* renamed from: e */
        public static final C9715d<T, R> f50209e = new C9715d<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.TRUE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RemoveInvalidVirtualPageAction(@NotNull EditorBundle editorBundle) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable<Boolean> map = DocCommonActionsKt.createNoteObservable(getEditorBundle(), new Function1<NoteBundle, Set<String>>() { // from class: com.onyx.android.sdk.universal.editor.action.page.RemoveInvalidVirtualPageAction$create$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Set<String> invoke(@NotNull NoteBundle it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2.getNoteDoc().getValidShapePageSet();
            }
        }).observeOn(EditorBundleKt.coreScheduler(getEditorBundle())).map(new C9709a()).observeOn(getMainUIScheduler()).doOnNext(new C9713b()).flatMap(new C9714c()).map(C9715d.f50209e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final Observable<?> m39532l(final long count) {
        Observable just = Observable.just(Long.valueOf(count));
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return RxjavaKt.flatMapIf(RxjavaKt.flatMapIf(just, new Function1<Long, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.page.RemoveInvalidVirtualPageAction$afterRemoved$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Long it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(count > 0);
            }
        }, new Function1<Long, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.page.RemoveInvalidVirtualPageAction$afterRemoved$2

            /* renamed from: com.onyx.android.sdk.universal.editor.action.page.RemoveInvalidVirtualPageAction$afterRemoved$2$a */
            /* loaded from: classes8.dex */
            public static final class C9710a<T, R> implements Function {

                /* renamed from: e */
                public final /* synthetic */ RemoveInvalidVirtualPageAction f50205e;

                public C9710a(RemoveInvalidVirtualPageAction removeInvalidVirtualPageAction) {
                    this.f50205e = removeInvalidVirtualPageAction;
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override // io.reactivex.rxjava3.functions.Function
                @NotNull
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final ObservableSource<? extends AfterDocumentOpenRequest> apply(@NotNull CloseVirtualPolicyRequest it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    RemoveInvalidVirtualPageAction removeInvalidVirtualPageAction = this.f50205e;
                    return RxBaseAppActionKt.submitRequestToCore(removeInvalidVirtualPageAction, new AfterDocumentOpenRequest(removeInvalidVirtualPageAction.getEditorBundle().getWorkBundle(), null, 2, 0 == true ? 1 : 0));
                }
            }

            /* renamed from: com.onyx.android.sdk.universal.editor.action.page.RemoveInvalidVirtualPageAction$afterRemoved$2$b */
            /* loaded from: classes8.dex */
            public static final class C9711b<T, R> implements Function {

                /* renamed from: e */
                public final /* synthetic */ RemoveInvalidVirtualPageAction f50206e;

                public C9711b(RemoveInvalidVirtualPageAction removeInvalidVirtualPageAction) {
                    this.f50206e = removeInvalidVirtualPageAction;
                }

                @Override // io.reactivex.rxjava3.functions.Function
                @NotNull
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final ObservableSource<? extends RedrawNoteAction> apply(@NotNull AfterDocumentOpenRequest it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return new RedrawNoteAction(this.f50206e.getEditorBundle()).build();
                }
            }

            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull Long it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                RemoveInvalidVirtualPageAction removeInvalidVirtualPageAction = RemoveInvalidVirtualPageAction.this;
                Observable<? extends Object> flatMap = RxBaseAppActionKt.submitRequestToCore(removeInvalidVirtualPageAction, new CloseVirtualPolicyRequest(removeInvalidVirtualPageAction.getEditorBundle().getWorkBundle())).flatMap(new C9710a(RemoveInvalidVirtualPageAction.this)).flatMap(new C9711b(RemoveInvalidVirtualPageAction.this));
                Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
                return flatMap;
            }
        }), new Function1<Object, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.page.RemoveInvalidVirtualPageAction$afterRemoved$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Object it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(count > 0);
            }
        }, new Function1<Object, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.page.RemoveInvalidVirtualPageAction$afterRemoved$4
            {
                super(1);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull Object it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return DocCommonActionsKt.createNoteObservable(RemoveInvalidVirtualPageAction.this.getEditorBundle(), new Function1<NoteBundle, Unit>() { // from class: com.onyx.android.sdk.universal.editor.action.page.RemoveInvalidVirtualPageAction$afterRemoved$4.1
                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(NoteBundle noteBundle) {
                        invoke2(noteBundle);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull NoteBundle it3) {
                        Intrinsics.checkNotNullParameter(it3, "it");
                        it3.getCommandManager().reset();
                    }
                });
            }
        });
    }

    /* renamed from: m */
    public final long m39533m(Set<String> validShapePageSet) {
        final Ref.LongRef longRef = new Ref.LongRef();
        final CBQueryArgs andWith = VirtualPageQueryArgsKt.loadValidVirtualPageQuery().andWith(CouchUtils.INSTANCE.notInExpression(CouchFieldKey.KEY_UNIQUE_ID, validShapePageSet));
        final VirtualModelProvider virtualModelProvider = getEditorBundle().getWorkBundle().getVirtualModelProvider();
        final Benchmark benchmark = new Benchmark();
        virtualModelProvider.loadVirtualPageModelListInBatch(andWith, new Function1<List<? extends VirtualPageModel>, Unit>() { // from class: com.onyx.android.sdk.universal.editor.action.page.RemoveInvalidVirtualPageAction$apply$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(List<? extends VirtualPageModel> list) {
                invoke2((List<VirtualPageModel>) list);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull List<VirtualPageModel> models) {
                Intrinsics.checkNotNullParameter(models, "models");
                Ref.LongRef.this.element += models.size();
                Iterator<T> it2 = models.iterator();
                while (it2.hasNext()) {
                    ((VirtualPageModel) it2.next()).setStatus(2);
                }
                virtualModelProvider.saveVirtualPageList(models);
                andWith.m72252setOffset(0);
                benchmark.reportAndRestart("removeInvalidPage totalCount = " + Ref.LongRef.this.element);
            }
        });
        return longRef.element;
    }
}
