.class public final Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 \r2\u00020\u00012\u00020\u0002:\u0001\rB\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0008\u001a\u00020\u0000H\u0016J\u0008\u0010\t\u001a\u0004\u0018\u00010\u0005J\u0006\u0010\n\u001a\u00020\u0007J\u0010\u0010\u000b\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u000c\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;",
        "Ljava/io/Serializable;",
        "",
        "()V",
        "arrowStyle",
        "Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;",
        "lineStyle",
        "Lcom/onyx/android/sdk/replicator/note/data/line/LineStyle;",
        "clone",
        "getArrowStyle",
        "getLineStyle",
        "setArrowStyle",
        "setLineStyle",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private arrowStyle:Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private lineStyle:Lcom/onyx/android/sdk/replicator/note/data/line/LineStyle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;->Companion:Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/data/line/StraightLineStyle;->Companion:Lcom/onyx/android/sdk/replicator/note/data/line/StraightLineStyle$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/line/StraightLineStyle$Companion;->getINSTANCE()Lcom/onyx/android/sdk/replicator/note/data/line/StraightLineStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;->lineStyle:Lcom/onyx/android/sdk/replicator/note/data/line/LineStyle;

    return-void
.end method


# virtual methods
.method public clone()Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;->Companion:Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle$Companion;

    sget-object v1, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle$Companion;->parse(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;->clone()Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;

    move-result-object p0

    return-object p0
.end method

.method public final getArrowStyle()Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;->arrowStyle:Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;

    return-object p0
.end method

.method public final getLineStyle()Lcom/onyx/android/sdk/replicator/note/data/line/LineStyle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;->lineStyle:Lcom/onyx/android/sdk/replicator/note/data/line/LineStyle;

    return-object p0
.end method

.method public final setArrowStyle(Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;)Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;->arrowStyle:Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;

    return-object p0
.end method

.method public final setLineStyle(Lcom/onyx/android/sdk/replicator/note/data/line/LineStyle;)Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/line/LineStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "lineStyle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;->lineStyle:Lcom/onyx/android/sdk/replicator/note/data/line/LineStyle;

    return-object p0
.end method
