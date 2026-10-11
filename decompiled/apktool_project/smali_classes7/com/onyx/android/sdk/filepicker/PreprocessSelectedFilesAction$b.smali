.class public final Lcom/onyx/android/sdk/filepicker/PreprocessSelectedFilesAction$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


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
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPreprocessSelectedFilesAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PreprocessSelectedFilesAction.kt\ncom/onyx/android/sdk/filepicker/PreprocessSelectedFilesAction$create$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,27:1\n1855#2,2:28\n*S KotlinDebug\n*F\n+ 1 PreprocessSelectedFilesAction.kt\ncom/onyx/android/sdk/filepicker/PreprocessSelectedFilesAction$create$2\n*L\n20#1:28,2\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPreprocessSelectedFilesAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PreprocessSelectedFilesAction.kt\ncom/onyx/android/sdk/filepicker/PreprocessSelectedFilesAction$create$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,27:1\n1855#2,2:28\n*S KotlinDebug\n*F\n+ 1 PreprocessSelectedFilesAction.kt\ncom/onyx/android/sdk/filepicker/PreprocessSelectedFilesAction$create$2\n*L\n20#1:28,2\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/filepicker/PreprocessSelectedFilesAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/filepicker/PreprocessSelectedFilesAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/filepicker/PreprocessSelectedFilesAction$b;->e:Lcom/onyx/android/sdk/filepicker/PreprocessSelectedFilesAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)V
    .locals 2
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "+",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    const-string v0, "map"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/filepicker/PreprocessSelectedFilesAction$b;->e:Lcom/onyx/android/sdk/filepicker/PreprocessSelectedFilesAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/filepicker/PreprocessSelectedFilesAction;->access$getDocumentBeanList$p(Lcom/onyx/android/sdk/filepicker/PreprocessSelectedFilesAction;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/filepicker/DocumentBean;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/filepicker/DocumentBean;->getPath()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/filepicker/DocumentBean;->setFile(Ljava/io/File;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/filepicker/PreprocessSelectedFilesAction$b;->a(Ljava/util/Map;)V

    return-void
.end method
