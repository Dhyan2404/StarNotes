.class public final Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrectorFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrectorFactory$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrectorFactory;",
        "",
        "()V",
        "create",
        "Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrector;",
        "args",
        "Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrectionArgs;",
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


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrectorFactory;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrectorFactory;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrectorFactory;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrectorFactory;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrectorFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrectionArgs;)Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrector;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrectionArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "args"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrectionArgs;->getTransformAction()Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrectorFactory$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p1, p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_0

    const/4 p1, 0x2

    if-eq p0, p1, :cond_0

    const/4 p1, 0x3

    if-eq p0, p1, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrector;->Companion:Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrector$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrector$Companion;->getEmptyShapeCorrector()Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrector;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/onyx/android/sdk/note/common/shape/correct/DefaultShapeCorrector;

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/correct/DefaultShapeCorrector;-><init>()V

    :goto_0
    return-object p0
.end method
