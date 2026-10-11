package com.onyx.galaxy.note.category.action;

import android.app.Dialog;
import android.content.Context;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.bean.StartReplicatorBean;
import com.onyx.android.sdk.p039ui.CommonDialog;
import com.onyx.android.sdk.replicator.note.action.StartNoteDocSyncAction;
import com.onyx.android.sdk.replicator.note.bean.NoteCloudSyncCheckArgs;
import com.onyx.android.sdk.replicator.note.p035db.NoteModelProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.NoteProvider;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.action.BaseNoteManagementAction;
import com.onyx.galaxy.note.settings.data.NoteConfigKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.subjects.PublishSubject;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B+\u0012\u0006\u0010\u0016\u001a\u00020\u0013\u0012\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00180\u0017\u0012\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00180\u0010¢\u0006\u0004\b%\u0010&J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0016J\b\u0010\u0006\u001a\u00020\u0005H\u0002J\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0002H\u0002J\u0016\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00020\u00032\u0006\u0010\t\u001a\u00020\u0002H\u0002J\u000e\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0002J\b\u0010\r\u001a\u00020\fH\u0002J\b\u0010\u000f\u001a\u00020\u000eH\u0002J\u0014\u0010\u0012\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00110\u00100\u0003H\u0002R\u0014\u0010\u0016\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u001a\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00180\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u001a\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00180\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001aR\u001a\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00110\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001aR\u0016\u0010#\u001a\u00020 8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b!\u0010\"R\u001c\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00110\u00178\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\n\u0010\u001a¨\u0006'"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/DeleteListNoteAction;", "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", C4921e.f26528e, "deleted", "r", "delete", "l", "q", "Landroid/text/SpannableString;", "m", "", "p", "", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", GoogleApiAvailabilityLight.f29016b, "Landroid/content/Context;", C6998g.f39679a, "Landroid/content/Context;", "context", "", "", C6999h.f39688c, "Ljava/util/List;", "ids", "i", "operatedNoteIds", "j", "operatedNote", "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", C4921e.f26537n, "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", CouchFieldKey.KEY_PROVIDER, "notes", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nDeleteListNoteAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeleteListNoteAction.kt\ncom/onyx/galaxy/note/category/action/DeleteListNoteAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,181:1\n1655#2,8:182\n766#2:190\n857#2,2:191\n766#2:193\n857#2,2:194\n766#2:196\n857#2,2:197\n766#2:199\n857#2,2:200\n766#2:202\n857#2,2:203\n1549#2:205\n1620#2,3:206\n223#2,2:209\n766#2:211\n857#2,2:212\n766#2:214\n857#2,2:215\n*S KotlinDebug\n*F\n+ 1 DeleteListNoteAction.kt\ncom/onyx/galaxy/note/category/action/DeleteListNoteAction\n*L\n57#1:182,8\n58#1:190\n58#1:191,2\n102#1:193\n102#1:194,2\n103#1:196\n103#1:197,2\n106#1:199\n106#1:200,2\n107#1:202\n107#1:203,2\n129#1:205\n129#1:206,3\n130#1:209,2\n159#1:211\n159#1:212,2\n160#1:214\n160#1:215,2\n*E\n"})
/* loaded from: classes9.dex */
public final class DeleteListNoteAction extends BaseNoteManagementAction<Boolean> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final List<String> ids;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final List<String> operatedNoteIds;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final List<SyncNoteModel> operatedNote;

    /* renamed from: k, reason: from kotlin metadata */
    public NoteProvider provider;

    /* renamed from: l, reason: from kotlin metadata */
    public List<SyncNoteModel> notes;

    /* renamed from: com.onyx.galaxy.note.category.action.DeleteListNoteAction$a */
    /* loaded from: classes9.dex */
    public static final class C10802a<T> implements Consumer {
        public C10802a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull NoteProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DeleteListNoteAction.this.provider = it2;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.DeleteListNoteAction$b */
    /* loaded from: classes9.dex */
    public static final class C10803b<T, R> implements Function {
        public C10803b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<SyncNoteModel>> apply(@NotNull NoteProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DeleteListNoteAction.this.m42207n();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.DeleteListNoteAction$c */
    /* loaded from: classes9.dex */
    public static final class C10804c<T> implements Consumer {
        public C10804c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<? extends SyncNoteModel> it2) {
            List mutableList;
            Intrinsics.checkNotNullParameter(it2, "it");
            DeleteListNoteAction deleteListNoteAction = DeleteListNoteAction.this;
            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) it2);
            deleteListNoteAction.notes = mutableList;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.DeleteListNoteAction$d */
    /* loaded from: classes9.dex */
    public static final class C10805d<T> implements Consumer {
        public C10805d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<? extends SyncNoteModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DeleteListNoteAction.this.m42208o();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.DeleteListNoteAction$e */
    /* loaded from: classes9.dex */
    public static final class C10806e<T, R> implements Function {
        public C10806e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull List<? extends SyncNoteModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DeleteListNoteAction.this.m42210q();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.DeleteListNoteAction$f */
    /* loaded from: classes9.dex */
    public static final class C10807f<T, R> implements Function {
        public C10807f() {
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends Boolean> m42217a(boolean z) {
            return DeleteListNoteAction.this.m42205l(z);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m42217a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.DeleteListNoteAction$g */
    /* loaded from: classes9.dex */
    public static final class C10808g<T, R> implements Function {
        public C10808g() {
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends Boolean> m42218a(boolean z) {
            return DeleteListNoteAction.this.m42211r(z);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m42218a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.DeleteListNoteAction$h */
    /* loaded from: classes9.dex */
    public static final class C10809h<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ boolean f53718e;

        public C10809h(boolean z) {
            this.f53718e = z;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull StartNoteDocSyncAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.valueOf(this.f53718e);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.DeleteListNoteAction$i */
    /* loaded from: classes9.dex */
    public static final class C10810i<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ boolean f53719e;

        public C10810i(boolean z) {
            this.f53719e = z;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.valueOf(this.f53719e);
        }
    }

    public DeleteListNoteAction(@NotNull Context context, @NotNull List<String> ids, @NotNull List<String> operatedNoteIds) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(ids, "ids");
        Intrinsics.checkNotNullParameter(operatedNoteIds, "operatedNoteIds");
        this.context = context;
        this.ids = ids;
        this.operatedNoteIds = operatedNoteIds;
        this.operatedNote = new ArrayList();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable<Boolean> observeOn = createNoteProviderObservable().doOnNext(new C10802a()).flatMap(new C10803b()).doOnNext(new C10804c()).doOnNext(new C10805d()).observeOn(getMainUIScheduler()).flatMap(new C10806e()).observeOn(getObserveOn()).flatMap(new C10807f()).flatMap(new C10808g()).observeOn(getMainUIScheduler());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    /* renamed from: l */
    public final Observable<Boolean> m42205l(boolean delete) {
        if (!delete) {
            Observable<Boolean> just = Observable.just(Boolean.valueOf(delete));
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        List<SyncNoteModel> list = this.notes;
        if (list == null) {
            Intrinsics.throwUninitializedPropertyAccessException("notes");
            list = null;
        }
        return new DeleteNoteAction(list).build();
    }

    /* renamed from: m */
    public final SpannableString m42206m() {
        int lastIndexOf$default;
        int i;
        int collectionSizeOrDefault;
        String title;
        int lastIndexOf$default2;
        Object first;
        int indexOf$default;
        int lastIndexOf$default3;
        List<SyncNoteModel> list = this.notes;
        List<SyncNoteModel> list2 = null;
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
        List<SyncNoteModel> list3 = this.notes;
        if (list3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("notes");
        } else {
            list2 = list3;
        }
        ArrayList<SyncNoteModel> arrayList2 = new ArrayList();
        for (Object obj2 : list2) {
            if (((SyncNoteModel) obj2).isLibrary()) {
                arrayList2.add(obj2);
            }
        }
        int size2 = arrayList2.size();
        String valueOf = String.valueOf(size);
        List<SyncNoteModel> list4 = this.operatedNote;
        ArrayList arrayList3 = new ArrayList();
        for (Object obj3 : list4) {
            if (((SyncNoteModel) obj3).isLibrary()) {
                arrayList3.add(obj3);
            }
        }
        int size3 = arrayList3.size();
        List<SyncNoteModel> list5 = this.operatedNote;
        ArrayList arrayList4 = new ArrayList();
        for (Object obj4 : list5) {
            if (((SyncNoteModel) obj4).isDocument()) {
                arrayList4.add(obj4);
            }
        }
        int size4 = arrayList4.size();
        String valueOf2 = String.valueOf(size3);
        boolean z = size3 != size2;
        int colorById = ThemeUtils.getColorById(C7996R.color.theme_primary_color_01);
        if (size2 == 0 || size4 != 0) {
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            String string = this.context.getString(C10651R.string.dialog_delete_note_sub_title);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            String format = String.format(string, Arrays.copyOf(new Object[]{valueOf}, 1));
            Intrinsics.checkNotNullExpressionValue(format, "format(...)");
            lastIndexOf$default = StringsKt__StringsKt.lastIndexOf$default((CharSequence) format, valueOf, 0, false, 6, (Object) null);
            SpannableString spannableString = new SpannableString(format);
            spannableString.setSpan(new ForegroundColorSpan(colorById), lastIndexOf$default, valueOf.length() + lastIndexOf$default, 33);
            return spannableString;
        }
        if (size2 != 1 && (size3 != 1 || !z)) {
            int i2 = z ? C10651R.string.dialog_delete_multi_folder_content_with_folder : C10651R.string.dialog_delete_multi_folder_content;
            StringCompanionObject stringCompanionObject2 = StringCompanionObject.INSTANCE;
            String string2 = this.context.getString(i2);
            Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
            String format2 = String.format(string2, Arrays.copyOf(new Object[]{valueOf2, valueOf}, 2));
            Intrinsics.checkNotNullExpressionValue(format2, "format(...)");
            SpannableString spannableString2 = new SpannableString(format2);
            indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) format2, valueOf2, 0, false, 6, (Object) null);
            lastIndexOf$default3 = StringsKt__StringsKt.lastIndexOf$default((CharSequence) format2, valueOf, 0, false, 6, (Object) null);
            spannableString2.setSpan(new ForegroundColorSpan(colorById), indexOf$default, valueOf2.length() + indexOf$default, 33);
            spannableString2.setSpan(new ForegroundColorSpan(colorById), lastIndexOf$default3, valueOf.length() + lastIndexOf$default3, 33);
            return spannableString2;
        }
        if (size2 != 1) {
            i = C10651R.string.dialog_delete_folder_content_with_folder;
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList2, 10);
            ArrayList arrayList5 = new ArrayList(collectionSizeOrDefault);
            Iterator it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                arrayList5.add(((SyncNoteModel) it2.next()).getParentUniqueId());
            }
            for (SyncNoteModel syncNoteModel : arrayList2) {
                if (arrayList5.contains(syncNoteModel.getUniqueId())) {
                    title = syncNoteModel.getTitle();
                }
            }
            throw new NoSuchElementException("Collection contains no element matching the predicate.");
        }
        i = C10651R.string.dialog_delete_folder_content;
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) arrayList2);
        title = ((SyncNoteModel) first).getTitle();
        String string3 = this.context.getString(i);
        Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
        StringCompanionObject stringCompanionObject3 = StringCompanionObject.INSTANCE;
        String format3 = String.format(string3, Arrays.copyOf(new Object[]{title, valueOf}, 2));
        Intrinsics.checkNotNullExpressionValue(format3, "format(...)");
        lastIndexOf$default2 = StringsKt__StringsKt.lastIndexOf$default((CharSequence) format3, valueOf, 0, false, 6, (Object) null);
        String format4 = String.format(format3, Arrays.copyOf(new Object[]{title, this.context}, 2));
        Intrinsics.checkNotNullExpressionValue(format4, "format(...)");
        SpannableString spannableString3 = new SpannableString(format4);
        spannableString3.setSpan(new ForegroundColorSpan(colorById), lastIndexOf$default2, valueOf.length() + lastIndexOf$default2, 33);
        return spannableString3;
    }

    /* renamed from: n */
    public final Observable<List<SyncNoteModel>> m42207n() {
        ArrayList arrayList = new ArrayList();
        NoteProvider noteProvider = this.provider;
        NoteProvider noteProvider2 = null;
        if (noteProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException(CouchFieldKey.KEY_PROVIDER);
            noteProvider = null;
        }
        List<SyncNoteModel> loadNoteList = NoteModelProviderKt.loadNoteList(noteProvider, this.ids);
        CBQueryArgs childrenByPidArgs = NoteConfigKt.getChildrenByPidArgs(this.ids);
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

    /* renamed from: o */
    public final void m42208o() {
        List<SyncNoteModel> list = this.notes;
        if (list == null) {
            Intrinsics.throwUninitializedPropertyAccessException("notes");
            list = null;
        }
        HashSet hashSet = new HashSet();
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (hashSet.add(((SyncNoteModel) obj).getUniqueId())) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : arrayList) {
            if (this.operatedNoteIds.contains(((SyncNoteModel) obj2).getUniqueId())) {
                arrayList2.add(obj2);
            }
        }
        this.operatedNote.addAll(arrayList2);
    }

    /* renamed from: p */
    public final int m42209p() {
        List<SyncNoteModel> list = this.notes;
        if (list == null) {
            Intrinsics.throwUninitializedPropertyAccessException("notes");
            list = null;
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((SyncNoteModel) obj).isLibrary()) {
                arrayList.add(obj);
            }
        }
        int size = arrayList.size();
        List<SyncNoteModel> list2 = this.operatedNote;
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : list2) {
            if (((SyncNoteModel) obj2).isDocument()) {
                arrayList2.add(obj2);
            }
        }
        return size == 0 || arrayList2.size() != 0 ? C10651R.string.dialog_delete_note_title : C10651R.string.dialog_delete_folder_title;
    }

    /* renamed from: q */
    public final Observable<Boolean> m42210q() {
        final PublishSubject create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        new CommonDialog.Builder(this.context).setTitle(m42209p()).setContentSpannable(m42206m()).setConfirmText(C10651R.string.confirm).setCancelText(C10651R.string.cancel).setConfirmCallback(new Function2<CommonDialog, String, Unit>() { // from class: com.onyx.galaxy.note.category.action.DeleteListNoteAction$showConfirmDialog$1
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
        }).setCancelCallback(new Function1<Dialog, Unit>() { // from class: com.onyx.galaxy.note.category.action.DeleteListNoteAction$showConfirmDialog$2
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

    /* renamed from: r */
    public final Observable<Boolean> m42211r(boolean deleted) {
        if (!deleted) {
            Observable<Boolean> just = Observable.just(Boolean.FALSE);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        NoteCloudSyncCheckArgs noteCloudSyncCheckArgs = new NoteCloudSyncCheckArgs();
        noteCloudSyncCheckArgs.setCheckConfig(false);
        Observable<Boolean> onErrorReturn = new StartNoteDocSyncAction(new StartReplicatorBean(0, false, false, false, CollectionKt.copy(this.ids), null, false, 111, null), noteCloudSyncCheckArgs).build().map(new C10809h(deleted)).onErrorReturn(new C10810i(deleted));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "onErrorReturn(...)");
        return onErrorReturn;
    }
}
