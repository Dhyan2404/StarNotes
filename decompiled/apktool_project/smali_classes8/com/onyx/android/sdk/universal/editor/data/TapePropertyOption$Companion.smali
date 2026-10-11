.class public final Lcom/onyx/android/sdk/universal/editor/data/TapePropertyOption$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/universal/editor/data/TapePropertyOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0007J\u0006\u0010\u000c\u001a\u00020\rJ\u000e\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/data/TapePropertyOption$Companion;",
        "",
        "()V",
        "TAPE_LINE_NAME",
        "",
        "TAPE_RECTANGLE_NAME",
        "TAPE_TYPE_FREE",
        "",
        "TAPE_TYPE_LINE",
        "TAPE_TYPE_RECTANGLE",
        "getTapeNameByType",
        "type",
        "getTapeTypeOption",
        "Lcom/onyx/android/sdk/data/utils/IntOption;",
        "toSubShapeType",
        "sdk-universal_overseasRelease"
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
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/data/TapePropertyOption$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getTapeNameByType(I)Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "straight_line_tape_pen"

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "rectangle_tape_pen"

    :cond_1
    :goto_0
    return-object p0
.end method

.method public final getTapeTypeOption()Lcom/onyx/android/sdk/data/utils/IntOption;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/data/utils/IntOption;

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getMMKV()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "ONYX_NOTE_EDIT_TAPE_TYPE"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/onyx/android/sdk/data/utils/IntOption;-><init>(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;I)V

    return-object p0
.end method

.method public final toSubShapeType(I)I
    .locals 0

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/16 p0, 0x24

    goto :goto_0

    :cond_0
    const/4 p0, 0x7

    :cond_1
    :goto_0
    return p0
.end method
