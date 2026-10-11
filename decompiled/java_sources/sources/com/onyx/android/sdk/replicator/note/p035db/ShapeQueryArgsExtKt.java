package com.onyx.android.sdk.replicator.note.p035db;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.couchbase.lite.Expression;
import com.couchbase.lite.SelectResult;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.universal.editor.config.EditorConstants;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000.\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0010\u001e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\t\n\u0002\b\u000e\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u000e\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u0014\u0010\u0005\u001a\u00020\u00012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0007\u001a\u0014\u0010\b\u001a\u00020\u00012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\t\u001a\u0018\u0010\n\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u000b\u001a\u00020\f\u001a\u001c\u0010\r\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00030\t\u001a\u000e\u0010\u000f\u001a\u00020\u00012\u0006\u0010\u0010\u001a\u00020\f\u001a\u001f\u0010\u0011\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\f¢\u0006\u0002\u0010\u0012\u001a3\u0010\u0013\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\u0014\u001a\u00020\f2\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016¢\u0006\u0002\u0010\u0017\u001a\u001d\u0010\u0013\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\b\u0010\u0018\u001a\u0004\u0018\u00010\f¢\u0006\u0002\u0010\u0012\u001a3\u0010\u0013\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u00032\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\f¢\u0006\u0002\u0010\u001b\u001a\u001e\u0010\u001c\u001a\u00020\u00012\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\f0\u00072\b\b\u0002\u0010\u0018\u001a\u00020\f\u001a\u0018\u0010\u001e\u001a\u00020\u00012\u0006\u0010\u0010\u001a\u00020\f2\b\b\u0002\u0010\u0018\u001a\u00020\f\u001a\u0018\u0010\u001f\u001a\u00020\u00012\u0006\u0010 \u001a\u00020\u00032\b\b\u0002\u0010\u0018\u001a\u00020\f\u001a\u001f\u0010!\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\f¢\u0006\u0002\u0010\u0012\u001a7\u0010\"\u001a\u00020\u00012\u0006\u0010#\u001a\u00020\u00032\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\f¢\u0006\u0002\u0010\u001b¨\u0006$"}, m61528d2 = {"docShapeQuery", "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", EditorConstants.ARGS_DOC_ID, "", "emptyInfoRevisionIdShapeCountQuery", "inRemovedShapeIdListQuery", "shapeIdList", "", "inShapeIdListQuery", "", "loadEmptyInfoRevisionIdShapeListQuery", "limit", "", "loadPageShapeListWithResourceQuery", "pageIds", "loadShapeFontQuery", "shapeType", "loadShapeListByTypeQuery", "(Ljava/lang/String;Ljava/lang/Integer;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "loadShapeListQuery", TypedValues.CycleType.S_WAVE_OFFSET, "fromUpdateAt", "", "(Ljava/lang/String;IILjava/lang/Long;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "status", CouchFieldKey.KEY_PAGE_ID, CouchFieldKey.KEY_SUB_PAGE_NAME, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "loadShapeModelByTypeListQuery", "shapeTypeList", "loadShapeModelByTypeQuery", "loadShapeModelQuery", "shapeUniqueId", "shapeCountQuery", "shapeTextSearch", "content", "sdk-replicator_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nShapeQueryArgsExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeQueryArgsExt.kt\ncom/onyx/android/sdk/replicator/note/db/ShapeQueryArgsExtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,160:1\n1#2:161\n*E\n"})
/* loaded from: classes8.dex */
public final class ShapeQueryArgsExtKt {
    @NotNull
    public static final CBQueryArgs docShapeQuery(@NotNull String docId) {
        Intrinsics.checkNotNullParameter(docId, "docId");
        return new CBQueryArgs().andWith(CouchUtils.INSTANCE.equalExpression(CouchFieldKey.KEY_DOCUMENT_ID, docId));
    }

    @NotNull
    public static final CBQueryArgs emptyInfoRevisionIdShapeCountQuery(@NotNull String docId) {
        Intrinsics.checkNotNullParameter(docId, "docId");
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        return cBQueryArgs.andWith(couchUtils.equalExpression(CouchFieldKey.KEY_DOCUMENT_ID, docId)).andWith(couchUtils.nullOrMissing(CouchFieldKey.KEY_INFO_REVISION_ID));
    }

    @NotNull
    public static final CBQueryArgs inRemovedShapeIdListQuery(@NotNull List<String> shapeIdList) {
        Intrinsics.checkNotNullParameter(shapeIdList, "shapeIdList");
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        return cBQueryArgs.andWith(couchUtils.inExpression(CouchFieldKey.KEY_UNIQUE_ID, shapeIdList)).andWith(couchUtils.equalExpression("status", 1));
    }

    @NotNull
    public static final CBQueryArgs inShapeIdListQuery(@NotNull Collection<String> shapeIdList) {
        Intrinsics.checkNotNullParameter(shapeIdList, "shapeIdList");
        return new CBQueryArgs().andWith(CouchUtils.INSTANCE.inExpression(CouchFieldKey.KEY_UNIQUE_ID, shapeIdList));
    }

    @NotNull
    public static final CBQueryArgs loadEmptyInfoRevisionIdShapeListQuery(@NotNull String docId, int i) {
        Intrinsics.checkNotNullParameter(docId, "docId");
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        CBQueryArgs varargOrdering = cBQueryArgs.andWith(couchUtils.equalExpression(CouchFieldKey.KEY_DOCUMENT_ID, docId)).andWith(couchUtils.nullOrMissing(CouchFieldKey.KEY_INFO_REVISION_ID)).setVarargOrdering(couchUtils.getOrdering("updatedAt", true));
        varargOrdering.m72251setLimit(i);
        return varargOrdering;
    }

    public static /* synthetic */ CBQueryArgs loadEmptyInfoRevisionIdShapeListQuery$default(String str, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = Integer.MAX_VALUE;
        }
        return loadEmptyInfoRevisionIdShapeListQuery(str, i);
    }

    @NotNull
    public static final CBQueryArgs loadPageShapeListWithResourceQuery(@NotNull String docId, @NotNull Collection<String> pageIds) {
        Intrinsics.checkNotNullParameter(docId, "docId");
        Intrinsics.checkNotNullParameter(pageIds, "pageIds");
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        return cBQueryArgs.andWith(couchUtils.equalExpression(CouchFieldKey.KEY_DOCUMENT_ID, docId)).andWith(couchUtils.inExpression(CouchFieldKey.KEY_PAGE_ID, pageIds)).andWith(couchUtils.notNullOrMissing(CouchFieldKey.KEY_RESOURCE_ID));
    }

    @NotNull
    public static final CBQueryArgs loadShapeFontQuery(int i) {
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        CBQueryArgs andWith = cBQueryArgs.andWith(couchUtils.equalExpression("shapeType", Integer.valueOf(i))).andWith(couchUtils.equalExpression("status", 0));
        SelectResult.C2166As property = SelectResult.property("shapeType");
        Intrinsics.checkNotNullExpressionValue(property, "property(...)");
        SelectResult.C2166As property2 = SelectResult.property("richText");
        Intrinsics.checkNotNullExpressionValue(property2, "property(...)");
        SelectResult.C2166As property3 = SelectResult.property("textStyle");
        Intrinsics.checkNotNullExpressionValue(property3, "property(...)");
        return andWith.setVarargSelectResults(property, property2, property3);
    }

    @NotNull
    public static final CBQueryArgs loadShapeListByTypeQuery(@NotNull String docId, @Nullable Integer num) {
        Intrinsics.checkNotNullParameter(docId, "docId");
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        return cBQueryArgs.andWith(couchUtils.equalExpression(CouchFieldKey.KEY_DOCUMENT_ID, docId)).andWith(num != null ? couchUtils.equalExpression("shapeType", Integer.valueOf(num.intValue())) : null);
    }

    public static /* synthetic */ CBQueryArgs loadShapeListByTypeQuery$default(String str, Integer num, int i, Object obj) {
        if ((i & 2) != 0) {
            num = null;
        }
        return loadShapeListByTypeQuery(str, num);
    }

    @NotNull
    public static final CBQueryArgs loadShapeListQuery(@NotNull String docId, int i, int i2, @Nullable Long l) {
        Intrinsics.checkNotNullParameter(docId, "docId");
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        CBQueryArgs andWith = cBQueryArgs.andWith(couchUtils.equalExpression(CouchFieldKey.KEY_DOCUMENT_ID, docId)).andWith(l != null ? couchUtils.greaterThanOrEqualToExpression("updatedAt", Long.valueOf(l.longValue())) : null);
        andWith.m72252setOffset(i2);
        andWith.m72251setLimit(i);
        return andWith.setVarargOrdering(couchUtils.getOrdering("updatedAt", true));
    }

    public static /* synthetic */ CBQueryArgs loadShapeListQuery$default(String str, int i, int i2, Long l, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = Integer.MAX_VALUE;
        }
        if ((i3 & 4) != 0) {
            i2 = 0;
        }
        if ((i3 & 8) != 0) {
            l = null;
        }
        return loadShapeListQuery(str, i, i2, l);
    }

    @NotNull
    public static final CBQueryArgs loadShapeModelByTypeListQuery(@NotNull List<Integer> shapeTypeList, int i) {
        Intrinsics.checkNotNullParameter(shapeTypeList, "shapeTypeList");
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        return cBQueryArgs.andWith(couchUtils.inExpression("shapeType", shapeTypeList)).andWith(couchUtils.equalExpression("status", Integer.valueOf(i)));
    }

    public static /* synthetic */ CBQueryArgs loadShapeModelByTypeListQuery$default(List list, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return loadShapeModelByTypeListQuery(list, i);
    }

    @NotNull
    public static final CBQueryArgs loadShapeModelByTypeQuery(int i, int i2) {
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        return cBQueryArgs.andWith(couchUtils.equalExpression("shapeType", Integer.valueOf(i))).andWith(couchUtils.equalExpression("status", Integer.valueOf(i2)));
    }

    public static /* synthetic */ CBQueryArgs loadShapeModelByTypeQuery$default(int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i2 = 0;
        }
        return loadShapeModelByTypeQuery(i, i2);
    }

    @NotNull
    public static final CBQueryArgs loadShapeModelQuery(@NotNull String shapeUniqueId, int i) {
        Intrinsics.checkNotNullParameter(shapeUniqueId, "shapeUniqueId");
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        return cBQueryArgs.andWith(couchUtils.equalExpression(CouchFieldKey.KEY_UNIQUE_ID, shapeUniqueId)).andWith(couchUtils.equalExpression("status", Integer.valueOf(i)));
    }

    public static /* synthetic */ CBQueryArgs loadShapeModelQuery$default(String str, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return loadShapeModelQuery(str, i);
    }

    @NotNull
    public static final CBQueryArgs shapeCountQuery(@NotNull String docId, @Nullable Integer num) {
        Intrinsics.checkNotNullParameter(docId, "docId");
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        return cBQueryArgs.andWith(couchUtils.equalExpression(CouchFieldKey.KEY_DOCUMENT_ID, docId)).andWith(num != null ? couchUtils.equalExpression("status", Integer.valueOf(num.intValue())) : null);
    }

    public static /* synthetic */ CBQueryArgs shapeCountQuery$default(String str, Integer num, int i, Object obj) {
        if ((i & 2) != 0) {
            num = 0;
        }
        return shapeCountQuery(str, num);
    }

    @NotNull
    public static final CBQueryArgs shapeTextSearch(@NotNull String content, @Nullable String str, @Nullable String str2, @Nullable Integer num) {
        List listOf;
        Intrinsics.checkNotNullParameter(content, "content");
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        listOf = CollectionsKt__CollectionsJVMKt.listOf("text");
        return cBQueryArgs.andWith(CouchUtils.orLikeExpression$default(couchUtils, content, listOf, null, false, 12, null)).andWith(str != null ? couchUtils.equalExpression(CouchFieldKey.KEY_DOCUMENT_ID, str) : null).andWith(str2 != null ? couchUtils.equalExpression(CouchFieldKey.KEY_PAGE_ID, str2) : null).andWith(num != null ? couchUtils.equalExpression("status", Integer.valueOf(num.intValue())) : null);
    }

    public static /* synthetic */ CBQueryArgs shapeTextSearch$default(String str, String str2, String str3, Integer num, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = null;
        }
        if ((i & 4) != 0) {
            str3 = null;
        }
        if ((i & 8) != 0) {
            num = 0;
        }
        return shapeTextSearch(str, str2, str3, num);
    }

    public static /* synthetic */ CBQueryArgs loadShapeListQuery$default(String str, String str2, String str3, Integer num, int i, Object obj) {
        if ((i & 4) != 0) {
            str3 = null;
        }
        if ((i & 8) != 0) {
            num = 0;
        }
        return loadShapeListQuery(str, str2, str3, num);
    }

    @NotNull
    public static final CBQueryArgs loadShapeListQuery(@NotNull String docId, @NotNull String pageUniqueId, @Nullable String str, @Nullable Integer num) {
        Expression expression;
        Intrinsics.checkNotNullParameter(docId, "docId");
        Intrinsics.checkNotNullParameter(pageUniqueId, "pageUniqueId");
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        CBQueryArgs andWith = cBQueryArgs.andWith(couchUtils.equalExpression(CouchFieldKey.KEY_PAGE_ID, pageUniqueId)).andWith(couchUtils.equalExpression(CouchFieldKey.KEY_DOCUMENT_ID, docId));
        if (num != null) {
            num.intValue();
            expression = couchUtils.equalExpression("status", num);
        } else {
            expression = null;
        }
        return andWith.andWith(expression).andWith(str != null ? couchUtils.equalExpression(CouchFieldKey.KEY_SUB_PAGE_NAME, str) : null);
    }

    @NotNull
    public static final CBQueryArgs loadShapeListQuery(@NotNull String docId, @Nullable Integer num) {
        Intrinsics.checkNotNullParameter(docId, "docId");
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        return cBQueryArgs.andWith(couchUtils.equalExpression(CouchFieldKey.KEY_DOCUMENT_ID, docId)).andWith(num != null ? couchUtils.equalExpression("status", Integer.valueOf(num.intValue())) : null);
    }
}
