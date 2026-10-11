.class public final Lcom/onyx/android/sdk/universal/editor/events/app/PageCopiedEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0010\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0008\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\u0006\u0010\n\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\t\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003J\t\u0010\u0005\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u0007\u001a\u00020\u0006H\u00c6\u0003J\'\u0010\u000b\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00022\u0008\u0008\u0002\u0010\t\u001a\u00020\u00042\u0008\u0008\u0002\u0010\n\u001a\u00020\u0006H\u00c6\u0001J\t\u0010\r\u001a\u00020\u000cH\u00d6\u0001J\t\u0010\u000e\u001a\u00020\u0002H\u00d6\u0001J\u0013\u0010\u0011\u001a\u00020\u00102\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003R\u0017\u0010\u0008\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015R\u0017\u0010\t\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019R\u0017\u0010\n\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001d\u00a8\u0006 "
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/events/app/PageCopiedEvent;",
        "",
        "",
        "component1",
        "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
        "component2",
        "Lcom/onyx/android/sdk/note/common/document/page/NotePage;",
        "component3",
        "pageIndex",
        "virtualPage",
        "notePage",
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
        "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
        "getVirtualPage",
        "()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
        "c",
        "Lcom/onyx/android/sdk/note/common/document/page/NotePage;",
        "getNotePage",
        "()Lcom/onyx/android/sdk/note/common/document/page/NotePage;",
        "<init>",
        "(ILcom/onyx/android/sdk/universal/editor/doc/VirtualPage;Lcom/onyx/android/sdk/note/common/document/page/NotePage;)V",
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

.field public final b:Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lcom/onyx/android/sdk/note/common/document/page/NotePage;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/onyx/android/sdk/universal/editor/doc/VirtualPage;Lcom/onyx/android/sdk/note/common/document/page/NotePage;)V
    .locals 1
    .param p2    # Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/note/common/document/page/NotePage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "virtualPage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notePage"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/PageCopiedEvent;->a:I

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/events/app/PageCopiedEvent;->b:Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/events/app/PageCopiedEvent;->c:Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    return-void
.end method

.method public static synthetic copy$default(Lcom/onyx/android/sdk/universal/editor/events/app/PageCopiedEvent;ILcom/onyx/android/sdk/universal/editor/doc/VirtualPage;Lcom/onyx/android/sdk/note/common/document/page/NotePage;ILjava/lang/Object;)Lcom/onyx/android/sdk/universal/editor/events/app/PageCopiedEvent;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/PageCopiedEvent;->a:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/onyx/android/sdk/universal/editor/events/app/PageCopiedEvent;->b:Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/onyx/android/sdk/universal/editor/events/app/PageCopiedEvent;->c:Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/universal/editor/events/app/PageCopiedEvent;->copy(ILcom/onyx/android/sdk/universal/editor/doc/VirtualPage;Lcom/onyx/android/sdk/note/common/document/page/NotePage;)Lcom/onyx/android/sdk/universal/editor/events/app/PageCopiedEvent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/PageCopiedEvent;->a:I

    return p0
.end method

.method public final component2()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/PageCopiedEvent;->b:Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    return-object p0
.end method

.method public final component3()Lcom/onyx/android/sdk/note/common/document/page/NotePage;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/PageCopiedEvent;->c:Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    return-object p0
.end method

.method public final copy(ILcom/onyx/android/sdk/universal/editor/doc/VirtualPage;Lcom/onyx/android/sdk/note/common/document/page/NotePage;)Lcom/onyx/android/sdk/universal/editor/events/app/PageCopiedEvent;
    .locals 0
    .param p2    # Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/note/common/document/page/NotePage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "virtualPage"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "notePage"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/events/app/PageCopiedEvent;

    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/android/sdk/universal/editor/events/app/PageCopiedEvent;-><init>(ILcom/onyx/android/sdk/universal/editor/doc/VirtualPage;Lcom/onyx/android/sdk/note/common/document/page/NotePage;)V

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
    instance-of v1, p1, Lcom/onyx/android/sdk/universal/editor/events/app/PageCopiedEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/onyx/android/sdk/universal/editor/events/app/PageCopiedEvent;

    iget v1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/PageCopiedEvent;->a:I

    iget v3, p1, Lcom/onyx/android/sdk/universal/editor/events/app/PageCopiedEvent;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/PageCopiedEvent;->b:Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    iget-object v3, p1, Lcom/onyx/android/sdk/universal/editor/events/app/PageCopiedEvent;->b:Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/PageCopiedEvent;->c:Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    iget-object p1, p1, Lcom/onyx/android/sdk/universal/editor/events/app/PageCopiedEvent;->c:Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getNotePage()Lcom/onyx/android/sdk/note/common/document/page/NotePage;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/PageCopiedEvent;->c:Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    return-object p0
.end method

.method public final getPageIndex()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/PageCopiedEvent;->a:I

    return p0
.end method

.method public final getVirtualPage()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/PageCopiedEvent;->b:Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/PageCopiedEvent;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/PageCopiedEvent;->b:Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/PageCopiedEvent;->c:Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

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

    const-string v1, "PageCopiedEvent(pageIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/PageCopiedEvent;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", virtualPage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/PageCopiedEvent;->b:Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", notePage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/PageCopiedEvent;->c:Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
