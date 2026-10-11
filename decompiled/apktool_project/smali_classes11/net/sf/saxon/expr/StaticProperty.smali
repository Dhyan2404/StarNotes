.class public abstract Lnet/sf/saxon/expr/StaticProperty;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALLOWS_MANY:I = 0x8000

.field public static final ALLOWS_ONE:I = 0x4000

.field public static final ALLOWS_ONE_OR_MORE:I = 0xc000

.field public static final ALLOWS_ZERO:I = 0x2000

.field public static final ALLOWS_ZERO_OR_MORE:I = 0xe000

.field public static final ALLOWS_ZERO_OR_ONE:I = 0x6000

.field public static final ALL_NODES_NEWLY_CREATED:I = 0x400000

.field public static final ALL_NODES_UNTYPED:I = 0x8000000

.field public static final ATTRIBUTE_NS_NODESET:I = 0x200000

.field public static final CARDINALITY_MASK:I = 0xe000

.field public static final CONTEXT_DOCUMENT_NODESET:I = 0x10000

.field public static final DEPENDENCY_MASK:I = 0x2000fff

.field public static final DEPENDS_ON_ASSIGNABLE_GLOBALS:I = 0x200

.field public static final DEPENDS_ON_CONTEXT_DOCUMENT:I = 0x10

.field public static final DEPENDS_ON_CONTEXT_ITEM:I = 0x2

.field public static final DEPENDS_ON_CURRENT_GROUP:I = 0x20

.field public static final DEPENDS_ON_CURRENT_ITEM:I = 0x1

.field public static final DEPENDS_ON_FOCUS:I = 0x1e

.field public static final DEPENDS_ON_LAST:I = 0x8

.field public static final DEPENDS_ON_LOCAL_VARIABLES:I = 0x80

.field public static final DEPENDS_ON_NON_DOCUMENT_FOCUS:I = 0xe

.field public static final DEPENDS_ON_POSITION:I = 0x4

.field public static final DEPENDS_ON_REGEX_GROUP:I = 0x40

.field public static final DEPENDS_ON_RUNTIME_ENVIRONMENT:I = 0x400

.field public static final DEPENDS_ON_STATIC_CONTEXT:I = 0x800

.field public static final DEPENDS_ON_USER_FUNCTIONS:I = 0x100

.field public static final DEPENDS_ON_XSLT_CONTEXT:I = 0x261

.field public static final EMPTY:I = 0x2000

.field public static final EXACTLY_ONE:I = 0x4000

.field public static final HAS_SIDE_EFFECTS:I = 0x2000000

.field public static final NODESET_PROPERTIES:I = 0x93f0000

.field public static final NOT_UNTYPED_ATOMIC:I = 0x4000000

.field public static final NO_NODES_NEWLY_CREATED:I = 0x800000

.field public static final ORDERED_NODESET:I = 0x20000

.field public static final PEER_NODESET:I = 0x80000

.field public static final REVERSE_DOCUMENT_ORDER:I = 0x40000

.field public static final SINGLE_DOCUMENT_NODESET:I = 0x1000000

.field public static final SPECIAL_PROPERTY_MASK:I = 0xfff0000

.field public static final SUBTREE_NODESET:I = 0x100000


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static display(I)Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "D("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    const-string v1, "U"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    const-string v1, "C"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    and-int/lit8 v1, p0, 0x4

    const-string v2, "P"

    if-eqz v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_3

    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    and-int/lit8 v1, p0, 0x10

    const-string v3, "D"

    if-eqz v1, :cond_4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_5

    const-string v1, "V"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    and-int/lit16 v1, p0, 0x200

    if-eqz v1, :cond_6

    const-string v1, "A"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    and-int/lit8 v1, p0, 0x40

    const-string v4, "R"

    if-eqz v1, :cond_7

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    and-int/lit16 v1, p0, 0x400

    const-string v5, "E"

    if-eqz v1, :cond_8

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    and-int/lit16 v1, p0, 0x800

    const-string v6, "S"

    if-eqz v1, :cond_9

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    const-string v1, ") C("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lnet/sf/saxon/value/Cardinality;->allowsMany(I)Z

    move-result v1

    invoke-static {p0}, Lnet/sf/saxon/value/Cardinality;->allowsZero(I)Z

    move-result v7

    if-eqz v1, :cond_a

    if-eqz v7, :cond_a

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_a
    if-eqz v1, :cond_b

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_b
    if-eqz v7, :cond_c

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_c
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, ") S("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v1, 0x2000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    const/high16 v1, 0x800000

    and-int/2addr v1, p0

    if-eqz v1, :cond_e

    const-string v1, "N"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    const/high16 v1, 0x4000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_f

    const-string v1, "T"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    const/high16 v1, 0x20000

    and-int/2addr v1, p0

    if-eqz v1, :cond_10

    const-string v1, "O"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    const/high16 v1, 0x80000

    and-int/2addr v1, p0

    if-eqz v1, :cond_11

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    const/high16 v1, 0x40000

    and-int/2addr v1, p0

    if-eqz v1, :cond_12

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    const/high16 v1, 0x1000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_13

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    const/high16 v1, 0x100000

    and-int/2addr p0, v1

    if-eqz p0, :cond_14

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCardinalityCode(I)I
    .locals 1

    const v0, 0xe000

    and-int/2addr p0, v0

    shr-int/lit8 p0, p0, 0xd

    return p0
.end method
