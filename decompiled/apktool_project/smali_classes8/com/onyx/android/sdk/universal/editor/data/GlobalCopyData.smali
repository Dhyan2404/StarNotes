.class public final Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData$Companion;,
        Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData$Type;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0018\u0000 \u00192\u00020\u0001:\u0002\u0019\u001aB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0014\u001a\u00020\u0015J\u0010\u0010\u0016\u001a\u00020\u00152\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004J\u000e\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0000R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0001X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData;",
        "",
        "()V",
        "clipData",
        "Landroid/content/ClipData;",
        "getClipData",
        "()Landroid/content/ClipData;",
        "setClipData",
        "(Landroid/content/ClipData;)V",
        "data",
        "getData",
        "()Ljava/lang/Object;",
        "setData",
        "(Ljava/lang/Object;)V",
        "type",
        "Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData$Type;",
        "getType",
        "()Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData$Type;",
        "setType",
        "(Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData$Type;)V",
        "clearClipData",
        "",
        "updateClipData",
        "updateCopyData",
        "copyData",
        "Companion",
        "Type",
        "sdk-universal_overseasRelease"
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
.field public static final Companion:Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private clipData:Landroid/content/ClipData;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private data:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private type:Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData$Type;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData;->Companion:Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData$Type;->Link:Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData$Type;

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData;->type:Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData$Type;

    return-void
.end method


# virtual methods
.method public final clearClipData()V
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData$Type;->Empty:Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData$Type;

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData;->type:Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData$Type;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData;->data:Ljava/lang/Object;

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData;->clipData:Landroid/content/ClipData;

    return-void
.end method

.method public final getClipData()Landroid/content/ClipData;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData;->clipData:Landroid/content/ClipData;

    return-object p0
.end method

.method public final getData()Ljava/lang/Object;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData;->data:Ljava/lang/Object;

    return-object p0
.end method

.method public final getType()Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData$Type;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData;->type:Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData$Type;

    return-object p0
.end method

.method public final setClipData(Landroid/content/ClipData;)V
    .locals 0
    .param p1    # Landroid/content/ClipData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData;->clipData:Landroid/content/ClipData;

    return-void
.end method

.method public final setData(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData;->data:Ljava/lang/Object;

    return-void
.end method

.method public final setType(Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData$Type;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData$Type;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData;->type:Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData$Type;

    return-void
.end method

.method public final updateClipData(Landroid/content/ClipData;)V
    .locals 1
    .param p1    # Landroid/content/ClipData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData;->data:Ljava/lang/Object;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData$Type;->Clipborad:Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData$Type;

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData;->type:Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData$Type;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData;->data:Ljava/lang/Object;

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData;->clipData:Landroid/content/ClipData;

    return-void
.end method

.method public final updateCopyData(Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "copyData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData;->data:Ljava/lang/Object;

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData;->data:Ljava/lang/Object;

    iget-object p1, p1, Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData;->type:Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData$Type;

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData;->type:Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData$Type;

    return-void
.end method
