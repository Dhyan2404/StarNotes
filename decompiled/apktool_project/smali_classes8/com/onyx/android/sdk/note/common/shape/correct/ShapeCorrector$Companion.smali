.class public final Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrector$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrector$Companion;",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrector;",
        "b",
        "Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrector;",
        "getEmptyShapeCorrector",
        "()Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrector;",
        "EmptyShapeCorrector",
        "<init>",
        "()V",
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
.field public static final synthetic a:Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrector$Companion;

.field public static final b:Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrector;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrector$Companion;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrector$Companion;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrector$Companion;->a:Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrector$Companion;

    new-instance v0, Lcom/sunia/HTREnginev2/wlm;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/wlm;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrector$Companion;->b:Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrector;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrectionArgs;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrector$Companion;->b(Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrectionArgs;)V

    return-void
.end method

.method public static final b(Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrectionArgs;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getEmptyShapeCorrector()Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrector;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrector$Companion;->b:Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrector;

    return-object p0
.end method
