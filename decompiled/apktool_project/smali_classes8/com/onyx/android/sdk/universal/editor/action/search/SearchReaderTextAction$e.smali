.class public final Lcom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction;->n(Ljava/util/Map$Entry;)Lio/reactivex/rxjava3/core/Observable;
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
    value = "SMAP\nSearchReaderTextAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchReaderTextAction.kt\ncom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction$searchPages$1\n+ 2 Debug.kt\ncom/onyx/android/sdk/base/utils/Debug\n*L\n1#1,161:1\n98#2,4:162\n*S KotlinDebug\n*F\n+ 1 SearchReaderTextAction.kt\ncom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction$searchPages$1\n*L\n71#1:162,4\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSearchReaderTextAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchReaderTextAction.kt\ncom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction$searchPages$1\n+ 2 Debug.kt\ncom/onyx/android/sdk/base/utils/Debug\n*L\n1#1,161:1\n98#2,4:162\n*S KotlinDebug\n*F\n+ 1 SearchReaderTextAction.kt\ncom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction$searchPages$1\n*L\n71#1:162,4\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction;

.field public final synthetic f:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction;Ljava/util/Map$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction;",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction$e;->e:Lcom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction$e;->f:Ljava/util/Map$Entry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction$SearchResult;)Ljava/lang/Integer;
    .locals 5
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction$SearchResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction$SearchResult;->a()I

    move-result v0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction$e;->e:Lcom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction$e;->f:Ljava/util/Map$Entry;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/utils/Debug;->getDebug()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "search reader ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") time:"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction$SearchResult;->d()J

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/time/Duration;->toString-impl(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " ,determine batch:"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {v1, v2, p0, p1}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction$SearchResult;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction$e;->a(Lcom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction$SearchResult;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
