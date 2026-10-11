package com.onyx.android.sdk.replicator.provider;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.bundle.DBProviderBundle;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.ProviderInfo;
import com.onyx.android.sdk.data.couchbase.utils.ProviderInfoUtils;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.fts.provider.FTSProvider;
import com.onyx.android.sdk.replicator.note.p035db.CoverProvider;
import com.onyx.android.sdk.replicator.note.p035db.ExcerptCollectionProvider;
import com.onyx.android.sdk.replicator.note.p035db.LinkProvider;
import com.onyx.android.sdk.replicator.note.p035db.NoteModelProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.NotePageTagProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.NoteProvider;
import com.onyx.android.sdk.replicator.note.p035db.NoteShapeProvider;
import com.onyx.android.sdk.replicator.note.p035db.PBDocRecordProvider;
import com.onyx.android.sdk.replicator.note.p035db.PBUserRecordProvider;
import com.onyx.android.sdk.replicator.note.p035db.ResourceProvider;
import com.onyx.android.sdk.replicator.note.p035db.TemplateProvider;
import com.onyx.android.sdk.replicator.note.p035db.VirtualModelProvider;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.Collections;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000~\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 O2\u00020\u0001:\u0001OB\u001f\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\u0006\u0010\u0013\u001a\u00020\u0002¢\u0006\u0004\bM\u0010NJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0006\u001a\u00020\u0004R\u0016\u0010\n\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0016\u0010\r\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\"\u0010\u0013\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\f\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001b\u0010\u0018\u001a\u00020\u00148BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u000b\u0010\u0017R\u001b\u0010\u001a\u001a\u00020\u00148BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0019\u0010\u0016\u001a\u0004\b\b\u0010\u0017R\u001b\u0010\u001d\u001a\u00020\u00148FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u001b\u0010\u0016\u001a\u0004\b\u001c\u0010\u0017R\u001b\u0010 \u001a\u00020\u00148FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u001e\u0010\u0016\u001a\u0004\b\u001f\u0010\u0017R\u0011\u0010$\u001a\u00020!8F¢\u0006\u0006\u001a\u0004\b\"\u0010#R\u0011\u0010(\u001a\u00020%8F¢\u0006\u0006\u001a\u0004\b&\u0010'R\u0011\u0010,\u001a\u00020)8F¢\u0006\u0006\u001a\u0004\b*\u0010+R\u0011\u00100\u001a\u00020-8F¢\u0006\u0006\u001a\u0004\b.\u0010/R\u0011\u00104\u001a\u0002018F¢\u0006\u0006\u001a\u0004\b2\u00103R\u0011\u00108\u001a\u0002058F¢\u0006\u0006\u001a\u0004\b6\u00107R\u0011\u0010<\u001a\u0002098F¢\u0006\u0006\u001a\u0004\b:\u0010;R\u0011\u0010@\u001a\u00020=8F¢\u0006\u0006\u001a\u0004\b>\u0010?R\u0011\u0010D\u001a\u00020A8F¢\u0006\u0006\u001a\u0004\bB\u0010CR\u0011\u0010H\u001a\u00020E8F¢\u0006\u0006\u001a\u0004\bF\u0010GR\u0011\u0010L\u001a\u00020I8F¢\u0006\u0006\u001a\u0004\bJ\u0010K¨\u0006P"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;", "", "", "documentId", "", "purgeDocData", "closeDocProvider", "Lcom/onyx/android/sdk/bundle/DBProviderBundle;", "a", "Lcom/onyx/android/sdk/bundle/DBProviderBundle;", "dbProviderBundle", "b", Constants.STRING_SIG, Constant.TAG_USER_ID, "c", "getDocumentUniqueId", "()Ljava/lang/String;", "setDocumentUniqueId", "(Ljava/lang/String;)V", CouchFieldKey.KEY_DOCUMENT_ID, "Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;", "d", "Lkotlin/Lazy;", "()Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;", "userNoteTreeProviderInfo", "e", "userDataProviderInfo", C6997f.f39671c, "getDocDataProviderInfo", "docDataProviderInfo", C6998g.f39679a, "getDocPBProviderInfo", "docPBProviderInfo", "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", "getNoteProvider", "()Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", "noteProvider", "Lcom/onyx/android/sdk/replicator/note/db/ExcerptCollectionProvider;", "getExcerptCollectionProvider", "()Lcom/onyx/android/sdk/replicator/note/db/ExcerptCollectionProvider;", "excerptCollectionProvider", "Lcom/onyx/android/sdk/replicator/note/db/PBUserRecordProvider;", "getPbUserRecordProvider", "()Lcom/onyx/android/sdk/replicator/note/db/PBUserRecordProvider;", "pbUserRecordProvider", "Lcom/onyx/android/sdk/replicator/note/db/TemplateProvider;", "getTemplateProvider", "()Lcom/onyx/android/sdk/replicator/note/db/TemplateProvider;", "templateProvider", "Lcom/onyx/android/sdk/replicator/note/db/CoverProvider;", "getCoverProvider", "()Lcom/onyx/android/sdk/replicator/note/db/CoverProvider;", "coverProvider", "Lcom/onyx/android/sdk/replicator/note/db/NoteShapeProvider;", "getNoteShapeProvider", "()Lcom/onyx/android/sdk/replicator/note/db/NoteShapeProvider;", "noteShapeProvider", "Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider;", "getNoteFtsProvider", "()Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider;", "noteFtsProvider", "Lcom/onyx/android/sdk/replicator/note/db/ResourceProvider;", "getNoteResourceProvider", "()Lcom/onyx/android/sdk/replicator/note/db/ResourceProvider;", "noteResourceProvider", "Lcom/onyx/android/sdk/replicator/note/db/LinkProvider;", "getNoteLinkProvider", "()Lcom/onyx/android/sdk/replicator/note/db/LinkProvider;", "noteLinkProvider", "Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;", "getVirtualModelProvider", "()Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;", "virtualModelProvider", "Lcom/onyx/android/sdk/replicator/note/db/PBDocRecordProvider;", "getPbDocRecordProvider", "()Lcom/onyx/android/sdk/replicator/note/db/PBDocRecordProvider;", "pbDocRecordProvider", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/bundle/DBProviderBundle;Ljava/lang/String;Ljava/lang/String;)V", "Companion", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class NoteProviderHolder {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public DBProviderBundle dbProviderBundle;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public String userId;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public String documentUniqueId;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final Lazy userNoteTreeProviderInfo;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Lazy userDataProviderInfo;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final Lazy docDataProviderInfo;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Lazy docPBProviderInfo;

    @Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002JE\u0010\u0003\u001a\u0002H\u0004\"\b\b\u0000\u0010\u0004*\u00020\u00012\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b2\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u0002H\u00040\u000b¢\u0006\u0002\u0010\rJE\u0010\u000e\u001a\u0002H\u0004\"\b\b\u0000\u0010\u0004*\u00020\u00012\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b2\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u0002H\u00040\u000b¢\u0006\u0002\u0010\r¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder$Companion;", "", "()V", "with", "T", "dbProviderBundle", "Lcom/onyx/android/sdk/bundle/DBProviderBundle;", Constant.TAG_USER_ID, "", "documentId", "action", "Lkotlin/Function1;", "Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;", "(Lcom/onyx/android/sdk/bundle/DBProviderBundle;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "withOnce", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ Object with$default(Companion companion, DBProviderBundle dBProviderBundle, String str, String str2, Function1 function1, int i, Object obj) {
            if ((i & 1) != 0) {
                dBProviderBundle = KSyncBundle.INSTANCE.getDbProviderBundle();
            }
            if ((i & 2) != 0) {
                str = AccountDataBundle.INSTANCE.getSyncUserId();
            }
            return companion.with(dBProviderBundle, str, str2, function1);
        }

        public static /* synthetic */ Object withOnce$default(Companion companion, DBProviderBundle dBProviderBundle, String str, String str2, Function1 function1, int i, Object obj) {
            if ((i & 1) != 0) {
                dBProviderBundle = KSyncBundle.INSTANCE.getDbProviderBundle();
            }
            if ((i & 2) != 0) {
                str = AccountDataBundle.INSTANCE.getSyncUserId();
            }
            return companion.withOnce(dBProviderBundle, str, str2, function1);
        }

        @NotNull
        public final <T> T with(@NotNull DBProviderBundle dbProviderBundle, @NotNull String userId, @NotNull String documentId, @NotNull Function1<? super NoteProviderHolder, ? extends T> action) {
            Intrinsics.checkNotNullParameter(dbProviderBundle, "dbProviderBundle");
            Intrinsics.checkNotNullParameter(userId, "userId");
            Intrinsics.checkNotNullParameter(documentId, "documentId");
            Intrinsics.checkNotNullParameter(action, "action");
            return action.invoke(new NoteProviderHolder(dbProviderBundle, userId, documentId));
        }

        @NotNull
        public final <T> T withOnce(@NotNull DBProviderBundle dbProviderBundle, @NotNull String userId, @NotNull String documentId, @NotNull final Function1<? super NoteProviderHolder, ? extends T> action) {
            Intrinsics.checkNotNullParameter(dbProviderBundle, "dbProviderBundle");
            Intrinsics.checkNotNullParameter(userId, "userId");
            Intrinsics.checkNotNullParameter(documentId, "documentId");
            Intrinsics.checkNotNullParameter(action, "action");
            return (T) with(dbProviderBundle, userId, documentId, new Function1<NoteProviderHolder, T>() { // from class: com.onyx.android.sdk.replicator.provider.NoteProviderHolder$Companion$withOnce$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final T invoke(@NotNull NoteProviderHolder it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    try {
                        return action.invoke(it2);
                    } finally {
                        it2.closeDocProvider();
                    }
                }
            });
        }

        public Companion() {
        }
    }

    public NoteProviderHolder(@NotNull DBProviderBundle dbProviderBundle, @NotNull String userId, @NotNull String documentUniqueId) {
        Intrinsics.checkNotNullParameter(dbProviderBundle, "dbProviderBundle");
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(documentUniqueId, "documentUniqueId");
        this.dbProviderBundle = dbProviderBundle;
        this.userId = userId;
        this.documentUniqueId = documentUniqueId;
        this.userNoteTreeProviderInfo = LazyKt.lazy(new Function0<ProviderInfo>() { // from class: com.onyx.android.sdk.replicator.provider.NoteProviderHolder$userNoteTreeProviderInfo$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ProviderInfo invoke() {
                String str;
                ProviderInfoUtils providerInfoUtils = ProviderInfoUtils.INSTANCE;
                str = NoteProviderHolder.this.userId;
                return providerInfoUtils.getUserNoteTreeProviderInfo(str);
            }
        });
        this.userDataProviderInfo = LazyKt.lazy(new Function0<ProviderInfo>() { // from class: com.onyx.android.sdk.replicator.provider.NoteProviderHolder$userDataProviderInfo$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ProviderInfo invoke() {
                String str;
                ProviderInfoUtils providerInfoUtils = ProviderInfoUtils.INSTANCE;
                str = NoteProviderHolder.this.userId;
                return providerInfoUtils.getUserDataProviderInfo(str);
            }
        });
        this.docDataProviderInfo = LazyKt.lazy(new Function0<ProviderInfo>() { // from class: com.onyx.android.sdk.replicator.provider.NoteProviderHolder$docDataProviderInfo$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ProviderInfo invoke() {
                String str;
                ProviderInfoUtils providerInfoUtils = ProviderInfoUtils.INSTANCE;
                str = NoteProviderHolder.this.userId;
                return providerInfoUtils.getDocDataProviderInfo(str, NoteProviderHolder.this.getDocumentUniqueId());
            }
        });
        this.docPBProviderInfo = LazyKt.lazy(new Function0<ProviderInfo>() { // from class: com.onyx.android.sdk.replicator.provider.NoteProviderHolder$docPBProviderInfo$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ProviderInfo invoke() {
                String str;
                ProviderInfoUtils providerInfoUtils = ProviderInfoUtils.INSTANCE;
                str = NoteProviderHolder.this.userId;
                return providerInfoUtils.getDocPBRecordProviderInfo(str, NoteProviderHolder.this.getDocumentUniqueId());
            }
        });
    }

    /* renamed from: a */
    public final ProviderInfo m35589a() {
        return (ProviderInfo) this.userDataProviderInfo.getValue();
    }

    /* renamed from: b */
    public final ProviderInfo m35590b() {
        return (ProviderInfo) this.userNoteTreeProviderInfo.getValue();
    }

    public final void closeDocProvider() {
        this.dbProviderBundle.closeCouchHolder(getDocDataProviderInfo());
        this.dbProviderBundle.closeCouchHolder(getDocPBProviderInfo());
    }

    @NotNull
    public final CoverProvider getCoverProvider() {
        return this.dbProviderBundle.getCoverProvider(m35589a());
    }

    @NotNull
    public final ProviderInfo getDocDataProviderInfo() {
        return (ProviderInfo) this.docDataProviderInfo.getValue();
    }

    @NotNull
    public final ProviderInfo getDocPBProviderInfo() {
        return (ProviderInfo) this.docPBProviderInfo.getValue();
    }

    @NotNull
    public final String getDocumentUniqueId() {
        return this.documentUniqueId;
    }

    @NotNull
    public final ExcerptCollectionProvider getExcerptCollectionProvider() {
        return this.dbProviderBundle.getExcerptCollectionProvider(m35589a());
    }

    @NotNull
    public final FTSProvider getNoteFtsProvider() {
        return this.dbProviderBundle.getNoteFTSProvider(getDocDataProviderInfo());
    }

    @NotNull
    public final LinkProvider getNoteLinkProvider() {
        return this.dbProviderBundle.getNoteLinkProvider(getDocDataProviderInfo());
    }

    @NotNull
    public final NoteProvider getNoteProvider() {
        return this.dbProviderBundle.getNoteProvider(m35590b());
    }

    @NotNull
    public final ResourceProvider getNoteResourceProvider() {
        return this.dbProviderBundle.getNoteResourceProvider(getDocDataProviderInfo());
    }

    @NotNull
    public final NoteShapeProvider getNoteShapeProvider() {
        return this.dbProviderBundle.getNoteShapeProvider(getDocDataProviderInfo());
    }

    @NotNull
    public final PBDocRecordProvider getPbDocRecordProvider() {
        return this.dbProviderBundle.getPBDocRecordProvider(getDocPBProviderInfo());
    }

    @NotNull
    public final PBUserRecordProvider getPbUserRecordProvider() {
        return this.dbProviderBundle.getPBUserRecordProvider(m35589a());
    }

    @NotNull
    public final TemplateProvider getTemplateProvider() {
        return this.dbProviderBundle.getTemplateProvider(m35589a());
    }

    @NotNull
    public final VirtualModelProvider getVirtualModelProvider() {
        return this.dbProviderBundle.getVirtualModelProvider(getDocDataProviderInfo());
    }

    public final void purgeDocData(@NotNull String documentId) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        getNoteShapeProvider().deleteDocShapes(documentId);
        getNoteResourceProvider().clear(documentId);
        getNoteLinkProvider().clear(documentId);
        getPbDocRecordProvider().clear(documentId);
        getVirtualModelProvider().clear();
        NotePageTagProviderKt.purgeDocPageTag(getNoteProvider(), documentId);
        NoteProvider noteProvider = getNoteProvider();
        List singletonList = Collections.singletonList(documentId);
        Intrinsics.checkNotNullExpressionValue(singletonList, "singletonList(...)");
        NoteModelProviderKt.purgeNoteList(noteProvider, singletonList);
    }

    public final void setDocumentUniqueId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.documentUniqueId = str;
    }
}
