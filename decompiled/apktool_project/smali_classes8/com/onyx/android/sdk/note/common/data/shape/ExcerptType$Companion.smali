.class public final Lcom/onyx/android/sdk/note/common/data/shape/ExcerptType$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/note/common/data/shape/ExcerptType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/data/shape/ExcerptType$Companion;",
        "",
        "()V",
        "fromShapeType",
        "Lcom/onyx/android/sdk/note/common/data/shape/ExcerptType;",
        "shapeType",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromShapeType(I)Lcom/onyx/android/sdk/note/common/data/shape/ExcerptType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/16 p0, 0x29

    if-eq p1, p0, :cond_1

    const/16 p0, 0x2c

    if-eq p1, p0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptType;->RECTANGLE:Lcom/onyx/android/sdk/note/common/data/shape/ExcerptType;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptType;->TEXT:Lcom/onyx/android/sdk/note/common/data/shape/ExcerptType;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptType;->RECTANGLE:Lcom/onyx/android/sdk/note/common/data/shape/ExcerptType;

    :goto_0
    return-object p0
.end method
