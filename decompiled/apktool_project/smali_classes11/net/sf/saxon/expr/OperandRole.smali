.class public Lnet/sf/saxon/expr/OperandRole;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ABSORB:Lnet/sf/saxon/expr/OperandRole;

.field public static final ATOMIC_SEQUENCE:Lnet/sf/saxon/expr/OperandRole;

.field public static final CONSTRAINED_CLASS:I = 0x10

.field public static final FLWOR_TUPLE_CONSTRAINED:Lnet/sf/saxon/expr/OperandRole;

.field public static final FOCUS_CONTROLLED_ACTION:Lnet/sf/saxon/expr/OperandRole;

.field public static final FOCUS_CONTROLLING_SELECT:Lnet/sf/saxon/expr/OperandRole;

.field public static final HAS_SPECIAL_FOCUS_RULES:I = 0x40

.field public static final HIGHER_ORDER:I = 0x4

.field public static final INSPECT:Lnet/sf/saxon/expr/OperandRole;

.field public static final IN_CHOICE_GROUP:I = 0x8

.field public static final NAVIGATE:Lnet/sf/saxon/expr/OperandRole;

.field public static final NEW_FOCUS_ATOMIC:Lnet/sf/saxon/expr/OperandRole;

.field public static final PATTERN:Lnet/sf/saxon/expr/OperandRole;

.field public static final REPEAT_INSPECT:Lnet/sf/saxon/expr/OperandRole;

.field public static final REPEAT_NAVIGATE:Lnet/sf/saxon/expr/OperandRole;

.field public static final SAME_FOCUS_ACTION:Lnet/sf/saxon/expr/OperandRole;

.field public static final SETS_NEW_FOCUS:I = 0x1

.field public static final SINGLETON:I = 0x20

.field public static final SINGLE_ATOMIC:Lnet/sf/saxon/expr/OperandRole;

.field public static final USES_NEW_FOCUS:I = 0x2


# instance fields
.field public a:I

.field public final b:Lnet/sf/saxon/expr/OperandUsage;

.field public c:Lnet/sf/saxon/value/SequenceType;

.field public d:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Lnet/sf/saxon/expr/Expression;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lnet/sf/saxon/expr/OperandRole;

    sget-object v1, Lnet/sf/saxon/expr/OperandUsage;->TRANSMISSION:Lnet/sf/saxon/expr/OperandUsage;

    sget-object v2, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lnet/sf/saxon/expr/OperandRole;-><init>(ILnet/sf/saxon/expr/OperandUsage;Lnet/sf/saxon/value/SequenceType;)V

    sput-object v0, Lnet/sf/saxon/expr/OperandRole;->SAME_FOCUS_ACTION:Lnet/sf/saxon/expr/OperandRole;

    new-instance v0, Lnet/sf/saxon/expr/OperandRole;

    sget-object v4, Lnet/sf/saxon/expr/OperandUsage;->INSPECTION:Lnet/sf/saxon/expr/OperandUsage;

    const/4 v5, 0x1

    invoke-direct {v0, v5, v4, v2}, Lnet/sf/saxon/expr/OperandRole;-><init>(ILnet/sf/saxon/expr/OperandUsage;Lnet/sf/saxon/value/SequenceType;)V

    sput-object v0, Lnet/sf/saxon/expr/OperandRole;->FOCUS_CONTROLLING_SELECT:Lnet/sf/saxon/expr/OperandRole;

    new-instance v0, Lnet/sf/saxon/expr/OperandRole;

    const/4 v5, 0x6

    invoke-direct {v0, v5, v1, v2}, Lnet/sf/saxon/expr/OperandRole;-><init>(ILnet/sf/saxon/expr/OperandUsage;Lnet/sf/saxon/value/SequenceType;)V

    sput-object v0, Lnet/sf/saxon/expr/OperandRole;->FOCUS_CONTROLLED_ACTION:Lnet/sf/saxon/expr/OperandRole;

    new-instance v0, Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {v0, v3, v4, v2}, Lnet/sf/saxon/expr/OperandRole;-><init>(ILnet/sf/saxon/expr/OperandUsage;Lnet/sf/saxon/value/SequenceType;)V

    sput-object v0, Lnet/sf/saxon/expr/OperandRole;->INSPECT:Lnet/sf/saxon/expr/OperandRole;

    new-instance v0, Lnet/sf/saxon/expr/OperandRole;

    sget-object v1, Lnet/sf/saxon/expr/OperandUsage;->ABSORPTION:Lnet/sf/saxon/expr/OperandUsage;

    invoke-direct {v0, v3, v1, v2}, Lnet/sf/saxon/expr/OperandRole;-><init>(ILnet/sf/saxon/expr/OperandUsage;Lnet/sf/saxon/value/SequenceType;)V

    sput-object v0, Lnet/sf/saxon/expr/OperandRole;->ABSORB:Lnet/sf/saxon/expr/OperandRole;

    new-instance v0, Lnet/sf/saxon/expr/OperandRole;

    const/4 v6, 0x4

    invoke-direct {v0, v6, v4, v2}, Lnet/sf/saxon/expr/OperandRole;-><init>(ILnet/sf/saxon/expr/OperandUsage;Lnet/sf/saxon/value/SequenceType;)V

    sput-object v0, Lnet/sf/saxon/expr/OperandRole;->REPEAT_INSPECT:Lnet/sf/saxon/expr/OperandRole;

    new-instance v0, Lnet/sf/saxon/expr/OperandRole;

    sget-object v4, Lnet/sf/saxon/expr/OperandUsage;->NAVIGATION:Lnet/sf/saxon/expr/OperandUsage;

    invoke-direct {v0, v3, v4, v2}, Lnet/sf/saxon/expr/OperandRole;-><init>(ILnet/sf/saxon/expr/OperandUsage;Lnet/sf/saxon/value/SequenceType;)V

    sput-object v0, Lnet/sf/saxon/expr/OperandRole;->NAVIGATE:Lnet/sf/saxon/expr/OperandRole;

    new-instance v0, Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {v0, v6, v4, v2}, Lnet/sf/saxon/expr/OperandRole;-><init>(ILnet/sf/saxon/expr/OperandUsage;Lnet/sf/saxon/value/SequenceType;)V

    sput-object v0, Lnet/sf/saxon/expr/OperandRole;->REPEAT_NAVIGATE:Lnet/sf/saxon/expr/OperandRole;

    new-instance v0, Lnet/sf/saxon/expr/OperandRole;

    new-instance v6, Lcom/sunia/HTREnginev2/ghk;

    invoke-direct {v6}, Lcom/sunia/HTREnginev2/ghk;-><init>()V

    const/16 v7, 0x14

    invoke-direct {v0, v7, v4, v2, v6}, Lnet/sf/saxon/expr/OperandRole;-><init>(ILnet/sf/saxon/expr/OperandUsage;Lnet/sf/saxon/value/SequenceType;Ljava/util/function/Predicate;)V

    sput-object v0, Lnet/sf/saxon/expr/OperandRole;->FLWOR_TUPLE_CONSTRAINED:Lnet/sf/saxon/expr/OperandRole;

    new-instance v0, Lnet/sf/saxon/expr/OperandRole;

    sget-object v2, Lnet/sf/saxon/value/SequenceType;->SINGLE_ATOMIC:Lnet/sf/saxon/value/SequenceType;

    invoke-direct {v0, v3, v1, v2}, Lnet/sf/saxon/expr/OperandRole;-><init>(ILnet/sf/saxon/expr/OperandUsage;Lnet/sf/saxon/value/SequenceType;)V

    sput-object v0, Lnet/sf/saxon/expr/OperandRole;->SINGLE_ATOMIC:Lnet/sf/saxon/expr/OperandRole;

    new-instance v0, Lnet/sf/saxon/expr/OperandRole;

    sget-object v2, Lnet/sf/saxon/value/SequenceType;->ATOMIC_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    invoke-direct {v0, v3, v1, v2}, Lnet/sf/saxon/expr/OperandRole;-><init>(ILnet/sf/saxon/expr/OperandUsage;Lnet/sf/saxon/value/SequenceType;)V

    sput-object v0, Lnet/sf/saxon/expr/OperandRole;->ATOMIC_SEQUENCE:Lnet/sf/saxon/expr/OperandRole;

    new-instance v0, Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {v0, v5, v1, v2}, Lnet/sf/saxon/expr/OperandRole;-><init>(ILnet/sf/saxon/expr/OperandUsage;Lnet/sf/saxon/value/SequenceType;)V

    sput-object v0, Lnet/sf/saxon/expr/OperandRole;->NEW_FOCUS_ATOMIC:Lnet/sf/saxon/expr/OperandRole;

    new-instance v0, Lnet/sf/saxon/expr/OperandRole;

    new-instance v3, Lcom/sunia/HTREnginev2/hhk;

    invoke-direct {v3}, Lcom/sunia/HTREnginev2/hhk;-><init>()V

    const/16 v4, 0x16

    invoke-direct {v0, v4, v1, v2, v3}, Lnet/sf/saxon/expr/OperandRole;-><init>(ILnet/sf/saxon/expr/OperandUsage;Lnet/sf/saxon/value/SequenceType;Ljava/util/function/Predicate;)V

    sput-object v0, Lnet/sf/saxon/expr/OperandRole;->PATTERN:Lnet/sf/saxon/expr/OperandRole;

    return-void
.end method

.method public constructor <init>(ILnet/sf/saxon/expr/OperandUsage;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    iput-object v0, p0, Lnet/sf/saxon/expr/OperandRole;->c:Lnet/sf/saxon/value/SequenceType;

    .line 3
    iput p1, p0, Lnet/sf/saxon/expr/OperandRole;->a:I

    .line 4
    iput-object p2, p0, Lnet/sf/saxon/expr/OperandRole;->b:Lnet/sf/saxon/expr/OperandUsage;

    return-void
.end method

.method public constructor <init>(ILnet/sf/saxon/expr/OperandUsage;Lnet/sf/saxon/value/SequenceType;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    sget-object v0, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    .line 7
    iput p1, p0, Lnet/sf/saxon/expr/OperandRole;->a:I

    .line 8
    iput-object p2, p0, Lnet/sf/saxon/expr/OperandRole;->b:Lnet/sf/saxon/expr/OperandUsage;

    .line 9
    iput-object p3, p0, Lnet/sf/saxon/expr/OperandRole;->c:Lnet/sf/saxon/value/SequenceType;

    return-void
.end method

.method public constructor <init>(ILnet/sf/saxon/expr/OperandUsage;Lnet/sf/saxon/value/SequenceType;Ljava/util/function/Predicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lnet/sf/saxon/expr/OperandUsage;",
            "Lnet/sf/saxon/value/SequenceType;",
            "Ljava/util/function/Predicate<",
            "Lnet/sf/saxon/expr/Expression;",
            ">;)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    sget-object v0, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    .line 12
    iput p1, p0, Lnet/sf/saxon/expr/OperandRole;->a:I

    .line 13
    iput-object p2, p0, Lnet/sf/saxon/expr/OperandRole;->b:Lnet/sf/saxon/expr/OperandUsage;

    .line 14
    iput-object p3, p0, Lnet/sf/saxon/expr/OperandRole;->c:Lnet/sf/saxon/value/SequenceType;

    .line 15
    iput-object p4, p0, Lnet/sf/saxon/expr/OperandRole;->d:Ljava/util/function/Predicate;

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/expr/Expression;)Z
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/expr/OperandRole;->d(Lnet/sf/saxon/expr/Expression;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lnet/sf/saxon/expr/Expression;)Z
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/expr/OperandRole;->c(Lnet/sf/saxon/expr/Expression;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lnet/sf/saxon/expr/Expression;)Z
    .locals 0

    instance-of p0, p0, Lnet/sf/saxon/expr/flwor/TupleExpression;

    return p0
.end method

.method public static synthetic d(Lnet/sf/saxon/expr/Expression;)Z
    .locals 0

    instance-of p0, p0, Lnet/sf/saxon/pattern/Pattern;

    return p0
.end method

.method public static getTypeDeterminedUsage(Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/expr/OperandUsage;
    .locals 1

    instance-of v0, p0, Lnet/sf/saxon/type/FunctionItemType;

    if-eqz v0, :cond_0

    sget-object p0, Lnet/sf/saxon/expr/OperandUsage;->INSPECTION:Lnet/sf/saxon/expr/OperandUsage;

    return-object p0

    :cond_0
    instance-of p0, p0, Lnet/sf/saxon/type/PlainType;

    if-eqz p0, :cond_1

    sget-object p0, Lnet/sf/saxon/expr/OperandUsage;->ABSORPTION:Lnet/sf/saxon/expr/OperandUsage;

    return-object p0

    :cond_1
    sget-object p0, Lnet/sf/saxon/expr/OperandUsage;->NAVIGATION:Lnet/sf/saxon/expr/OperandUsage;

    return-object p0
.end method


# virtual methods
.method public getConstraint()Ljava/util/function/Predicate;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Predicate<",
            "Lnet/sf/saxon/expr/Expression;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/expr/OperandRole;->d:Ljava/util/function/Predicate;

    return-object p0
.end method

.method public getProperties()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/expr/OperandRole;->a:I

    return p0
.end method

.method public getRequiredType()Lnet/sf/saxon/value/SequenceType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/OperandRole;->c:Lnet/sf/saxon/value/SequenceType;

    return-object p0
.end method

.method public getUsage()Lnet/sf/saxon/expr/OperandUsage;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/OperandRole;->b:Lnet/sf/saxon/expr/OperandUsage;

    return-object p0
.end method

.method public hasSameFocus()Z
    .locals 0

    iget p0, p0, Lnet/sf/saxon/expr/OperandRole;->a:I

    and-int/lit8 p0, p0, 0x42

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasSpecialFocusRules()Z
    .locals 0

    iget p0, p0, Lnet/sf/saxon/expr/OperandRole;->a:I

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isConstrainedClass()Z
    .locals 0

    iget p0, p0, Lnet/sf/saxon/expr/OperandRole;->a:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEvaluatedRepeatedly()Z
    .locals 1

    iget p0, p0, Lnet/sf/saxon/expr/OperandRole;->a:I

    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_0

    and-int/lit8 p0, p0, 0x20

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHigherOrder()Z
    .locals 0

    iget p0, p0, Lnet/sf/saxon/expr/OperandRole;->a:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInChoiceGroup()Z
    .locals 0

    iget p0, p0, Lnet/sf/saxon/expr/OperandRole;->a:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public modifyProperty(IZ)Lnet/sf/saxon/expr/OperandRole;
    .locals 1

    if-eqz p2, :cond_0

    iget p2, p0, Lnet/sf/saxon/expr/OperandRole;->a:I

    or-int/2addr p1, p2

    goto :goto_0

    :cond_0
    iget p2, p0, Lnet/sf/saxon/expr/OperandRole;->a:I

    not-int p1, p1

    and-int/2addr p1, p2

    :goto_0
    new-instance p2, Lnet/sf/saxon/expr/OperandRole;

    iget-object v0, p0, Lnet/sf/saxon/expr/OperandRole;->b:Lnet/sf/saxon/expr/OperandUsage;

    iget-object p0, p0, Lnet/sf/saxon/expr/OperandRole;->c:Lnet/sf/saxon/value/SequenceType;

    invoke-direct {p2, p1, v0, p0}, Lnet/sf/saxon/expr/OperandRole;-><init>(ILnet/sf/saxon/expr/OperandUsage;Lnet/sf/saxon/value/SequenceType;)V

    return-object p2
.end method

.method public setConstraint(Ljava/util/function/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lnet/sf/saxon/expr/Expression;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sf/saxon/expr/OperandRole;->d:Ljava/util/function/Predicate;

    return-void
.end method

.method public setsNewFocus()Z
    .locals 1

    iget p0, p0, Lnet/sf/saxon/expr/OperandRole;->a:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public withConstrainedClass()Lnet/sf/saxon/expr/OperandRole;
    .locals 4

    new-instance v0, Lnet/sf/saxon/expr/OperandRole;

    iget v1, p0, Lnet/sf/saxon/expr/OperandRole;->a:I

    or-int/lit8 v1, v1, 0x10

    iget-object v2, p0, Lnet/sf/saxon/expr/OperandRole;->b:Lnet/sf/saxon/expr/OperandUsage;

    iget-object v3, p0, Lnet/sf/saxon/expr/OperandRole;->c:Lnet/sf/saxon/value/SequenceType;

    iget-object p0, p0, Lnet/sf/saxon/expr/OperandRole;->d:Ljava/util/function/Predicate;

    invoke-direct {v0, v1, v2, v3, p0}, Lnet/sf/saxon/expr/OperandRole;-><init>(ILnet/sf/saxon/expr/OperandUsage;Lnet/sf/saxon/value/SequenceType;Ljava/util/function/Predicate;)V

    return-object v0
.end method

.method public withConstraint(Ljava/util/function/Predicate;)Lnet/sf/saxon/expr/OperandRole;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lnet/sf/saxon/expr/Expression;",
            ">;)",
            "Lnet/sf/saxon/expr/OperandRole;"
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/expr/OperandRole;

    iget v1, p0, Lnet/sf/saxon/expr/OperandRole;->a:I

    iget-object v2, p0, Lnet/sf/saxon/expr/OperandRole;->b:Lnet/sf/saxon/expr/OperandUsage;

    iget-object p0, p0, Lnet/sf/saxon/expr/OperandRole;->c:Lnet/sf/saxon/value/SequenceType;

    invoke-direct {v0, v1, v2, p0, p1}, Lnet/sf/saxon/expr/OperandRole;-><init>(ILnet/sf/saxon/expr/OperandUsage;Lnet/sf/saxon/value/SequenceType;Ljava/util/function/Predicate;)V

    return-object v0
.end method
