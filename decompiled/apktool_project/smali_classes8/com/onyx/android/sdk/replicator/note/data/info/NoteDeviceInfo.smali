.class public final Lcom/onyx/android/sdk/replicator/note/data/info/NoteDeviceInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u000f\u001a\u00020\u0010H\u0007J\u0008\u0010\u0011\u001a\u00020\u0012H\u0007R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/data/info/NoteDeviceInfo;",
        "",
        "()V",
        "deviceName",
        "",
        "getDeviceName",
        "()Ljava/lang/String;",
        "setDeviceName",
        "(Ljava/lang/String;)V",
        "size",
        "Lcom/onyx/android/sdk/base/data/SizeF;",
        "getSize",
        "()Lcom/onyx/android/sdk/base/data/SizeF;",
        "setSize",
        "(Lcom/onyx/android/sdk/base/data/SizeF;)V",
        "getDeviceRect",
        "Landroid/graphics/Rect;",
        "getDeviceRectF",
        "Landroid/graphics/RectF;",
        "sdk-replicator_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private deviceName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private size:Lcom/onyx/android/sdk/base/data/SizeF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/onyx/android/sdk/base/data/SizeF;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getShorterScreenSize()F

    move-result v2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getLongerScreenSize()F

    move-result v1

    invoke-direct {v0, v2, v1}, Lcom/onyx/android/sdk/base/data/SizeF;-><init>(FF)V

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/data/info/NoteDeviceInfo;->size:Lcom/onyx/android/sdk/base/data/SizeF;

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/data/info/NoteDeviceInfo;->deviceName:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/data/info/NoteDeviceInfo;->deviceName:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public final getDeviceName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/info/NoteDeviceInfo;->deviceName:Ljava/lang/String;

    return-object p0
.end method

.method public final getDeviceRect()Landroid/graphics/Rect;
    .locals 3
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        serialize = false
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/data/info/NoteDeviceInfo;->size:Lcom/onyx/android/sdk/base/data/SizeF;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/SizeF;->getWidth()F

    move-result v1

    float-to-int v1, v1

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/info/NoteDeviceInfo;->size:Lcom/onyx/android/sdk/base/data/SizeF;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/SizeF;->getHeight()F

    move-result p0

    float-to-int p0, p0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public final getDeviceRectF()Landroid/graphics/RectF;
    .locals 3
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        serialize = false
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/data/info/NoteDeviceInfo;->size:Lcom/onyx/android/sdk/base/data/SizeF;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/SizeF;->getWidth()F

    move-result v1

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/info/NoteDeviceInfo;->size:Lcom/onyx/android/sdk/base/data/SizeF;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/SizeF;->getHeight()F

    move-result p0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public final getSize()Lcom/onyx/android/sdk/base/data/SizeF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/info/NoteDeviceInfo;->size:Lcom/onyx/android/sdk/base/data/SizeF;

    return-object p0
.end method

.method public final setDeviceName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/data/info/NoteDeviceInfo;->deviceName:Ljava/lang/String;

    return-void
.end method

.method public final setSize(Lcom/onyx/android/sdk/base/data/SizeF;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/SizeF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/data/info/NoteDeviceInfo;->size:Lcom/onyx/android/sdk/base/data/SizeF;

    return-void
.end method
