.class public Lnet/sf/saxon/expr/StackFrame;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EMPTY:Lnet/sf/saxon/expr/StackFrame;


# instance fields
.field protected dynamicStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lnet/sf/saxon/om/Sequence;",
            ">;"
        }
    .end annotation
.end field

.field protected map:Lnet/sf/saxon/expr/instruct/SlotManager;

.field protected slots:[Lnet/sf/saxon/om/Sequence;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/sf/saxon/expr/StackFrame;

    sget-object v1, Lnet/sf/saxon/expr/instruct/SlotManager;->EMPTY:Lnet/sf/saxon/expr/instruct/SlotManager;

    const/4 v2, 0x0

    new-array v2, v2, [Lnet/sf/saxon/om/Sequence;

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/expr/StackFrame;-><init>(Lnet/sf/saxon/expr/instruct/SlotManager;[Lnet/sf/saxon/om/Sequence;)V

    sput-object v0, Lnet/sf/saxon/expr/StackFrame;->EMPTY:Lnet/sf/saxon/expr/StackFrame;

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/expr/instruct/SlotManager;[Lnet/sf/saxon/om/Sequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/expr/StackFrame;->map:Lnet/sf/saxon/expr/instruct/SlotManager;

    iput-object p2, p0, Lnet/sf/saxon/expr/StackFrame;->slots:[Lnet/sf/saxon/om/Sequence;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Stack;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack<",
            "Lnet/sf/saxon/om/Sequence;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/Stack;

    invoke-direct {p0}, Ljava/util/Stack;-><init>()V

    return-object p0
.end method

.method public final b(Ljava/util/Stack;)Ljava/util/Stack;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack<",
            "Lnet/sf/saxon/om/Sequence;",
            ">;)",
            "Ljava/util/Stack<",
            "Lnet/sf/saxon/om/Sequence;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/StackFrame;->a()Ljava/util/Stack;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public copy()Lnet/sf/saxon/expr/StackFrame;
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/expr/StackFrame;->slots:[Lnet/sf/saxon/om/Sequence;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sf/saxon/om/Sequence;

    new-instance v1, Lnet/sf/saxon/expr/StackFrame;

    iget-object v2, p0, Lnet/sf/saxon/expr/StackFrame;->map:Lnet/sf/saxon/expr/instruct/SlotManager;

    invoke-direct {v1, v2, v0}, Lnet/sf/saxon/expr/StackFrame;-><init>(Lnet/sf/saxon/expr/instruct/SlotManager;[Lnet/sf/saxon/om/Sequence;)V

    iget-object v0, p0, Lnet/sf/saxon/expr/StackFrame;->dynamicStack:Ljava/util/Stack;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/StackFrame;->b(Ljava/util/Stack;)Ljava/util/Stack;

    move-result-object p0

    iput-object p0, v1, Lnet/sf/saxon/expr/StackFrame;->dynamicStack:Ljava/util/Stack;

    :cond_0
    return-object v1
.end method

.method public getStackFrameMap()Lnet/sf/saxon/expr/instruct/SlotManager;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/StackFrame;->map:Lnet/sf/saxon/expr/instruct/SlotManager;

    return-object p0
.end method

.method public getStackFrameValues()[Lnet/sf/saxon/om/Sequence;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/StackFrame;->slots:[Lnet/sf/saxon/om/Sequence;

    return-object p0
.end method

.method public holdsDynamicValue()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/StackFrame;->dynamicStack:Ljava/util/Stack;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/Stack;->empty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public popDynamicValue()Lnet/sf/saxon/om/Sequence;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/StackFrame;->dynamicStack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/om/Sequence;

    return-object p0
.end method

.method public pushDynamicValue(Lnet/sf/saxon/om/Sequence;)V
    .locals 1

    sget-object v0, Lnet/sf/saxon/expr/StackFrame;->EMPTY:Lnet/sf/saxon/expr/StackFrame;

    if-eq p0, v0, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/expr/StackFrame;->dynamicStack:Ljava/util/Stack;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/StackFrame;->a()Ljava/util/Stack;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/expr/StackFrame;->dynamicStack:Ljava/util/Stack;

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/expr/StackFrame;->dynamicStack:Ljava/util/Stack;

    invoke-virtual {p0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Immutable stack frame"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setStackFrameValues([Lnet/sf/saxon/om/Sequence;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/StackFrame;->slots:[Lnet/sf/saxon/om/Sequence;

    return-void
.end method
