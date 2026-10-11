.class public abstract Lcom/graphbuilder/math/TermNode;
.super Lcom/graphbuilder/math/Expression;
.source "SourceFile"


# instance fields
.field protected name:Ljava/lang/String;

.field protected negate:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Lcom/graphbuilder/math/Expression;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/graphbuilder/math/TermNode;->name:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/graphbuilder/math/TermNode;->negate:Z

    invoke-virtual {p0, p1}, Lcom/graphbuilder/math/TermNode;->setName(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/graphbuilder/math/TermNode;->setNegate(Z)V

    return-void
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 15

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x30

    if-lt v0, v2, :cond_1

    const/16 v2, 0x39

    if-le v0, v2, :cond_6

    :cond_1
    const/16 v2, 0x2e

    if-eq v0, v2, :cond_6

    const/16 v2, 0x2c

    if-eq v0, v2, :cond_6

    const/16 v3, 0x28

    if-eq v0, v3, :cond_6

    const/16 v4, 0x29

    if-eq v0, v4, :cond_6

    const/16 v5, 0x5e

    if-eq v0, v5, :cond_6

    const/16 v6, 0x2a

    if-eq v0, v6, :cond_6

    const/16 v7, 0x2f

    if-eq v0, v7, :cond_6

    const/16 v8, 0x2b

    if-eq v0, v8, :cond_6

    const/16 v9, 0x2d

    if-eq v0, v9, :cond_6

    const/16 v10, 0x20

    if-eq v0, v10, :cond_6

    const/16 v11, 0x9

    if-eq v0, v11, :cond_6

    const/16 v12, 0xa

    if-ne v0, v12, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x1

    move v13, v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v13, v14, :cond_5

    invoke-virtual {p0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-eq v14, v2, :cond_4

    if-eq v14, v3, :cond_4

    if-eq v14, v4, :cond_4

    if-eq v14, v5, :cond_4

    if-eq v14, v6, :cond_4

    if-eq v14, v7, :cond_4

    if-eq v14, v8, :cond_4

    if-eq v14, v9, :cond_4

    if-eq v14, v10, :cond_4

    if-eq v14, v11, :cond_4

    if-ne v14, v12, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return v1

    :cond_5
    return v0

    :cond_6
    :goto_2
    return v1
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/graphbuilder/math/TermNode;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getNegate()Z
    .locals 0

    iget-boolean p0, p0, Lcom/graphbuilder/math/TermNode;->negate:Z

    return p0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/graphbuilder/math/TermNode;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/graphbuilder/math/TermNode;->name:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "name cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setNegate(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/graphbuilder/math/TermNode;->negate:Z

    return-void
.end method
