.class final Lcom/onyx/android/sdk/data/utils/ObjectLruCache$writeObservable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/data/utils/ObjectLruCache;->writeObservable(Ljava/lang/Object;Ljava/io/File;)Lio/reactivex/rxjava3/core/Observable;
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

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003\"\u0008\u0008\u0001\u0010\u0004*\u00020\u00032\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00040\u0006H\n\u00a2\u0006\u0004\u0008\u0007\u0010\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "MODEL",
        "",
        "RESOURCE",
        "it",
        "Lcom/onyx/android/sdk/data/utils/ObjectLruCache;",
        "apply",
        "(Lcom/onyx/android/sdk/data/utils/ObjectLruCache;)Ljava/lang/Boolean;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $file:Ljava/io/File;

.field final synthetic $resource:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TRESOURCE;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/onyx/android/sdk/data/utils/ObjectLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/data/utils/ObjectLruCache<",
            "TMODE",
            "L;",
            "TRESOURCE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/data/utils/ObjectLruCache;Ljava/lang/Object;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/utils/ObjectLruCache<",
            "TMODE",
            "L;",
            "TRESOURCE;>;TRESOURCE;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/data/utils/ObjectLruCache$writeObservable$1;->this$0:Lcom/onyx/android/sdk/data/utils/ObjectLruCache;

    iput-object p2, p0, Lcom/onyx/android/sdk/data/utils/ObjectLruCache$writeObservable$1;->$resource:Ljava/lang/Object;

    iput-object p3, p0, Lcom/onyx/android/sdk/data/utils/ObjectLruCache$writeObservable$1;->$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/onyx/android/sdk/data/utils/ObjectLruCache;)Ljava/lang/Boolean;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/utils/ObjectLruCache;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/utils/ObjectLruCache<",
            "TMODE",
            "L;",
            "TRESOURCE;>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/onyx/android/sdk/data/utils/ObjectLruCache$writeObservable$1;->this$0:Lcom/onyx/android/sdk/data/utils/ObjectLruCache;

    iget-object v0, p0, Lcom/onyx/android/sdk/data/utils/ObjectLruCache$writeObservable$1;->$resource:Ljava/lang/Object;

    iget-object p0, p0, Lcom/onyx/android/sdk/data/utils/ObjectLruCache$writeObservable$1;->$file:Ljava/io/File;

    invoke-virtual {p1, v0, p0}, Lcom/onyx/android/sdk/data/utils/ObjectLruCache;->write(Ljava/lang/Object;Ljava/io/File;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lcom/onyx/android/sdk/data/utils/ObjectLruCache;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/utils/ObjectLruCache$writeObservable$1;->apply(Lcom/onyx/android/sdk/data/utils/ObjectLruCache;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
