.class public final Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u000f\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0008\u001a\u00020\u0000H\u0014J\t\u0010\t\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\n\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\u0008\u0010\u000f\u001a\u00020\u0003H\u0016J\t\u0010\u0010\u001a\u00020\u0011H\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0004\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;",
        "",
        "texture",
        "",
        "(I)V",
        "getTexture",
        "()I",
        "setTexture",
        "clone",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "",
        "Companion",
        "sdk-replicator_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private texture:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;->Companion:Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;->texture:I

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;-><init>(I)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;IILjava/lang/Object;)Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget p1, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;->texture:I

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;->copy(I)Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public clone()Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type com.onyx.android.sdk.replicator.note.data.pen.PenAttrs"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;->clone()Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;

    move-result-object p0

    return-object p0
.end method

.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;->texture:I

    return p0
.end method

.method public final copy(I)Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;-><init>(I)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const-class v1, Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    const-string v1, "null cannot be cast to non-null type com.onyx.android.sdk.replicator.note.data.pen.PenAttrs"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;->texture:I

    iget p1, p1, Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;->texture:I

    if-ne p0, p1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    return v0
.end method

.method public final getTexture()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;->texture:I

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;->texture:I

    return p0
.end method

.method public final setTexture(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;->texture:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PenAttrs(texture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;->texture:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
