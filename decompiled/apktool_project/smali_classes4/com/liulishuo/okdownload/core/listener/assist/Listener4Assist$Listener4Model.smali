.class public Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$Listener4Model;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Listener4Model"
.end annotation


# instance fields
.field public final a:I

.field public b:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

.field public c:J

.field public d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$Listener4Model;->a:I

    return-void
.end method


# virtual methods
.method public a()Landroid/util/SparseArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$Listener4Model;->d:Landroid/util/SparseArray;

    return-object p0
.end method

.method public cloneBlockCurrentOffsetMap()Landroid/util/SparseArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$Listener4Model;->d:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object p0

    return-object p0
.end method

.method public getBlockCurrentOffset(I)J
    .locals 0

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$Listener4Model;->d:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public getCurrentOffset()J
    .locals 2

    iget-wide v0, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$Listener4Model;->c:J

    return-wide v0
.end method

.method public getId()I
    .locals 0

    iget p0, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$Listener4Model;->a:I

    return p0
.end method

.method public getInfo()Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;
    .locals 0

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$Listener4Model;->b:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    return-object p0
.end method

.method public onInfoValid(Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;)V
    .locals 5
    .param p1    # Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$Listener4Model;->b:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->getTotalOffset()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$Listener4Model;->c:J

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->getBlockCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p1, v2}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->getBlock(I)Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;->getCurrentOffset()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$Listener4Model;->d:Landroid/util/SparseArray;

    return-void
.end method
