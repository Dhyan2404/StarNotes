.class Lsun/java2d/loops/ProcessPath$Point;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/java2d/loops/ProcessPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Point"
.end annotation


# instance fields
.field public edge:Lsun/java2d/loops/ProcessPath$Edge;

.field public lastPoint:Z

.field public next:Lsun/java2d/loops/ProcessPath$Point;

.field public nextByY:Lsun/java2d/loops/ProcessPath$Point;

.field public prev:Lsun/java2d/loops/ProcessPath$Point;

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lsun/java2d/loops/ProcessPath$Point;->x:I

    iput p2, p0, Lsun/java2d/loops/ProcessPath$Point;->y:I

    iput-boolean p3, p0, Lsun/java2d/loops/ProcessPath$Point;->lastPoint:Z

    return-void
.end method
