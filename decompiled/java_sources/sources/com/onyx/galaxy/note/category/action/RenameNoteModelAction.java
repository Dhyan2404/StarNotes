package com.onyx.galaxy.note.category.action;

import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.event.SyncChangedNoteTreeEvent;
import com.onyx.android.sdk.replicator.note.p035db.NoteModelProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.NoteProvider;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.universal.editor.config.EditorConstants;
import com.onyx.galaxy.note.common.action.BaseNoteManagementAction;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u000b\u001a\u00020\b\u0012\u0006\u0010\r\u001a\u00020\b¢\u0006\u0004\b\u000e\u0010\u000fJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0010\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0014\u0010\r\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\n¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/RenameNoteModelAction;", "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", CouchFieldKey.KEY_PROVIDER, "l", "", C6998g.f39679a, Constants.STRING_SIG, EditorConstants.ARGS_DOC_ID, C6999h.f39688c, "newName", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Ljava/lang/String;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class RenameNoteModelAction extends BaseNoteManagementAction<Boolean> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final String docId;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final String newName;

    /* renamed from: com.onyx.galaxy.note.category.action.RenameNoteModelAction$a */
    /* loaded from: classes9.dex */
    public static final class C10962a<T, R> implements Function {
        public C10962a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull NoteProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.valueOf(RenameNoteModelAction.this.m42495l(it2));
        }
    }

    public RenameNoteModelAction(@NotNull String docId, @NotNull String newName) {
        Intrinsics.checkNotNullParameter(docId, "docId");
        Intrinsics.checkNotNullParameter(newName, "newName");
        this.docId = docId;
        this.newName = newName;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable map = createNoteProviderObservable().map(new C10962a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final boolean m42495l(NoteProvider provider) {
        List listOf;
        final SyncNoteModel loadNote = NoteModelProviderKt.loadNote(provider, this.docId);
        if (loadNote == null || NoteModelProviderKt.hasDuplicatedName(provider, this.newName, new Function1<CBQueryArgs, Unit>() { // from class: com.onyx.galaxy.note.category.action.RenameNoteModelAction$rename$duplicated$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(CBQueryArgs cBQueryArgs) {
                invoke2(cBQueryArgs);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull CBQueryArgs hasDuplicatedName) {
                String str;
                Intrinsics.checkNotNullParameter(hasDuplicatedName, "$this$hasDuplicatedName");
                CouchUtils couchUtils = CouchUtils.INSTANCE;
                str = RenameNoteModelAction.this.docId;
                hasDuplicatedName.andWith(couchUtils.nonExpression(CouchFieldKey.KEY_UNIQUE_ID, str));
                hasDuplicatedName.andWith(couchUtils.equalExpression("type", Integer.valueOf(loadNote.getType())));
                hasDuplicatedName.andWith(couchUtils.equalOrNullExpression(CouchFieldKey.KEY_PARENT_UNIQUE_ID, loadNote.getParentUniqueId()));
            }
        })) {
            return false;
        }
        NoteModelProviderKt.renameNote(provider, this.docId, this.newName);
        KSyncBundle kSyncBundle = KSyncBundle.INSTANCE;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(this.docId);
        kSyncBundle.post(new SyncChangedNoteTreeEvent(listOf));
        return true;
    }
}
