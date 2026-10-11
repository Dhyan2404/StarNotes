.class public final Lcom/onyx/android/sdk/filepicker/QueryInfoFromUriAction$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/filepicker/QueryInfoFromUriAction;->create()Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/filepicker/QueryInfoFromUriAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/filepicker/QueryInfoFromUriAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/filepicker/QueryInfoFromUriAction$a;->e:Lcom/onyx/android/sdk/filepicker/QueryInfoFromUriAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/Pair;)Lcom/onyx/android/sdk/filepicker/DocumentBean;
    .locals 13
    .param p1    # Lkotlin/Pair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "+",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/onyx/android/sdk/filepicker/DocumentBean;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/net/Uri;

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v12, Lcom/onyx/android/sdk/filepicker/DocumentBean;

    invoke-virtual {p1}, Lkotlin/Pair;->hashCode()I

    move-result p1

    int-to-long v2, p1

    const/4 v4, 0x0

    if-nez v0, :cond_0

    const-string p1, ""

    move-object v6, p1

    goto :goto_0

    :cond_0
    move-object v6, v0

    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x72

    const/4 v11, 0x0

    move-object v1, v12

    invoke-direct/range {v1 .. v11}, Lcom/onyx/android/sdk/filepicker/DocumentBean;-><init>(JLjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/filepicker/DocumentType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/filepicker/QueryInfoFromUriAction$a;->e:Lcom/onyx/android/sdk/filepicker/QueryInfoFromUriAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/filepicker/QueryInfoFromUriAction;->getResult()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v12
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/filepicker/QueryInfoFromUriAction$a;->a(Lkotlin/Pair;)Lcom/onyx/android/sdk/filepicker/DocumentBean;

    move-result-object p0

    return-object p0
.end method
