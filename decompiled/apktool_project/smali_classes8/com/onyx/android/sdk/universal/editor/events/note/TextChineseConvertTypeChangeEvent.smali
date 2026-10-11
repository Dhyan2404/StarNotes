.class public final Lcom/onyx/android/sdk/universal/editor/events/note/TextChineseConvertTypeChangeEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\r\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\t\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003J\t\u0010\u0005\u001a\u00020\u0004H\u00c6\u0003J\u001d\u0010\u0008\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0004H\u00c6\u0001J\t\u0010\n\u001a\u00020\tH\u00d6\u0001J\t\u0010\u000c\u001a\u00020\u000bH\u00d6\u0001J\u0013\u0010\u000e\u001a\u00020\u00022\u0008\u0010\r\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003R\u0017\u0010\u0006\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0006\u0010\u0011R\u0017\u0010\u0007\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/events/note/TextChineseConvertTypeChangeEvent;",
        "",
        "",
        "component1",
        "Lcom/onyx/android/sdk/replicator/note/data/shape/NoteChineseConvertType;",
        "component2",
        "isEnable",
        "convertType",
        "copy",
        "",
        "toString",
        "",
        "hashCode",
        "other",
        "equals",
        "a",
        "Z",
        "()Z",
        "b",
        "Lcom/onyx/android/sdk/replicator/note/data/shape/NoteChineseConvertType;",
        "getConvertType",
        "()Lcom/onyx/android/sdk/replicator/note/data/shape/NoteChineseConvertType;",
        "<init>",
        "(ZLcom/onyx/android/sdk/replicator/note/data/shape/NoteChineseConvertType;)V",
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
.field public final a:Z

.field public final b:Lcom/onyx/android/sdk/replicator/note/data/shape/NoteChineseConvertType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLcom/onyx/android/sdk/replicator/note/data/shape/NoteChineseConvertType;)V
    .locals 1
    .param p2    # Lcom/onyx/android/sdk/replicator/note/data/shape/NoteChineseConvertType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "convertType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/events/note/TextChineseConvertTypeChangeEvent;->a:Z

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/events/note/TextChineseConvertTypeChangeEvent;->b:Lcom/onyx/android/sdk/replicator/note/data/shape/NoteChineseConvertType;

    return-void
.end method

.method public static synthetic copy$default(Lcom/onyx/android/sdk/universal/editor/events/note/TextChineseConvertTypeChangeEvent;ZLcom/onyx/android/sdk/replicator/note/data/shape/NoteChineseConvertType;ILjava/lang/Object;)Lcom/onyx/android/sdk/universal/editor/events/note/TextChineseConvertTypeChangeEvent;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/events/note/TextChineseConvertTypeChangeEvent;->a:Z

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/onyx/android/sdk/universal/editor/events/note/TextChineseConvertTypeChangeEvent;->b:Lcom/onyx/android/sdk/replicator/note/data/shape/NoteChineseConvertType;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/events/note/TextChineseConvertTypeChangeEvent;->copy(ZLcom/onyx/android/sdk/replicator/note/data/shape/NoteChineseConvertType;)Lcom/onyx/android/sdk/universal/editor/events/note/TextChineseConvertTypeChangeEvent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/events/note/TextChineseConvertTypeChangeEvent;->a:Z

    return p0
.end method

.method public final component2()Lcom/onyx/android/sdk/replicator/note/data/shape/NoteChineseConvertType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/events/note/TextChineseConvertTypeChangeEvent;->b:Lcom/onyx/android/sdk/replicator/note/data/shape/NoteChineseConvertType;

    return-object p0
.end method

.method public final copy(ZLcom/onyx/android/sdk/replicator/note/data/shape/NoteChineseConvertType;)Lcom/onyx/android/sdk/universal/editor/events/note/TextChineseConvertTypeChangeEvent;
    .locals 0
    .param p2    # Lcom/onyx/android/sdk/replicator/note/data/shape/NoteChineseConvertType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "convertType"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/events/note/TextChineseConvertTypeChangeEvent;

    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/events/note/TextChineseConvertTypeChangeEvent;-><init>(ZLcom/onyx/android/sdk/replicator/note/data/shape/NoteChineseConvertType;)V

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
    instance-of v1, p1, Lcom/onyx/android/sdk/universal/editor/events/note/TextChineseConvertTypeChangeEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/onyx/android/sdk/universal/editor/events/note/TextChineseConvertTypeChangeEvent;

    iget-boolean v1, p0, Lcom/onyx/android/sdk/universal/editor/events/note/TextChineseConvertTypeChangeEvent;->a:Z

    iget-boolean v3, p1, Lcom/onyx/android/sdk/universal/editor/events/note/TextChineseConvertTypeChangeEvent;->a:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/events/note/TextChineseConvertTypeChangeEvent;->b:Lcom/onyx/android/sdk/replicator/note/data/shape/NoteChineseConvertType;

    iget-object p1, p1, Lcom/onyx/android/sdk/universal/editor/events/note/TextChineseConvertTypeChangeEvent;->b:Lcom/onyx/android/sdk/replicator/note/data/shape/NoteChineseConvertType;

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getConvertType()Lcom/onyx/android/sdk/replicator/note/data/shape/NoteChineseConvertType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/events/note/TextChineseConvertTypeChangeEvent;->b:Lcom/onyx/android/sdk/replicator/note/data/shape/NoteChineseConvertType;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/events/note/TextChineseConvertTypeChangeEvent;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/events/note/TextChineseConvertTypeChangeEvent;->b:Lcom/onyx/android/sdk/replicator/note/data/shape/NoteChineseConvertType;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final isEnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/events/note/TextChineseConvertTypeChangeEvent;->a:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TextChineseConvertTypeChangeEvent(isEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onyx/android/sdk/universal/editor/events/note/TextChineseConvertTypeChangeEvent;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", convertType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/events/note/TextChineseConvertTypeChangeEvent;->b:Lcom/onyx/android/sdk/replicator/note/data/shape/NoteChineseConvertType;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
