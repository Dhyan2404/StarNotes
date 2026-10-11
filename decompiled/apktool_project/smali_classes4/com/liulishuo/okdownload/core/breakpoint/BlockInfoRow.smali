.class public Lcom/liulishuo/okdownload/core/breakpoint/BlockInfoRow;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:J

.field public final c:J

.field public final d:J


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "breakpoint_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfoRow;->a:I

    const-string v0, "start_offset"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfoRow;->b:J

    const-string v0, "content_length"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfoRow;->c:J

    const-string v0, "current_offset"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfoRow;->d:J

    return-void
.end method


# virtual methods
.method public getBreakpointId()I
    .locals 0

    iget p0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfoRow;->a:I

    return p0
.end method

.method public getContentLength()J
    .locals 2

    iget-wide v0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfoRow;->c:J

    return-wide v0
.end method

.method public getCurrentOffset()J
    .locals 2

    iget-wide v0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfoRow;->d:J

    return-wide v0
.end method

.method public getStartOffset()J
    .locals 2

    iget-wide v0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfoRow;->b:J

    return-wide v0
.end method

.method public toInfo()Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;
    .locals 8

    new-instance v7, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;

    iget-wide v1, p0, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfoRow;->b:J

    iget-wide v3, p0, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfoRow;->c:J

    iget-wide v5, p0, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfoRow;->d:J

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;-><init>(JJJ)V

    return-object v7
.end method
