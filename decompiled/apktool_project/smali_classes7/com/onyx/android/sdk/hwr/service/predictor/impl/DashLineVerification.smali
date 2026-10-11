.class public final Lcom/onyx/android/sdk/hwr/service/predictor/impl/DashLineVerification;
.super Lcom/onyx/android/sdk/hwr/service/predictor/BaseShapeVerification;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u000e\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0006H\u0016J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/service/predictor/impl/DashLineVerification;",
        "Lcom/onyx/android/sdk/hwr/service/predictor/BaseShapeVerification;",
        "()V",
        "shapeName",
        "",
        "similarObjectTypes",
        "",
        "verify",
        "",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/service/predictor/BaseShapeVerification;-><init>()V

    return-void
.end method


# virtual methods
.method public shapeName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "Dash-Line"

    return-object p0
.end method

.method public similarObjectTypes()Ljava/util/List;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "Dash-Line"

    const-string v1, "stairs"

    const-string v2, "animal migration"

    const-string v3, "glass dropper"

    const-string v4, "stitches"

    const-string v5, "solar panel"

    const-string v6, "garden hose"

    const-string v7, "rain"

    const-string v8, "matches"

    const-string v9, "magic wand"

    const-string v10, "spaghetti"

    const-string v11, "line"

    const-string v12, "glove"

    const-string v13, "grass"

    const-string v14, "zebra"

    const-string v15, "football shoulder pads"

    const-string v16, "bread"

    const-string v17, "pool"

    const-string v18, "The Great Wall of China"

    const-string v19, "screwdriver"

    const-string v20, "squiggle"

    const-string v21, "popsicle"

    const-string v22, "ramen"

    const-string v23, "shirt"

    const-string v24, "ocean"

    const-string v25, "cricket bat"

    const-string v26, "shell"

    const-string v27, "lily"

    const-string v28, "river"

    const-string v29, "toothbrush"

    filled-new-array/range {v0 .. v29}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public verify()Z
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/service/predictor/BaseShapeVerification;->getPointerEvents()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/hwr/service/predictor/BaseShapeVerification;->subPathCount(Ljava/util/List;)I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/service/predictor/BaseShapeVerification;->getPointerEvents()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/hwr/service/predictor/BaseShapeVerification;->likeStraightLine(Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
