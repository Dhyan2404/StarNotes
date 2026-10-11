.class public final Lnet/sf/saxon/expr/instruct/Bindery;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/expr/instruct/Bindery$FailureValue;
    }
.end annotation


# instance fields
.field public a:[Lnet/sf/saxon/om/GroundedValue;

.field public b:[J


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/PackageData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lnet/sf/saxon/expr/PackageData;->getGlobalSlotManager()Lnet/sf/saxon/expr/instruct/SlotManager;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/instruct/Bindery;->a(Lnet/sf/saxon/expr/instruct/SlotManager;)V

    return-void
.end method


# virtual methods
.method public final a(Lnet/sf/saxon/expr/instruct/SlotManager;)V
    .locals 4

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/SlotManager;->getNumberOfVariables()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    new-array v0, p1, [Lnet/sf/saxon/om/GroundedValue;

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/Bindery;->a:[Lnet/sf/saxon/om/GroundedValue;

    new-array v0, p1, [J

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/Bindery;->b:[J

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/Bindery;->a:[Lnet/sf/saxon/om/GroundedValue;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/Bindery;->b:[J

    const-wide/16 v2, -0x1

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getGlobalVariable(I)Lnet/sf/saxon/om/GroundedValue;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/Bindery;->a:[Lnet/sf/saxon/om/GroundedValue;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getGlobalVariableValue(Lnet/sf/saxon/expr/instruct/GlobalVariable;)Lnet/sf/saxon/om/GroundedValue;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/Bindery;->a:[Lnet/sf/saxon/om/GroundedValue;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->getBinderySlotNumber()I

    move-result p1

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getGlobalVariables()[Lnet/sf/saxon/om/GroundedValue;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/Bindery;->a:[Lnet/sf/saxon/om/GroundedValue;

    return-object p0
.end method

.method public declared-synchronized saveGlobalVariableValue(Lnet/sf/saxon/expr/instruct/GlobalVariable;Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/om/GroundedValue;
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->getBinderySlotNumber()I

    move-result p1

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/Bindery;->a:[Lnet/sf/saxon/om/GroundedValue;

    aget-object v1, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/Bindery;->b:[J

    const-wide/16 v2, -0x1

    aput-wide v2, v1, p1

    aput-object p2, v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setExecuting(Lnet/sf/saxon/expr/instruct/GlobalVariable;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->getBinderySlotNumber()I

    move-result v2

    iget-object v3, p0, Lnet/sf/saxon/expr/instruct/Bindery;->b:[J

    aget-wide v4, v3, v2

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    const/4 v9, 0x1

    if-eqz v8, :cond_3

    cmp-long v0, v4, v0

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    mul-int/lit8 v1, v0, 0x14

    int-to-long v3, v1

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/Bindery;->b:[J

    aget-wide v3, v1, v2

    cmp-long v1, v3, v6

    if-nez v1, :cond_0

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v9

    :cond_2
    new-instance p0, Lnet/sf/saxon/trans/XPathException$Circularity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Circular definition of variable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException$Circularity;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    aput-wide v0, v3, v2

    return v9
.end method

.method public setGlobalVariable(Lnet/sf/saxon/expr/instruct/GlobalVariable;Lnet/sf/saxon/om/GroundedValue;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/Bindery;->a:[Lnet/sf/saxon/om/GroundedValue;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->getBinderySlotNumber()I

    move-result p1

    aput-object p2, p0, p1

    return-void
.end method

.method public setNotExecuting(Lnet/sf/saxon/expr/instruct/GlobalVariable;)V
    .locals 2

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->getBinderySlotNumber()I

    move-result p1

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/Bindery;->b:[J

    const-wide/16 v0, -0x1

    aput-wide v0, p0, p1

    return-void
.end method
