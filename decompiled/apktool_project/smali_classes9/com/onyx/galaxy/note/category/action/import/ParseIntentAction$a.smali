.class public final Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;->o()Lio/reactivex/rxjava3/core/Observable;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nParseIntentAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ParseIntentAction.kt\ncom/onyx/galaxy/note/category/action/import/ParseIntentAction$checkCopyZipStoreSpace$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,401:1\n1855#2,2:402\n*S KotlinDebug\n*F\n+ 1 ParseIntentAction.kt\ncom/onyx/galaxy/note/category/action/import/ParseIntentAction$checkCopyZipStoreSpace$1\n*L\n138#1:402,2\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nParseIntentAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ParseIntentAction.kt\ncom/onyx/galaxy/note/category/action/import/ParseIntentAction$checkCopyZipStoreSpace$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,401:1\n1855#2,2:402\n*S KotlinDebug\n*F\n+ 1 ParseIntentAction.kt\ncom/onyx/galaxy/note/category/action/import/ParseIntentAction$checkCopyZipStoreSpace$1\n*L\n138#1:402,2\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction$a;->e:Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;)",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v0

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction$a;->e:Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;

    invoke-static {p1}, Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;->access$getUriList$p(Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;)Ljava/util/List;

    move-result-object p1

    const-wide/16 v2, 0x0

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    sget-object v5, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/onyx/android/sdk/base/extension/UriKt;->getFileSize(Landroid/net/Uri;Landroid/content/Context;)J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    int-to-long v4, p1

    mul-long/2addr v2, v4

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v0, Lcom/onyx/android/sdk/data/R$string;->space_not_enough_error:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, p1, v2}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    invoke-static {}, Lio/reactivex/rxjava3/core/Observable;->empty()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction$a;->e:Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;->access$getUriList$p(Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->ensureList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction$a;->a(Ljava/util/List;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
