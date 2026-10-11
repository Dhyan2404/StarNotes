package com.couchbase.lite;

import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.internal.core.C4Query;
import com.couchbase.lite.internal.utils.ClassUtils;
import com.couchbase.lite.internal.utils.JSONUtils;
import com.onyx.android.sdk.data.account.bean.DevicePushAction;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONException;

/* loaded from: classes4.dex */
abstract class BuilderQuery extends AbstractQuery {
    private DataSource from;
    private GroupBy groupBy;
    private Having having;
    private Joins joins;
    private Limit limit;
    private OrderBy orderBy;
    private Select select;
    private Expression where;

    @NonNull
    private String marshalAsJSON() throws JSONException {
        Object asJSON;
        HashMap hashMap = new HashMap();
        Select select = this.select;
        if (select != null && select.isDistinct()) {
            hashMap.put("DISTINCT", "true");
        }
        Select select2 = this.select;
        if (select2 != null && select2.hasSelectResults()) {
            hashMap.put("WHAT", this.select.asJSON());
        }
        ArrayList arrayList = new ArrayList();
        Map<String, Object> asJSON2 = this.from.asJSON();
        if (!asJSON2.isEmpty()) {
            arrayList.add(asJSON2);
        }
        Joins joins = this.joins;
        if (joins != null) {
            arrayList.addAll((List) joins.asJSON());
        }
        if (!arrayList.isEmpty()) {
            hashMap.put("FROM", arrayList);
        }
        Expression expression = this.where;
        if (expression != null) {
            hashMap.put("WHERE", expression.asJSON());
        }
        GroupBy groupBy = this.groupBy;
        if (groupBy != null) {
            hashMap.put("GROUP_BY", groupBy.asJSON());
        }
        Having having = this.having;
        if (having != null && (asJSON = having.asJSON()) != null) {
            hashMap.put("HAVING", asJSON);
        }
        OrderBy orderBy = this.orderBy;
        if (orderBy != null) {
            hashMap.put("ORDER_BY", orderBy.asJSON());
        }
        Limit limit = this.limit;
        if (limit != null) {
            List list = (List) limit.asJSON();
            hashMap.put("LIMIT", list.get(0));
            if (list.size() > 1) {
                hashMap.put("OFFSET", list.get(1));
            }
        }
        return JSONUtils.toJSON((Map<?, ?>) hashMap).toString();
    }

    @Nullable
    private String marshalAsJSONSafely() {
        try {
            return marshalAsJSON();
        } catch (JSONException e) {
            com.couchbase.lite.internal.logging.Log.m9909w(LogDomain.QUERY, "Failed marshalling query as JSON query", e);
            return null;
        }
    }

    public void copy(BuilderQuery builderQuery) {
        this.select = builderQuery.select;
        this.from = builderQuery.from;
        this.joins = builderQuery.joins;
        this.where = builderQuery.where;
        this.groupBy = builderQuery.groupBy;
        this.having = builderQuery.having;
        this.orderBy = builderQuery.orderBy;
        this.limit = builderQuery.limit;
        try {
            setParameters(builderQuery.getParameters());
        } catch (CouchbaseLiteException e) {
            throw new IllegalArgumentException("Failed copying query parameters", e);
        }
    }

    @Override // com.couchbase.lite.AbstractQuery
    @NonNull
    public final AbstractDatabase getDatabase() {
        return this.from.getDatabase();
    }

    @Override // com.couchbase.lite.AbstractQuery
    @NonNull
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    public final C4Query prepQueryLocked(@NonNull AbstractDatabase abstractDatabase) throws CouchbaseLiteException {
        String marshalAsJSONSafely = marshalAsJSONSafely();
        com.couchbase.lite.internal.logging.Log.m9899d(AbstractQuery.DOMAIN, "JSON query: %s", marshalAsJSONSafely);
        if (marshalAsJSONSafely == null) {
            throw new CouchbaseLiteException("Failed to generate JSON query.");
        }
        try {
            return abstractDatabase.createJsonQuery(marshalAsJSONSafely);
        } catch (LiteCoreException e) {
            throw CouchbaseLiteException.convertException(e);
        }
    }

    public void setFrom(@NonNull DataSource dataSource) {
        this.from = dataSource;
    }

    public void setGroupBy(GroupBy groupBy) {
        this.groupBy = groupBy;
    }

    public void setHaving(Having having) {
        this.having = having;
    }

    public void setJoins(Joins joins) {
        this.joins = joins;
    }

    public void setLimit(Limit limit) {
        this.limit = limit;
    }

    public void setOrderBy(OrderBy orderBy) {
        this.orderBy = orderBy;
    }

    public void setSelect(Select select) {
        this.select = select;
    }

    public void setWhere(Expression expression) {
        this.where = expression;
    }

    @NonNull
    public String toString() {
        return getClass().getSimpleName() + "{" + ClassUtils.objId(this) + ", json=" + marshalAsJSONSafely() + "}";
    }
}
