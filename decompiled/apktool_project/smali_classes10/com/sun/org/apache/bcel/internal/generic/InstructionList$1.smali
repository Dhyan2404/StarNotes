.class Lcom/sun/org/apache/bcel/internal/generic/InstructionList$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private ih:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

.field final synthetic this$0:Lcom/sun/org/apache/bcel/internal/generic/InstructionList;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionList;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList$1;->this$0:Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->access$000(Lcom/sun/org/apache/bcel/internal/generic/InstructionList;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList$1;->ih:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList$1;->ih:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList$1;->ih:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iget-object v1, v0, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->next:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iput-object v1, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList$1;->ih:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    return-object v0
.end method

.method public remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
