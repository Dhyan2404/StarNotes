.class public final Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCloudNoteBook.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CloudNoteBook.kt\ncom/onyx/android/sdk/cloudstorage/model/CloudNoteBook$Companion\n+ 2 Strings.kt\nkotlin/text/StringsKt__StringsKt\n*L\n1#1,72:1\n107#2:73\n79#2,22:74\n*S KotlinDebug\n*F\n+ 1 CloudNoteBook.kt\ncom/onyx/android/sdk/cloudstorage/model/CloudNoteBook$Companion\n*L\n69#1:73\n69#1:74,22\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004J\u001a\u0010\u0006\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008J\u000e\u0010\n\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook$Companion;",
        "",
        "()V",
        "clone",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;",
        "bean",
        "create",
        "id",
        "",
        "title",
        "trim",
        "sdk-cloudstorage_release"
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
        "SMAP\nCloudNoteBook.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CloudNoteBook.kt\ncom/onyx/android/sdk/cloudstorage/model/CloudNoteBook$Companion\n+ 2 Strings.kt\nkotlin/text/StringsKt__StringsKt\n*L\n1#1,72:1\n107#2:73\n79#2,22:74\n*S KotlinDebug\n*F\n+ 1 CloudNoteBook.kt\ncom/onyx/android/sdk/cloudstorage/model/CloudNoteBook$Companion\n*L\n69#1:73\n69#1:74,22\n*E\n"
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
    invoke-direct {p0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final clone(Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;)Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;

    invoke-direct {v0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;-><init>()V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;->getGuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;->setGuid(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;->getParent()Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;->getParent()Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook$Companion;->clone(Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;)Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;->setParent(Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;)Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;->setTitle(Ljava/lang/String;)V

    return-object v0
.end method

.method public final create(Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;

    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final trim(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "title"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "\u00a0"

    const-string v2, " "

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-gt v2, p1, :cond_5

    if-nez v3, :cond_0

    move v4, v2

    goto :goto_1

    :cond_0
    move v4, p1

    :goto_1
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v4

    if-gtz v4, :cond_1

    move v4, v0

    goto :goto_2

    :cond_1
    move v4, v1

    :goto_2
    if-nez v3, :cond_3

    if-nez v4, :cond_2

    move v3, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-nez v4, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_5
    :goto_3
    add-int/2addr p1, v0

    invoke-interface {p0, v2, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
