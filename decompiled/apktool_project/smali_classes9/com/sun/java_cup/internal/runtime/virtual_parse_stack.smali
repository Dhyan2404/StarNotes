.class public Lcom/sun/java_cup/internal/runtime/virtual_parse_stack;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected real_next:I

.field protected real_stack:Ljava/util/Stack;

.field protected vstack:Ljava/util/Stack;


# direct methods
.method public constructor <init>(Ljava/util/Stack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/sun/java_cup/internal/runtime/virtual_parse_stack;->real_stack:Ljava/util/Stack;

    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lcom/sun/java_cup/internal/runtime/virtual_parse_stack;->vstack:Ljava/util/Stack;

    const/4 p1, 0x0

    iput p1, p0, Lcom/sun/java_cup/internal/runtime/virtual_parse_stack;->real_next:I

    invoke-virtual {p0}, Lcom/sun/java_cup/internal/runtime/virtual_parse_stack;->get_from_real()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Internal parser error: attempt to create null virtual stack"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public empty()Z
    .locals 0

    iget-object p0, p0, Lcom/sun/java_cup/internal/runtime/virtual_parse_stack;->vstack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->empty()Z

    move-result p0

    return p0
.end method

.method public get_from_real()V
    .locals 3

    iget v0, p0, Lcom/sun/java_cup/internal/runtime/virtual_parse_stack;->real_next:I

    iget-object v1, p0, Lcom/sun/java_cup/internal/runtime/virtual_parse_stack;->real_stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sun/java_cup/internal/runtime/virtual_parse_stack;->real_stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/sun/java_cup/internal/runtime/virtual_parse_stack;->real_next:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, p0, Lcom/sun/java_cup/internal/runtime/virtual_parse_stack;->real_next:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/java_cup/internal/runtime/virtual_parse_stack;->real_next:I

    iget-object p0, p0, Lcom/sun/java_cup/internal/runtime/virtual_parse_stack;->vstack:Ljava/util/Stack;

    new-instance v1, Ljava/lang/Integer;

    iget v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->parse_state:I

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public pop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/java_cup/internal/runtime/virtual_parse_stack;->vstack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sun/java_cup/internal/runtime/virtual_parse_stack;->vstack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/java_cup/internal/runtime/virtual_parse_stack;->vstack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/java_cup/internal/runtime/virtual_parse_stack;->get_from_real()V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "Internal parser error: pop from empty virtual stack"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public push(I)V
    .locals 1

    iget-object p0, p0, Lcom/sun/java_cup/internal/runtime/virtual_parse_stack;->vstack:Ljava/util/Stack;

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public top()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/java_cup/internal/runtime/virtual_parse_stack;->vstack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sun/java_cup/internal/runtime/virtual_parse_stack;->vstack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "Internal parser error: top() called on empty virtual stack"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method
