.class public final Lcom/onyx/android/sdk/universal/editor/events/app/OtherNotePageInsertedEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u000c\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\t\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003J\t\u0010\u0005\u001a\u00020\u0004H\u00c6\u0003J\u001d\u0010\u0008\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0004H\u00c6\u0001J\t\u0010\n\u001a\u00020\tH\u00d6\u0001J\t\u0010\u000b\u001a\u00020\u0002H\u00d6\u0001J\u0013\u0010\u000e\u001a\u00020\r2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003R\u0017\u0010\u0006\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012R\u0017\u0010\u0007\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/events/app/OtherNotePageInsertedEvent;",
        "",
        "",
        "component1",
        "Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;",
        "component2",
        "pageIndex",
        "targetPageInfo",
        "copy",
        "",
        "toString",
        "hashCode",
        "other",
        "",
        "equals",
        "a",
        "I",
        "getPageIndex",
        "()I",
        "b",
        "Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;",
        "getTargetPageInfo",
        "()Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;",
        "<init>",
        "(ILcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)V",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)V
    .locals 1
    .param p2    # Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "targetPageInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/OtherNotePageInsertedEvent;->a:I

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/events/app/OtherNotePageInsertedEvent;->b:Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    return-void
.end method

.method public static synthetic copy$default(Lcom/onyx/android/sdk/universal/editor/events/app/OtherNotePageInsertedEvent;ILcom/onyx/android/sdk/replicator/note/data/page/PageInfo;ILjava/lang/Object;)Lcom/onyx/android/sdk/universal/editor/events/app/OtherNotePageInsertedEvent;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/OtherNotePageInsertedEvent;->a:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/onyx/android/sdk/universal/editor/events/app/OtherNotePageInsertedEvent;->b:Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/events/app/OtherNotePageInsertedEvent;->copy(ILcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)Lcom/onyx/android/sdk/universal/editor/events/app/OtherNotePageInsertedEvent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/OtherNotePageInsertedEvent;->a:I

    return p0
.end method

.method public final component2()Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/OtherNotePageInsertedEvent;->b:Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    return-object p0
.end method

.method public final copy(ILcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)Lcom/onyx/android/sdk/universal/editor/events/app/OtherNotePageInsertedEvent;
    .locals 0
    .param p2    # Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "targetPageInfo"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/events/app/OtherNotePageInsertedEvent;

    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/events/app/OtherNotePageInsertedEvent;-><init>(ILcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/onyx/android/sdk/universal/editor/events/app/OtherNotePageInsertedEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/onyx/android/sdk/universal/editor/events/app/OtherNotePageInsertedEvent;

    iget v1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/OtherNotePageInsertedEvent;->a:I

    iget v3, p1, Lcom/onyx/android/sdk/universal/editor/events/app/OtherNotePageInsertedEvent;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/OtherNotePageInsertedEvent;->b:Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    iget-object p1, p1, Lcom/onyx/android/sdk/universal/editor/events/app/OtherNotePageInsertedEvent;->b:Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getPageIndex()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/OtherNotePageInsertedEvent;->a:I

    return p0
.end method

.method public final getTargetPageInfo()Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/OtherNotePageInsertedEvent;->b:Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/OtherNotePageInsertedEvent;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/OtherNotePageInsertedEvent;->b:Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OtherNotePageInsertedEvent(pageIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/OtherNotePageInsertedEvent;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", targetPageInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/OtherNotePageInsertedEvent;->b:Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
