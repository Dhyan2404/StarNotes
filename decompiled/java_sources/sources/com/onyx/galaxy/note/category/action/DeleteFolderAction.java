package com.onyx.galaxy.note.category.action;

import android.app.Dialog;
import android.content.Context;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.p039ui.CommonDialog;
import com.onyx.android.sdk.replicator.note.p035db.NoteModelProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.NoteProvider;
import com.onyx.android.sdk.replicator.note.p035db.SortProvider;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.action.DeleteFolderAction;
import com.onyx.galaxy.note.common.action.BaseNoteManagementAction;
import com.onyx.galaxy.note.settings.data.NoteConfigKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.subjects.PublishSubject;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B%\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u0012\u0006\u0010\u0012\u001a\u00020\u000f\u0012\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0013¢\u0006\u0004\b!\u0010\"J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0016J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0002J\u0014\u0010\b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u0003H\u0002J\b\u0010\n\u001a\u00020\tH\u0002R\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0014\u0010\u0012\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0016\u0010\u001a\u001a\u00020\u00178\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001e\u001a\u00020\u001b8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u001c\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00070\u00138\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001f\u0010\u0015¨\u0006#"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/DeleteFolderAction;", "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "r", "", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "q", "", "p", "Landroid/content/Context;", C6998g.f39679a, "Landroid/content/Context;", "context", "", C6999h.f39688c, Constants.STRING_SIG, "title", "", "i", "Ljava/util/List;", "folderIds", "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", "j", "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", CouchFieldKey.KEY_PROVIDER, "Lcom/onyx/android/sdk/replicator/note/db/SortProvider;", C4921e.f26537n, "Lcom/onyx/android/sdk/replicator/note/db/SortProvider;", "sortProvider", "l", "notes", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nDeleteFolderAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeleteFolderAction.kt\ncom/onyx/galaxy/note/category/action/DeleteFolderAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,118:1\n766#2:119\n857#2,2:120\n*S KotlinDebug\n*F\n+ 1 DeleteFolderAction.kt\ncom/onyx/galaxy/note/category/action/DeleteFolderAction\n*L\n57#1:119\n57#1:120,2\n*E\n"})
/* loaded from: classes9.dex */
public final class DeleteFolderAction extends BaseNoteManagementAction<Boolean> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final String title;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final List<String> folderIds;

    /* renamed from: j, reason: from kotlin metadata */
    public NoteProvider provider;

    /* renamed from: k, reason: from kotlin metadata */
    public SortProvider sortProvider;

    /* renamed from: l, reason: from kotlin metadata */
    public List<SyncNoteModel> notes;

    /* renamed from: com.onyx.galaxy.note.category.action.DeleteFolderAction$a */
    /* loaded from: classes9.dex */
    public static final class C10796a<T> implements Consumer {
        public C10796a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull NoteProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DeleteFolderAction.this.provider = it2;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.DeleteFolderAction$b */
    /* loaded from: classes9.dex */
    public static final class C10797b<T, R> implements Function {
        public C10797b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends SortProvider> apply(@NotNull NoteProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DeleteFolderAction.this.createSortProviderObservable();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.DeleteFolderAction$c */
    /* loaded from: classes9.dex */
    public static final class C10798c<T> implements Consumer {
        public C10798c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull SortProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DeleteFolderAction.this.sortProvider = it2;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.DeleteFolderAction$d */
    /* loaded from: classes9.dex */
    public static final class C10799d<T, R> implements Function {
        public C10799d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<SyncNoteModel>> apply(@NotNull SortProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DeleteFolderAction.this.m42197q();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.DeleteFolderAction$e */
    /* loaded from: classes9.dex */
    public static final class C10800e<T> implements Consumer {
        public C10800e() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<? extends SyncNoteModel> it2) {
            List mutableList;
            Intrinsics.checkNotNullParameter(it2, "it");
            DeleteFolderAction deleteFolderAction = DeleteFolderAction.this;
            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) it2);
            deleteFolderAction.notes = mutableList;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.DeleteFolderAction$f */
    /* loaded from: classes9.dex */
    public static final class C10801f<T, R> implements Function {
        public C10801f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull List<? extends SyncNoteModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DeleteFolderAction.this.m42198r();
        }
    }

    public DeleteFolderAction(@NotNull Context context, @NotNull String title, @NotNull List<String> folderIds) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(folderIds, "folderIds");
        this.context = context;
        this.title = title;
        this.folderIds = folderIds;
    }

    /* renamed from: n */
    public static final void m42194n(DeleteFolderAction this$0, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        List<SyncNoteModel> list = this$0.notes;
        if (list == null) {
            Intrinsics.throwUninitializedPropertyAccessException("notes");
            list = null;
        }
        RxBaseAction.execute$default(new DeleteNoteAction(list), null, null, null, 7, null);
    }

    /* renamed from: o */
    public static final void m42195o(DeleteFolderAction this$0, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m42196p();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable observeOn = createNoteProviderObservable().doOnNext(new C10796a()).flatMap(new C10797b()).doOnNext(new C10798c()).flatMap(new C10799d()).doOnNext(new C10800e()).observeOn(getMainUIScheduler()).flatMap(new C10801f()).observeOn(getObserveOn());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        Observable<Boolean> observeOn2 = RxjavaKt.doOnNextIfTrue(RxjavaKt.doOnNextIfTrue(observeOn, new Consumer() { // from class: com.sunia.HTREnginev2.h3f
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                DeleteFolderAction.m42194n(DeleteFolderAction.this, ((Boolean) obj).booleanValue());
            }
        }), new Consumer() { // from class: com.sunia.HTREnginev2.i3f
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                DeleteFolderAction.m42195o(DeleteFolderAction.this, ((Boolean) obj).booleanValue());
            }
        }).observeOn(getMainUIScheduler());
        Intrinsics.checkNotNullExpressionValue(observeOn2, "observeOn(...)");
        return observeOn2;
    }

    /* renamed from: p */
    public final void m42196p() {
        if (this.folderIds.isEmpty()) {
            return;
        }
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        cBQueryArgs.andWith(couchUtils.inExpression("contentId", this.folderIds).m9761or(couchUtils.inExpression(CouchFieldKey.KEY_FILTER_ID, this.folderIds)));
        SortProvider sortProvider = this.sortProvider;
        if (sortProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sortProvider");
            sortProvider = null;
        }
        sortProvider.deleteSortList(cBQueryArgs);
    }

    /* renamed from: q */
    public final Observable<List<SyncNoteModel>> m42197q() {
        ArrayList arrayList = new ArrayList();
        NoteProvider noteProvider = this.provider;
        NoteProvider noteProvider2 = null;
        if (noteProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException(CouchFieldKey.KEY_PROVIDER);
            noteProvider = null;
        }
        List<SyncNoteModel> loadNoteList = NoteModelProviderKt.loadNoteList(noteProvider, this.folderIds);
        CBQueryArgs childrenByPidArgs = NoteConfigKt.getChildrenByPidArgs(this.folderIds);
        NoteProvider noteProvider3 = this.provider;
        if (noteProvider3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException(CouchFieldKey.KEY_PROVIDER);
        } else {
            noteProvider2 = noteProvider3;
        }
        List loadModelList = noteProvider2.loadModelList(childrenByPidArgs, SyncNoteModel.class);
        arrayList.addAll(loadNoteList);
        arrayList.addAll(loadModelList);
        Observable<List<SyncNoteModel>> just = Observable.just(arrayList);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    /* renamed from: r */
    public final Observable<Boolean> m42198r() {
        int lastIndexOf$default;
        List<SyncNoteModel> list = this.notes;
        if (list == null) {
            Intrinsics.throwUninitializedPropertyAccessException("notes");
            list = null;
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((SyncNoteModel) obj).isDocument()) {
                arrayList.add(obj);
            }
        }
        int size = arrayList.size();
        if (size == 0) {
            Observable<Boolean> just = Observable.just(Boolean.TRUE);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        final PublishSubject create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        String valueOf = String.valueOf(size);
        String string = this.context.getString(this.folderIds.size() > 1 ? C10651R.string.dialog_delete_folder_content_with_folder : C10651R.string.dialog_delete_folder_content);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format(string, Arrays.copyOf(new Object[]{this.title, valueOf}, 2));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        lastIndexOf$default = StringsKt__StringsKt.lastIndexOf$default((CharSequence) format, valueOf, 0, false, 6, (Object) null);
        ForegroundColorSpan foregroundColorSpan = new ForegroundColorSpan(ThemeUtils.getColorById(C7996R.color.theme_primary_color_01));
        String format2 = String.format(format, Arrays.copyOf(new Object[]{this.title, this.context}, 2));
        Intrinsics.checkNotNullExpressionValue(format2, "format(...)");
        SpannableString spannableString = new SpannableString(format2);
        spannableString.setSpan(foregroundColorSpan, lastIndexOf$default, valueOf.length() + lastIndexOf$default, 33);
        new CommonDialog.Builder(this.context).setTitle(C10651R.string.dialog_delete_folder_title).setContentSpannable(spannableString).setConfirmText(C10651R.string.confirm).setCancelText(C10651R.string.cancel).setConfirmCallback(new Function2<CommonDialog, String, Unit>() { // from class: com.onyx.galaxy.note.category.action.DeleteFolderAction$showConfirmDialog$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(CommonDialog commonDialog, String str) {
                invoke2(commonDialog, str);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull CommonDialog commonDialog, @NotNull String str) {
                Intrinsics.checkNotNullParameter(commonDialog, "<anonymous parameter 0>");
                Intrinsics.checkNotNullParameter(str, "<anonymous parameter 1>");
                RxjavaKt.done(create, Boolean.TRUE);
            }
        }).setCancelCallback(new Function1<Dialog, Unit>() { // from class: com.onyx.galaxy.note.category.action.DeleteFolderAction$showConfirmDialog$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Dialog dialog) {
                invoke2(dialog);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable Dialog dialog) {
                RxjavaKt.done(create, Boolean.FALSE);
            }
        }).setCancelable(false).create().show();
        return create;
    }
}
