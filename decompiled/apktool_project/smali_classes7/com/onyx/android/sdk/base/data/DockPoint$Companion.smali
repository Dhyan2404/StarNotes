.class public final Lcom/onyx/android/sdk/base/data/DockPoint$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/base/data/DockPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDockPoint.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DockPoint.kt\ncom/onyx/android/sdk/base/data/DockPoint$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,75:1\n1282#2,2:76\n*S KotlinDebug\n*F\n+ 1 DockPoint.kt\ncom/onyx/android/sdk/base/data/DockPoint$Companion\n*L\n18#1:76,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0004J\u000e\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/onyx/android/sdk/base/data/DockPoint$Companion;",
        "",
        "()V",
        "VALUE_CENTER",
        "",
        "VALUE_END",
        "VALUE_START",
        "fromSubValue",
        "Lcom/onyx/android/sdk/base/data/DockPoint;",
        "horizontalValue",
        "verticalValue",
        "fromValue",
        "value",
        "sdk-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDockPoint.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DockPoint.kt\ncom/onyx/android/sdk/base/data/DockPoint$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,75:1\n1282#2,2:76\n*S KotlinDebug\n*F\n+ 1 DockPoint.kt\ncom/onyx/android/sdk/base/data/DockPoint$Companion\n*L\n18#1:76,2\n*E\n"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/base/data/DockPoint$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromSubValue(II)Lcom/onyx/android/sdk/base/data/DockPoint;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    mul-int/lit8 p2, p2, 0xa

    add-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/data/DockPoint$Companion;->fromValue(I)Lcom/onyx/android/sdk/base/data/DockPoint;

    move-result-object p0

    return-object p0
.end method

.method public final fromValue(I)Lcom/onyx/android/sdk/base/data/DockPoint;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/onyx/android/sdk/base/data/DockPoint;->values()[Lcom/onyx/android/sdk/base/data/DockPoint;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/DockPoint;->getValue()I

    move-result v4

    if-ne v4, p1, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-nez v3, :cond_3

    sget-object v3, Lcom/onyx/android/sdk/base/data/DockPoint;->TOP_LEFT:Lcom/onyx/android/sdk/base/data/DockPoint;

    :cond_3
    return-object v3
.end method
