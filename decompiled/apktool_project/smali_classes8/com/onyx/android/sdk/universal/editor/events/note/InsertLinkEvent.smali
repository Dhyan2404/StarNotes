.class public final Lcom/onyx/android/sdk/universal/editor/events/note/InsertLinkEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/events/note/InsertLinkEvent;",
        "",
        "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;",
        "a",
        "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;",
        "getLinkBean",
        "()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;",
        "linkBean",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "b",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "getStartPoint",
        "()Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "startPoint",
        "<init>",
        "(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;Lcom/onyx/android/sdk/base/data/TouchPoint;)V",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final a:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/onyx/android/sdk/base/data/TouchPoint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "linkBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "startPoint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/events/note/InsertLinkEvent;->a:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/events/note/InsertLinkEvent;->b:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-void
.end method


# virtual methods
.method public final getLinkBean()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/events/note/InsertLinkEvent;->a:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    return-object p0
.end method

.method public final getStartPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/events/note/InsertLinkEvent;->b:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-object p0
.end method
