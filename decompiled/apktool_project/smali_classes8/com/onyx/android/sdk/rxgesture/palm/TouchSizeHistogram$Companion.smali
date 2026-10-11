.class public final Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\t\u001a\u00020\nX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000eX\u0086T\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0010\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u0008\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram$Companion;",
        "",
        "()V",
        "DEBUG_LOG",
        "",
        "getDEBUG_LOG",
        "()Z",
        "setDEBUG_LOG",
        "(Z)V",
        "KEY_PALM_SIZE",
        "",
        "MIN_PALM_SIMILAR_RATIO",
        "",
        "PALM_COLLECT_EVENT_COUNT",
        "",
        "PALM_COLLECT_EVENT_FORCE_COUNT",
        "isEnabledPalmDetect",
        "setEnabledPalmDetect",
        "sdk-rxgesture_release"
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
    invoke-direct {p0}, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDEBUG_LOG()Z
    .locals 0

    invoke-static {}, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->access$getDEBUG_LOG$cp()Z

    move-result p0

    return p0
.end method

.method public final isEnabledPalmDetect()Z
    .locals 0

    invoke-static {}, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->access$isEnabledPalmDetect$cp()Z

    move-result p0

    return p0
.end method

.method public final setDEBUG_LOG(Z)V
    .locals 0

    invoke-static {p1}, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->access$setDEBUG_LOG$cp(Z)V

    return-void
.end method

.method public final setEnabledPalmDetect(Z)V
    .locals 0

    invoke-static {p1}, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->access$setEnabledPalmDetect$cp(Z)V

    return-void
.end method
