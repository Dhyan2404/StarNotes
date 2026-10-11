package com.couchbase.lite;

import androidx.annotation.NonNull;
import com.couchbase.lite.ArrayExpression;
import com.couchbase.lite.internal.utils.Preconditions;
import java.util.ArrayList;

/* loaded from: classes4.dex */
public final class ArrayExpressionSatisfies {

    @NonNull
    private final Expression inExpression;

    @NonNull
    private final ArrayExpression.QuantifiesType type;

    @NonNull
    private final VariableExpression variable;

    /* renamed from: com.couchbase.lite.ArrayExpressionSatisfies$1 */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C21481 {
        static final /* synthetic */ int[] $SwitchMap$com$couchbase$lite$ArrayExpression$QuantifiesType;

        static {
            int[] iArr = new int[ArrayExpression.QuantifiesType.values().length];
            $SwitchMap$com$couchbase$lite$ArrayExpression$QuantifiesType = iArr;
            try {
                iArr[ArrayExpression.QuantifiesType.ANY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$couchbase$lite$ArrayExpression$QuantifiesType[ArrayExpression.QuantifiesType.ANY_AND_EVERY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$couchbase$lite$ArrayExpression$QuantifiesType[ArrayExpression.QuantifiesType.EVERY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* loaded from: classes4.dex */
    public static final class QuantifiedExpression extends Expression {

        @NonNull
        private final Expression inExpression;

        @NonNull
        private final Expression satisfiedExpression;

        @NonNull
        private final ArrayExpression.QuantifiesType type;

        @NonNull
        private final VariableExpression variable;

        public QuantifiedExpression(@NonNull ArrayExpression.QuantifiesType quantifiesType, @NonNull VariableExpression variableExpression, @NonNull Expression expression, @NonNull Expression expression2) {
            this.type = quantifiesType;
            this.variable = variableExpression;
            this.inExpression = expression;
            this.satisfiedExpression = expression2;
        }

        @Override // com.couchbase.lite.Expression
        @NonNull
        public Object asJSON() {
            ArrayList arrayList = new ArrayList(4);
            int i = C21481.$SwitchMap$com$couchbase$lite$ArrayExpression$QuantifiesType[this.type.ordinal()];
            if (i == 1) {
                arrayList.add("ANY");
            } else if (i == 2) {
                arrayList.add("ANY AND EVERY");
            } else if (i == 3) {
                arrayList.add("EVERY");
            }
            arrayList.add(this.variable.getName());
            arrayList.add(this.inExpression.asJSON());
            arrayList.add(this.satisfiedExpression.asJSON());
            return arrayList;
        }
    }

    public ArrayExpressionSatisfies(@NonNull ArrayExpression.QuantifiesType quantifiesType, @NonNull VariableExpression variableExpression, @NonNull Expression expression) {
        this.type = quantifiesType;
        this.variable = variableExpression;
        this.inExpression = expression;
    }

    @NonNull
    public Expression satisfies(@NonNull Expression expression) {
        Preconditions.assertNotNull(expression, "expression");
        return new QuantifiedExpression(this.type, this.variable, this.inExpression, expression);
    }
}
