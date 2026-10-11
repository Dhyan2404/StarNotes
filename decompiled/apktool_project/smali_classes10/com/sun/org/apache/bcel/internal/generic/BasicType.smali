.class public final Lcom/sun/org/apache/bcel/internal/generic/BasicType;
.super Lcom/sun/org/apache/bcel/internal/generic/Type;
.source "SourceFile"


# direct methods
.method public constructor <init>(B)V
    .locals 2

    sget-object v0, Lcom/sun/org/apache/bcel/internal/Constants;->SHORT_TYPE_NAMES:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/generic/Type;-><init>(BLjava/lang/String;)V

    const/4 p0, 0x4

    if-lt p1, p0, :cond_0

    const/16 p0, 0xc

    if-gt p1, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final getType(B)Lcom/sun/org/apache/bcel/internal/generic/BasicType;
    .locals 3

    packed-switch p0, :pswitch_data_0

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/Type;->VOID:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/Type;->LONG:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/Type;->SHORT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/Type;->BYTE:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/Type;->DOUBLE:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/Type;->FLOAT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/Type;->CHAR:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/Type;->BOOLEAN:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    iget-byte p1, p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->type:B

    iget-byte p0, p0, Lcom/sun/org/apache/bcel/internal/generic/Type;->type:B

    if-ne p1, p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
