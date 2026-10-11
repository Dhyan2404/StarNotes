.class public final Lcom/onyx/android/sdk/hwr/data/constant/HwrRecognizerConstant;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/data/constant/HwrRecognizerConstant;",
        "",
        "()V",
        "RECOGNIZER_ML",
        "",
        "RECOGNIZER_ML_MIXED",
        "RECOGNIZER_MS_CONTEXT_LESS",
        "RECOGNIZER_MS_OFF_SCREEN",
        "RECOGNIZER_MS_ON_SCREEN",
        "RECOGNIZER_SUNIA",
        "RECOGNIZER_SUNIA_NAI_NBI",
        "RECOGNIZER_UNKNOWN",
        "sdk-hwr_release"
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
.field public static final INSTANCE:Lcom/onyx/android/sdk/hwr/data/constant/HwrRecognizerConstant;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final RECOGNIZER_ML:Ljava/lang/String; = "ML"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final RECOGNIZER_ML_MIXED:Ljava/lang/String; = "ML_MIXED"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final RECOGNIZER_MS_CONTEXT_LESS:Ljava/lang/String; = "MS_CONTEXT_LESS"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final RECOGNIZER_MS_OFF_SCREEN:Ljava/lang/String; = "MS_OFF_SCREEN"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final RECOGNIZER_MS_ON_SCREEN:Ljava/lang/String; = "MS_ON_SCREEN"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final RECOGNIZER_SUNIA:Ljava/lang/String; = "SUNIA"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final RECOGNIZER_SUNIA_NAI_NBI:Ljava/lang/String; = "SUNIA_NAI_NBI"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final RECOGNIZER_UNKNOWN:Ljava/lang/String; = "UNKNOWN"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/hwr/data/constant/HwrRecognizerConstant;

    invoke-direct {v0}, Lcom/onyx/android/sdk/hwr/data/constant/HwrRecognizerConstant;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/hwr/data/constant/HwrRecognizerConstant;->INSTANCE:Lcom/onyx/android/sdk/hwr/data/constant/HwrRecognizerConstant;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
