.class final Ljava/awt/Cursor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsun/awt/AWTAccessor$CursorAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/awt/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPData(Ljava/awt/Cursor;)J
    .locals 0

    invoke-static {p1}, Ljava/awt/Cursor;->access$000(Ljava/awt/Cursor;)J

    move-result-wide p0

    return-wide p0
.end method

.method public getType(Ljava/awt/Cursor;)I
    .locals 0

    iget p0, p1, Ljava/awt/Cursor;->type:I

    return p0
.end method

.method public setPData(Ljava/awt/Cursor;J)V
    .locals 0

    invoke-static {p1, p2, p3}, Ljava/awt/Cursor;->access$002(Ljava/awt/Cursor;J)J

    return-void
.end method
