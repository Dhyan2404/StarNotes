package com.onyx.galaxy.note.common.extension;

import com.couchbase.lite.Ordering;
import com.onyx.android.sdk.base.data.SortBy;
import com.onyx.android.sdk.base.data.SortOrder;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.galaxy.note.category.data.NoteSelectType;
import com.onyx.galaxy.note.settings.data.NoteConfigConst;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u001a\u0012\u0010\u0004\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006\u001a\u0014\u0010\u0007\u001a\u00020\u0001*\u00020\u00012\b\u0010\b\u001a\u0004\u0018\u00010\u0003\u001a\u001a\u0010\t\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r¨\u0006\u000e"}, m61528d2 = {"andWithFolderId", "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "folderId", "", "andWithSelectType", "selectType", "Lcom/onyx/galaxy/note/category/data/NoteSelectType;", "andWithTagId", CouchFieldKey.KEY_TAG_ID, "sortWith", "sortBy", "Lcom/onyx/android/sdk/base/data/SortBy;", "orderBy", "Lcom/onyx/android/sdk/base/data/SortOrder;", "note_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class NoteQueryArgsKt {

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[SortBy.values().length];
            try {
                iArr[SortBy.UpdateAt.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[SortBy.CreationTime.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[SortBy.Name.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[NoteSelectType.values().length];
            try {
                iArr2[NoteSelectType.TAB_NOTE.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[NoteSelectType.TAB_PDF.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    @NotNull
    public static final CBQueryArgs andWithFolderId(@NotNull CBQueryArgs cBQueryArgs, @Nullable String str) {
        Intrinsics.checkNotNullParameter(cBQueryArgs, "<this>");
        if (Intrinsics.areEqual(str, NoteConfigConst.FOLDER_ROOT_ID)) {
            str = null;
        }
        return cBQueryArgs.andWith(CouchUtils.INSTANCE.equalOrNullExpression(CouchFieldKey.KEY_PARENT_UNIQUE_ID, str));
    }

    @NotNull
    public static final CBQueryArgs andWithSelectType(@NotNull CBQueryArgs cBQueryArgs, @NotNull NoteSelectType selectType) {
        List<? extends Object> listOf;
        Intrinsics.checkNotNullParameter(cBQueryArgs, "<this>");
        Intrinsics.checkNotNullParameter(selectType, "selectType");
        int i = WhenMappings.$EnumSwitchMapping$1[selectType.ordinal()];
        if (i == 1) {
            CouchUtils couchUtils = CouchUtils.INSTANCE;
            listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new Integer[]{-1, 0, 1, 2});
            cBQueryArgs.andWith(couchUtils.nestedInExpression(listOf, CouchFieldKey.KEY_ACTIVE_SCENE));
            cBQueryArgs.andWith(couchUtils.nonExpression("type", 0));
        } else if (i == 2) {
            cBQueryArgs.andWith(CouchUtils.INSTANCE.equalExpression(CouchFieldKey.KEY_ACTIVE_SCENE, 3));
        }
        return cBQueryArgs;
    }

    @NotNull
    public static final CBQueryArgs andWithTagId(@NotNull CBQueryArgs cBQueryArgs, @Nullable String str) {
        Intrinsics.checkNotNullParameter(cBQueryArgs, "<this>");
        if (!StringKt.isNotBlank(str)) {
            cBQueryArgs.andWith(CouchUtils.INSTANCE.listEmptyExpression(CouchFieldKey.KEY_TAG_ID_LIST));
        } else if (Intrinsics.areEqual(str, NoteConfigConst.TAG_ROOT_ID)) {
            cBQueryArgs.andWith(CouchUtils.INSTANCE.listNotEmptyExpression(CouchFieldKey.KEY_TAG_ID_LIST));
        } else {
            cBQueryArgs.andWith(CouchUtils.INSTANCE.listContains(CouchFieldKey.KEY_TAG_ID_LIST, str));
        }
        return cBQueryArgs;
    }

    @NotNull
    public static final CBQueryArgs sortWith(@NotNull CBQueryArgs cBQueryArgs, @NotNull SortBy sortBy, @NotNull SortOrder orderBy) {
        Intrinsics.checkNotNullParameter(cBQueryArgs, "<this>");
        Intrinsics.checkNotNullParameter(sortBy, "sortBy");
        Intrinsics.checkNotNullParameter(orderBy, "orderBy");
        int i = WhenMappings.$EnumSwitchMapping$0[sortBy.ordinal()];
        String str = "updatedAt";
        if (i != 1) {
            if (i == 2) {
                str = CouchFieldKey.KEY_CREATE_AT;
            } else if (i == 3) {
                str = "title";
            }
        }
        Ordering[] orderingArr = new Ordering[2];
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        orderingArr[0] = couchUtils.getOrdering("type", true);
        orderingArr[1] = couchUtils.getOrdering(str, orderBy == SortOrder.Asc);
        return cBQueryArgs.setVarargOrdering(orderingArr);
    }
}
