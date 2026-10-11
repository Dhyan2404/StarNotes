package com.onyx.galaxy.note.category.action;

import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.onyx.android.sdk.replicator.note.bean.NoteCreateInfo;
import com.onyx.android.sdk.universal.docmanager.action.name.NoteNameCreateAction;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.base.RxBaseNoteAppAction;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u000e\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001b\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\u0013\u0010\u0014J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0002H\u0002J\u001e\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0002H\u0002R\u0019\u0010\u000f\u001a\u0004\u0018\u00010\u00078\u0006¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000eR\u0019\u0010\u0012\u001a\u0004\u0018\u00010\u00078\u0006¢\u0006\f\n\u0004\b\u0010\u0010\f\u001a\u0004\b\u0011\u0010\u000e¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/CreateQuicklyNoteAction;", "Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;", "Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "noteCreateInfo", "m", "", "noteName", GoogleApiAvailabilityLight.f29016b, "l", C6998g.f39679a, Constants.STRING_SIG, "getParentUniqueId", "()Ljava/lang/String;", CouchFieldKey.KEY_PARENT_UNIQUE_ID, C6999h.f39688c, "getTagId", CouchFieldKey.KEY_TAG_ID, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Ljava/lang/String;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class CreateQuicklyNoteAction extends RxBaseNoteAppAction<NoteCreateInfo> {

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public final String parentUniqueId;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public final String tagId;

    /* renamed from: com.onyx.galaxy.note.category.action.CreateQuicklyNoteAction$a */
    /* loaded from: classes9.dex */
    public static final class C10786a<T, R> implements Function {

        /* renamed from: e */
        public static final C10786a<T, R> f53675e = new C10786a<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends NoteCreateInfo> apply(@NotNull CreateQuicklyNoteAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new LoadQuicklyCreateInfoAction().build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.CreateQuicklyNoteAction$b */
    /* loaded from: classes9.dex */
    public static final class C10787b<T, R> implements Function {
        public C10787b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends NoteCreateInfo> apply(@NotNull NoteCreateInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CreateQuicklyNoteAction.this.m42178m(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.CreateQuicklyNoteAction$c */
    /* loaded from: classes9.dex */
    public static final class C10788c<T, R> implements Function {
        public C10788c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final NoteCreateInfo apply(@NotNull NoteCreateInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CreateQuicklyNoteAction.this.m42177l(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.CreateQuicklyNoteAction$d */
    /* loaded from: classes9.dex */
    public static final class C10789d<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ NoteCreateInfo f53679f;

        public C10789d(NoteCreateInfo noteCreateInfo) {
            this.f53679f = noteCreateInfo;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends NoteCreateInfo> apply(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CreateQuicklyNoteAction.this.m42179n(this.f53679f, it2);
        }
    }

    public CreateQuicklyNoteAction(@Nullable String str, @Nullable String str2) {
        this.parentUniqueId = str;
        this.tagId = str2;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<NoteCreateInfo> create() {
        Observable<NoteCreateInfo> map = Observable.just(this).flatMap(C10786a.f53675e).flatMap(new C10787b()).map(new C10788c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @Nullable
    public final String getParentUniqueId() {
        return this.parentUniqueId;
    }

    @Nullable
    public final String getTagId() {
        return this.tagId;
    }

    /* renamed from: l */
    public final NoteCreateInfo m42177l(NoteCreateInfo noteCreateInfo) {
        List<String> plus;
        noteCreateInfo.setParentUniqueId(this.parentUniqueId);
        noteCreateInfo.setDocumentId(UUIDUtils.INSTANCE.rawUUID());
        String str = this.tagId;
        if (str != null) {
            plus = CollectionsKt___CollectionsKt.plus((Collection<? extends String>) ((Collection<? extends Object>) noteCreateInfo.getTagList()), str);
            noteCreateInfo.setTagList(plus);
        }
        return noteCreateInfo;
    }

    /* renamed from: m */
    public final Observable<NoteCreateInfo> m42178m(NoteCreateInfo noteCreateInfo) {
        Observable flatMap = new NoteNameCreateAction(1, ResManager.INSTANCE.getStringSafely(C10651R.string.quickly_note), 0, null, 12, null).build().flatMap(new C10789d(noteCreateInfo));
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: n */
    public final Observable<NoteCreateInfo> m42179n(NoteCreateInfo noteCreateInfo, String noteName) {
        noteCreateInfo.setNoteName(noteName);
        Observable<NoteCreateInfo> just = Observable.just(noteCreateInfo);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }
}
