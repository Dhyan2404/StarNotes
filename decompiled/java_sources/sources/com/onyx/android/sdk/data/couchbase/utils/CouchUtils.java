package com.onyx.android.sdk.data.couchbase.utils;

import com.alibaba.fastjson2.JSONWriter;
import com.couchbase.lite.AbstractFunction;
import com.couchbase.lite.ArrayExpression;
import com.couchbase.lite.ArrayFunction;
import com.couchbase.lite.Collection;
import com.couchbase.lite.CouchbaseLiteException;
import com.couchbase.lite.DataSource;
import com.couchbase.lite.Database;
import com.couchbase.lite.Dictionary;
import com.couchbase.lite.Document;
import com.couchbase.lite.DocumentFlag;
import com.couchbase.lite.DocumentReplication;
import com.couchbase.lite.Expression;
import com.couchbase.lite.From;
import com.couchbase.lite.GroupBy;
import com.couchbase.lite.Limit;
import com.couchbase.lite.Meta;
import com.couchbase.lite.MutableDocument;
import com.couchbase.lite.Ordering;
import com.couchbase.lite.PropertyExpression;
import com.couchbase.lite.Query;
import com.couchbase.lite.QueryBuilder;
import com.couchbase.lite.ReplicatedDocument;
import com.couchbase.lite.Result;
import com.couchbase.lite.Select;
import com.couchbase.lite.SelectResult;
import com.couchbase.lite.UnitOfWork;
import com.couchbase.lite.VariableExpression;
import com.couchbase.lite.Where;
import com.google.android.gms.actions.SearchIntents;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.base.BaseReplicatorModel;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.universal.editor.config.EditorConstants;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000À\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u001f\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001e\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0019\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001c\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00010\u0010J\u0016\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016J\u0006\u0010\u0017\u001a\u00020\fJ\u0018\u0010\u0018\u001a\u00020\u000e2\b\u0010\u0019\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u001a\u001a\u00020\u000eJ\u0016\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u000eJ\u0016\u0010 \u001a\u00020\f2\u0006\u0010!\u001a\u00020\u000e2\u0006\u0010\"\u001a\u00020\u0001J\u0018\u0010#\u001a\u00020\f2\u0006\u0010!\u001a\u00020\u000e2\b\u0010\"\u001a\u0004\u0018\u00010\u0001J\u0016\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020)J+\u0010*\u001a\u0004\u0018\u0001H+\"\u0004\b\u0000\u0010+2\u0006\u0010\u0015\u001a\u00020,2\f\u0010-\u001a\b\u0012\u0004\u0012\u0002H+0.H\u0007¢\u0006\u0002\u0010/J\u000e\u00100\u001a\u00020,2\u0006\u00101\u001a\u000202J3\u00100\u001a\u0004\u0018\u0001H+\"\u0004\b\u0000\u0010+2\u0006\u00101\u001a\u0002022\f\u0010-\u001a\b\u0012\u0004\u0012\u0002H+0.2\b\b\u0002\u00103\u001a\u00020\u000e¢\u0006\u0002\u00104J\u001c\u00100\u001a\b\u0012\u0004\u0012\u00020,0\u00102\u000e\u00105\u001a\n\u0012\u0004\u0012\u000202\u0018\u00010\u0010J\u001e\u00106\u001a\b\u0012\u0004\u0012\u00020,072\u0010\u00105\u001a\f\u0012\u0006\u0012\u0004\u0018\u000102\u0018\u00010\u0010J:\u00108\u001a\b\u0012\u0004\u0012\u0002H+0\u0010\"\u0004\b\u0000\u0010+2\u000e\u0010\u000f\u001a\n\u0012\u0004\u0012\u000202\u0018\u00010\u00102\f\u0010-\u001a\b\u0012\u0004\u0012\u0002H+0.2\b\b\u0002\u00103\u001a\u00020\u000eJ:\u00109\u001a\b\u0012\u0004\u0012\u0002H+0\u0010\"\u0004\b\u0000\u0010+2\u000e\u0010\u000f\u001a\n\u0012\u0004\u0012\u000202\u0018\u00010\u00102\f\u0010-\u001a\b\u0012\u0004\u0012\u0002H+0.2\b\b\u0002\u00103\u001a\u00020\u000eJ\u0016\u0010:\u001a\u00020\f2\u0006\u0010!\u001a\u00020\u000e2\u0006\u0010\"\u001a\u00020\u000eJ\u001f\u0010;\u001a\u00020\u000e2\u0012\u0010<\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u000e0\u0004\"\u00020\u000e¢\u0006\u0002\u0010=J\u0006\u0010>\u001a\u00020?J\u0010\u0010>\u001a\u00020?2\b\b\u0002\u0010@\u001a\u00020\u0012J\u0016\u0010A\u001a\u00020?2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010@\u001a\u00020\u0012J\u000e\u0010B\u001a\u00020\f2\u0006\u0010C\u001a\u00020DJ\u0016\u0010E\u001a\u00020\f2\u0006\u0010!\u001a\u00020\u000e2\u0006\u0010\"\u001a\u00020\u0001J\u0016\u0010F\u001a\u00020\f2\u0006\u0010!\u001a\u00020\u000e2\u0006\u0010\"\u001a\u00020\u0001J\u001a\u0010G\u001a\u0004\u0018\u00010%2\u0006\u0010H\u001a\u00020I2\u0006\u0010(\u001a\u00020)H\u0002J\u001c\u0010J\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00010KJ\u0014\u0010L\u001a\u00020\f2\f\u0010M\u001a\b\u0012\u0004\u0012\u00020\u00010\u0010J\u000e\u0010N\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0016J\u0016\u0010O\u001a\u00020\f2\u0006\u0010!\u001a\u00020\u000e2\u0006\u0010\"\u001a\u00020\u0001J \u0010P\u001a\u00020\f2\u0006\u0010!\u001a\u00020\u000e2\u0006\u0010\"\u001a\u00020\u000e2\b\b\u0002\u0010Q\u001a\u00020\u0012J\u0016\u0010R\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\"\u001a\u00020\u0001J\u000e\u0010S\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eJ\u000e\u0010T\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eJ\"\u0010U\u001a\b\u0012\u0004\u0012\u00020V0\u00102\u0006\u0010\u001d\u001a\u00020\u001e2\f\u0010W\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0010J'\u0010X\u001a\u00020\f2\u0006\u0010\"\u001a\u00020\u00012\u0012\u0010<\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u000e0\u0004\"\u00020\u000e¢\u0006\u0002\u0010YJ-\u0010Z\u001a\u00020\f2\f\u0010[\u001a\b\u0012\u0004\u0012\u00020\u00010\u00102\u0012\u0010<\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u000e0\u0004\"\u00020\u000e¢\u0006\u0002\u0010\\J\u0016\u0010]\u001a\u00020\f2\u0006\u0010!\u001a\u00020\u000e2\u0006\u0010\"\u001a\u00020\u0001J\u000e\u0010^\u001a\u00020\f2\u0006\u0010!\u001a\u00020\u000eJ\u0016\u0010_\u001a\u00020\f2\u0006\u0010!\u001a\u00020\u000e2\u0006\u0010\"\u001a\u00020\u0001J\u001e\u0010`\u001a\u0004\u0018\u00010\f2\u0006\u0010\r\u001a\u00020\u000e2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00010KJ\u000e\u0010a\u001a\u00020\f2\u0006\u0010!\u001a\u00020\u000eJ\u0006\u0010b\u001a\u00020\fJ\u0006\u0010c\u001a\u00020\fJ\u000e\u0010d\u001a\u00020\f2\u0006\u0010!\u001a\u00020\u000eJ\u0016\u0010e\u001a\u00020\f2\u0006\u0010!\u001a\u00020\u000e2\u0006\u0010\"\u001a\u00020\u0001J\u000e\u0010f\u001a\u00020\f2\u0006\u0010!\u001a\u00020\u000eJ0\u0010g\u001a\u00020\f2\u0006\u0010h\u001a\u00020\u000e2\f\u0010i\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00102\b\b\u0002\u0010j\u001a\u00020\u000e2\b\b\u0002\u0010k\u001a\u00020\u0012J(\u0010l\u001a\u0004\u0018\u00010\f2\u0006\u0010h\u001a\u00020\u000e2\f\u0010i\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00102\b\b\u0002\u0010k\u001a\u00020\u0012J(\u0010m\u001a\u0004\u0018\u00010\f2\u0006\u0010h\u001a\u00020\u000e2\f\u0010i\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00102\b\b\u0002\u0010k\u001a\u00020\u0012J\u0018\u0010n\u001a\u00020%2\u0006\u0010H\u001a\u00020I2\u0006\u0010(\u001a\u00020)H\u0002J\u0016\u0010o\u001a\u00020p2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010q\u001a\u00020\fJ\u001c\u0010r\u001a\b\u0012\u0004\u0012\u00020,0\u00102\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010(\u001a\u00020)J0\u0010s\u001a\b\u0012\u0004\u0012\u0002H+0\u0010\"\u0004\b\u0000\u0010+2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010(\u001a\u00020)2\f\u0010-\u001a\b\u0012\u0004\u0012\u0002H+0.J\u001e\u0010t\u001a\n\u0012\u0004\u0012\u000202\u0018\u00010\u00102\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010(\u001a\u00020)J\u0018\u0010u\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\b\u0010\u0015\u001a\u0004\u0018\u00010,J\u001e\u0010v\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u000e\u0010w\u001a\n\u0012\u0004\u0012\u00020,\u0018\u00010\u0010J\u001f\u0010x\u001a\u0004\u0018\u00010,\"\b\b\u0000\u0010+*\u00020y2\u0006\u0010z\u001a\u0002H+¢\u0006\u0002\u0010{J\u001a\u0010x\u001a\u0004\u0018\u00010,2\u0006\u0010z\u001a\u00020\u00012\b\u0010|\u001a\u0004\u0018\u00010\u000eJ\u0006\u0010}\u001a\u00020\fJ\u0018\u0010~\u001a\u00020%2\u0006\u0010H\u001a\u00020I2\u0006\u0010(\u001a\u00020)H\u0002J\u0010\u0010\u007f\u001a\u00020D*\b0\u0080\u0001j\u0003`\u0081\u0001J\u0015\u0010\u0082\u0001\u001a\u00020\u000e*\u0002022\b\b\u0002\u00103\u001a\u00020\u000eR\"\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\n\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\u0083\u0001"}, m61528d2 = {"Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;", "", "()V", "allResults", "", "Lcom/couchbase/lite/SelectResult;", "getAllResults", "()[Lcom/couchbase/lite/SelectResult;", "setAllResults", "([Lcom/couchbase/lite/SelectResult;)V", "[Lcom/couchbase/lite/SelectResult;", "anyExpression", "Lcom/couchbase/lite/Expression;", "key", "", "list", "", "checkReplicatedDocumentValid", "", "replication", "Lcom/couchbase/lite/DocumentReplication;", "document", "Lcom/couchbase/lite/ReplicatedDocument;", "commitDocExpression", "dbFullName", Constant.TAG_USER_ID, EditorConstants.ARGS_DOC_ID, "delete", "", "database", "Lcom/couchbase/lite/Database;", "id", "equalExpression", "property", "value", "equalOrNullExpression", "fromBy", "Lcom/couchbase/lite/Query;", "from", "Lcom/couchbase/lite/From;", "queryArgs", "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "fromMutableDocument", "T", "Lcom/couchbase/lite/MutableDocument;", "cls", "Ljava/lang/Class;", "(Lcom/couchbase/lite/MutableDocument;Ljava/lang/Class;)Ljava/lang/Object;", "fromQueryResult", Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, "Lcom/couchbase/lite/Result;", "collectionName", "(Lcom/couchbase/lite/Result;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;", "resultList", "fromQueryResultList", "", "fromResultList", "fromResultList2", "fuzzyMatchExpression", "getNestedProperty", "nestedProperty", "([Ljava/lang/String;)Ljava/lang/String;", "getOrderIndexOrdering", "Lcom/couchbase/lite/Ordering;", Constants.ATTRVAL_ORDER_ASCENDING, "getOrdering", "getStatusExpression", "status", "", "greaterThanExpression", "greaterThanOrEqualToExpression", "groupBy", "where", "Lcom/couchbase/lite/Where;", "inExpression", "", "inIdsExpression", "ids", "isDeleteDocument", "lessThanExpression", "likeExpression", "ignoreCase", "listContains", "listEmptyExpression", "listNotEmptyExpression", "mapToDocumentList", "Lcom/couchbase/lite/Document;", "docIdList", "nestedEqualExpression", "(Ljava/lang/Object;[Ljava/lang/String;)Lcom/couchbase/lite/Expression;", "nestedInExpression", "valueList", "(Ljava/util/List;[Ljava/lang/String;)Lcom/couchbase/lite/Expression;", "nonExpression", "notEmpty", "notEqualExpression", "notInExpression", "notNullOrMissing", "noteTagExpression", "noteTreeExpression", "nullOrEmpty", "nullOrEqualExpression", "nullOrMissing", "orLikeExpression", SearchIntents.EXTRA_QUERY, "keyList", Constants.ATTRNAME_FORMAT, "caseSensitive", "orPrefixLikeExpression", "orSuffixLikeExpression", "orderBy", "queryDocumentCount", "", "expression", "queryDocumentList", "queryModelList", "queryResultList", "save", "saveList", "documentList", "toMutableDocument", "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;", "data", "(Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;)Lcom/couchbase/lite/MutableDocument;", CouchFieldKey.KEY_UNIQUE_ID, "uniqueIdValued", "whereBy", "getCBExceptionCode", "Ljava/lang/Exception;", "Lkotlin/Exception;", "toJsonString", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nCouchUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CouchUtils.kt\ncom/onyx/android/sdk/data/couchbase/utils/CouchUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,496:1\n1549#2:497\n1620#2,3:498\n1549#2:501\n1620#2,3:502\n1603#2,9:505\n1855#2:514\n1856#2:516\n1612#2:517\n1603#2,9:518\n1855#2:527\n1856#2:529\n1612#2:530\n2634#2:531\n2634#2:533\n1549#2:535\n1620#2,3:536\n1855#2,2:539\n1549#2:541\n1620#2,3:542\n1549#2:547\n1620#2,3:548\n1549#2:553\n1620#2,3:554\n1855#2,2:559\n1#3:515\n1#3:528\n1#3:532\n1#3:534\n37#4,2:545\n37#4,2:551\n37#4,2:557\n*S KotlinDebug\n*F\n+ 1 CouchUtils.kt\ncom/onyx/android/sdk/data/couchbase/utils/CouchUtils\n*L\n106#1:497\n106#1:498,3\n146#1:501\n146#1:502,3\n147#1:505,9\n147#1:514\n147#1:516\n147#1:517\n151#1:518,9\n151#1:527\n151#1:529\n151#1:530\n263#1:531\n271#1:533\n390#1:535\n390#1:536,3\n391#1:539,2\n415#1:541\n415#1:542,3\n426#1:547\n426#1:548,3\n435#1:553\n435#1:554,3\n244#1:559,2\n147#1:515\n151#1:528\n263#1:532\n271#1:534\n418#1:545,2\n429#1:551,2\n438#1:557,2\n*E\n"})
/* loaded from: classes7.dex */
public final class CouchUtils {

    @NotNull
    public static final CouchUtils INSTANCE = new CouchUtils();

    @NotNull
    private static SelectResult[] allResults;

    static {
        SelectResult.C2166As expression = SelectResult.expression(Meta.f16269id);
        Intrinsics.checkNotNullExpressionValue(expression, "expression(...)");
        SelectResult.From all = SelectResult.all();
        Intrinsics.checkNotNullExpressionValue(all, "all(...)");
        allResults = new SelectResult[]{expression, all};
    }

    private CouchUtils() {
    }

    public static /* synthetic */ Object fromQueryResult$default(CouchUtils couchUtils, Result result, Class cls, String str, int i, Object obj) {
        if ((i & 4) != 0) {
            str = "_default";
        }
        return couchUtils.fromQueryResult(result, cls, str);
    }

    public static /* synthetic */ List fromResultList$default(CouchUtils couchUtils, List list, Class cls, String str, int i, Object obj) {
        if ((i & 4) != 0) {
            str = "_default";
        }
        return couchUtils.fromResultList(list, cls, str);
    }

    public static /* synthetic */ List fromResultList2$default(CouchUtils couchUtils, List list, Class cls, String str, int i, Object obj) {
        if ((i & 4) != 0) {
            str = "_default";
        }
        return couchUtils.fromResultList2(list, cls, str);
    }

    public static /* synthetic */ Ordering getOrderIndexOrdering$default(CouchUtils couchUtils, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        return couchUtils.getOrderIndexOrdering(z);
    }

    private final Query groupBy(Where where, CBQueryArgs queryArgs) {
        if (queryArgs.getGroupBy() == null) {
            return null;
        }
        Expression[] groupBy = queryArgs.getGroupBy();
        Intrinsics.checkNotNull(groupBy);
        GroupBy groupBy2 = where.groupBy((Expression[]) Arrays.copyOf(groupBy, groupBy.length));
        Intrinsics.checkNotNullExpressionValue(groupBy2, "groupBy(...)");
        if (queryArgs.getOrdering() == null) {
            return groupBy2.limit(queryArgs.getLimitExpression(), queryArgs.getOffsetExpression());
        }
        Ordering[] ordering = queryArgs.getOrdering();
        Intrinsics.checkNotNull(ordering);
        return groupBy2.orderBy((Ordering[]) Arrays.copyOf(ordering, ordering.length)).limit(queryArgs.getLimitExpression(), queryArgs.getOffsetExpression());
    }

    public static /* synthetic */ Expression likeExpression$default(CouchUtils couchUtils, String str, String str2, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        return couchUtils.likeExpression(str, str2, z);
    }

    public static /* synthetic */ Expression orLikeExpression$default(CouchUtils couchUtils, String str, List list, String str2, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            str2 = "%%%s%%";
        }
        if ((i & 8) != 0) {
            z = false;
        }
        return couchUtils.orLikeExpression(str, list, str2, z);
    }

    public static /* synthetic */ Expression orPrefixLikeExpression$default(CouchUtils couchUtils, String str, List list, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = true;
        }
        return couchUtils.orPrefixLikeExpression(str, list, z);
    }

    public static /* synthetic */ Expression orSuffixLikeExpression$default(CouchUtils couchUtils, String str, List list, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = true;
        }
        return couchUtils.orSuffixLikeExpression(str, list, z);
    }

    private final Query orderBy(Where where, CBQueryArgs queryArgs) {
        if (queryArgs.getOrdering() == null) {
            Limit limit = where.limit(queryArgs.getLimitExpression(), queryArgs.getOffsetExpression());
            Intrinsics.checkNotNull(limit);
            return limit;
        }
        Ordering[] ordering = queryArgs.getOrdering();
        Intrinsics.checkNotNull(ordering);
        Limit limit2 = where.orderBy((Ordering[]) Arrays.copyOf(ordering, ordering.length)).limit(queryArgs.getLimitExpression(), queryArgs.getOffsetExpression());
        Intrinsics.checkNotNull(limit2);
        return limit2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void saveList$lambda$6(List list, Database database) {
        Intrinsics.checkNotNullParameter(database, "$database");
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            INSTANCE.save(database, (MutableDocument) it2.next());
        }
    }

    public static /* synthetic */ String toJsonString$default(CouchUtils couchUtils, Result result, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = "_default";
        }
        return couchUtils.toJsonString(result, str);
    }

    private final Query whereBy(Where where, CBQueryArgs queryArgs) {
        Query groupBy = groupBy(where, queryArgs);
        return groupBy == null ? orderBy(where, queryArgs) : groupBy;
    }

    @NotNull
    public final Expression anyExpression(@NotNull String key, @NotNull List<? extends Object> list) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(list, "list");
        VariableExpression variable = ArrayExpression.variable(Constants.ELEMNAME_VARIABLE_STRING);
        Intrinsics.checkNotNullExpressionValue(variable, "variable(...)");
        List<? extends Object> list2 = list;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list2.iterator();
        while (it2.hasNext()) {
            arrayList.add(Expression.value(it2.next()));
        }
        Expression[] expressionArr = (Expression[]) arrayList.toArray(new Expression[0]);
        Expression m9759in = variable.m9759in((Expression[]) Arrays.copyOf(expressionArr, expressionArr.length));
        Intrinsics.checkNotNullExpressionValue(m9759in, "let(...)");
        Expression satisfies = ArrayExpression.any(variable).m9733in(Expression.property(key)).satisfies(m9759in);
        Intrinsics.checkNotNullExpressionValue(satisfies, "satisfies(...)");
        return satisfies;
    }

    public final boolean checkReplicatedDocumentValid(@NotNull DocumentReplication replication, @NotNull ReplicatedDocument document) {
        Intrinsics.checkNotNullParameter(replication, "replication");
        Intrinsics.checkNotNullParameter(document, "document");
        if (isDeleteDocument(document)) {
            Debug debug = Debug.INSTANCE;
            StringBuilder sb = new StringBuilder();
            sb.append(replication.toString());
            sb.append(replication.isPush() ? " push" : " pull");
            sb.append(" delete data:");
            sb.append(document.getID());
            debug.m32044e(CouchUtils.class, sb.toString(), new Object[0]);
            return false;
        }
        if (document.getFlags().contains(DocumentFlag.ACCESS_REMOVED)) {
            Debug debug2 = Debug.INSTANCE;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(replication.toString());
            sb2.append(replication.isPush() ? " push" : " pull");
            sb2.append(" remove data:");
            sb2.append(document.getID());
            debug2.m32044e(CouchUtils.class, sb2.toString(), new Object[0]);
            return false;
        }
        if (document.getError() == null) {
            return true;
        }
        Debug debug3 = Debug.INSTANCE;
        StringBuilder sb3 = new StringBuilder();
        sb3.append(replication.toString());
        sb3.append(replication.isPush() ? " push" : " pull");
        sb3.append(" data error:");
        sb3.append(document.getError());
        sb3.append(", documentId: ");
        sb3.append(document.getID());
        debug3.m32044e(CouchUtils.class, sb3.toString(), new Object[0]);
        return false;
    }

    @NotNull
    public final Expression commitDocExpression() {
        Expression isValued = Expression.property(CouchFieldKey.KEY_COMMIT_STATUS).isValued();
        Intrinsics.checkNotNullExpressionValue(isValued, "isValued(...)");
        return isValued;
    }

    @NotNull
    public final String dbFullName(@Nullable String userId, @NotNull String docId) {
        Intrinsics.checkNotNullParameter(docId, "docId");
        if (userId == null || userId.length() == 0) {
            return docId;
        }
        return userId + '-' + docId;
    }

    public final void delete(@NotNull Database database, @NotNull String id) {
        Intrinsics.checkNotNullParameter(database, "database");
        Intrinsics.checkNotNullParameter(id, "id");
        Collection defaultCollection = database.getDefaultCollection();
        if (defaultCollection == null) {
            return;
        }
        List<String> singletonList = Collections.singletonList(id);
        Intrinsics.checkNotNullExpressionValue(singletonList, "singletonList(...)");
        Iterator<T> it2 = mapToDocumentList(database, singletonList).iterator();
        while (it2.hasNext()) {
            defaultCollection.delete((Document) it2.next());
        }
    }

    @NotNull
    public final Expression equalExpression(@NotNull String property, @NotNull Object value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        Expression equalTo = Expression.property(property).equalTo(Expression.value(value));
        Intrinsics.checkNotNullExpressionValue(equalTo, "equalTo(...)");
        return equalTo;
    }

    @NotNull
    public final Expression equalOrNullExpression(@NotNull String property, @Nullable Object value) {
        Intrinsics.checkNotNullParameter(property, "property");
        return value == null ? nullOrMissing(property) : equalExpression(property, value);
    }

    @NotNull
    public final Query fromBy(@NotNull From from, @NotNull CBQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(from, "from");
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        if (queryArgs.getWhereEx() != null) {
            Expression whereEx = queryArgs.getWhereEx();
            Intrinsics.checkNotNull(whereEx);
            Where where = from.where(whereEx);
            Intrinsics.checkNotNullExpressionValue(where, "where(...)");
            return whereBy(where, queryArgs);
        }
        if (queryArgs.getOrdering() == null) {
            Limit limit = from.limit(queryArgs.getLimitExpression(), queryArgs.getOffsetExpression());
            Intrinsics.checkNotNull(limit);
            return limit;
        }
        Ordering[] ordering = queryArgs.getOrdering();
        Intrinsics.checkNotNull(ordering);
        Limit limit2 = from.orderBy((Ordering[]) Arrays.copyOf(ordering, ordering.length)).limit(queryArgs.getLimitExpression(), queryArgs.getOffsetExpression());
        Intrinsics.checkNotNull(limit2);
        return limit2;
    }

    @Deprecated(message = "", replaceWith = @ReplaceWith(expression = "fromQueryResult(result: Result, cls: Class<T>)", imports = {}))
    @Nullable
    public final <T> T fromMutableDocument(@NotNull MutableDocument document, @NotNull Class<T> cls) {
        Intrinsics.checkNotNullParameter(document, "document");
        Intrinsics.checkNotNullParameter(cls, "cls");
        Map<String, Object> map = document.toMap();
        Intrinsics.checkNotNullExpressionValue(map, "toMap(...)");
        JSONUtils jSONUtils = JSONUtils.INSTANCE;
        T t = (T) jSONUtils.parseObject(jSONUtils.toJson(map), cls);
        if (t == null) {
            Debug debug = Debug.INSTANCE;
            debug.m32059w(CouchUtils.class, "parse document fail, title:" + map.get("title") + ",docId:" + map.get(CouchFieldKey.KEY_UNIQUE_ID), new Object[0]);
            StringBuilder sb = new StringBuilder();
            sb.append("parse document fail, map:");
            sb.append(jSONUtils.toJson(map));
            debug.m32059w(CouchUtils.class, sb.toString(), new Object[0]);
        }
        return t;
    }

    @NotNull
    public final MutableDocument fromQueryResult(@NotNull Result result) {
        Intrinsics.checkNotNullParameter(result, "result");
        String string = result.getString("id");
        Dictionary dictionary = result.getDictionary("_default");
        if (dictionary != null) {
            String string2 = dictionary.getString(CouchFieldKey.KEY_UNIQUE_ID);
            if (string == null) {
                string = string2;
            }
            return new MutableDocument(string, dictionary.toJSON());
        }
        return new MutableDocument(string, result.toJSON());
    }

    @NotNull
    public final java.util.Collection<MutableDocument> fromQueryResultList(@Nullable List<Result> resultList) {
        ArrayList arrayList = new ArrayList();
        if (resultList != null) {
            for (Result result : resultList) {
                if (result != null) {
                    CollectionKt.safeAdd(arrayList, fromQueryResult(result));
                }
            }
        }
        return arrayList;
    }

    @NotNull
    public final <T> List<T> fromResultList(@Nullable List<Result> list, @NotNull Class<T> cls, @NotNull String collectionName) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(cls, "cls");
        Intrinsics.checkNotNullParameter(collectionName, "collectionName");
        if (CollectionKt.isNullOrEmpty(list)) {
            return new ArrayList();
        }
        List<Result> list2 = list;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list2.iterator();
        while (it2.hasNext()) {
            arrayList.add(INSTANCE.toJsonString((Result) it2.next(), collectionName));
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator<T> it3 = arrayList.iterator();
        while (it3.hasNext()) {
            Object parseObject = JSONUtils.INSTANCE.parseObject((String) it3.next(), cls);
            if (parseObject != null) {
                arrayList2.add(parseObject);
            }
        }
        return arrayList2;
    }

    @NotNull
    public final <T> List<T> fromResultList2(@Nullable List<Result> list, @NotNull Class<T> cls, @NotNull String collectionName) {
        List<T> emptyList;
        List<T> mutableList;
        Intrinsics.checkNotNullParameter(cls, "cls");
        Intrinsics.checkNotNullParameter(collectionName, "collectionName");
        if (list != null) {
            ArrayList arrayList = new ArrayList();
            Iterator<T> it2 = list.iterator();
            while (it2.hasNext()) {
                Object fromQueryResult = INSTANCE.fromQueryResult((Result) it2.next(), cls, collectionName);
                if (fromQueryResult != null) {
                    arrayList.add(fromQueryResult);
                }
            }
            mutableList = CollectionsKt___CollectionsKt.toMutableList((java.util.Collection) arrayList);
            if (mutableList != null) {
                return mutableList;
            }
        }
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        return emptyList;
    }

    @NotNull
    public final Expression fuzzyMatchExpression(@NotNull String property, @NotNull String value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        return likeExpression(property, '%' + value + '%', true);
    }

    @NotNull
    public final SelectResult[] getAllResults() {
        return allResults;
    }

    public final int getCBExceptionCode(@NotNull Exception exc) {
        Intrinsics.checkNotNullParameter(exc, "<this>");
        CouchbaseLiteException couchbaseLiteException = exc instanceof CouchbaseLiteException ? (CouchbaseLiteException) exc : null;
        if (couchbaseLiteException != null) {
            return couchbaseLiteException.getCode();
        }
        return -1;
    }

    @NotNull
    public final String getNestedProperty(@NotNull String... nestedProperty) {
        Intrinsics.checkNotNullParameter(nestedProperty, "nestedProperty");
        StringBuilder sb = new StringBuilder();
        for (String str : nestedProperty) {
            sb.append(str);
            sb.append(".");
        }
        String substring = sb.substring(0, sb.length() - 1);
        Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
        return substring;
    }

    @NotNull
    public final Ordering getOrderIndexOrdering() {
        return getOrdering(CouchFieldKey.KEY_ORDER_INDEX, true);
    }

    @NotNull
    public final Ordering getOrdering(@NotNull String key, boolean ascending) {
        Intrinsics.checkNotNullParameter(key, "key");
        Ordering.SortOrder property = Ordering.property(key);
        Intrinsics.checkNotNullExpressionValue(property, "property(...)");
        if (ascending) {
            Ordering ascending2 = property.ascending();
            Intrinsics.checkNotNull(ascending2);
            return ascending2;
        }
        Ordering descending = property.descending();
        Intrinsics.checkNotNull(descending);
        return descending;
    }

    @NotNull
    public final Expression getStatusExpression(int status) {
        return equalExpression("status", Integer.valueOf(status));
    }

    @NotNull
    public final Expression greaterThanExpression(@NotNull String property, @NotNull Object value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        Expression greaterThan = Expression.property(property).greaterThan(Expression.value(value));
        Intrinsics.checkNotNullExpressionValue(greaterThan, "greaterThan(...)");
        return greaterThan;
    }

    @NotNull
    public final Expression greaterThanOrEqualToExpression(@NotNull String property, @NotNull Object value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        Expression greaterThanOrEqualTo = Expression.property(property).greaterThanOrEqualTo(Expression.value(value));
        Intrinsics.checkNotNullExpressionValue(greaterThanOrEqualTo, "greaterThanOrEqualTo(...)");
        return greaterThanOrEqualTo;
    }

    @NotNull
    public final Expression inExpression(@NotNull String key, @NotNull java.util.Collection<? extends Object> list) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(list, "list");
        if (list.isEmpty()) {
            Expression booleanValue = Expression.booleanValue(false);
            Intrinsics.checkNotNullExpressionValue(booleanValue, "booleanValue(...)");
            return booleanValue;
        }
        java.util.Collection<? extends Object> collection = list;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(collection, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = collection.iterator();
        while (it2.hasNext()) {
            arrayList.add(Expression.value(it2.next()));
        }
        PropertyExpression property = Expression.property(key);
        Expression[] expressionArr = (Expression[]) arrayList.toArray(new Expression[0]);
        Expression m9759in = property.m9759in((Expression[]) Arrays.copyOf(expressionArr, expressionArr.length));
        Intrinsics.checkNotNullExpressionValue(m9759in, "let(...)");
        return m9759in;
    }

    @NotNull
    public final Expression inIdsExpression(@NotNull List<? extends Object> ids) {
        Intrinsics.checkNotNullParameter(ids, "ids");
        if (!ids.isEmpty()) {
            return inExpression(CouchFieldKey.KEY_UNIQUE_ID, ids);
        }
        Expression booleanValue = Expression.booleanValue(false);
        Intrinsics.checkNotNullExpressionValue(booleanValue, "booleanValue(...)");
        return booleanValue;
    }

    public final boolean isDeleteDocument(@NotNull ReplicatedDocument document) {
        Intrinsics.checkNotNullParameter(document, "document");
        return document.getFlags().contains(DocumentFlag.DELETED);
    }

    @NotNull
    public final Expression lessThanExpression(@NotNull String property, @NotNull Object value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        Expression lessThan = Expression.property(property).lessThan(Expression.value(value));
        Intrinsics.checkNotNullExpressionValue(lessThan, "lessThan(...)");
        return lessThan;
    }

    @NotNull
    public final Expression likeExpression(@NotNull String property, @NotNull String value, boolean ignoreCase) {
        Expression lower;
        Expression lower2;
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        PropertyExpression property2 = Expression.property(property);
        Intrinsics.checkNotNullExpressionValue(property2, "property(...)");
        Expression value2 = Expression.value(value);
        Intrinsics.checkNotNullExpressionValue(value2, "value(...)");
        if (!ignoreCase) {
            Expression like = property2.like(value2);
            Intrinsics.checkNotNull(like);
            return like;
        }
        lower = AbstractFunction.lower(property2);
        lower2 = AbstractFunction.lower(value2);
        Expression like2 = lower.like(lower2);
        Intrinsics.checkNotNull(like2);
        return like2;
    }

    @NotNull
    public final Expression listContains(@NotNull String key, @NotNull Object value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        Expression contains = ArrayFunction.contains(Expression.property(key), Expression.value(value));
        Intrinsics.checkNotNullExpressionValue(contains, "contains(...)");
        return contains;
    }

    @NotNull
    public final Expression listEmptyExpression(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        Expression equalTo = ArrayFunction.length(Expression.property(key)).equalTo(Expression.value(0));
        Intrinsics.checkNotNullExpressionValue(equalTo, "equalTo(...)");
        return equalTo;
    }

    @NotNull
    public final Expression listNotEmptyExpression(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        Expression notEqualTo = ArrayFunction.length(Expression.property(key)).notEqualTo(Expression.value(0));
        Intrinsics.checkNotNullExpressionValue(notEqualTo, "notEqualTo(...)");
        return notEqualTo;
    }

    @NotNull
    public final List<Document> mapToDocumentList(@NotNull Database database, @NotNull List<String> docIdList) {
        Intrinsics.checkNotNullParameter(database, "database");
        Intrinsics.checkNotNullParameter(docIdList, "docIdList");
        ArrayList arrayList = new ArrayList();
        Collection defaultCollection = database.getDefaultCollection();
        if (defaultCollection == null) {
            return arrayList;
        }
        Iterator<T> it2 = docIdList.iterator();
        while (it2.hasNext()) {
            CollectionKt.safeAdd(arrayList, defaultCollection.getDocument((String) it2.next()));
        }
        return arrayList;
    }

    @NotNull
    public final Expression nestedEqualExpression(@NotNull Object value, @NotNull String... nestedProperty) {
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(nestedProperty, "nestedProperty");
        return equalExpression(getNestedProperty((String[]) Arrays.copyOf(nestedProperty, nestedProperty.length)), value);
    }

    @NotNull
    public final Expression nestedInExpression(@NotNull List<? extends Object> valueList, @NotNull String... nestedProperty) {
        Intrinsics.checkNotNullParameter(valueList, "valueList");
        Intrinsics.checkNotNullParameter(nestedProperty, "nestedProperty");
        return inExpression(getNestedProperty((String[]) Arrays.copyOf(nestedProperty, nestedProperty.length)), valueList);
    }

    @NotNull
    public final Expression nonExpression(@NotNull String property, @NotNull Object value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        Expression notEqualTo = Expression.property(property).notEqualTo(Expression.value(value));
        Intrinsics.checkNotNullExpressionValue(notEqualTo, "notEqualTo(...)");
        return notEqualTo;
    }

    @NotNull
    public final Expression notEmpty(@NotNull String property) {
        Intrinsics.checkNotNullParameter(property, "property");
        Expression not = Expression.not(nullOrEmpty(property));
        Intrinsics.checkNotNullExpressionValue(not, "not(...)");
        return not;
    }

    @NotNull
    public final Expression notEqualExpression(@NotNull String property, @NotNull Object value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        Expression notEqualTo = Expression.property(property).notEqualTo(Expression.value(value));
        Intrinsics.checkNotNullExpressionValue(notEqualTo, "notEqualTo(...)");
        return notEqualTo;
    }

    @Nullable
    public final Expression notInExpression(@NotNull String key, @NotNull java.util.Collection<? extends Object> list) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(list, "list");
        if (CollectionKt.isNullOrEmpty(list)) {
            return null;
        }
        java.util.Collection<? extends Object> collection = list;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(collection, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = collection.iterator();
        while (it2.hasNext()) {
            arrayList.add(Expression.value(it2.next()));
        }
        PropertyExpression property = Expression.property(key);
        Expression[] expressionArr = (Expression[]) arrayList.toArray(new Expression[0]);
        return Expression.not(property.m9759in((Expression[]) Arrays.copyOf(expressionArr, expressionArr.length)));
    }

    @NotNull
    public final Expression notNullOrMissing(@NotNull String property) {
        Intrinsics.checkNotNullParameter(property, "property");
        Expression isValued = Expression.property(property).isValued();
        Intrinsics.checkNotNullExpressionValue(isValued, "isValued(...)");
        return isValued;
    }

    @NotNull
    public final Expression noteTagExpression() {
        return equalExpression(CouchFieldKey.KEY_MODE_TYPE, 1);
    }

    @NotNull
    public final Expression noteTreeExpression() {
        Expression m9761or = Expression.property(CouchFieldKey.KEY_ACTIVE_SCENE).isValued().m9761or(Expression.property(CouchFieldKey.KEY_ASSOCIATION).isValued());
        Intrinsics.checkNotNullExpressionValue(m9761or, "or(...)");
        return m9761or;
    }

    @NotNull
    public final Expression nullOrEmpty(@NotNull String property) {
        Intrinsics.checkNotNullParameter(property, "property");
        Expression isNullOrMissing = Expression.property(property).isNullOrMissing();
        Intrinsics.checkNotNullExpressionValue(isNullOrMissing, "isNullOrMissing(...)");
        Expression equalTo = Expression.property(property).equalTo(Expression.value(""));
        Intrinsics.checkNotNullExpressionValue(equalTo, "equalTo(...)");
        Expression m9761or = isNullOrMissing.m9761or(equalTo);
        Intrinsics.checkNotNullExpressionValue(m9761or, "or(...)");
        return m9761or;
    }

    @NotNull
    public final Expression nullOrEqualExpression(@NotNull String property, @NotNull Object value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        Expression m9761or = nullOrMissing(property).m9761or(equalExpression(property, value));
        Intrinsics.checkNotNullExpressionValue(m9761or, "or(...)");
        return m9761or;
    }

    @NotNull
    public final Expression nullOrMissing(@NotNull String property) {
        Intrinsics.checkNotNullParameter(property, "property");
        Expression isNotValued = Expression.property(property).isNotValued();
        Intrinsics.checkNotNullExpressionValue(isNotValued, "isNotValued(...)");
        return isNotValued;
    }

    @NotNull
    public final Expression orLikeExpression(@NotNull String query, @NotNull List<String> keyList, @NotNull String format, boolean caseSensitive) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(query, "query");
        Intrinsics.checkNotNullParameter(keyList, "keyList");
        Intrinsics.checkNotNullParameter(format, "format");
        Expression booleanValue = Expression.booleanValue(false);
        Intrinsics.checkNotNullExpressionValue(booleanValue, "booleanValue(...)");
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format2 = String.format(format, Arrays.copyOf(new Object[]{query}, 1));
        Intrinsics.checkNotNullExpressionValue(format2, "format(format, *args)");
        List<String> list = keyList;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(INSTANCE.likeExpression((String) it2.next(), format2, !caseSensitive));
        }
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            booleanValue = booleanValue.m9761or((Expression) it3.next());
            Intrinsics.checkNotNullExpressionValue(booleanValue, "or(...)");
        }
        return booleanValue;
    }

    @Nullable
    public final Expression orPrefixLikeExpression(@NotNull String query, @NotNull List<String> keyList, boolean caseSensitive) {
        Intrinsics.checkNotNullParameter(query, "query");
        Intrinsics.checkNotNullParameter(keyList, "keyList");
        return orLikeExpression(query, keyList, "%s%%", caseSensitive);
    }

    @Nullable
    public final Expression orSuffixLikeExpression(@NotNull String query, @NotNull List<String> keyList, boolean caseSensitive) {
        Intrinsics.checkNotNullParameter(query, "query");
        Intrinsics.checkNotNullParameter(keyList, "keyList");
        return orLikeExpression(query, keyList, "%%%s", caseSensitive);
    }

    public final long queryDocumentCount(@NotNull Database database, @NotNull Expression expression) {
        Intrinsics.checkNotNullParameter(database, "database");
        Intrinsics.checkNotNullParameter(expression, "expression");
        return CouchCollections.INSTANCE.queryDocumentCount(database.getDefaultCollection(), expression);
    }

    @NotNull
    public final List<MutableDocument> queryDocumentList(@NotNull Database database, @NotNull CBQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(database, "database");
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        return fromQueryResult(queryResultList(database, queryArgs));
    }

    @NotNull
    public final <T> List<T> queryModelList(@NotNull Database database, @NotNull CBQueryArgs queryArgs, @NotNull Class<T> cls) {
        Intrinsics.checkNotNullParameter(database, "database");
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        Intrinsics.checkNotNullParameter(cls, "cls");
        return fromResultList$default(this, queryResultList(database, queryArgs), cls, null, 4, null);
    }

    @Nullable
    public final List<Result> queryResultList(@NotNull Database database, @NotNull CBQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(database, "database");
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        SelectResult[] selectResults = queryArgs.getSelectResults();
        Select selectDistinct = queryArgs.getDistinct() ? QueryBuilder.selectDistinct((SelectResult[]) Arrays.copyOf(selectResults, selectResults.length)) : QueryBuilder.select((SelectResult[]) Arrays.copyOf(selectResults, selectResults.length));
        Intrinsics.checkNotNull(selectDistinct);
        try {
            Collection defaultCollection = database.getDefaultCollection();
            Intrinsics.checkNotNull(defaultCollection);
            From from = selectDistinct.from(DataSource.collection(defaultCollection));
            CouchUtils couchUtils = INSTANCE;
            Intrinsics.checkNotNull(from);
            return couchUtils.fromBy(from, queryArgs).execute().allResults();
        } catch (CouchbaseLiteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public final void save(@NotNull Database database, @Nullable MutableDocument document) {
        Intrinsics.checkNotNullParameter(database, "database");
        if (document != null) {
            try {
                Collection defaultCollection = database.getDefaultCollection();
                if (defaultCollection != null) {
                    defaultCollection.save(document);
                }
            } catch (CouchbaseLiteException e) {
                e.printStackTrace();
            }
        }
    }

    public final void saveList(@NotNull final Database database, @Nullable final List<MutableDocument> documentList) throws CouchbaseLiteException {
        Intrinsics.checkNotNullParameter(database, "database");
        if (CollectionKt.isNullOrEmpty(documentList)) {
            return;
        }
        database.inBatch(new UnitOfWork() { // from class: com.sunia.HTREnginev2.dde
            @Override // com.couchbase.lite.UnitOfWork
            public final void run() {
                CouchUtils.saveList$lambda$6(documentList, database);
            }
        });
    }

    public final void setAllResults(@NotNull SelectResult[] selectResultArr) {
        Intrinsics.checkNotNullParameter(selectResultArr, "<set-?>");
        allResults = selectResultArr;
    }

    @NotNull
    public final String toJsonString(@NotNull Result result, @NotNull String collectionName) {
        Intrinsics.checkNotNullParameter(result, "<this>");
        Intrinsics.checkNotNullParameter(collectionName, "collectionName");
        Dictionary dictionary = result.getDictionary(collectionName);
        if (dictionary != null) {
            String json = dictionary.toJSON();
            Intrinsics.checkNotNullExpressionValue(json, "toJSON(...)");
            return json;
        }
        String json2 = result.toJSON();
        Intrinsics.checkNotNullExpressionValue(json2, "toJSON(...)");
        return json2;
    }

    @Nullable
    public final <T extends BaseReplicatorModel> MutableDocument toMutableDocument(@NotNull T data) {
        Intrinsics.checkNotNullParameter(data, "data");
        data.ensureUniqueIdExist();
        return toMutableDocument(data, data.getUniqueId());
    }

    @NotNull
    public final Expression uniqueIdValued() {
        return notNullOrMissing(CouchFieldKey.KEY_UNIQUE_ID);
    }

    @NotNull
    public final Ordering getOrderIndexOrdering(boolean ascending) {
        return getOrdering(CouchFieldKey.KEY_ORDER_INDEX, ascending);
    }

    @Nullable
    public final MutableDocument toMutableDocument(@NotNull Object data, @Nullable String uniqueId) {
        Intrinsics.checkNotNullParameter(data, "data");
        String json = JSONUtils.INSTANCE.toJson(data, JSONWriter.Feature.WriteNonStringKeyAsString);
        if (json == null) {
            return null;
        }
        return new MutableDocument(uniqueId, json);
    }

    @NotNull
    public final List<MutableDocument> fromQueryResult(@Nullable List<Result> resultList) {
        int collectionSizeOrDefault;
        List<MutableDocument> list;
        if (resultList != null) {
            List<Result> list2 = resultList;
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            Iterator<T> it2 = list2.iterator();
            while (it2.hasNext()) {
                arrayList.add(INSTANCE.fromQueryResult((Result) it2.next()));
            }
            list = CollectionsKt___CollectionsKt.toList(arrayList);
            if (list != null) {
                return list;
            }
        }
        return new ArrayList();
    }

    @Nullable
    public final <T> T fromQueryResult(@NotNull Result result, @NotNull Class<T> cls, @NotNull String collectionName) {
        Intrinsics.checkNotNullParameter(result, "result");
        Intrinsics.checkNotNullParameter(cls, "cls");
        Intrinsics.checkNotNullParameter(collectionName, "collectionName");
        Dictionary dictionary = result.getDictionary(collectionName);
        if (dictionary != null) {
            return (T) JSONUtils.INSTANCE.parseObject(dictionary.toJSON(), cls);
        }
        return (T) JSONUtils.INSTANCE.parseObject(result.toJSON(), cls);
    }
}
