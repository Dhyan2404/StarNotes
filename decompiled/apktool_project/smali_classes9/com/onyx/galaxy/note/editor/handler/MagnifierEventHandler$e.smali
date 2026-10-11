.class public final Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->u(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lio/reactivex/rxjava3/core/Observable;
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


# static fields
.field public static final e:Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$e<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$e;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$e;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$e;->e:Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/request/page/FindVisibleBoxInfoByNotePageIdRequest;)Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/universal/editor/request/page/FindVisibleBoxInfoByNotePageIdRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/request/page/FindVisibleBoxInfoByNotePageIdRequest;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-direct {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;-><init>()V

    :cond_0
    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/request/page/FindVisibleBoxInfoByNotePageIdRequest;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$e;->a(Lcom/onyx/android/sdk/universal/editor/request/page/FindVisibleBoxInfoByNotePageIdRequest;)Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    return-object p0
.end method
