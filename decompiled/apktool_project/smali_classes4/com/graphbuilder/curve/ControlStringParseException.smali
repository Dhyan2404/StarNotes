.class public Lcom/graphbuilder/curve/ControlStringParseException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field private descrip:Ljava/lang/String;

.field private epe:Lcom/graphbuilder/math/ExpressionParseException;

.field private fromIndex:I

.field private toIndex:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/graphbuilder/curve/ControlStringParseException;->fromIndex:I

    .line 3
    iput v0, p0, Lcom/graphbuilder/curve/ControlStringParseException;->toIndex:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/graphbuilder/curve/ControlStringParseException;->epe:Lcom/graphbuilder/math/ExpressionParseException;

    .line 5
    iput-object p1, p0, Lcom/graphbuilder/curve/ControlStringParseException;->descrip:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/graphbuilder/curve/ControlStringParseException;->epe:Lcom/graphbuilder/math/ExpressionParseException;

    .line 8
    iput-object p1, p0, Lcom/graphbuilder/curve/ControlStringParseException;->descrip:Ljava/lang/String;

    .line 9
    iput p2, p0, Lcom/graphbuilder/curve/ControlStringParseException;->fromIndex:I

    .line 10
    iput p2, p0, Lcom/graphbuilder/curve/ControlStringParseException;->toIndex:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/graphbuilder/curve/ControlStringParseException;->epe:Lcom/graphbuilder/math/ExpressionParseException;

    .line 13
    iput-object p1, p0, Lcom/graphbuilder/curve/ControlStringParseException;->descrip:Ljava/lang/String;

    .line 14
    iput p2, p0, Lcom/graphbuilder/curve/ControlStringParseException;->fromIndex:I

    .line 15
    iput p3, p0, Lcom/graphbuilder/curve/ControlStringParseException;->toIndex:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILcom/graphbuilder/math/ExpressionParseException;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/graphbuilder/curve/ControlStringParseException;->descrip:Ljava/lang/String;

    .line 18
    iput p2, p0, Lcom/graphbuilder/curve/ControlStringParseException;->fromIndex:I

    .line 19
    iput p3, p0, Lcom/graphbuilder/curve/ControlStringParseException;->toIndex:I

    .line 20
    iput-object p4, p0, Lcom/graphbuilder/curve/ControlStringParseException;->epe:Lcom/graphbuilder/math/ExpressionParseException;

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/graphbuilder/curve/ControlStringParseException;->descrip:Ljava/lang/String;

    return-object p0
.end method

.method public getExpressionParseException()Lcom/graphbuilder/math/ExpressionParseException;
    .locals 0

    iget-object p0, p0, Lcom/graphbuilder/curve/ControlStringParseException;->epe:Lcom/graphbuilder/math/ExpressionParseException;

    return-object p0
.end method

.method public getFromIndex()I
    .locals 0

    iget p0, p0, Lcom/graphbuilder/curve/ControlStringParseException;->fromIndex:I

    return p0
.end method

.method public getToIndex()I
    .locals 0

    iget p0, p0, Lcom/graphbuilder/curve/ControlStringParseException;->toIndex:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/graphbuilder/curve/ControlStringParseException;->epe:Lcom/graphbuilder/math/ExpressionParseException;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/graphbuilder/curve/ControlStringParseException;->epe:Lcom/graphbuilder/math/ExpressionParseException;

    invoke-virtual {v1}, Lcom/graphbuilder/math/ExpressionParseException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iget v1, p0, Lcom/graphbuilder/curve/ControlStringParseException;->fromIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    iget v3, p0, Lcom/graphbuilder/curve/ControlStringParseException;->toIndex:I

    if-ne v3, v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/graphbuilder/curve/ControlStringParseException;->descrip:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget v2, p0, Lcom/graphbuilder/curve/ControlStringParseException;->toIndex:I

    const-string v3, "]"

    const-string v4, " : ["

    if-ne v1, v2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/graphbuilder/curve/ControlStringParseException;->descrip:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/graphbuilder/curve/ControlStringParseException;->toIndex:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/graphbuilder/curve/ControlStringParseException;->descrip:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/graphbuilder/curve/ControlStringParseException;->fromIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/graphbuilder/curve/ControlStringParseException;->toIndex:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
