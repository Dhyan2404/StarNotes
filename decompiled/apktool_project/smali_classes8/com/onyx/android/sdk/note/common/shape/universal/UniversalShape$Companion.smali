.class public final Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0002\u0008\u0007\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u001d\u0010\u0006\u001a\u00020\u00052\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u001d\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape$Companion;",
        "",
        "",
        "Lcom/onyx/android/sdk/genericshape/Feature;",
        "features",
        "",
        "a",
        "([Lcom/onyx/android/sdk/genericshape/Feature;)Ljava/lang/String;",
        "",
        "stereoUniversalShapeTypes",
        "Ljava/util/Set;",
        "getStereoUniversalShapeTypes",
        "()Ljava/util/Set;",
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
    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getInferredUniversalShapeType(Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape$Companion;[Lcom/onyx/android/sdk/genericshape/Feature;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape$Companion;->a([Lcom/onyx/android/sdk/genericshape/Feature;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a([Lcom/onyx/android/sdk/genericshape/Feature;)Ljava/lang/String;
    .locals 5

    array-length p0, p1

    const-string v0, ""

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {p1}, Lkotlin/collections/ArraysKt;->first([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/genericshape/Feature;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/Properties;->getLineStyle()Lcom/onyx/android/sdk/genericshape/LineStyle;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getGeometry()Lcom/onyx/android/sdk/genericshape/Geometry;

    move-result-object v2

    instance-of v2, v2, Lcom/onyx/android/sdk/genericshape/LineString;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/LineStyle;->getDashLineIntervals()[F

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    if-nez v2, :cond_3

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/LineStyle;->getEditable()Z

    move-result v4

    if-ne v4, v1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    if-eqz v1, :cond_3

    const-string p0, "line"

    return-object p0

    :cond_3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getGeometry()Lcom/onyx/android/sdk/genericshape/Geometry;

    move-result-object v1

    instance-of v1, v1, Lcom/onyx/android/sdk/genericshape/LineString;

    if-eqz v1, :cond_5

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/LineStyle;->getDashLineIntervals()[F

    move-result-object v3

    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/LineStyle;->getEditable()Z

    move-result p1

    if-nez p1, :cond_5

    const-string p0, "dash_line"

    return-object p0

    :cond_5
    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getGeometry()Lcom/onyx/android/sdk/genericshape/Geometry;

    move-result-object p0

    instance-of p0, p0, Lcom/onyx/android/sdk/genericshape/DirectionLine;

    if-eqz p0, :cond_6

    const-string p0, "direction_line"

    return-object p0

    :cond_6
    return-object v0
.end method

.method public final getStereoUniversalShapeTypes()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;->access$getStereoUniversalShapeTypes$cp()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
