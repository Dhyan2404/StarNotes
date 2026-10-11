.class Ljava/awt/Cursor$CursorDisposer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsun/java2d/DisposerRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/awt/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CursorDisposer"
.end annotation


# instance fields
.field volatile pData:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Ljava/awt/Cursor$CursorDisposer;->pData:J

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 4

    iget-wide v0, p0, Ljava/awt/Cursor$CursorDisposer;->pData:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Ljava/awt/Cursor$CursorDisposer;->pData:J

    invoke-static {v0, v1}, Ljava/awt/Cursor;->access$100(J)V

    :cond_0
    return-void
.end method
