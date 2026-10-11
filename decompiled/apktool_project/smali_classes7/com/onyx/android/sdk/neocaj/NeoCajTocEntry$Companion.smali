.class public final Lcom/onyx/android/sdk/neocaj/NeoCajTocEntry$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/neocaj/NeoCajTocEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0007\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J0\u0010\u000b\u001a\u00020\n2\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0007J\u001e\u0010\u000f\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000c2\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000eH\u0007J&\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u000c2\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000e2\u0006\u0010\u0011\u001a\u00020\u0007H\u0003\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/onyx/android/sdk/neocaj/NeoCajTocEntry$Companion;",
        "",
        "",
        "Lcom/onyx/android/sdk/neocaj/NeoCajTocEntry;",
        "entries",
        "",
        "title",
        "",
        "page",
        "level",
        "",
        "addEntry",
        "Lcom/onyx/android/sdk/neopdf/PdfTocEntry;",
        "root",
        "",
        "buildTocTree",
        "parent",
        "currentIndex",
        "a",
        "<init>",
        "()V",
        "sdk-neopdf_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/neocaj/NeoCajTocEntry$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$buildTocTree(Lcom/onyx/android/sdk/neocaj/NeoCajTocEntry$Companion;Lcom/onyx/android/sdk/neopdf/PdfTocEntry;Ljava/util/List;I)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/neocaj/NeoCajTocEntry$Companion;->a(Lcom/onyx/android/sdk/neopdf/PdfTocEntry;Ljava/util/List;I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/neopdf/PdfTocEntry;Ljava/util/List;I)I
    .locals 10
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

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/neocaj/NeoCajTocEntry;

    new-instance v9, Lcom/onyx/android/sdk/neopdf/PdfTocEntry;

    const-wide/16 v2, 0x0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neocaj/NeoCajTocEntry;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neocaj/NeoCajTocEntry;->getPage()I

    move-result v5

    const/4 v6, 0x0

    const/16 v7, 0x9

    const/4 v8, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/onyx/android/sdk/neopdf/PdfTocEntry;-><init>(JLjava/lang/String;ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/neopdf/PdfTocEntry;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p3, v1, :cond_2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/neocaj/NeoCajTocEntry;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/neocaj/NeoCajTocEntry;->getLevel()I

    move-result v2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neocaj/NeoCajTocEntry;->getLevel()I

    move-result v3

    if-ge v2, v3, :cond_0

    return p3

    :cond_0
    invoke-virtual {v1}, Lcom/onyx/android/sdk/neocaj/NeoCajTocEntry;->getLevel()I

    move-result v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neocaj/NeoCajTocEntry;->getLevel()I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/neocaj/NeoCajTocEntry$Companion;->a(Lcom/onyx/android/sdk/neopdf/PdfTocEntry;Ljava/util/List;I)I

    move-result p3

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v9, p2, p3}, Lcom/onyx/android/sdk/neocaj/NeoCajTocEntry$Companion;->a(Lcom/onyx/android/sdk/neopdf/PdfTocEntry;Ljava/util/List;I)I

    move-result p3

    goto :goto_0

    :cond_2
    return p3
.end method

.method public final addEntry(Ljava/util/List;Ljava/lang/String;II)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
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

    const-string p0, "entries"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/neocaj/NeoCajTocEntry;

    invoke-direct {p0}, Lcom/onyx/android/sdk/neocaj/NeoCajTocEntry;-><init>()V

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/StringKt;->safelyGetStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/neocaj/NeoCajTocEntry;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/onyx/android/sdk/neocaj/NeoCajTocEntry;->setPage(I)V

    invoke-virtual {p0, p4}, Lcom/onyx/android/sdk/neocaj/NeoCajTocEntry;->setLevel(I)V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final buildTocTree(Lcom/onyx/android/sdk/neopdf/PdfTocEntry;Ljava/util/List;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/neopdf/PdfTocEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
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

    const-string v0, "root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entries"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, p1, p2, v0}, Lcom/onyx/android/sdk/neocaj/NeoCajTocEntry$Companion;->a(Lcom/onyx/android/sdk/neopdf/PdfTocEntry;Ljava/util/List;I)I

    move-result v0

    goto :goto_0

    :cond_0
    return-void
.end method
