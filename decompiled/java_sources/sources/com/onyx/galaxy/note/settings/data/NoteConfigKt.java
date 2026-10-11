package com.onyx.galaxy.note.settings.data;

import com.couchbase.lite.Expression;
import com.couchbase.lite.Ordering;
import com.onyx.android.sdk.base.data.SortBy;
import com.onyx.android.sdk.base.data.SortOrder;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.galaxy.note.common.extension.NoteQueryArgsKt;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0006\u001a\u0014\u0010\u0000\u001a\u00020\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u001a\u0006\u0010\u0005\u001a\u00020\u0001\u001a\u0006\u0010\u0006\u001a\u00020\u0001\u001a\u0006\u0010\u0007\u001a\u00020\u0001\u001a\u0006\u0010\b\u001a\u00020\u0001\u001a\u001d\u0010\t\u001a\u00020\u00012\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b¢\u0006\u0002\u0010\r\u001a\u0006\u0010\u000e\u001a\u00020\u0001\u001a\u0014\u0010\u000f\u001a\u00020\u00012\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u001a\u0006\u0010\u0011\u001a\u00020\u0001¨\u0006\u0012"}, m61528d2 = {"getChildrenByPidArgs", "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "folderIds", "", "", "getCommonNoteArgs", "getDocumentsArgs", "getDustBinNoteArgs", "getEncryptedDocumentsArgs", "getFolderTreeArgs", "orderings", "", "Lcom/couchbase/lite/Ordering;", "([Lcom/couchbase/lite/Ordering;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "getNoTagCountArgs", "getNoteByTagIdsArgs", "tagIds", "getUnClassifyCountArgs", "note_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nNoteConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteConfig.kt\ncom/onyx/galaxy/note/settings/data/NoteConfigKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,289:1\n1864#2,3:290\n*S KotlinDebug\n*F\n+ 1 NoteConfig.kt\ncom/onyx/galaxy/note/settings/data/NoteConfigKt\n*L\n172#1:290,3\n*E\n"})
/* loaded from: classes9.dex */
public final class NoteConfigKt {
    @NotNull
    public static final CBQueryArgs getChildrenByPidArgs(@NotNull List<String> folderIds) {
        Intrinsics.checkNotNullParameter(folderIds, "folderIds");
        CBQueryArgs commonNoteArgs = getCommonNoteArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        commonNoteArgs.andWith(couchUtils.equalExpression("type", 1).m9761or(couchUtils.equalExpression("type", 0)));
        commonNoteArgs.andWith(couchUtils.inExpression(CouchFieldKey.KEY_PARENT_UNIQUE_ID, folderIds));
        return commonNoteArgs;
    }

    @NotNull
    public static final CBQueryArgs getCommonNoteArgs() {
        List<? extends Object> listOf;
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        cBQueryArgs.andWith(couchUtils.equalExpression("status", 1));
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new Integer[]{0, 4});
        cBQueryArgs.andWith(couchUtils.nestedInExpression(listOf, CouchFieldKey.KEY_ASSOCIATION, CouchFieldKey.KEY_ASSOCIATION_TYPE));
        return cBQueryArgs;
    }

    @NotNull
    public static final CBQueryArgs getDocumentsArgs() {
        List<? extends Object> listOf;
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        cBQueryArgs.andWith(couchUtils.equalExpression("status", 1));
        cBQueryArgs.andWith(couchUtils.equalExpression("type", 1));
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new Integer[]{0, 4});
        cBQueryArgs.andWith(couchUtils.nestedInExpression(listOf, CouchFieldKey.KEY_ASSOCIATION, CouchFieldKey.KEY_ASSOCIATION_TYPE));
        return cBQueryArgs;
    }

    @NotNull
    public static final CBQueryArgs getDustBinNoteArgs() {
        List<? extends Object> listOf;
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        cBQueryArgs.andWith(couchUtils.equalExpression("status", 0));
        cBQueryArgs.andWith(couchUtils.equalExpression("type", 1));
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new Integer[]{0, 4});
        NoteQueryArgsKt.sortWith(cBQueryArgs.andWith(couchUtils.nestedInExpression(listOf, CouchFieldKey.KEY_ASSOCIATION, CouchFieldKey.KEY_ASSOCIATION_TYPE)), SortBy.UpdateAt, SortOrder.Desc);
        return cBQueryArgs;
    }

    @NotNull
    public static final CBQueryArgs getEncryptedDocumentsArgs() {
        List<? extends Object> listOf;
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new Integer[]{0, 4});
        cBQueryArgs.andWith(couchUtils.nestedInExpression(listOf, CouchFieldKey.KEY_ASSOCIATION, CouchFieldKey.KEY_ASSOCIATION_TYPE));
        cBQueryArgs.andWith(couchUtils.equalExpression("type", 1));
        cBQueryArgs.andWith(couchUtils.notEmpty(CouchFieldKey.KEY_ENCRYPTION));
        return cBQueryArgs;
    }

    @NotNull
    public static final CBQueryArgs getFolderTreeArgs(@Nullable Ordering[] orderingArr) {
        CBQueryArgs commonNoteArgs = getCommonNoteArgs();
        commonNoteArgs.andWith(CouchUtils.INSTANCE.equalExpression("type", 0));
        commonNoteArgs.setOrdering(orderingArr);
        return commonNoteArgs;
    }

    public static /* synthetic */ CBQueryArgs getFolderTreeArgs$default(Ordering[] orderingArr, int i, Object obj) {
        if ((i & 1) != 0) {
            orderingArr = new Ordering[]{CouchUtils.INSTANCE.getOrdering(CouchFieldKey.KEY_ORDER_INDEX, true)};
        }
        return getFolderTreeArgs(orderingArr);
    }

    @NotNull
    public static final CBQueryArgs getNoTagCountArgs() {
        CBQueryArgs commonNoteArgs = getCommonNoteArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        commonNoteArgs.andWith(couchUtils.listEmptyExpression(CouchFieldKey.KEY_TAG_ID_LIST));
        commonNoteArgs.andWith(couchUtils.nonExpression("type", 0));
        return commonNoteArgs;
    }

    @NotNull
    public static final CBQueryArgs getNoteByTagIdsArgs(@NotNull List<String> tagIds) {
        List<? extends Object> listOf;
        Object first;
        Intrinsics.checkNotNullParameter(tagIds, "tagIds");
        if (tagIds.isEmpty()) {
            throw new Exception("tagIds is empty");
        }
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        int i = 0;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new Integer[]{0, 4});
        cBQueryArgs.andWith(couchUtils.nestedInExpression(listOf, CouchFieldKey.KEY_ASSOCIATION, CouchFieldKey.KEY_ASSOCIATION_TYPE));
        cBQueryArgs.andWith(couchUtils.equalExpression("type", 1));
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) tagIds);
        Expression listContains = couchUtils.listContains(CouchFieldKey.KEY_TAG_ID_LIST, first);
        for (Object obj : tagIds) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            String str = (String) obj;
            if (i > 0) {
                listContains = listContains.m9761or(CouchUtils.INSTANCE.listContains(CouchFieldKey.KEY_TAG_ID_LIST, str));
                Intrinsics.checkNotNullExpressionValue(listContains, "or(...)");
            }
            i = i2;
        }
        cBQueryArgs.andWith(listContains);
        return cBQueryArgs;
    }

    @NotNull
    public static final CBQueryArgs getUnClassifyCountArgs() {
        CBQueryArgs commonNoteArgs = getCommonNoteArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        commonNoteArgs.andWith(couchUtils.equalOrNullExpression(CouchFieldKey.KEY_PARENT_UNIQUE_ID, null));
        commonNoteArgs.andWith(couchUtils.nonExpression("type", 0));
        return commonNoteArgs;
    }
}
