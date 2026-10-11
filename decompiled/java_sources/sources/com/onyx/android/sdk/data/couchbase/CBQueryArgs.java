package com.onyx.android.sdk.data.couchbase;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.couchbase.lite.Expression;
import com.couchbase.lite.Ordering;
import com.couchbase.lite.SelectResult;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.genericshape.GeoConstant;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b!\u0018\u0000 Q2\u00020\u0001:\u0001QB\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010;\u001a\u00020\u00002\b\u0010<\u001a\u0004\u0018\u00010\u000bJ\u0006\u0010=\u001a\u00020\u0000J\b\u0010>\u001a\u00020\u0000H\u0016J\u0006\u0010?\u001a\u00020\u000bJ\u0006\u0010@\u001a\u00020\u000bJ\u000e\u0010A\u001a\u00020\u00002\u0006\u0010B\u001a\u00020\"J\u0006\u0010C\u001a\u00020\u0004J\u001f\u0010D\u001a\u00020\u00002\u0012\u0010E\u001a\n\u0012\u0006\b\u0001\u0012\u00020\"0\n\"\u00020\"¢\u0006\u0002\u0010FJ\u0006\u0010G\u001a\u00020\u000bJ\u0006\u0010H\u001a\u00020\u0000J\u0006\u0010I\u001a\u00020\u0000J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0004J\u000e\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0012J\u0006\u0010J\u001a\u00020\u0000J\u000e\u0010\u0019\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u0012J\u0010\u0010%\u001a\u00020\u00002\b\u0010!\u001a\u0004\u0018\u00010\"J\u001f\u0010K\u001a\u00020\u00002\u0012\u0010\t\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u000b0\n\"\u00020\u000b¢\u0006\u0002\u0010LJ\u001f\u0010M\u001a\u00020\u00002\u0012\u0010\u001a\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u001b0\n\"\u00020\u001b¢\u0006\u0002\u0010NJ\u001f\u0010O\u001a\u00020\u00002\u0012\u0010'\u001a\n\u0012\u0006\b\u0001\u0012\u00020(0\n\"\u00020(¢\u0006\u0002\u0010PJ\u0010\u00109\u001a\u00020\u00002\b\u00106\u001a\u0004\u0018\u00010\u000bR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR$\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0010\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0011\u001a\u00020\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001a\u0010\u0017\u001a\u00020\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0014\"\u0004\b\u0019\u0010\u0016R$\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u001b\u0018\u00010\nX\u0086\u000e¢\u0006\u0010\n\u0002\u0010 \u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u001c\u0010!\u001a\u0004\u0018\u00010\"X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\"\u0010'\u001a\b\u0012\u0004\u0012\u00020(0\nX\u0086\u000e¢\u0006\u0010\n\u0002\u0010-\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,R:\u0010.\u001a\"\u0012\u0004\u0012\u00020\"\u0012\u0006\u0012\u0004\u0018\u0001000/j\u0010\u0012\u0004\u0012\u00020\"\u0012\u0006\u0012\u0004\u0018\u000100`1X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b2\u00103\"\u0004\b4\u00105R\u001c\u00106\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b7\u00108\"\u0004\b9\u0010:¨\u0006R"}, m61528d2 = {"Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "", "()V", "distinct", "", "getDistinct", Constants.BOOLEAN_VALUE_SIG, "setDistinct", "(Z)V", "groupBy", "", "Lcom/couchbase/lite/Expression;", "getGroupBy", "()[Lcom/couchbase/lite/Expression;", "setGroupBy", "([Lcom/couchbase/lite/Expression;)V", "[Lcom/couchbase/lite/Expression;", "limit", "", "getLimit", "()I", "setLimit", "(I)V", TypedValues.CycleType.S_WAVE_OFFSET, "getOffset", "setOffset", "ordering", "Lcom/couchbase/lite/Ordering;", "getOrdering", "()[Lcom/couchbase/lite/Ordering;", "setOrdering", "([Lcom/couchbase/lite/Ordering;)V", "[Lcom/couchbase/lite/Ordering;", CouchFieldKey.KEY_PARENT_ID, "", "getParentId", "()Ljava/lang/String;", "setParentId", "(Ljava/lang/String;)V", "selectResults", "Lcom/couchbase/lite/SelectResult;", "getSelectResults", "()[Lcom/couchbase/lite/SelectResult;", "setSelectResults", "([Lcom/couchbase/lite/SelectResult;)V", "[Lcom/couchbase/lite/SelectResult;", "updateValues", "Ljava/util/HashMap;", "", "Lkotlin/collections/HashMap;", "getUpdateValues", "()Ljava/util/HashMap;", "setUpdateValues", "(Ljava/util/HashMap;)V", "whereEx", "getWhereEx", "()Lcom/couchbase/lite/Expression;", "setWhereEx", "(Lcom/couchbase/lite/Expression;)V", "andWith", "expression", "basicPropertiesOnly", "clone", "getLimitExpression", "getOffsetExpression", "idEqualTo", CouchFieldKey.KEY_UNIQUE_ID, "isUnlimited", GeoConstant.KEY_Properties, "fields", "([Ljava/lang/String;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "requireExpression", "selectAll", "setDefaultLimit", "setMaxLimit", "setVarargGroupBy", "([Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "setVarargOrdering", "([Lcom/couchbase/lite/Ordering;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "setVarargSelectResults", "([Lcom/couchbase/lite/SelectResult;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "Companion", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nCBQueryArgs.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CBQueryArgs.kt\ncom/onyx/android/sdk/data/couchbase/CBQueryArgs\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n*L\n1#1,139:1\n37#2,2:140\n37#2,2:142\n37#2,2:144\n37#2,2:150\n37#2,2:152\n11065#3:146\n11400#3,3:147\n26#4:154\n26#4:155\n*S KotlinDebug\n*F\n+ 1 CBQueryArgs.kt\ncom/onyx/android/sdk/data/couchbase/CBQueryArgs\n*L\n34#1:140,2\n39#1:142,2\n44#1:144,2\n100#1:150,2\n108#1:152,2\n100#1:146\n100#1:147,3\n133#1:154\n134#1:155\n*E\n"})
/* loaded from: classes7.dex */
public final class CBQueryArgs implements Cloneable {
    public static final int DEFAULT_LIMIT = Integer.MAX_VALUE;
    private boolean distinct;

    @Nullable
    private Expression[] groupBy;
    private int limit;
    private int offset;

    @Nullable
    private Ordering[] ordering;

    @Nullable
    private String parentId;

    @NotNull
    private SelectResult[] selectResults;

    @NotNull
    private HashMap<String, Object> updateValues;

    @Nullable
    private Expression whereEx;

    public CBQueryArgs() {
        SelectResult.From all = SelectResult.all();
        Intrinsics.checkNotNullExpressionValue(all, "all(...)");
        this.selectResults = new SelectResult[]{all};
        this.limit = Integer.MAX_VALUE;
        this.updateValues = new HashMap<>();
    }

    @NotNull
    public final CBQueryArgs andWith(@Nullable Expression expression) {
        Expression expression2 = this.whereEx;
        if (expression2 == null) {
            setWhereEx(expression);
        } else if (expression != null) {
            Intrinsics.checkNotNull(expression2);
            setWhereEx(expression2.and(expression));
        }
        return this;
    }

    @NotNull
    public final CBQueryArgs basicPropertiesOnly() {
        List listOf;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{CouchFieldKey.KEY_UNIQUE_ID, "status"});
        String[] strArr = (String[]) listOf.toArray(new String[0]);
        return properties((String[]) Arrays.copyOf(strArr, strArr.length));
    }

    public final boolean getDistinct() {
        return this.distinct;
    }

    @Nullable
    public final Expression[] getGroupBy() {
        return this.groupBy;
    }

    public final int getLimit() {
        return this.limit;
    }

    @NotNull
    public final Expression getLimitExpression() {
        Expression intValue = Expression.intValue(this.limit);
        Intrinsics.checkNotNullExpressionValue(intValue, "intValue(...)");
        return intValue;
    }

    public final int getOffset() {
        return this.offset;
    }

    @NotNull
    public final Expression getOffsetExpression() {
        Expression intValue = Expression.intValue(this.offset);
        Intrinsics.checkNotNullExpressionValue(intValue, "intValue(...)");
        return intValue;
    }

    @Nullable
    public final Ordering[] getOrdering() {
        return this.ordering;
    }

    @Nullable
    public final String getParentId() {
        return this.parentId;
    }

    @NotNull
    public final SelectResult[] getSelectResults() {
        return this.selectResults;
    }

    @NotNull
    public final HashMap<String, Object> getUpdateValues() {
        return this.updateValues;
    }

    @Nullable
    public final Expression getWhereEx() {
        return this.whereEx;
    }

    @NotNull
    public final CBQueryArgs idEqualTo(@NotNull String uniqueId) {
        Intrinsics.checkNotNullParameter(uniqueId, "uniqueId");
        andWith(CouchUtils.INSTANCE.equalExpression(CouchFieldKey.KEY_UNIQUE_ID, uniqueId));
        return this;
    }

    public final boolean isUnlimited() {
        return this.limit == Integer.MAX_VALUE;
    }

    @NotNull
    public final CBQueryArgs properties(@NotNull String... fields) {
        Intrinsics.checkNotNullParameter(fields, "fields");
        ArrayList arrayList = new ArrayList(fields.length);
        for (String str : fields) {
            arrayList.add(SelectResult.property(str));
        }
        this.selectResults = (SelectResult[]) arrayList.toArray(new SelectResult[0]);
        return this;
    }

    @NotNull
    public final Expression requireExpression() {
        Expression expression = this.whereEx;
        if (expression != null) {
            return expression;
        }
        Expression booleanValue = Expression.booleanValue(true);
        Intrinsics.checkNotNullExpressionValue(booleanValue, "booleanValue(...)");
        return booleanValue;
    }

    @NotNull
    public final CBQueryArgs selectAll() {
        this.whereEx = Expression.booleanValue(true);
        return this;
    }

    @NotNull
    public final CBQueryArgs setDefaultLimit() {
        return setLimit(Integer.MAX_VALUE);
    }

    /* renamed from: setDistinct, reason: collision with other method in class */
    public final void m72250setDistinct(boolean z) {
        this.distinct = z;
    }

    public final void setGroupBy(@Nullable Expression[] expressionArr) {
        this.groupBy = expressionArr;
    }

    /* renamed from: setLimit, reason: collision with other method in class */
    public final void m72251setLimit(int i) {
        this.limit = i;
    }

    @NotNull
    public final CBQueryArgs setMaxLimit() {
        return setLimit(Integer.MAX_VALUE);
    }

    /* renamed from: setOffset, reason: collision with other method in class */
    public final void m72252setOffset(int i) {
        this.offset = i;
    }

    public final void setOrdering(@Nullable Ordering[] orderingArr) {
        this.ordering = orderingArr;
    }

    /* renamed from: setParentId, reason: collision with other method in class */
    public final void m72253setParentId(@Nullable String str) {
        this.parentId = str;
    }

    public final void setSelectResults(@NotNull SelectResult[] selectResultArr) {
        Intrinsics.checkNotNullParameter(selectResultArr, "<set-?>");
        this.selectResults = selectResultArr;
    }

    public final void setUpdateValues(@NotNull HashMap<String, Object> hashMap) {
        Intrinsics.checkNotNullParameter(hashMap, "<set-?>");
        this.updateValues = hashMap;
    }

    @NotNull
    public final CBQueryArgs setVarargGroupBy(@NotNull Expression... groupBy) {
        List list;
        Intrinsics.checkNotNullParameter(groupBy, "groupBy");
        list = ArraysKt___ArraysKt.toList(groupBy);
        this.groupBy = (Expression[]) list.toArray(new Expression[0]);
        return this;
    }

    @NotNull
    public final CBQueryArgs setVarargOrdering(@NotNull Ordering... ordering) {
        List list;
        Intrinsics.checkNotNullParameter(ordering, "ordering");
        list = ArraysKt___ArraysKt.toList(ordering);
        this.ordering = (Ordering[]) list.toArray(new Ordering[0]);
        return this;
    }

    @NotNull
    public final CBQueryArgs setVarargSelectResults(@NotNull SelectResult... selectResults) {
        List list;
        Intrinsics.checkNotNullParameter(selectResults, "selectResults");
        list = ArraysKt___ArraysKt.toList(selectResults);
        this.selectResults = (SelectResult[]) list.toArray(new SelectResult[0]);
        return this;
    }

    /* renamed from: setWhereEx, reason: collision with other method in class */
    public final void m72254setWhereEx(@Nullable Expression expression) {
        this.whereEx = expression;
    }

    @NotNull
    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public CBQueryArgs m72249clone() {
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        SelectResult[] selectResultArr = this.selectResults;
        CBQueryArgs limit = cBQueryArgs.setVarargSelectResults((SelectResult[]) Arrays.copyOf(selectResultArr, selectResultArr.length)).setLimit(this.limit);
        Expression[] expressionArr = this.groupBy;
        if (expressionArr == null) {
            expressionArr = new Expression[0];
        }
        CBQueryArgs varargGroupBy = limit.setVarargGroupBy((Expression[]) Arrays.copyOf(expressionArr, expressionArr.length));
        Ordering[] orderingArr = this.ordering;
        if (orderingArr == null) {
            orderingArr = new Ordering[0];
        }
        return varargGroupBy.setVarargOrdering((Ordering[]) Arrays.copyOf(orderingArr, orderingArr.length)).setOffset(this.offset).setDistinct(this.distinct).setWhereEx(this.whereEx);
    }

    @NotNull
    public final CBQueryArgs setDistinct(boolean distinct) {
        this.distinct = distinct;
        return this;
    }

    @NotNull
    public final CBQueryArgs setLimit(int limit) {
        this.limit = limit;
        return this;
    }

    @NotNull
    public final CBQueryArgs setOffset(int offset) {
        this.offset = Math.max(0, offset);
        return this;
    }

    @NotNull
    public final CBQueryArgs setParentId(@Nullable String parentId) {
        this.parentId = parentId;
        return this;
    }

    @NotNull
    public final CBQueryArgs setWhereEx(@Nullable Expression whereEx) {
        this.whereEx = whereEx;
        return this;
    }
}
