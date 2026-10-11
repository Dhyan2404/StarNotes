.class Lsun/java2d/loops/ProcessPath$Edge;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/java2d/loops/ProcessPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Edge"
.end annotation


# instance fields
.field dir:I

.field dx:I

.field next:Lsun/java2d/loops/ProcessPath$Edge;

.field p:Lsun/java2d/loops/ProcessPath$Point;

.field prev:Lsun/java2d/loops/ProcessPath$Edge;

.field x:I


# direct methods
.method public constructor <init>(Lsun/java2d/loops/ProcessPath$Point;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun/java2d/loops/ProcessPath$Edge;->p:Lsun/java2d/loops/ProcessPath$Point;

    iput p2, p0, Lsun/java2d/loops/ProcessPath$Edge;->x:I

    iput p3, p0, Lsun/java2d/loops/ProcessPath$Edge;->dx:I

    iput p4, p0, Lsun/java2d/loops/ProcessPath$Edge;->dir:I

    return-void
.end method
