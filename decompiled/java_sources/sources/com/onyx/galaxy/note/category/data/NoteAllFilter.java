package com.onyx.galaxy.note.category.data;

import androidx.credentials.provider.utils.PrivilegedApp;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.data.utils.BooleanOption;
import com.onyx.android.sdk.data.utils.MMKVUtils;
import com.onyx.android.sdk.replicator.note.p035db.NoteExtraProvider;
import com.onyx.android.sdk.replicator.note.p035db.NoteProvider;
import com.onyx.galaxy.note.category.data.Filter;
import com.onyx.galaxy.note.settings.data.NoteConfigKt;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u0005¢\u0006\u0002\u0010\u0002J&\u0010\u0003\u001a\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\b\u0010\f\u001a\u00020\rH\u0016J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u0011H\u0016¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/data/NoteAllFilter;", "Lcom/onyx/galaxy/note/category/data/Filter;", "()V", "fillChildrenTree", "", "list", "", "Lcom/onyx/galaxy/note/category/data/FilterInfo;", CouchFieldKey.KEY_PROVIDER, "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", "noteExtraProvider", "Lcom/onyx/android/sdk/replicator/note/db/NoteExtraProvider;", "queryArgs", "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "type", "", CouchFieldKey.KEY_UNIQUE_ID, "", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nNoteAllFilter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteAllFilter.kt\ncom/onyx/galaxy/note/category/data/NoteAllFilter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,65:1\n1#2:66\n*E\n"})
/* loaded from: classes9.dex */
public final class NoteAllFilter implements Filter {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE;

    @NotNull
    private static final String NOTE_SET_FILTER_ID = "noteSet";

    @NotNull
    private static final FilterInfo info;

    @NotNull
    private static final Lazy<CBQueryArgs> noteSetFilterArgs$delegate;

    @Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u000f\u001a\u00020\u0010R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u001b\u0010\t\u001a\u00020\n8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000b\u0010\f¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/data/NoteAllFilter$Companion;", "", "()V", "NOTE_SET_FILTER_ID", "", PrivilegedApp.f6532i, "Lcom/onyx/galaxy/note/category/data/FilterInfo;", "getInfo", "()Lcom/onyx/galaxy/note/category/data/FilterInfo;", "noteSetFilterArgs", "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "getNoteSetFilterArgs", "()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "noteSetFilterArgs$delegate", "Lkotlin/Lazy;", "getNoteSetExpandOp", "Lcom/onyx/android/sdk/data/utils/BooleanOption;", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final CBQueryArgs getNoteSetFilterArgs() {
            return (CBQueryArgs) NoteAllFilter.noteSetFilterArgs$delegate.getValue();
        }

        @NotNull
        public final FilterInfo getInfo() {
            return NoteAllFilter.info;
        }

        @NotNull
        public final BooleanOption getNoteSetExpandOp() {
            return MMKVUtils.INSTANCE.booleanOption(NoteAllFilter.NOTE_SET_FILTER_ID, true);
        }

        private Companion() {
        }
    }

    static {
        Lazy<CBQueryArgs> lazy;
        Companion companion = new Companion(null);
        INSTANCE = companion;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<CBQueryArgs>() { // from class: com.onyx.galaxy.note.category.data.NoteAllFilter$Companion$noteSetFilterArgs$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final CBQueryArgs invoke() {
                CBQueryArgs commonNoteArgs = NoteConfigKt.getCommonNoteArgs();
                commonNoteArgs.andWith(CouchUtils.INSTANCE.nonExpression("type", 0));
                return commonNoteArgs;
            }
        });
        noteSetFilterArgs$delegate = lazy;
        FilterInfo filterInfo = new FilterInfo(1, NOTE_SET_FILTER_ID);
        filterInfo.setQueryArgs(companion.getNoteSetFilterArgs());
        info = filterInfo;
    }

    @Override // com.onyx.galaxy.note.category.data.Filter
    public void fillChildrenTree(@NotNull List<FilterInfo> list, @NotNull NoteProvider provider, @NotNull NoteExtraProvider noteExtraProvider) {
        Intrinsics.checkNotNullParameter(list, "list");
        Intrinsics.checkNotNullParameter(provider, "provider");
        Intrinsics.checkNotNullParameter(noteExtraProvider, "noteExtraProvider");
        if (INSTANCE.getNoteSetExpandOp().get()) {
            FilterInfo info2 = new NoteSetUnClassfied().info(provider);
            FilterInfo info3 = new NoteSetNoTag().info(provider);
            info2.setCount(provider.queryCount(NoteConfigKt.getUnClassifyCountArgs()));
            info3.setCount(provider.queryCount(NoteConfigKt.getNoTagCountArgs()));
            list.add(info2);
            list.add(info3);
        }
    }

    @Override // com.onyx.galaxy.note.category.data.Filter
    @NotNull
    public FilterInfo info(@NotNull NoteProvider noteProvider) {
        return Filter.DefaultImpls.info(this, noteProvider);
    }

    @Override // com.onyx.galaxy.note.category.data.Filter
    @NotNull
    public List<PathEntry> pathList() {
        return Filter.DefaultImpls.pathList(this);
    }

    @Override // com.onyx.galaxy.note.category.data.Filter
    @NotNull
    public CBQueryArgs queryArgs() {
        return INSTANCE.getNoteSetFilterArgs();
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
