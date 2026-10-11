.class public final Lcom/onyx/android/sdk/filepicker/PreprocessSelectedFilesAction$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/filepicker/PreprocessSelectedFilesAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
    value = "SMAP\nPreprocessSelectedFilesAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PreprocessSelectedFilesAction.kt\ncom/onyx/android/sdk/filepicker/PreprocessSelectedFilesAction$create$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,27:1\n1549#2:28\n1620#2,3:29\n*S KotlinDebug\n*F\n+ 1 PreprocessSelectedFilesAction.kt\ncom/onyx/android/sdk/filepicker/PreprocessSelectedFilesAction$create$1\n*L\n18#1:28\n18#1:29,3\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPreprocessSelectedFilesAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PreprocessSelectedFilesAction.kt\ncom/onyx/android/sdk/filepicker/PreprocessSelectedFilesAction$create$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,27:1\n1549#2:28\n1620#2,3:29\n*S KotlinDebug\n*F\n+ 1 PreprocessSelectedFilesAction.kt\ncom/onyx/android/sdk/filepicker/PreprocessSelectedFilesAction$create$1\n*L\n18#1:28\n18#1:29,3\n*E\n"
    }
.end annotation


# static fields
.field public static final e:Lcom/onyx/android/sdk/filepicker/PreprocessSelectedFilesAction$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/filepicker/PreprocessSelectedFilesAction$a<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/filepicker/PreprocessSelectedFilesAction$a;

    invoke-direct {v0}, Lcom/onyx/android/sdk/filepicker/PreprocessSelectedFilesAction$a;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/filepicker/PreprocessSelectedFilesAction$a;->e:Lcom/onyx/android/sdk/filepicker/PreprocessSelectedFilesAction$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/filepicker/DocumentBean;",
            ">;)",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Ljava/io/File;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/base/extension/Paths;->INSTANCE:Lcom/onyx/android/sdk/base/extension/Paths;

    sget-object v0, Lcom/onyx/android/sdk/data/common/path/CommonPaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/CommonPaths;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/path/CommonPaths;->importCacheDir()Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/extension/Paths;->asFile(Ljava/nio/file/Path;)Ljava/io/File;

    move-result-object p0

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/filepicker/DocumentBean;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/filepicker/DocumentBean;->getPath()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/onyx/android/sdk/base/action/CopyUriToFileAction;

    invoke-direct {p1, p0, v0}, Lcom/onyx/android/sdk/base/action/CopyUriToFileAction;-><init>(Ljava/io/File;Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/filepicker/PreprocessSelectedFilesAction$a;->a(Ljava/util/List;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
