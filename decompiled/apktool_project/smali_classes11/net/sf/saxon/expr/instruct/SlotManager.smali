.class public Lnet/sf/saxon/expr/instruct/SlotManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static EMPTY:Lnet/sf/saxon/expr/instruct/SlotManager;


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lnet/sf/saxon/om/StructuredQName;",
            ">;"
        }
    .end annotation
.end field

.field public b:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnet/sf/saxon/expr/instruct/SlotManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/sf/saxon/expr/instruct/SlotManager;-><init>(I)V

    sput-object v0, Lnet/sf/saxon/expr/instruct/SlotManager;->EMPTY:Lnet/sf/saxon/expr/instruct/SlotManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/SlotManager;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lnet/sf/saxon/expr/instruct/SlotManager;->b:I

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/SlotManager;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/SlotManager;->a:Ljava/util/ArrayList;

    .line 7
    iput p1, p0, Lnet/sf/saxon/expr/instruct/SlotManager;->b:I

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/SlotManager;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public allocateSlotNumber(Lnet/sf/saxon/om/StructuredQName;)I
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/SlotManager;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, p0, Lnet/sf/saxon/expr/instruct/SlotManager;->b:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lnet/sf/saxon/expr/instruct/SlotManager;->b:I

    return p1
.end method

.method public getNumberOfVariables()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/expr/instruct/SlotManager;->b:I

    return p0
.end method

.method public getVariableMap()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/sf/saxon/om/StructuredQName;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/SlotManager;->a:Ljava/util/ArrayList;

    return-object p0
.end method

.method public setNumberOfVariables(I)V
    .locals 0

    iput p1, p0, Lnet/sf/saxon/expr/instruct/SlotManager;->b:I

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/SlotManager;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->trimToSize()V

    return-void
.end method

.method public showStackFrame(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/lib/Logger;)V
    .locals 0

    return-void
.end method
