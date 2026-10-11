.class public final Lcom/onyx/android/sdk/prediction/EstimateManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00020\u0002R\"\u0010\t\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/prediction/EstimateManager;",
        "",
        "Landroid/content/Context;",
        "appContext",
        "Lcom/onyx/android/sdk/prediction/IEstimate;",
        "createEstimate",
        "",
        "a",
        "Z",
        "isEstimateValid",
        "()Z",
        "setEstimateValid",
        "(Z)V",
        "<init>",
        "()V",
        "sdk-prediction_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/prediction/EstimateManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static a:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/prediction/EstimateManager;

    invoke-direct {v0}, Lcom/onyx/android/sdk/prediction/EstimateManager;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/prediction/EstimateManager;->INSTANCE:Lcom/onyx/android/sdk/prediction/EstimateManager;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/onyx/android/sdk/prediction/EstimateManager;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createEstimate(Landroid/content/Context;)Lcom/onyx/android/sdk/prediction/IEstimate;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "appContext"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean p0, Lcom/onyx/android/sdk/prediction/EstimateManager;->a:Z

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Lcom/onyx/android/sdk/prediction/EstimateCreator;

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/prediction/EstimateCreator;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/prediction/EstimateCreator;->ensureEstimate()Lcom/onyx/android/sdk/prediction/IEstimate;

    move-result-object p0

    return-object p0
.end method

.method public final isEstimateValid()Z
    .locals 0

    sget-boolean p0, Lcom/onyx/android/sdk/prediction/EstimateManager;->a:Z

    return p0
.end method

.method public final setEstimateValid(Z)V
    .locals 0

    sput-boolean p1, Lcom/onyx/android/sdk/prediction/EstimateManager;->a:Z

    return-void
.end method
