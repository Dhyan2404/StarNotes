.class public final Lcom/couchbase/lite/internal/core/C4DocumentChange;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final docID:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final external:Z

.field private final revID:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final sequence:J


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/couchbase/lite/internal/core/C4DocumentChange;->docID:Ljava/lang/String;

    iput-object p2, p0, Lcom/couchbase/lite/internal/core/C4DocumentChange;->revID:Ljava/lang/String;

    iput-wide p3, p0, Lcom/couchbase/lite/internal/core/C4DocumentChange;->sequence:J

    iput-boolean p5, p0, Lcom/couchbase/lite/internal/core/C4DocumentChange;->external:Z

    return-void
.end method

.method public static createC4DocumentChange(Ljava/lang/String;Ljava/lang/String;JZ)Lcom/couchbase/lite/internal/core/C4DocumentChange;
    .locals 7
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-eqz p0, :cond_0

    new-instance v6, Lcom/couchbase/lite/internal/core/C4DocumentChange;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/couchbase/lite/internal/core/C4DocumentChange;-><init>(Ljava/lang/String;Ljava/lang/String;JZ)V

    return-object v6

    :cond_0
    sget-object p0, Lcom/couchbase/lite/LogDomain;->DATABASE:Lcom/couchbase/lite/LogDomain;

    const-string p1, "Doc id is null in createC4DocumentChange"

    invoke-static {p0, p1}, Lcom/couchbase/lite/internal/logging/Log;->i(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getDocID()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4DocumentChange;->docID:Ljava/lang/String;

    return-object p0
.end method

.method public getRevID()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4DocumentChange;->revID:Ljava/lang/String;

    return-object p0
.end method

.method public getSequence()J
    .locals 2

    iget-wide v0, p0, Lcom/couchbase/lite/internal/core/C4DocumentChange;->sequence:J

    return-wide v0
.end method

.method public isExternal()Z
    .locals 0

    iget-boolean p0, p0, Lcom/couchbase/lite/internal/core/C4DocumentChange;->external:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "C4DocumentChange{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/couchbase/lite/internal/core/C4DocumentChange;->docID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/couchbase/lite/internal/core/C4DocumentChange;->revID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/couchbase/lite/internal/core/C4DocumentChange;->sequence:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/couchbase/lite/internal/core/C4DocumentChange;->external:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
