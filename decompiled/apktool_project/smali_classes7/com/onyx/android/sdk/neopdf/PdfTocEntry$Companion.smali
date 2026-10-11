.class public final Lcom/onyx/android/sdk/neopdf/PdfTocEntry$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/neopdf/PdfTocEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPdfTocEntry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PdfTocEntry.kt\ncom/onyx/android/sdk/neopdf/PdfTocEntry$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,57:1\n1855#2,2:58\n*S KotlinDebug\n*F\n+ 1 PdfTocEntry.kt\ncom/onyx/android/sdk/neopdf/PdfTocEntry$Companion\n*L\n51#1:58,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J*\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000c\u001a\u00020\u0004H\u0007J \u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0013H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/onyx/android/sdk/neopdf/PdfTocEntry$Companion;",
        "",
        "()V",
        "INVALID_PAGE",
        "",
        "addChild",
        "Lcom/onyx/android/sdk/neopdf/PdfTocEntry;",
        "parent",
        "entryPtr",
        "",
        "title",
        "",
        "page",
        "updateTocEntryDestPage",
        "",
        "pdf",
        "Lcom/onyx/android/sdk/neopdf/NeoPdf;",
        "entry",
        "recursive",
        "",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPdfTocEntry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PdfTocEntry.kt\ncom/onyx/android/sdk/neopdf/PdfTocEntry$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,57:1\n1855#2,2:58\n*S KotlinDebug\n*F\n+ 1 PdfTocEntry.kt\ncom/onyx/android/sdk/neopdf/PdfTocEntry$Companion\n*L\n51#1:58,2\n*E\n"
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
    invoke-direct {p0}, Lcom/onyx/android/sdk/neopdf/PdfTocEntry$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final addChild(Lcom/onyx/android/sdk/neopdf/PdfTocEntry;JLjava/lang/String;I)Lcom/onyx/android/sdk/neopdf/PdfTocEntry;
    .locals 8
    .param p1    # Lcom/onyx/android/sdk/neopdf/PdfTocEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "parent"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/neopdf/PdfTocEntry;

    invoke-static {p4}, Lcom/onyx/android/sdk/base/extension/StringKt;->safelyGetStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p2

    move v4, p5

    invoke-direct/range {v0 .. v7}, Lcom/onyx/android/sdk/neopdf/PdfTocEntry;-><init>(JLjava/lang/String;ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/neopdf/PdfTocEntry;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final updateTocEntryDestPage(Lcom/onyx/android/sdk/neopdf/NeoPdf;Lcom/onyx/android/sdk/neopdf/PdfTocEntry;Z)V
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/neopdf/NeoPdf;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/neopdf/PdfTocEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p0, "pdf"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "entry"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/neopdf/PdfTocEntry;->getPage()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/neopdf/PdfTocEntry;->getEntryPtr()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->getTocEntryDestPage(Lcom/onyx/android/sdk/neopdf/PdfTocEntry;)I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/onyx/android/sdk/neopdf/PdfTocEntry;->setPage(I)V

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/neopdf/PdfTocEntry;->getChildren()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNonBlank(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/neopdf/PdfTocEntry;->getChildren()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onyx/android/sdk/neopdf/PdfTocEntry;

    sget-object p3, Lcom/onyx/android/sdk/neopdf/PdfTocEntry;->Companion:Lcom/onyx/android/sdk/neopdf/PdfTocEntry$Companion;

    const/4 v0, 0x1

    invoke-virtual {p3, p1, p2, v0}, Lcom/onyx/android/sdk/neopdf/PdfTocEntry$Companion;->updateTocEntryDestPage(Lcom/onyx/android/sdk/neopdf/NeoPdf;Lcom/onyx/android/sdk/neopdf/PdfTocEntry;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method
