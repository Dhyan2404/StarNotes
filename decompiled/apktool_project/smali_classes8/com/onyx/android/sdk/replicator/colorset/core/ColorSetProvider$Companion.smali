.class public final Lcom/onyx/android/sdk/replicator/colorset/core/ColorSetProvider$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/replicator/colorset/core/ColorSetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u000c\u001a\u00020\rR\u001b\u0010\u0003\u001a\u00020\u00048FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006R\u001b\u0010\t\u001a\u00020\u00048FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u0008\u001a\u0004\u0008\n\u0010\u0006\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/colorset/core/ColorSetProvider$Companion;",
        "",
        "()V",
        "MAX_COLOR_SET_COUNT",
        "",
        "getMAX_COLOR_SET_COUNT",
        "()I",
        "MAX_COLOR_SET_COUNT$delegate",
        "Lkotlin/Lazy;",
        "MAX_COLOR_SET_NAME_LENGTH",
        "getMAX_COLOR_SET_NAME_LENGTH",
        "MAX_COLOR_SET_NAME_LENGTH$delegate",
        "generateCommonColorSetArgs",
        "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;",
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
    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/colorset/core/ColorSetProvider$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final generateCommonColorSetArgs()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;-><init>()V

    return-object p0
.end method

.method public final getMAX_COLOR_SET_COUNT()I
    .locals 0

    invoke-static {}, Lcom/onyx/android/sdk/replicator/colorset/core/ColorSetProvider;->access$getMAX_COLOR_SET_COUNT$delegate$cp()Lkotlin/Lazy;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final getMAX_COLOR_SET_NAME_LENGTH()I
    .locals 0

    invoke-static {}, Lcom/onyx/android/sdk/replicator/colorset/core/ColorSetProvider;->access$getMAX_COLOR_SET_NAME_LENGTH$delegate$cp()Lkotlin/Lazy;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method
