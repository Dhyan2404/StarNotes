.class public final Lcom/onyx/android/sdk/replicator/note/data/line/StraightLineStyle;
.super Lcom/onyx/android/sdk/replicator/note/data/line/LineStyle;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/replicator/note/data/line/StraightLineStyle$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\u0018\u0000 \n2\u00020\u0001:\u0001\nB\u0005\u00a2\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/data/line/StraightLineStyle;",
        "Lcom/onyx/android/sdk/replicator/note/data/line/LineStyle;",
        "()V",
        "applyStyle",
        "",
        "paint",
        "Landroid/graphics/Paint;",
        "strokeWidth",
        "",
        "scale",
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
.field public static final Companion:Lcom/onyx/android/sdk/replicator/note/data/line/StraightLineStyle$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final INSTANCE:Lcom/onyx/android/sdk/replicator/note/data/line/StraightLineStyle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/data/line/StraightLineStyle$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/replicator/note/data/line/StraightLineStyle$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/data/line/StraightLineStyle;->Companion:Lcom/onyx/android/sdk/replicator/note/data/line/StraightLineStyle$Companion;

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/data/line/StraightLineStyle;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/data/line/StraightLineStyle;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/data/line/StraightLineStyle;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/data/line/StraightLineStyle;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/data/line/LineStyle;-><init>()V

    return-void
.end method

.method public static final synthetic access$getINSTANCE$cp()Lcom/onyx/android/sdk/replicator/note/data/line/StraightLineStyle;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/data/line/StraightLineStyle;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/data/line/StraightLineStyle;

    return-object v0
.end method


# virtual methods
.method public applyStyle(Landroid/graphics/Paint;FF)V
    .locals 0
    .param p1    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "paint"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    return-void
.end method
