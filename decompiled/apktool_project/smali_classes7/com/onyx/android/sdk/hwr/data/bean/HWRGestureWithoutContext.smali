.class public final Lcom/onyx/android/sdk/hwr/data/bean/HWRGestureWithoutContext;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/hwr/data/bean/HWRGestureWithoutContext$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u0007\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0006\u0010\u0003\u001a\u00020\u0002J\u0008\u0010\u0005\u001a\u00020\u0004H\u0016R\"\u0010\u000c\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0006\u0010\u0007\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR$\u0010\u0014\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRGestureWithoutContext;",
        "",
        "",
        "isNone",
        "",
        "toString",
        "a",
        "Ljava/lang/String;",
        "getType",
        "()Ljava/lang/String;",
        "setType",
        "(Ljava/lang/String;)V",
        "type",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;",
        "b",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;",
        "getBoundBox",
        "()Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;",
        "setBoundBox",
        "(Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;)V",
        "boundBox",
        "<init>",
        "()V",
        "Companion",
        "sdk-hwr_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/hwr/data/bean/HWRGestureWithoutContext$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final GESTURE_BOTTOM_TOP:Ljava/lang/String; = "bottom-top"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final GESTURE_LEFT_RIGHT:Ljava/lang/String; = "left-right"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final GESTURE_NONE:Ljava/lang/String; = "none"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final GESTURE_RIGHT_LEFT:Ljava/lang/String; = "right-left"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final GESTURE_SCRATCH:Ljava/lang/String; = "scratch"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final GESTURE_SURROUND:Ljava/lang/String; = "surround"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final GESTURE_TOP_BOTTOM:Ljava/lang/String; = "top-bottom"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        name = "bounding-box"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/hwr/data/bean/HWRGestureWithoutContext$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRGestureWithoutContext$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/hwr/data/bean/HWRGestureWithoutContext;->Companion:Lcom/onyx/android/sdk/hwr/data/bean/HWRGestureWithoutContext$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "none"

    iput-object v0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRGestureWithoutContext;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getBoundBox()Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRGestureWithoutContext;->b:Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;

    return-object p0
.end method

.method public final getType()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRGestureWithoutContext;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final isNone()Z
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRGestureWithoutContext;->a:Ljava/lang/String;

    const-string v0, "none"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final setBoundBox(Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRGestureWithoutContext;->b:Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;

    return-void
.end method

.method public final setType(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRGestureWithoutContext;->a:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toPrettyJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
