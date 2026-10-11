package com.onyx.galaxy.note.category.data;

import androidx.credentials.provider.utils.PrivilegedApp;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.replicator.note.p035db.NoteExtraProvider;
import com.onyx.android.sdk.replicator.note.p035db.NoteProvider;
import com.onyx.galaxy.note.category.data.Filter;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u0005¢\u0006\u0002\u0010\u0002J&\u0010\u0003\u001a\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\f\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0012H\u0016¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/data/QuotaAllDocFilter;", "Lcom/onyx/galaxy/note/category/data/Filter;", "()V", "fillChildrenTree", "", "list", "", "Lcom/onyx/galaxy/note/category/data/FilterInfo;", CouchFieldKey.KEY_PROVIDER, "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", "noteExtraProvider", "Lcom/onyx/android/sdk/replicator/note/db/NoteExtraProvider;", PrivilegedApp.f6532i, "queryArgs", "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "type", "", CouchFieldKey.KEY_UNIQUE_ID, "", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class QuotaAllDocFilter implements Filter {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE;

    @NotNull
    private static final String QUOTA_ALL_DOC_UNIQUE_ID = "quota_all_doc_unique_id";

    @NotNull
    private static final Lazy<CBQueryArgs> allDocArgs$delegate;

    @NotNull
    private static final FilterInfo info;

    @Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u000f\u001a\u00020\u0006H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u000b\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/data/QuotaAllDocFilter$Companion;", "", "()V", "QUOTA_ALL_DOC_UNIQUE_ID", "", "allDocArgs", "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "getAllDocArgs", "()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "allDocArgs$delegate", "Lkotlin/Lazy;", PrivilegedApp.f6532i, "Lcom/onyx/galaxy/note/category/data/FilterInfo;", "getInfo", "()Lcom/onyx/galaxy/note/category/data/FilterInfo;", "generateAllDocCBArgs", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final CBQueryArgs generateAllDocCBArgs() {
            List<? extends Object> listOf;
            CBQueryArgs cBQueryArgs = new CBQueryArgs();
            CouchUtils couchUtils = CouchUtils.INSTANCE;
            cBQueryArgs.andWith(couchUtils.equalExpression("type", 1));
            listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new Integer[]{0, 4});
            cBQueryArgs.andWith(couchUtils.nestedInExpression(listOf, CouchFieldKey.KEY_ASSOCIATION, CouchFieldKey.KEY_ASSOCIATION_TYPE));
            return cBQueryArgs;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final CBQueryArgs getAllDocArgs() {
            return (CBQueryArgs) QuotaAllDocFilter.allDocArgs$delegate.getValue();
        }

        @NotNull
        public final FilterInfo getInfo() {
            return QuotaAllDocFilter.info;
        }

        private Companion() {
        }
    }

    static {
        Lazy<CBQueryArgs> lazy;
        Companion companion = new Companion(null);
        INSTANCE = companion;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<CBQueryArgs>() { // from class: com.onyx.galaxy.note.category.data.QuotaAllDocFilter$Companion$allDocArgs$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final CBQueryArgs invoke() {
                CBQueryArgs generateAllDocCBArgs;
                generateAllDocCBArgs = QuotaAllDocFilter.INSTANCE.generateAllDocCBArgs();
                return generateAllDocCBArgs;
            }
        });
        allDocArgs$delegate = lazy;
        FilterInfo filterInfo = new FilterInfo(93, QUOTA_ALL_DOC_UNIQUE_ID);
        filterInfo.setQueryArgs(companion.getAllDocArgs());
        info = filterInfo;
    }

    @Override // com.onyx.galaxy.note.category.data.Filter
    public void fillChildrenTree(@NotNull List<FilterInfo> list, @NotNull NoteProvider provider, @NotNull NoteExtraProvider noteExtraProvider) {
        Intrinsics.checkNotNullParameter(list, "list");
        Intrinsics.checkNotNullParameter(provider, "provider");
        Intrinsics.checkNotNullParameter(noteExtraProvider, "noteExtraProvider");
    }

    @Override // com.onyx.galaxy.note.category.data.Filter
    @NotNull
    public FilterInfo info(@NotNull NoteProvider provider) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        FilterInfo info2 = Filter.DefaultImpls.info(this, provider);
        info2.setQueryArgs(queryArgs());
        return info2;
    }

    @Override // com.onyx.galaxy.note.category.data.Filter
    @NotNull
    public List<PathEntry> pathList() {
        return Filter.DefaultImpls.pathList(this);
    }

    @Override // com.onyx.galaxy.note.category.data.Filter
    @NotNull
    public CBQueryArgs queryArgs() {
        return INSTANCE.getAllDocArgs();
    }

    @Override // com.onyx.galaxy.note.category.data.Filter
    public int type() {
        return info.getType();
    }

    @Override // com.onyx.galaxy.note.category.data.Filter
    @NotNull
    public String uniqueId() {
        return info.getUniqueId();
    }
}
