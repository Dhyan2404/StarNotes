.class public final Lsun/awt/image/BufImgSurfaceData$ICMColorData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/awt/image/BufImgSurfaceData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICMColorData"
.end annotation


# instance fields
.field private pData:J


# direct methods
.method private constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lsun/awt/image/BufImgSurfaceData$ICMColorData;->pData:J

    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 5

    iget-wide v0, p0, Lsun/awt/image/BufImgSurfaceData$ICMColorData;->pData:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1}, Lsun/awt/image/BufImgSurfaceData;->access$000(J)V

    iput-wide v2, p0, Lsun/awt/image/BufImgSurfaceData$ICMColorData;->pData:J

    :cond_0
    return-void
.end method
