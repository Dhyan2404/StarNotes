.class Lcom/vivo/trackpredictor/core/TrackPredCore$SingleHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/trackpredictor/core/TrackPredCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleHolder"
.end annotation


# static fields
.field public static final instance:Lcom/vivo/trackpredictor/core/TrackPredCore;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vivo/trackpredictor/core/TrackPredCore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vivo/trackpredictor/core/TrackPredCore;-><init>(Lcom/vivo/trackpredictor/core/TrackPredCore$1;)V

    sput-object v0, Lcom/vivo/trackpredictor/core/TrackPredCore$SingleHolder;->instance:Lcom/vivo/trackpredictor/core/TrackPredCore;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
