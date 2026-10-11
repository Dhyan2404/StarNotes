.class public final Lcom/onyx/android/sdk/neocaj/NeoCajTocEntry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/neocaj/NeoCajTocEntry$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001a\u0010\u000c\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/onyx/android/sdk/neocaj/NeoCajTocEntry;",
        "Ljava/io/Serializable;",
        "()V",
        "level",
        "",
        "getLevel",
        "()I",
        "setLevel",
        "(I)V",
        "page",
        "getPage",
        "setPage",
        "title",
        "",
        "getTitle",
        "()Ljava/lang/String;",
        "setTitle",
        "(Ljava/lang/String;)V",
        "Companion",
        "sdk-neopdf_release"
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
.field public static final Companion:Lcom/onyx/android/sdk/neocaj/NeoCajTocEntry$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private level:I

.field private page:I

.field private title:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/neocaj/NeoCajTocEntry$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/neocaj/NeoCajTocEntry$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/neocaj/NeoCajTocEntry;->Companion:Lcom/onyx/android/sdk/neocaj/NeoCajTocEntry$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/android/sdk/neocaj/NeoCajTocEntry;->title:Ljava/lang/String;

    return-void
.end method

.method public static final addEntry(Ljava/util/List;Ljava/lang/String;II)V
    .locals 1
    .param p0    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/neocaj/NeoCajTocEntry;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/neocaj/NeoCajTocEntry;->Companion:Lcom/onyx/android/sdk/neocaj/NeoCajTocEntry$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/onyx/android/sdk/neocaj/NeoCajTocEntry$Companion;->addEntry(Ljava/util/List;Ljava/lang/String;II)V

    return-void
.end method

.method private static final buildTocTree(Lcom/onyx/android/sdk/neopdf/PdfTocEntry;Ljava/util/List;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/neopdf/PdfTocEntry;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/neocaj/NeoCajTocEntry;",
            ">;I)I"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/onyx/android/sdk/neocaj/NeoCajTocEntry;->Companion:Lcom/onyx/android/sdk/neocaj/NeoCajTocEntry$Companion;

    invoke-static {v0, p0, p1, p2}, Lcom/onyx/android/sdk/neocaj/NeoCajTocEntry$Companion;->access$buildTocTree(Lcom/onyx/android/sdk/neocaj/NeoCajTocEntry$Companion;Lcom/onyx/android/sdk/neopdf/PdfTocEntry;Ljava/util/List;I)I

    move-result p0

    return p0
.end method

.method public static final buildTocTree(Lcom/onyx/android/sdk/neopdf/PdfTocEntry;Ljava/util/List;)V
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/neopdf/PdfTocEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/neopdf/PdfTocEntry;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/neocaj/NeoCajTocEntry;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 2
    sget-object v0, Lcom/onyx/android/sdk/neocaj/NeoCajTocEntry;->Companion:Lcom/onyx/android/sdk/neocaj/NeoCajTocEntry$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/neocaj/NeoCajTocEntry$Companion;->buildTocTree(Lcom/onyx/android/sdk/neopdf/PdfTocEntry;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final getLevel()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/neocaj/NeoCajTocEntry;->level:I

    return p0
.end method

.method public final getPage()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/neocaj/NeoCajTocEntry;->page:I

    return p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/neocaj/NeoCajTocEntry;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final setLevel(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/neocaj/NeoCajTocEntry;->level:I

    return-void
.end method

.method public final setPage(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/neocaj/NeoCajTocEntry;->page:I

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/neocaj/NeoCajTocEntry;->title:Ljava/lang/String;

    return-void
.end method
