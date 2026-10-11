.class public final Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle$reportShowPopupMenuEvent$ob$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->reportShowPopupMenuEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle$reportShowPopupMenuEvent$ob$1$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

.field public final synthetic f:Lcom/google/gson/JsonObject;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;Lcom/google/gson/JsonObject;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle$reportShowPopupMenuEvent$ob$1;->e:Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    iput-object p2, p0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle$reportShowPopupMenuEvent$ob$1;->f:Lcom/google/gson/JsonObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;)V
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "universalShapeAttr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle$reportShowPopupMenuEvent$ob$1;->e:Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle$reportShowPopupMenuEvent$ob$1;->f:Lcom/google/gson/JsonObject;

    sget-object v1, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->Companion:Lcom/onyx/galaxy/note/editor/data/ShapeToolType$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getType()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v1, v2, v3, v4, v3}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType$Companion;->getShapeToolType$default(Lcom/onyx/galaxy/note/editor/data/ShapeToolType$Companion;ILcom/onyx/galaxy/note/editor/data/ShapeToolType;ILjava/lang/Object;)Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    move-result-object v2

    const-string v5, ""

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    move-object v2, v5

    :cond_1
    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getType()I

    move-result v6

    invoke-static {v1, v6, v3, v4, v3}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType$Companion;->getShapeToolType$default(Lcom/onyx/galaxy/note/editor/data/ShapeToolType$Companion;ILcom/onyx/galaxy/note/editor/data/ShapeToolType;ILjava/lang/Object;)Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v1, -0x1

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle$reportShowPopupMenuEvent$ob$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    :goto_0
    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;->getType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    move-object v5, v1

    :goto_1
    move-object v2, v5

    :cond_4
    const-string v1, "figurename"

    invoke-virtual {p0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/android/sdk/data/OnyxStatisticConstant;->INSTANCE:Lcom/onyx/android/sdk/data/OnyxStatisticConstant;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/OnyxStatisticConstant;->rgbaValueFormat(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "color"

    invoke-virtual {p0, v4, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getWidth()F

    move-result v2

    invoke-static {v2}, Lcom/onyx/galaxy/note/editor/data/PensizeConvertExtKt;->sizeToValue(F)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/OnyxStatisticConstant;->thicknessValueFormat(F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "thickness"

    invoke-virtual {p0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->access$getPatternStrTwoFloatDigits$p()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/pen/utils/PenUtils;->INSTANCE:Lcom/onyx/android/sdk/pen/utils/PenUtils;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getPressureSensitivity()F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/onyx/android/sdk/pen/utils/PenUtils;->toPercentPressureSensitivity(F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "format(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "pressure"

    invoke-virtual {p0, v4, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->access$getPatternStrWithMMUnit$p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getNib()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "nib"

    invoke-virtual {p0, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;->getFillColorEnable()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/BooleanKt;->toInteger(Ljava/lang/Boolean;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "figureFilling"

    invoke-virtual {p0, v0, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    :cond_5
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle$reportShowPopupMenuEvent$ob$1;->a(Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;)V

    return-void
.end method
