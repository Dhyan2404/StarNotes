.class public Lnet/sf/saxon/type/UType;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ANY:Lnet/sf/saxon/type/UType;

.field public static final ANY_ATOMIC:Lnet/sf/saxon/type/UType;

.field public static final ANY_NODE:Lnet/sf/saxon/type/UType;

.field public static final ANY_URI:Lnet/sf/saxon/type/UType;

.field public static final ATTRIBUTE:Lnet/sf/saxon/type/UType;

.field public static final BASE64_BINARY:Lnet/sf/saxon/type/UType;

.field public static final BOOLEAN:Lnet/sf/saxon/type/UType;

.field public static final CHILD_NODE_KINDS:Lnet/sf/saxon/type/UType;

.field public static final COMMENT:Lnet/sf/saxon/type/UType;

.field public static final DATE:Lnet/sf/saxon/type/UType;

.field public static final DATE_TIME:Lnet/sf/saxon/type/UType;

.field public static final DECIMAL:Lnet/sf/saxon/type/UType;

.field public static final DOCUMENT:Lnet/sf/saxon/type/UType;

.field public static final DOUBLE:Lnet/sf/saxon/type/UType;

.field public static final DURATION:Lnet/sf/saxon/type/UType;

.field public static final ELEMENT:Lnet/sf/saxon/type/UType;

.field public static final ELEMENT_OR_ATTRIBUTE:Lnet/sf/saxon/type/UType;

.field public static final EXTENSION:Lnet/sf/saxon/type/UType;

.field public static final FLOAT:Lnet/sf/saxon/type/UType;

.field public static final FUNCTION:Lnet/sf/saxon/type/UType;

.field public static final G_DAY:Lnet/sf/saxon/type/UType;

.field public static final G_MONTH:Lnet/sf/saxon/type/UType;

.field public static final G_MONTH_DAY:Lnet/sf/saxon/type/UType;

.field public static final G_YEAR:Lnet/sf/saxon/type/UType;

.field public static final G_YEAR_MONTH:Lnet/sf/saxon/type/UType;

.field public static final HEX_BINARY:Lnet/sf/saxon/type/UType;

.field public static final NAMESPACE:Lnet/sf/saxon/type/UType;

.field public static final NOTATION:Lnet/sf/saxon/type/UType;

.field public static final NUMERIC:Lnet/sf/saxon/type/UType;

.field public static final PARENT_NODE_KINDS:Lnet/sf/saxon/type/UType;

.field public static final PI:Lnet/sf/saxon/type/UType;

.field public static final QNAME:Lnet/sf/saxon/type/UType;

.field public static final STRING:Lnet/sf/saxon/type/UType;

.field public static final STRING_LIKE:Lnet/sf/saxon/type/UType;

.field public static final TEXT:Lnet/sf/saxon/type/UType;

.field public static final TIME:Lnet/sf/saxon/type/UType;

.field public static final UNTYPED_ATOMIC:Lnet/sf/saxon/type/UType;

.field public static final VOID:Lnet/sf/saxon/type/UType;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    new-instance v0, Lnet/sf/saxon/type/UType;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/sf/saxon/type/UType;-><init>(I)V

    sput-object v0, Lnet/sf/saxon/type/UType;->VOID:Lnet/sf/saxon/type/UType;

    sget-object v0, Lnet/sf/saxon/type/PrimitiveUType;->DOCUMENT:Lnet/sf/saxon/type/PrimitiveUType;

    invoke-virtual {v0}, Lnet/sf/saxon/type/PrimitiveUType;->toUType()Lnet/sf/saxon/type/UType;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/type/UType;->DOCUMENT:Lnet/sf/saxon/type/UType;

    sget-object v1, Lnet/sf/saxon/type/PrimitiveUType;->ELEMENT:Lnet/sf/saxon/type/PrimitiveUType;

    invoke-virtual {v1}, Lnet/sf/saxon/type/PrimitiveUType;->toUType()Lnet/sf/saxon/type/UType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/type/UType;->ELEMENT:Lnet/sf/saxon/type/UType;

    sget-object v2, Lnet/sf/saxon/type/PrimitiveUType;->ATTRIBUTE:Lnet/sf/saxon/type/PrimitiveUType;

    invoke-virtual {v2}, Lnet/sf/saxon/type/PrimitiveUType;->toUType()Lnet/sf/saxon/type/UType;

    move-result-object v2

    sput-object v2, Lnet/sf/saxon/type/UType;->ATTRIBUTE:Lnet/sf/saxon/type/UType;

    sget-object v3, Lnet/sf/saxon/type/PrimitiveUType;->TEXT:Lnet/sf/saxon/type/PrimitiveUType;

    invoke-virtual {v3}, Lnet/sf/saxon/type/PrimitiveUType;->toUType()Lnet/sf/saxon/type/UType;

    move-result-object v3

    sput-object v3, Lnet/sf/saxon/type/UType;->TEXT:Lnet/sf/saxon/type/UType;

    sget-object v4, Lnet/sf/saxon/type/PrimitiveUType;->COMMENT:Lnet/sf/saxon/type/PrimitiveUType;

    invoke-virtual {v4}, Lnet/sf/saxon/type/PrimitiveUType;->toUType()Lnet/sf/saxon/type/UType;

    move-result-object v4

    sput-object v4, Lnet/sf/saxon/type/UType;->COMMENT:Lnet/sf/saxon/type/UType;

    sget-object v5, Lnet/sf/saxon/type/PrimitiveUType;->PI:Lnet/sf/saxon/type/PrimitiveUType;

    invoke-virtual {v5}, Lnet/sf/saxon/type/PrimitiveUType;->toUType()Lnet/sf/saxon/type/UType;

    move-result-object v5

    sput-object v5, Lnet/sf/saxon/type/UType;->PI:Lnet/sf/saxon/type/UType;

    sget-object v6, Lnet/sf/saxon/type/PrimitiveUType;->NAMESPACE:Lnet/sf/saxon/type/PrimitiveUType;

    invoke-virtual {v6}, Lnet/sf/saxon/type/PrimitiveUType;->toUType()Lnet/sf/saxon/type/UType;

    move-result-object v6

    sput-object v6, Lnet/sf/saxon/type/UType;->NAMESPACE:Lnet/sf/saxon/type/UType;

    sget-object v7, Lnet/sf/saxon/type/PrimitiveUType;->FUNCTION:Lnet/sf/saxon/type/PrimitiveUType;

    invoke-virtual {v7}, Lnet/sf/saxon/type/PrimitiveUType;->toUType()Lnet/sf/saxon/type/UType;

    move-result-object v7

    sput-object v7, Lnet/sf/saxon/type/UType;->FUNCTION:Lnet/sf/saxon/type/UType;

    sget-object v8, Lnet/sf/saxon/type/PrimitiveUType;->STRING:Lnet/sf/saxon/type/PrimitiveUType;

    invoke-virtual {v8}, Lnet/sf/saxon/type/PrimitiveUType;->toUType()Lnet/sf/saxon/type/UType;

    move-result-object v8

    sput-object v8, Lnet/sf/saxon/type/UType;->STRING:Lnet/sf/saxon/type/UType;

    sget-object v9, Lnet/sf/saxon/type/PrimitiveUType;->BOOLEAN:Lnet/sf/saxon/type/PrimitiveUType;

    invoke-virtual {v9}, Lnet/sf/saxon/type/PrimitiveUType;->toUType()Lnet/sf/saxon/type/UType;

    move-result-object v9

    sput-object v9, Lnet/sf/saxon/type/UType;->BOOLEAN:Lnet/sf/saxon/type/UType;

    sget-object v9, Lnet/sf/saxon/type/PrimitiveUType;->DECIMAL:Lnet/sf/saxon/type/PrimitiveUType;

    invoke-virtual {v9}, Lnet/sf/saxon/type/PrimitiveUType;->toUType()Lnet/sf/saxon/type/UType;

    move-result-object v9

    sput-object v9, Lnet/sf/saxon/type/UType;->DECIMAL:Lnet/sf/saxon/type/UType;

    sget-object v10, Lnet/sf/saxon/type/PrimitiveUType;->FLOAT:Lnet/sf/saxon/type/PrimitiveUType;

    invoke-virtual {v10}, Lnet/sf/saxon/type/PrimitiveUType;->toUType()Lnet/sf/saxon/type/UType;

    move-result-object v10

    sput-object v10, Lnet/sf/saxon/type/UType;->FLOAT:Lnet/sf/saxon/type/UType;

    sget-object v11, Lnet/sf/saxon/type/PrimitiveUType;->DOUBLE:Lnet/sf/saxon/type/PrimitiveUType;

    invoke-virtual {v11}, Lnet/sf/saxon/type/PrimitiveUType;->toUType()Lnet/sf/saxon/type/UType;

    move-result-object v11

    sput-object v11, Lnet/sf/saxon/type/UType;->DOUBLE:Lnet/sf/saxon/type/UType;

    sget-object v12, Lnet/sf/saxon/type/PrimitiveUType;->DURATION:Lnet/sf/saxon/type/PrimitiveUType;

    invoke-virtual {v12}, Lnet/sf/saxon/type/PrimitiveUType;->toUType()Lnet/sf/saxon/type/UType;

    move-result-object v12

    sput-object v12, Lnet/sf/saxon/type/UType;->DURATION:Lnet/sf/saxon/type/UType;

    sget-object v12, Lnet/sf/saxon/type/PrimitiveUType;->DATE_TIME:Lnet/sf/saxon/type/PrimitiveUType;

    invoke-virtual {v12}, Lnet/sf/saxon/type/PrimitiveUType;->toUType()Lnet/sf/saxon/type/UType;

    move-result-object v12

    sput-object v12, Lnet/sf/saxon/type/UType;->DATE_TIME:Lnet/sf/saxon/type/UType;

    sget-object v12, Lnet/sf/saxon/type/PrimitiveUType;->TIME:Lnet/sf/saxon/type/PrimitiveUType;

    invoke-virtual {v12}, Lnet/sf/saxon/type/PrimitiveUType;->toUType()Lnet/sf/saxon/type/UType;

    move-result-object v12

    sput-object v12, Lnet/sf/saxon/type/UType;->TIME:Lnet/sf/saxon/type/UType;

    sget-object v12, Lnet/sf/saxon/type/PrimitiveUType;->DATE:Lnet/sf/saxon/type/PrimitiveUType;

    invoke-virtual {v12}, Lnet/sf/saxon/type/PrimitiveUType;->toUType()Lnet/sf/saxon/type/UType;

    move-result-object v12

    sput-object v12, Lnet/sf/saxon/type/UType;->DATE:Lnet/sf/saxon/type/UType;

    sget-object v12, Lnet/sf/saxon/type/PrimitiveUType;->G_YEAR_MONTH:Lnet/sf/saxon/type/PrimitiveUType;

    invoke-virtual {v12}, Lnet/sf/saxon/type/PrimitiveUType;->toUType()Lnet/sf/saxon/type/UType;

    move-result-object v12

    sput-object v12, Lnet/sf/saxon/type/UType;->G_YEAR_MONTH:Lnet/sf/saxon/type/UType;

    sget-object v12, Lnet/sf/saxon/type/PrimitiveUType;->G_YEAR:Lnet/sf/saxon/type/PrimitiveUType;

    invoke-virtual {v12}, Lnet/sf/saxon/type/PrimitiveUType;->toUType()Lnet/sf/saxon/type/UType;

    move-result-object v12

    sput-object v12, Lnet/sf/saxon/type/UType;->G_YEAR:Lnet/sf/saxon/type/UType;

    sget-object v12, Lnet/sf/saxon/type/PrimitiveUType;->G_MONTH_DAY:Lnet/sf/saxon/type/PrimitiveUType;

    invoke-virtual {v12}, Lnet/sf/saxon/type/PrimitiveUType;->toUType()Lnet/sf/saxon/type/UType;

    move-result-object v12

    sput-object v12, Lnet/sf/saxon/type/UType;->G_MONTH_DAY:Lnet/sf/saxon/type/UType;

    sget-object v12, Lnet/sf/saxon/type/PrimitiveUType;->G_DAY:Lnet/sf/saxon/type/PrimitiveUType;

    invoke-virtual {v12}, Lnet/sf/saxon/type/PrimitiveUType;->toUType()Lnet/sf/saxon/type/UType;

    move-result-object v12

    sput-object v12, Lnet/sf/saxon/type/UType;->G_DAY:Lnet/sf/saxon/type/UType;

    sget-object v12, Lnet/sf/saxon/type/PrimitiveUType;->G_MONTH:Lnet/sf/saxon/type/PrimitiveUType;

    invoke-virtual {v12}, Lnet/sf/saxon/type/PrimitiveUType;->toUType()Lnet/sf/saxon/type/UType;

    move-result-object v12

    sput-object v12, Lnet/sf/saxon/type/UType;->G_MONTH:Lnet/sf/saxon/type/UType;

    sget-object v12, Lnet/sf/saxon/type/PrimitiveUType;->HEX_BINARY:Lnet/sf/saxon/type/PrimitiveUType;

    invoke-virtual {v12}, Lnet/sf/saxon/type/PrimitiveUType;->toUType()Lnet/sf/saxon/type/UType;

    move-result-object v12

    sput-object v12, Lnet/sf/saxon/type/UType;->HEX_BINARY:Lnet/sf/saxon/type/UType;

    sget-object v12, Lnet/sf/saxon/type/PrimitiveUType;->BASE64_BINARY:Lnet/sf/saxon/type/PrimitiveUType;

    invoke-virtual {v12}, Lnet/sf/saxon/type/PrimitiveUType;->toUType()Lnet/sf/saxon/type/UType;

    move-result-object v12

    sput-object v12, Lnet/sf/saxon/type/UType;->BASE64_BINARY:Lnet/sf/saxon/type/UType;

    sget-object v12, Lnet/sf/saxon/type/PrimitiveUType;->ANY_URI:Lnet/sf/saxon/type/PrimitiveUType;

    invoke-virtual {v12}, Lnet/sf/saxon/type/PrimitiveUType;->toUType()Lnet/sf/saxon/type/UType;

    move-result-object v12

    sput-object v12, Lnet/sf/saxon/type/UType;->ANY_URI:Lnet/sf/saxon/type/UType;

    sget-object v13, Lnet/sf/saxon/type/PrimitiveUType;->QNAME:Lnet/sf/saxon/type/PrimitiveUType;

    invoke-virtual {v13}, Lnet/sf/saxon/type/PrimitiveUType;->toUType()Lnet/sf/saxon/type/UType;

    move-result-object v13

    sput-object v13, Lnet/sf/saxon/type/UType;->QNAME:Lnet/sf/saxon/type/UType;

    sget-object v13, Lnet/sf/saxon/type/PrimitiveUType;->NOTATION:Lnet/sf/saxon/type/PrimitiveUType;

    invoke-virtual {v13}, Lnet/sf/saxon/type/PrimitiveUType;->toUType()Lnet/sf/saxon/type/UType;

    move-result-object v13

    sput-object v13, Lnet/sf/saxon/type/UType;->NOTATION:Lnet/sf/saxon/type/UType;

    sget-object v13, Lnet/sf/saxon/type/PrimitiveUType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/PrimitiveUType;

    invoke-virtual {v13}, Lnet/sf/saxon/type/PrimitiveUType;->toUType()Lnet/sf/saxon/type/UType;

    move-result-object v13

    sput-object v13, Lnet/sf/saxon/type/UType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/UType;

    sget-object v14, Lnet/sf/saxon/type/PrimitiveUType;->EXTENSION:Lnet/sf/saxon/type/PrimitiveUType;

    invoke-virtual {v14}, Lnet/sf/saxon/type/PrimitiveUType;->toUType()Lnet/sf/saxon/type/UType;

    move-result-object v14

    sput-object v14, Lnet/sf/saxon/type/UType;->EXTENSION:Lnet/sf/saxon/type/UType;

    invoke-virtual {v11, v10}, Lnet/sf/saxon/type/UType;->union(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object v10

    invoke-virtual {v10, v9}, Lnet/sf/saxon/type/UType;->union(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object v9

    sput-object v9, Lnet/sf/saxon/type/UType;->NUMERIC:Lnet/sf/saxon/type/UType;

    invoke-virtual {v8, v12}, Lnet/sf/saxon/type/UType;->union(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object v8

    invoke-virtual {v8, v13}, Lnet/sf/saxon/type/UType;->union(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object v8

    sput-object v8, Lnet/sf/saxon/type/UType;->STRING_LIKE:Lnet/sf/saxon/type/UType;

    invoke-virtual {v1, v3}, Lnet/sf/saxon/type/UType;->union(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object v3

    invoke-virtual {v3, v4}, Lnet/sf/saxon/type/UType;->union(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object v3

    invoke-virtual {v3, v5}, Lnet/sf/saxon/type/UType;->union(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object v3

    sput-object v3, Lnet/sf/saxon/type/UType;->CHILD_NODE_KINDS:Lnet/sf/saxon/type/UType;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/type/UType;->union(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object v4

    sput-object v4, Lnet/sf/saxon/type/UType;->PARENT_NODE_KINDS:Lnet/sf/saxon/type/UType;

    invoke-virtual {v1, v2}, Lnet/sf/saxon/type/UType;->union(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/type/UType;->ELEMENT_OR_ATTRIBUTE:Lnet/sf/saxon/type/UType;

    invoke-virtual {v3, v0}, Lnet/sf/saxon/type/UType;->union(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object v0

    invoke-virtual {v0, v2}, Lnet/sf/saxon/type/UType;->union(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object v0

    invoke-virtual {v0, v6}, Lnet/sf/saxon/type/UType;->union(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/type/UType;->ANY_NODE:Lnet/sf/saxon/type/UType;

    new-instance v1, Lnet/sf/saxon/type/UType;

    const v2, 0xfffff00

    invoke-direct {v1, v2}, Lnet/sf/saxon/type/UType;-><init>(I)V

    sput-object v1, Lnet/sf/saxon/type/UType;->ANY_ATOMIC:Lnet/sf/saxon/type/UType;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/type/UType;->union(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object v0

    invoke-virtual {v0, v7}, Lnet/sf/saxon/type/UType;->union(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object v0

    invoke-virtual {v0, v14}, Lnet/sf/saxon/type/UType;->union(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/type/UType;->ANY:Lnet/sf/saxon/type/UType;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/sf/saxon/type/UType;->a:I

    return-void
.end method

.method public static fromTypeCode(I)Lnet/sf/saxon/type/UType;
    .locals 3

    if-eqz p0, :cond_b

    const/4 v0, 0x1

    if-eq p0, v0, :cond_a

    const/4 v0, 0x2

    if-eq p0, v0, :cond_9

    const/4 v0, 0x3

    if-eq p0, v0, :cond_8

    const/4 v0, 0x4

    if-eq p0, v0, :cond_8

    const/4 v0, 0x7

    if-eq p0, v0, :cond_7

    const/16 v0, 0x8

    if-eq p0, v0, :cond_6

    const/16 v0, 0x9

    if-eq p0, v0, :cond_5

    const/16 v0, 0xd

    if-eq p0, v0, :cond_4

    const/16 v0, 0x58

    if-eq p0, v0, :cond_3

    const/16 v0, 0x63

    if-eq p0, v0, :cond_2

    const/16 v0, 0x233

    if-eq p0, v0, :cond_1

    const/16 v0, 0x235

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    packed-switch p0, :pswitch_data_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object p0, Lnet/sf/saxon/type/UType;->NUMERIC:Lnet/sf/saxon/type/UType;

    return-object p0

    :pswitch_1
    sget-object p0, Lnet/sf/saxon/type/UType;->DURATION:Lnet/sf/saxon/type/UType;

    return-object p0

    :pswitch_2
    sget-object p0, Lnet/sf/saxon/type/UType;->ANY_ATOMIC:Lnet/sf/saxon/type/UType;

    return-object p0

    :pswitch_3
    sget-object p0, Lnet/sf/saxon/type/UType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/UType;

    return-object p0

    :pswitch_4
    sget-object p0, Lnet/sf/saxon/type/UType;->DECIMAL:Lnet/sf/saxon/type/UType;

    return-object p0

    :pswitch_5
    sget-object p0, Lnet/sf/saxon/type/UType;->DECIMAL:Lnet/sf/saxon/type/UType;

    return-object p0

    :pswitch_6
    sget-object p0, Lnet/sf/saxon/type/UType;->NOTATION:Lnet/sf/saxon/type/UType;

    return-object p0

    :pswitch_7
    sget-object p0, Lnet/sf/saxon/type/UType;->QNAME:Lnet/sf/saxon/type/UType;

    return-object p0

    :pswitch_8
    sget-object p0, Lnet/sf/saxon/type/UType;->ANY_URI:Lnet/sf/saxon/type/UType;

    return-object p0

    :pswitch_9
    sget-object p0, Lnet/sf/saxon/type/UType;->BASE64_BINARY:Lnet/sf/saxon/type/UType;

    return-object p0

    :pswitch_a
    sget-object p0, Lnet/sf/saxon/type/UType;->HEX_BINARY:Lnet/sf/saxon/type/UType;

    return-object p0

    :pswitch_b
    sget-object p0, Lnet/sf/saxon/type/UType;->G_MONTH:Lnet/sf/saxon/type/UType;

    return-object p0

    :pswitch_c
    sget-object p0, Lnet/sf/saxon/type/UType;->G_DAY:Lnet/sf/saxon/type/UType;

    return-object p0

    :pswitch_d
    sget-object p0, Lnet/sf/saxon/type/UType;->G_MONTH_DAY:Lnet/sf/saxon/type/UType;

    return-object p0

    :pswitch_e
    sget-object p0, Lnet/sf/saxon/type/UType;->G_YEAR:Lnet/sf/saxon/type/UType;

    return-object p0

    :pswitch_f
    sget-object p0, Lnet/sf/saxon/type/UType;->G_YEAR_MONTH:Lnet/sf/saxon/type/UType;

    return-object p0

    :pswitch_10
    sget-object p0, Lnet/sf/saxon/type/UType;->DATE:Lnet/sf/saxon/type/UType;

    return-object p0

    :pswitch_11
    sget-object p0, Lnet/sf/saxon/type/UType;->TIME:Lnet/sf/saxon/type/UType;

    return-object p0

    :pswitch_12
    sget-object p0, Lnet/sf/saxon/type/UType;->DATE_TIME:Lnet/sf/saxon/type/UType;

    return-object p0

    :pswitch_13
    sget-object p0, Lnet/sf/saxon/type/UType;->DURATION:Lnet/sf/saxon/type/UType;

    return-object p0

    :pswitch_14
    sget-object p0, Lnet/sf/saxon/type/UType;->DOUBLE:Lnet/sf/saxon/type/UType;

    return-object p0

    :pswitch_15
    sget-object p0, Lnet/sf/saxon/type/UType;->FLOAT:Lnet/sf/saxon/type/UType;

    return-object p0

    :pswitch_16
    sget-object p0, Lnet/sf/saxon/type/UType;->DECIMAL:Lnet/sf/saxon/type/UType;

    return-object p0

    :pswitch_17
    sget-object p0, Lnet/sf/saxon/type/UType;->BOOLEAN:Lnet/sf/saxon/type/UType;

    return-object p0

    :pswitch_18
    sget-object p0, Lnet/sf/saxon/type/UType;->STRING:Lnet/sf/saxon/type/UType;

    return-object p0

    :cond_0
    sget-object p0, Lnet/sf/saxon/type/UType;->DATE_TIME:Lnet/sf/saxon/type/UType;

    return-object p0

    :cond_1
    :pswitch_19
    sget-object p0, Lnet/sf/saxon/type/UType;->STRING:Lnet/sf/saxon/type/UType;

    return-object p0

    :cond_2
    sget-object p0, Lnet/sf/saxon/type/UType;->FUNCTION:Lnet/sf/saxon/type/UType;

    return-object p0

    :cond_3
    sget-object p0, Lnet/sf/saxon/type/UType;->ANY:Lnet/sf/saxon/type/UType;

    return-object p0

    :cond_4
    sget-object p0, Lnet/sf/saxon/type/UType;->NAMESPACE:Lnet/sf/saxon/type/UType;

    return-object p0

    :cond_5
    sget-object p0, Lnet/sf/saxon/type/UType;->DOCUMENT:Lnet/sf/saxon/type/UType;

    return-object p0

    :cond_6
    sget-object p0, Lnet/sf/saxon/type/UType;->COMMENT:Lnet/sf/saxon/type/UType;

    return-object p0

    :cond_7
    sget-object p0, Lnet/sf/saxon/type/UType;->PI:Lnet/sf/saxon/type/UType;

    return-object p0

    :cond_8
    sget-object p0, Lnet/sf/saxon/type/UType;->TEXT:Lnet/sf/saxon/type/UType;

    return-object p0

    :cond_9
    sget-object p0, Lnet/sf/saxon/type/UType;->ATTRIBUTE:Lnet/sf/saxon/type/UType;

    return-object p0

    :cond_a
    sget-object p0, Lnet/sf/saxon/type/UType;->ELEMENT:Lnet/sf/saxon/type/UType;

    return-object p0

    :cond_b
    sget-object p0, Lnet/sf/saxon/type/UType;->ANY_NODE:Lnet/sf/saxon/type/UType;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x201
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x215
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x229
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x22e
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x277
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getUType(Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/type/UType;
    .locals 2

    .line 10
    invoke-interface {p0}, Lnet/sf/saxon/om/GroundedValue;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    .line 11
    sget-object v0, Lnet/sf/saxon/type/UType;->VOID:Lnet/sf/saxon/type/UType;

    .line 12
    :goto_0
    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 13
    invoke-static {v1}, Lnet/sf/saxon/type/UType;->getUType(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/type/UType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/type/UType;->union(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getUType(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/type/UType;
    .locals 1

    .line 1
    instance-of v0, p0, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result p0

    invoke-static {p0}, Lnet/sf/saxon/type/UType;->fromTypeCode(I)Lnet/sf/saxon/type/UType;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    instance-of v0, p0, Lnet/sf/saxon/value/AtomicValue;

    if-eqz v0, :cond_1

    .line 4
    check-cast p0, Lnet/sf/saxon/value/AtomicValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/AtomicValue;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    instance-of v0, p0, Lnet/sf/saxon/om/Function;

    if-eqz v0, :cond_2

    .line 6
    sget-object p0, Lnet/sf/saxon/type/UType;->FUNCTION:Lnet/sf/saxon/type/UType;

    return-object p0

    .line 7
    :cond_2
    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getGenre()Lnet/sf/saxon/om/Genre;

    move-result-object p0

    sget-object v0, Lnet/sf/saxon/om/Genre;->EXTERNAL:Lnet/sf/saxon/om/Genre;

    if-ne p0, v0, :cond_3

    .line 8
    sget-object p0, Lnet/sf/saxon/type/UType;->EXTENSION:Lnet/sf/saxon/type/UType;

    return-object p0

    .line 9
    :cond_3
    sget-object p0, Lnet/sf/saxon/type/UType;->VOID:Lnet/sf/saxon/type/UType;

    return-object p0
.end method

.method public static isGenerallyComparable(Lnet/sf/saxon/type/UType;Lnet/sf/saxon/type/UType;)Z
    .locals 1

    sget-object v0, Lnet/sf/saxon/type/UType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/UType;

    if-eq p0, v0, :cond_1

    if-eq p1, v0, :cond_1

    invoke-static {p0, p1}, Lnet/sf/saxon/type/UType;->isGuaranteedComparable(Lnet/sf/saxon/type/UType;Lnet/sf/saxon/type/UType;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isGuaranteedComparable(Lnet/sf/saxon/type/UType;Lnet/sf/saxon/type/UType;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    sget-object v0, Lnet/sf/saxon/type/UType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/UType;

    if-eq p0, v0, :cond_1

    sget-object v1, Lnet/sf/saxon/type/UType;->ANY_URI:Lnet/sf/saxon/type/UType;

    if-ne p0, v1, :cond_2

    :cond_1
    sget-object p0, Lnet/sf/saxon/type/UType;->STRING:Lnet/sf/saxon/type/UType;

    :cond_2
    if-eq p1, v0, :cond_3

    sget-object v0, Lnet/sf/saxon/type/UType;->ANY_URI:Lnet/sf/saxon/type/UType;

    if-ne p1, v0, :cond_4

    :cond_3
    sget-object p1, Lnet/sf/saxon/type/UType;->STRING:Lnet/sf/saxon/type/UType;

    :cond_4
    sget-object v0, Lnet/sf/saxon/type/UType;->NUMERIC:Lnet/sf/saxon/type/UType;

    invoke-virtual {v0, p0}, Lnet/sf/saxon/type/UType;->subsumes(Lnet/sf/saxon/type/UType;)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object p0, v0

    :cond_5
    invoke-virtual {v0, p1}, Lnet/sf/saxon/type/UType;->subsumes(Lnet/sf/saxon/type/UType;)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object p1, v0

    :cond_6
    invoke-virtual {p0, p1}, Lnet/sf/saxon/type/UType;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isPossiblyComparable(Lnet/sf/saxon/type/UType;Lnet/sf/saxon/type/UType;Z)Z
    .locals 2

    const/4 p2, 0x1

    if-ne p0, p1, :cond_0

    return p2

    :cond_0
    sget-object v0, Lnet/sf/saxon/type/UType;->ANY_ATOMIC:Lnet/sf/saxon/type/UType;

    if-eq p0, v0, :cond_9

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lnet/sf/saxon/type/UType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/UType;

    if-eq p0, v0, :cond_2

    sget-object v1, Lnet/sf/saxon/type/UType;->ANY_URI:Lnet/sf/saxon/type/UType;

    if-ne p0, v1, :cond_3

    :cond_2
    sget-object p0, Lnet/sf/saxon/type/UType;->STRING:Lnet/sf/saxon/type/UType;

    :cond_3
    if-eq p1, v0, :cond_4

    sget-object v0, Lnet/sf/saxon/type/UType;->ANY_URI:Lnet/sf/saxon/type/UType;

    if-ne p1, v0, :cond_5

    :cond_4
    sget-object p1, Lnet/sf/saxon/type/UType;->STRING:Lnet/sf/saxon/type/UType;

    :cond_5
    sget-object v0, Lnet/sf/saxon/type/UType;->NUMERIC:Lnet/sf/saxon/type/UType;

    invoke-virtual {v0, p0}, Lnet/sf/saxon/type/UType;->subsumes(Lnet/sf/saxon/type/UType;)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object p0, v0

    :cond_6
    invoke-virtual {v0, p1}, Lnet/sf/saxon/type/UType;->subsumes(Lnet/sf/saxon/type/UType;)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object p1, v0

    :cond_7
    if-ne p0, p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 p2, 0x0

    :cond_9
    :goto_0
    return p2
.end method


# virtual methods
.method public decompose()Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lnet/sf/saxon/type/PrimitiveUType;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {}, Lnet/sf/saxon/type/PrimitiveUType;->values()[Lnet/sf/saxon/type/PrimitiveUType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    iget v5, p0, Lnet/sf/saxon/type/UType;->a:I

    invoke-virtual {v4}, Lnet/sf/saxon/type/PrimitiveUType;->getBit()I

    move-result v6

    const/4 v7, 0x1

    shl-int v6, v7, v6

    and-int/2addr v5, v6

    if-eqz v5, :cond_0

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/type/UType;

    if-eqz v0, :cond_0

    iget p0, p0, Lnet/sf/saxon/type/UType;->a:I

    check-cast p1, Lnet/sf/saxon/type/UType;

    iget p1, p1, Lnet/sf/saxon/type/UType;->a:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public except(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;
    .locals 1

    new-instance v0, Lnet/sf/saxon/type/UType;

    iget p0, p0, Lnet/sf/saxon/type/UType;->a:I

    iget p1, p1, Lnet/sf/saxon/type/UType;->a:I

    not-int p1, p1

    and-int/2addr p0, p1

    invoke-direct {v0, p0}, Lnet/sf/saxon/type/UType;-><init>(I)V

    return-object v0
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/type/UType;->a:I

    return p0
.end method

.method public intersection(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;
    .locals 1

    new-instance v0, Lnet/sf/saxon/type/UType;

    iget p0, p0, Lnet/sf/saxon/type/UType;->a:I

    iget p1, p1, Lnet/sf/saxon/type/UType;->a:I

    and-int/2addr p0, p1

    invoke-direct {v0, p0}, Lnet/sf/saxon/type/UType;-><init>(I)V

    return-object v0
.end method

.method public matches(Lnet/sf/saxon/om/Item;)Z
    .locals 0

    invoke-static {p1}, Lnet/sf/saxon/type/UType;->getUType(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/type/UType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/type/UType;->subsumes(Lnet/sf/saxon/type/UType;)Z

    move-result p0

    return p0
.end method

.method public overlaps(Lnet/sf/saxon/type/UType;)Z
    .locals 0

    iget p0, p0, Lnet/sf/saxon/type/UType;->a:I

    iget p1, p1, Lnet/sf/saxon/type/UType;->a:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public subsumes(Lnet/sf/saxon/type/UType;)Z
    .locals 0

    iget p0, p0, Lnet/sf/saxon/type/UType;->a:I

    iget p1, p1, Lnet/sf/saxon/type/UType;->a:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toItemType()Lnet/sf/saxon/type/ItemType;
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/type/UType;->decompose()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lnet/sf/saxon/type/ErrorType;->getInstance()Lnet/sf/saxon/type/ErrorType;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/type/PrimitiveUType;

    invoke-virtual {p0}, Lnet/sf/saxon/type/PrimitiveUType;->toItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0

    :cond_2
    sget-object v0, Lnet/sf/saxon/type/UType;->ANY_NODE:Lnet/sf/saxon/type/UType;

    invoke-virtual {v0, p0}, Lnet/sf/saxon/type/UType;->subsumes(Lnet/sf/saxon/type/UType;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lnet/sf/saxon/pattern/AnyNodeTest;->getInstance()Lnet/sf/saxon/pattern/AnyNodeTest;

    move-result-object p0

    return-object p0

    :cond_3
    sget-object v0, Lnet/sf/saxon/type/UType;->NUMERIC:Lnet/sf/saxon/type/UType;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/type/UType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lnet/sf/saxon/type/NumericType;->getInstance()Lnet/sf/saxon/type/NumericType;

    move-result-object p0

    return-object p0

    :cond_4
    sget-object v0, Lnet/sf/saxon/type/UType;->ANY_ATOMIC:Lnet/sf/saxon/type/UType;

    invoke-virtual {v0, p0}, Lnet/sf/saxon/type/UType;->subsumes(Lnet/sf/saxon/type/UType;)Z

    move-result p0

    if-eqz p0, :cond_5

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0

    :cond_5
    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/type/UType;->decompose()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "U{}"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/type/PrimitiveUType;

    invoke-virtual {v1}, Lnet/sf/saxon/type/PrimitiveUType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toStringWithIndefiniteArticle()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/type/UType;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const-string v1, "aeiouxy"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const-string v1, " node"

    if-ltz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "an "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "a "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public union(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    new-instance v0, Lnet/sf/saxon/type/UType;

    iget p0, p0, Lnet/sf/saxon/type/UType;->a:I

    iget p1, p1, Lnet/sf/saxon/type/UType;->a:I

    or-int/2addr p0, p1

    invoke-direct {v0, p0}, Lnet/sf/saxon/type/UType;-><init>(I)V

    return-object v0
.end method
