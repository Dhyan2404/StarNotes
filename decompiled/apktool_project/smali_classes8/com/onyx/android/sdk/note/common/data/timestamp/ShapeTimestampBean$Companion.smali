.class public final Lcom/onyx/android/sdk/note/common/data/timestamp/ShapeTimestampBean$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/note/common/data/timestamp/ShapeTimestampBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0008\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/data/timestamp/ShapeTimestampBean$Companion;",
        "",
        "()V",
        "create",
        "Lcom/onyx/android/sdk/note/common/data/timestamp/ShapeTimestampBean;",
        "bean",
        "Lcom/onyx/android/sdk/note/common/data/timestamp/TimestampBean;",
        "isNoFrame",
        "",
        "isAutoUpdate",
        "sdk-note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
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
    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/data/timestamp/ShapeTimestampBean$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lcom/onyx/android/sdk/note/common/data/timestamp/TimestampBean;ZZ)Lcom/onyx/android/sdk/note/common/data/timestamp/ShapeTimestampBean;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/note/common/data/timestamp/TimestampBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/note/common/data/timestamp/ShapeTimestampBean;

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/data/timestamp/ShapeTimestampBean;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/data/timestamp/ShapeTimestampBean;->setTimestampBean(Lcom/onyx/android/sdk/note/common/data/timestamp/TimestampBean;)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/note/common/data/timestamp/ShapeTimestampBean;->setNoFrame(Z)V

    invoke-virtual {p0, p3}, Lcom/onyx/android/sdk/note/common/data/timestamp/ShapeTimestampBean;->setAutoUpdate(Z)V

    return-object p0
.end method
