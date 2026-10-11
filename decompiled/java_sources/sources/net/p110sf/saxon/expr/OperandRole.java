package net.p110sf.saxon.expr;

import java.util.function.Predicate;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.OperandRole;
import net.p110sf.saxon.expr.flwor.TupleExpression;
import net.p110sf.saxon.pattern.Pattern;
import net.p110sf.saxon.type.FunctionItemType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.PlainType;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class OperandRole {
    public static final OperandRole ABSORB;
    public static final OperandRole ATOMIC_SEQUENCE;
    public static final int CONSTRAINED_CLASS = 16;
    public static final OperandRole FLWOR_TUPLE_CONSTRAINED;
    public static final OperandRole FOCUS_CONTROLLED_ACTION;
    public static final OperandRole FOCUS_CONTROLLING_SELECT;
    public static final int HAS_SPECIAL_FOCUS_RULES = 64;
    public static final int HIGHER_ORDER = 4;
    public static final OperandRole INSPECT;
    public static final int IN_CHOICE_GROUP = 8;
    public static final OperandRole NAVIGATE;
    public static final OperandRole NEW_FOCUS_ATOMIC;
    public static final OperandRole PATTERN;
    public static final OperandRole REPEAT_INSPECT;
    public static final OperandRole REPEAT_NAVIGATE;
    public static final OperandRole SAME_FOCUS_ACTION;
    public static final int SETS_NEW_FOCUS = 1;
    public static final int SINGLETON = 32;
    public static final OperandRole SINGLE_ATOMIC;
    public static final int USES_NEW_FOCUS = 2;

    /* renamed from: a */
    public int f99333a;

    /* renamed from: b */
    public final OperandUsage f99334b;

    /* renamed from: c */
    public SequenceType f99335c;

    /* renamed from: d */
    public Predicate<Expression> f99336d;

    static {
        OperandUsage operandUsage = OperandUsage.TRANSMISSION;
        SequenceType sequenceType = SequenceType.ANY_SEQUENCE;
        SAME_FOCUS_ACTION = new OperandRole(0, operandUsage, sequenceType);
        OperandUsage operandUsage2 = OperandUsage.INSPECTION;
        FOCUS_CONTROLLING_SELECT = new OperandRole(1, operandUsage2, sequenceType);
        FOCUS_CONTROLLED_ACTION = new OperandRole(6, operandUsage, sequenceType);
        INSPECT = new OperandRole(0, operandUsage2, sequenceType);
        OperandUsage operandUsage3 = OperandUsage.ABSORPTION;
        ABSORB = new OperandRole(0, operandUsage3, sequenceType);
        REPEAT_INSPECT = new OperandRole(4, operandUsage2, sequenceType);
        OperandUsage operandUsage4 = OperandUsage.NAVIGATION;
        NAVIGATE = new OperandRole(0, operandUsage4, sequenceType);
        REPEAT_NAVIGATE = new OperandRole(4, operandUsage4, sequenceType);
        FLWOR_TUPLE_CONSTRAINED = new OperandRole(20, operandUsage4, sequenceType, new Predicate() { // from class: com.sunia.HTREnginev2.ghk
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean m62626c;
                m62626c = OperandRole.m62626c((Expression) obj);
                return m62626c;
            }
        });
        SINGLE_ATOMIC = new OperandRole(0, operandUsage3, SequenceType.SINGLE_ATOMIC);
        SequenceType sequenceType2 = SequenceType.ATOMIC_SEQUENCE;
        ATOMIC_SEQUENCE = new OperandRole(0, operandUsage3, sequenceType2);
        NEW_FOCUS_ATOMIC = new OperandRole(6, operandUsage3, sequenceType2);
        PATTERN = new OperandRole(22, operandUsage3, sequenceType2, new Predicate() { // from class: com.sunia.HTREnginev2.hhk
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean m62627d;
                m62627d = OperandRole.m62627d((Expression) obj);
                return m62627d;
            }
        });
    }

    public OperandRole(int i, OperandUsage operandUsage) {
        this.f99335c = SequenceType.ANY_SEQUENCE;
        this.f99333a = i;
        this.f99334b = operandUsage;
    }

    /* renamed from: c */
    public static /* synthetic */ boolean m62626c(Expression expression) {
        return expression instanceof TupleExpression;
    }

    /* renamed from: d */
    public static /* synthetic */ boolean m62627d(Expression expression) {
        return expression instanceof Pattern;
    }

    public static OperandUsage getTypeDeterminedUsage(ItemType itemType) {
        return itemType instanceof FunctionItemType ? OperandUsage.INSPECTION : itemType instanceof PlainType ? OperandUsage.ABSORPTION : OperandUsage.NAVIGATION;
    }

    public Predicate<Expression> getConstraint() {
        return this.f99336d;
    }

    public int getProperties() {
        return this.f99333a;
    }

    public SequenceType getRequiredType() {
        return this.f99335c;
    }

    public OperandUsage getUsage() {
        return this.f99334b;
    }

    public boolean hasSameFocus() {
        return (this.f99333a & 66) == 0;
    }

    public boolean hasSpecialFocusRules() {
        return (this.f99333a & 64) != 0;
    }

    public boolean isConstrainedClass() {
        return (this.f99333a & 16) != 0;
    }

    public boolean isEvaluatedRepeatedly() {
        int i = this.f99333a;
        return (i & 4) != 0 && (i & 32) == 0;
    }

    public boolean isHigherOrder() {
        return (this.f99333a & 4) != 0;
    }

    public boolean isInChoiceGroup() {
        return (this.f99333a & 8) != 0;
    }

    public OperandRole modifyProperty(int i, boolean z) {
        int i2;
        if (z) {
            i2 = i | this.f99333a;
        } else {
            i2 = (~i) & this.f99333a;
        }
        return new OperandRole(i2, this.f99334b, this.f99335c);
    }

    public void setConstraint(Predicate<Expression> predicate) {
        this.f99336d = predicate;
    }

    public boolean setsNewFocus() {
        return (this.f99333a & 1) != 0;
    }

    public OperandRole withConstrainedClass() {
        return new OperandRole(this.f99333a | 16, this.f99334b, this.f99335c, this.f99336d);
    }

    public OperandRole withConstraint(Predicate<Expression> predicate) {
        return new OperandRole(this.f99333a, this.f99334b, this.f99335c, predicate);
    }

    public OperandRole(int i, OperandUsage operandUsage, SequenceType sequenceType) {
        SequenceType sequenceType2 = SequenceType.ANY_SEQUENCE;
        this.f99333a = i;
        this.f99334b = operandUsage;
        this.f99335c = sequenceType;
    }

    public OperandRole(int i, OperandUsage operandUsage, SequenceType sequenceType, Predicate<Expression> predicate) {
        SequenceType sequenceType2 = SequenceType.ANY_SEQUENCE;
        this.f99333a = i;
        this.f99334b = operandUsage;
        this.f99335c = sequenceType;
        this.f99336d = predicate;
    }
}
