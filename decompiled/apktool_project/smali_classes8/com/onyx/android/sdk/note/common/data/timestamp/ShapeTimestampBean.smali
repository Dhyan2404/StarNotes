.class public final Lcom/onyx/android/sdk/note/common/data/timestamp/ShapeTimestampBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/note/common/data/timestamp/ShapeTimestampBean$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\r\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u0007\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\"\u0010\r\u001a\u00020\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\"\u0010\u0012\u001a\u00020\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u000c\u001a\u0004\u0008\u0012\u0010\u000e\"\u0004\u0008\u0013\u0010\u0010\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/data/timestamp/ShapeTimestampBean;",
        "",
        "Lcom/onyx/android/sdk/note/common/data/timestamp/TimestampBean;",
        "a",
        "Lcom/onyx/android/sdk/note/common/data/timestamp/TimestampBean;",
        "getTimestampBean",
        "()Lcom/onyx/android/sdk/note/common/data/timestamp/TimestampBean;",
        "setTimestampBean",
        "(Lcom/onyx/android/sdk/note/common/data/timestamp/TimestampBean;)V",
        "timestampBean",
        "",
        "b",
        "Z",
        "isNoFrame",
        "()Z",
        "setNoFrame",
        "(Z)V",
        "c",
        "isAutoUpdate",
        "setAutoUpdate",
        "<init>",
        "()V",
        "Companion",
        "sdk-note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/note/common/data/timestamp/ShapeTimestampBean$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public a:Lcom/onyx/android/sdk/note/common/data/timestamp/TimestampBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:Z

.field public c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/note/common/data/timestamp/ShapeTimestampBean$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/note/common/data/timestamp/ShapeTimestampBean$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/note/common/data/timestamp/ShapeTimestampBean;->Companion:Lcom/onyx/android/sdk/note/common/data/timestamp/ShapeTimestampBean$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getTimestampBean()Lcom/onyx/android/sdk/note/common/data/timestamp/TimestampBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/timestamp/ShapeTimestampBean;->a:Lcom/onyx/android/sdk/note/common/data/timestamp/TimestampBean;

    return-object p0
.end method

.method public final isAutoUpdate()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/note/common/data/timestamp/ShapeTimestampBean;->c:Z

    return p0
.end method

.method public final isNoFrame()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/note/common/data/timestamp/ShapeTimestampBean;->b:Z

    return p0
.end method

.method public final setAutoUpdate(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/note/common/data/timestamp/ShapeTimestampBean;->c:Z

    return-void
.end method

.method public final setNoFrame(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/note/common/data/timestamp/ShapeTimestampBean;->b:Z

    return-void
.end method

.method public final setTimestampBean(Lcom/onyx/android/sdk/note/common/data/timestamp/TimestampBean;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/note/common/data/timestamp/TimestampBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/timestamp/ShapeTimestampBean;->a:Lcom/onyx/android/sdk/note/common/data/timestamp/TimestampBean;

    return-void
.end method
