package com.couchbase.lite;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.internal.utils.ClassUtils;
import com.couchbase.lite.internal.utils.JSONUtils;
import com.couchbase.lite.internal.utils.Preconditions;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes4.dex */
public abstract class Expression {
    private static final String PARAM_EXPRESSION = "expression";

    /* loaded from: classes4.dex */
    public static final class AggregateExpression extends Expression {

        @NonNull
        private final List<Expression> expressions;

        public AggregateExpression(@NonNull List<Expression> list) {
            this.expressions = list;
        }

        @Override // com.couchbase.lite.Expression
        @NonNull
        public Object asJSON() {
            ArrayList arrayList = new ArrayList();
            arrayList.add("[]");
            Iterator<Expression> it2 = this.expressions.iterator();
            while (it2.hasNext()) {
                arrayList.add(it2.next().asJSON());
            }
            return arrayList;
        }

        @NonNull
        public List<Expression> getExpressions() {
            return this.expressions;
        }
    }

    /* loaded from: classes4.dex */
    public static final class BinaryExpression extends Expression {
        private static final String OP_ADD = "+";
        private static final String OP_BETWEEN = "BETWEEN";
        private static final String OP_DIVIDE = "/";
        private static final String OP_EQUALS = "=";
        private static final String OP_GREATER = ">";
        private static final String OP_GREATER_OR_EQUAL = ">=";
        private static final String OP_IN = "IN";
        private static final String OP_IS = "IS";
        private static final String OP_IS_NOT = "IS NOT";
        private static final String OP_LESS = "<";
        private static final String OP_LESS_OR_EQUAL = "<=";
        private static final String OP_LIKE = "LIKE";
        private static final String OP_MODULO = "%";
        private static final String OP_MULTIPLY = "*";
        private static final String OP_NOT_EQUAL = "!=";
        private static final String OP_REGEX_LIKE = "regexp_like()";
        private static final String OP_SUBTRACT = "-";

        @NonNull
        private final Expression lhs;

        /* renamed from: op */
        @NonNull
        private final String f16265op;

        @NonNull
        private final Expression rhs;

        public BinaryExpression(@NonNull Expression expression, @NonNull Expression expression2, @NonNull String str) {
            this.lhs = expression;
            this.rhs = expression2;
            this.f16265op = str;
        }

        @Override // com.couchbase.lite.Expression
        @NonNull
        public Object asJSON() {
            ArrayList arrayList = new ArrayList();
            arrayList.add(this.f16265op);
            arrayList.add(this.lhs.asJSON());
            if (OP_BETWEEN.equals(this.f16265op)) {
                List<Expression> expressions = ((AggregateExpression) this.rhs).getExpressions();
                arrayList.add(expressions.get(0).asJSON());
                arrayList.add(expressions.get(1).asJSON());
            } else {
                arrayList.add(this.rhs.asJSON());
            }
            return arrayList;
        }
    }

    /* loaded from: classes4.dex */
    public static final class CollationExpression extends Expression {

        @NonNull
        private final Collation collation;

        @NonNull
        private final Expression operand;

        public CollationExpression(@NonNull Expression expression, @NonNull Collation collation) {
            this.operand = expression;
            this.collation = collation;
        }

        @Override // com.couchbase.lite.Expression
        @NonNull
        public Object asJSON() {
            ArrayList arrayList = new ArrayList(3);
            arrayList.add("COLLATE");
            arrayList.add(this.collation.asJSON());
            arrayList.add(this.operand.asJSON());
            return arrayList;
        }
    }

    /* loaded from: classes4.dex */
    public static final class CompoundExpression extends Expression {
        private static final String OP_AND = "AND";
        private static final String OP_NOT = "NOT";
        private static final String OP_OR = "OR";

        /* renamed from: op */
        @NonNull
        private final String f16266op;

        @NonNull
        private final List<Expression> subexpressions;

        public CompoundExpression(@NonNull List<Expression> list, @NonNull String str) {
            Preconditions.assertNotNull(list, "subexpressions");
            this.f16266op = str;
            this.subexpressions = list;
        }

        @Override // com.couchbase.lite.Expression
        @NonNull
        public Object asJSON() {
            ArrayList arrayList = new ArrayList();
            arrayList.add(this.f16266op);
            Iterator<Expression> it2 = this.subexpressions.iterator();
            while (it2.hasNext()) {
                arrayList.add(it2.next().asJSON());
            }
            return arrayList;
        }
    }

    /* loaded from: classes4.dex */
    public static final class FTIExpression implements FullTextIndexExpression {

        @Nullable
        private final String alias;

        @NonNull
        private final String name;

        public FTIExpression(@NonNull String str, @Nullable String str2) {
            this.name = str;
            this.alias = str2;
        }

        @Override // com.couchbase.lite.FullTextIndexExpression
        @NonNull
        public IndexExpression from(@NonNull String str) {
            return new FTIExpression(this.name, (String) Preconditions.assertNotNull(str, "alias"));
        }

        @NonNull
        public String toString() {
            StringBuilder sb = new StringBuilder();
            String str = this.alias;
            if (str != null) {
                sb.append(str);
                sb.append('.');
            }
            sb.append(this.name);
            return sb.toString();
        }
    }

    /* loaded from: classes4.dex */
    public static final class FunctionExpression extends Expression {

        @NonNull
        private final String func;

        @NonNull
        private final List<Expression> params;

        public FunctionExpression(@NonNull String str, @NonNull Expression... expressionArr) {
            this.func = str;
            this.params = Arrays.asList(expressionArr);
        }

        @Override // com.couchbase.lite.Expression
        @NonNull
        public Object asJSON() {
            ArrayList arrayList = new ArrayList();
            arrayList.add(this.func);
            Iterator<Expression> it2 = this.params.iterator();
            while (it2.hasNext()) {
                arrayList.add(it2.next().asJSON());
            }
            return arrayList;
        }
    }

    /* loaded from: classes4.dex */
    public static final class IdxExpression extends Expression {

        @NonNull
        private final String func;

        @NonNull
        private final IndexExpression idx;

        @Nullable
        private final List<Expression> params;

        public IdxExpression(@NonNull String str, @NonNull IndexExpression indexExpression, @Nullable Expression... expressionArr) {
            this.func = str;
            this.idx = indexExpression;
            this.params = expressionArr == null ? null : Arrays.asList(expressionArr);
        }

        @Override // com.couchbase.lite.Expression
        @NonNull
        public Object asJSON() {
            ArrayList arrayList = new ArrayList();
            arrayList.add(this.func);
            arrayList.add(this.idx.toString());
            List<Expression> list = this.params;
            if (list != null) {
                Iterator<Expression> it2 = list.iterator();
                while (it2.hasNext()) {
                    arrayList.add(it2.next().asJSON());
                }
            }
            return arrayList;
        }
    }

    /* loaded from: classes4.dex */
    public static final class ParameterExpression extends Expression {

        @NonNull
        private final String name;

        public ParameterExpression(@NonNull String str) {
            this.name = str;
        }

        @Override // com.couchbase.lite.Expression
        @NonNull
        public Object asJSON() {
            ArrayList arrayList = new ArrayList();
            arrayList.add("$" + this.name);
            return arrayList;
        }
    }

    /* loaded from: classes4.dex */
    public static final class UnaryExpression extends Expression {

        @Deprecated
        private static final int OP_MISSING = 1003;

        @Deprecated
        private static final int OP_NULL = 1002;
        private static final int OP_VALUED = 1001;

        /* renamed from: op */
        private final int f16267op;

        @NonNull
        private final Expression operand;

        public UnaryExpression(@NonNull Expression expression, int i) {
            Preconditions.assertNotNull(expression, "operand");
            this.operand = expression;
            this.f16267op = i;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Override // com.couchbase.lite.Expression
        @NonNull
        public Object asJSON() {
            ArrayList arrayList = new ArrayList();
            String str = "IS";
            if (this.f16267op == 1001) {
                str = "IS VALUED";
            }
            arrayList.add(str);
            arrayList.add(this.operand.asJSON());
            switch (this.f16267op) {
                case 1001:
                    return arrayList;
                case 1002:
                    arrayList.add(null);
                    return arrayList;
                case 1003:
                    arrayList.add(Collections.singletonList("MISSING"));
                    return arrayList;
                default:
                    throw new CouchbaseLiteError("Unexpected unary type: " + this.f16267op);
            }
        }
    }

    /* loaded from: classes4.dex */
    public static final class ValueExpression extends Expression {

        @Nullable
        private final Object value;

        public ValueExpression(@Nullable Object obj) {
            verifySupportedType(obj);
            this.value = obj;
        }

        @NonNull
        private Object listAsJSON(@NonNull List<Object> list) {
            ArrayList arrayList = new ArrayList();
            arrayList.add("[]");
            Iterator<Object> it2 = list.iterator();
            while (it2.hasNext()) {
                arrayList.add(asJSON(it2.next()));
            }
            return arrayList;
        }

        @NonNull
        private Object mapAsJSON(@NonNull Map<String, Object> map) {
            HashMap hashMap = new HashMap();
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                hashMap.put(entry.getKey(), asJSON(entry.getValue()));
            }
            return hashMap;
        }

        private void verifySupportedType(@Nullable Object obj) {
            if (obj == null || (obj instanceof String) || (obj instanceof Number) || (obj instanceof Boolean) || (obj instanceof Date) || (obj instanceof Map) || (obj instanceof List) || (obj instanceof Expression)) {
                return;
            }
            throw new IllegalArgumentException("Unsupported expression value type: " + obj.getClass());
        }

        @Override // com.couchbase.lite.Expression
        @Nullable
        public Object asJSON() {
            return asJSON(this.value);
        }

        @Nullable
        private Object asJSON(@Nullable Object obj) {
            if (obj instanceof Date) {
                return JSONUtils.toJSONString((Date) obj);
            }
            if (obj instanceof Map) {
                return mapAsJSON((Map) obj);
            }
            if (obj instanceof List) {
                return listAsJSON((List) obj);
            }
            if (obj instanceof Expression) {
                return ((Expression) obj).asJSON();
            }
            verifySupportedType(obj);
            return obj;
        }
    }

    @NonNull
    public static PropertyExpression all() {
        return new PropertyExpression("");
    }

    @NonNull
    public static Expression booleanValue(boolean z) {
        return new ValueExpression(Boolean.valueOf(z));
    }

    @NonNull
    public static Expression date(@Nullable Date date) {
        return new ValueExpression(date);
    }

    @NonNull
    public static Expression doubleValue(double d) {
        return new ValueExpression(Double.valueOf(d));
    }

    @NonNull
    public static Expression floatValue(float f) {
        return new ValueExpression(Float.valueOf(f));
    }

    @NonNull
    public static FullTextIndexExpression fullTextIndex(@NonNull String str) {
        return new FTIExpression((String) Preconditions.assertNotNull(str, "indexName"), null);
    }

    @NonNull
    public static Expression intValue(int i) {
        return new ValueExpression(Integer.valueOf(i));
    }

    @NonNull
    public static Expression list(@Nullable List<Object> list) {
        return new ValueExpression(list);
    }

    @NonNull
    public static Expression longValue(long j) {
        return new ValueExpression(Long.valueOf(j));
    }

    @NonNull
    public static Expression map(@Nullable Map<String, Object> map) {
        return new ValueExpression(map);
    }

    @NonNull
    public static Expression negated(@NonNull Expression expression) {
        Preconditions.assertNotNull(expression, PARAM_EXPRESSION);
        return new CompoundExpression(Collections.singletonList(expression), "NOT");
    }

    @NonNull
    public static Expression not(@NonNull Expression expression) {
        Preconditions.assertNotNull(expression, PARAM_EXPRESSION);
        return negated(expression);
    }

    @NonNull
    public static Expression number(@Nullable Number number) {
        return new ValueExpression(number);
    }

    @NonNull
    public static Expression parameter(@NonNull String str) {
        Preconditions.assertNotNull(str, "name");
        return new ParameterExpression(str);
    }

    @NonNull
    public static PropertyExpression property(@NonNull String str) {
        Preconditions.assertNotNull(str, "property");
        return new PropertyExpression(str);
    }

    @NonNull
    public static Expression string(@Nullable String str) {
        return new ValueExpression(str);
    }

    @NonNull
    public static Expression value(@Nullable Object obj) {
        return new ValueExpression(obj);
    }

    @NonNull
    public Expression add(@NonNull Expression expression) {
        Preconditions.assertNotNull(expression, PARAM_EXPRESSION);
        return new BinaryExpression(this, expression, "+");
    }

    @NonNull
    public Expression and(@NonNull Expression expression) {
        Preconditions.assertNotNull(expression, PARAM_EXPRESSION);
        return new CompoundExpression(Arrays.asList(this, expression), "AND");
    }

    @Nullable
    public abstract Object asJSON();

    @NonNull
    public Expression between(@NonNull Expression expression, @NonNull Expression expression2) {
        Preconditions.assertNotNull(expression, "lower bound");
        Preconditions.assertNotNull(expression2, "upper bound");
        return new BinaryExpression(this, new AggregateExpression(Arrays.asList(expression, expression2)), "BETWEEN");
    }

    @NonNull
    public Expression collate(@NonNull Collation collation) {
        Preconditions.assertNotNull(collation, "collation");
        return new CollationExpression(this, collation);
    }

    @NonNull
    public Expression divide(@NonNull Expression expression) {
        Preconditions.assertNotNull(expression, PARAM_EXPRESSION);
        return new BinaryExpression(this, expression, "/");
    }

    @NonNull
    public Expression equalTo(@NonNull Expression expression) {
        Preconditions.assertNotNull(expression, PARAM_EXPRESSION);
        return new BinaryExpression(this, expression, "=");
    }

    @NonNull
    public Expression greaterThan(@NonNull Expression expression) {
        Preconditions.assertNotNull(expression, PARAM_EXPRESSION);
        return new BinaryExpression(this, expression, ">");
    }

    @NonNull
    public Expression greaterThanOrEqualTo(@NonNull Expression expression) {
        Preconditions.assertNotNull(expression, PARAM_EXPRESSION);
        return new BinaryExpression(this, expression, ">=");
    }

    @NonNull
    /* renamed from: in */
    public Expression m9759in(@NonNull Expression... expressionArr) {
        if (expressionArr.length > 0) {
            return new BinaryExpression(this, new AggregateExpression(Arrays.asList(expressionArr)), "IN");
        }
        throw new IllegalArgumentException("empty 'IN'.");
    }

    @NonNull
    /* renamed from: is */
    public Expression m9760is(@NonNull Expression expression) {
        Preconditions.assertNotNull(expression, PARAM_EXPRESSION);
        return new BinaryExpression(this, expression, "IS");
    }

    @NonNull
    public Expression isNot(@NonNull Expression expression) {
        Preconditions.assertNotNull(expression, PARAM_EXPRESSION);
        return new BinaryExpression(this, expression, "IS NOT");
    }

    @NonNull
    public Expression isNotValued() {
        return negated(new UnaryExpression(this, 1001));
    }

    @NonNull
    @Deprecated
    public Expression isNullOrMissing() {
        return new UnaryExpression(this, 1002).m9761or(new UnaryExpression(this, 1003));
    }

    @NonNull
    public Expression isValued() {
        return new UnaryExpression(this, 1001);
    }

    @NonNull
    public Expression lessThan(@NonNull Expression expression) {
        Preconditions.assertNotNull(expression, PARAM_EXPRESSION);
        return new BinaryExpression(this, expression, "<");
    }

    @NonNull
    public Expression lessThanOrEqualTo(@NonNull Expression expression) {
        Preconditions.assertNotNull(expression, PARAM_EXPRESSION);
        return new BinaryExpression(this, expression, "<=");
    }

    @NonNull
    public Expression like(@NonNull Expression expression) {
        Preconditions.assertNotNull(expression, PARAM_EXPRESSION);
        return new BinaryExpression(this, expression, "LIKE");
    }

    @NonNull
    public Expression modulo(@NonNull Expression expression) {
        Preconditions.assertNotNull(expression, PARAM_EXPRESSION);
        return new BinaryExpression(this, expression, "%");
    }

    @NonNull
    public Expression multiply(@NonNull Expression expression) {
        Preconditions.assertNotNull(expression, PARAM_EXPRESSION);
        return new BinaryExpression(this, expression, "*");
    }

    @NonNull
    public Expression notEqualTo(@NonNull Expression expression) {
        Preconditions.assertNotNull(expression, PARAM_EXPRESSION);
        return new BinaryExpression(this, expression, "!=");
    }

    @NonNull
    @Deprecated
    public Expression notNullOrMissing() {
        return negated(isNullOrMissing());
    }

    @NonNull
    /* renamed from: or */
    public Expression m9761or(@NonNull Expression expression) {
        Preconditions.assertNotNull(expression, PARAM_EXPRESSION);
        return new CompoundExpression(Arrays.asList(this, expression), "OR");
    }

    @NonNull
    public Expression regex(@NonNull Expression expression) {
        Preconditions.assertNotNull(expression, PARAM_EXPRESSION);
        return new BinaryExpression(this, expression, "regexp_like()");
    }

    @NonNull
    public Expression subtract(@NonNull Expression expression) {
        Preconditions.assertNotNull(expression, PARAM_EXPRESSION);
        return new BinaryExpression(this, expression, "-");
    }

    @NonNull
    public String toString() {
        return getClass().getSimpleName() + "{" + ClassUtils.objId(this) + ",json=" + asJSON() + "}";
    }
}
