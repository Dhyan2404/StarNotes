.class public final Lcom/onyx/android/sdk/universal/editor/action/clone/ClonePageAction$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/clone/ClonePageAction;->s()Lio/reactivex/rxjava3/core/Observable;
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
    value = "SMAP\nClonePageAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClonePageAction.kt\ncom/onyx/android/sdk/universal/editor/action/clone/ClonePageAction$savePagesAsPdf$3\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,135:1\n3792#2:136\n4307#2,2:137\n1855#3,2:139\n*S KotlinDebug\n*F\n+ 1 ClonePageAction.kt\ncom/onyx/android/sdk/universal/editor/action/clone/ClonePageAction$savePagesAsPdf$3\n*L\n64#1:136\n64#1:137,2\n65#1:139,2\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nClonePageAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClonePageAction.kt\ncom/onyx/android/sdk/universal/editor/action/clone/ClonePageAction$savePagesAsPdf$3\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,135:1\n3792#2:136\n4307#2,2:137\n1855#3,2:139\n*S KotlinDebug\n*F\n+ 1 ClonePageAction.kt\ncom/onyx/android/sdk/universal/editor/action/clone/ClonePageAction$savePagesAsPdf$3\n*L\n64#1:136\n64#1:137,2\n65#1:139,2\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic e:Ljava/io/File;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/clone/ClonePageAction$f;->e:Ljava/io/File;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/clone/ClonePageAction$f;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/clone/ClonePageAction$f;->e:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/clone/ClonePageAction$f;->f:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->deleteFile(Ljava/io/File;)Z

    goto :goto_1

    :cond_2
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/clone/ClonePageAction$f;->a(Ljava/lang/String;)V

    return-void
.end method
