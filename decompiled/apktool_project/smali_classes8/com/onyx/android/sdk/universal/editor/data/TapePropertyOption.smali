.class public final Lcom/onyx/android/sdk/universal/editor/data/TapePropertyOption;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/universal/editor/data/TapePropertyOption$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u0000 \u00072\u00020\u0001:\u0001\u0007B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/data/TapePropertyOption;",
        "",
        "()V",
        "getTapeType",
        "",
        "isShowAllTape",
        "",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/universal/editor/data/TapePropertyOption$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TAPE_LINE_NAME:Ljava/lang/String; = "straight_line_tape_pen"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TAPE_RECTANGLE_NAME:Ljava/lang/String; = "rectangle_tape_pen"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TAPE_TYPE_FREE:I = 0x2

.field public static final TAPE_TYPE_LINE:I = 0x0

.field public static final TAPE_TYPE_RECTANGLE:I = 0x1


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/data/TapePropertyOption$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/data/TapePropertyOption$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/data/TapePropertyOption;->Companion:Lcom/onyx/android/sdk/universal/editor/data/TapePropertyOption$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getTapeType()I
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/data/TapePropertyOption;->Companion:Lcom/onyx/android/sdk/universal/editor/data/TapePropertyOption$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/TapePropertyOption$Companion;->getTapeTypeOption()Lcom/onyx/android/sdk/data/utils/IntOption;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/IntOption;->get()I

    move-result p0

    return p0
.end method

.method public final isShowAllTape()Z
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->Companion:Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape$Companion;->isAllTapeClose()Z

    move-result p0

    return p0
.end method
