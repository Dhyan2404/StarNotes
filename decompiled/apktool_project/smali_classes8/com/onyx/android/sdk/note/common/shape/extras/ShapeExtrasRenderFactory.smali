.class public final Lcom/onyx/android/sdk/note/common/shape/extras/ShapeExtrasRenderFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/shape/extras/ShapeExtrasRenderFactory;",
        "",
        "()V",
        "create",
        "Lcom/onyx/android/sdk/note/common/shape/extras/ShapeExtrasRender;",
        "universalShapeType",
        "",
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
.field public static final INSTANCE:Lcom/onyx/android/sdk/note/common/shape/extras/ShapeExtrasRenderFactory;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/note/common/shape/extras/ShapeExtrasRenderFactory;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/shape/extras/ShapeExtrasRenderFactory;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/note/common/shape/extras/ShapeExtrasRenderFactory;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/extras/ShapeExtrasRenderFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/shape/extras/ShapeExtrasRender;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "universalShapeType"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "oval"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/onyx/android/sdk/note/common/shape/extras/OvalExtrasRender;

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/extras/OvalExtrasRender;-><init>()V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/note/common/shape/extras/ShapeExtrasRenderFactory$a;->a:Lcom/onyx/android/sdk/note/common/shape/extras/ShapeExtrasRenderFactory$a;

    :goto_0
    return-object p0
.end method
