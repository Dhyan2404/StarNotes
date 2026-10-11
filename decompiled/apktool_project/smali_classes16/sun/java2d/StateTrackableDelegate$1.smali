.class Lsun/java2d/StateTrackableDelegate$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsun/java2d/StateTracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/java2d/StateTrackableDelegate;->getStateTracker()Lsun/java2d/StateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsun/java2d/StateTrackableDelegate;


# direct methods
.method public constructor <init>(Lsun/java2d/StateTrackableDelegate;)V
    .locals 0

    iput-object p1, p0, Lsun/java2d/StateTrackableDelegate$1;->this$0:Lsun/java2d/StateTrackableDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isCurrent()Z
    .locals 1

    iget-object v0, p0, Lsun/java2d/StateTrackableDelegate$1;->this$0:Lsun/java2d/StateTrackableDelegate;

    iget-object v0, v0, Lsun/java2d/StateTrackableDelegate;->theTracker:Lsun/java2d/StateTracker;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
