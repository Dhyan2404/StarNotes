.class Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MultistepExprHolder"
.end annotation


# instance fields
.field m_exprOwner:Lcom/sun/org/apache/xpath/internal/ExpressionOwner;

.field m_next:Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;

.field final m_stepCount:I

.field final synthetic this$0:Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;Lcom/sun/org/apache/xpath/internal/ExpressionOwner;ILcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;->this$0:Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lcom/sun/org/apache/xpath/internal/ExpressionOwner;

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string p2, "exprOwner can not be null!"

    invoke-static {p1, p2}, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->assertion(ZLjava/lang/String;)V

    iput p3, p0, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;->m_stepCount:I

    iput-object p4, p0, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;

    return-void
.end method


# virtual methods
.method public addInSortedOrder(Lcom/sun/org/apache/xpath/internal/ExpressionOwner;I)Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;
    .locals 5

    const/4 v0, 0x0

    move-object v1, p0

    move-object v2, v0

    :goto_0
    if-eqz v1, :cond_2

    iget v3, v1, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;->m_stepCount:I

    if-lt p2, v3, :cond_1

    new-instance v0, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;->this$0:Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;

    invoke-direct {v0, v3, p1, p2, v1}, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;-><init>(Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;Lcom/sun/org/apache/xpath/internal/ExpressionOwner;ILcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;)V

    if-nez v2, :cond_0

    move-object p0, v0

    goto :goto_1

    :cond_0
    iput-object v0, v2, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;

    :goto_1
    return-object p0

    :cond_1
    iget-object v2, v1, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;->this$0:Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;

    invoke-direct {v1, v3, p1, p2, v0}, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;-><init>(Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;Lcom/sun/org/apache/xpath/internal/ExpressionOwner;ILcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;)V

    iput-object v1, v2, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;

    return-object p0
.end method

.method public clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public diagnose()V
    .locals 3

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found multistep iterators: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;->getLength()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;->m_stepCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;

    if-eqz p0, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    return-void
.end method

.method public getLength()I
    .locals 1

    const/4 v0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    add-int/lit8 v0, v0, 0x1

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;

    goto :goto_0

    :cond_0
    return v0
.end method

.method public unlink(Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;)Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;
    .locals 4

    const/4 v0, 0x0

    move-object v1, p0

    move-object v2, v0

    :goto_0
    if-eqz v1, :cond_2

    if-ne v1, p1, :cond_1

    if-nez v2, :cond_0

    iget-object p0, v1, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;

    goto :goto_1

    :cond_0
    iget-object p1, v1, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;

    iput-object p1, v2, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;

    :goto_1
    iput-object v0, v1, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;

    return-object p0

    :cond_1
    iget-object v2, v1, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;

    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    const-string p1, "unlink failed!!!"

    invoke-static {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->assertion(ZLjava/lang/String;)V

    return-object v0
.end method
