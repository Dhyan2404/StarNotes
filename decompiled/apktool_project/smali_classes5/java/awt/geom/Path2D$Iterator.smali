.class abstract Ljava/awt/geom/Path2D$Iterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/awt/geom/PathIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/awt/geom/Path2D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Iterator"
.end annotation


# static fields
.field static final curvecoords:[I


# instance fields
.field path:Ljava/awt/geom/Path2D;

.field pointIdx:I

.field typeIdx:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x4

    filled-new-array {v2, v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Ljava/awt/geom/Path2D$Iterator;->curvecoords:[I

    return-void
.end method

.method public constructor <init>(Ljava/awt/geom/Path2D;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/awt/geom/Path2D$Iterator;->path:Ljava/awt/geom/Path2D;

    return-void
.end method


# virtual methods
.method public getWindingRule()I
    .locals 0

    iget-object p0, p0, Ljava/awt/geom/Path2D$Iterator;->path:Ljava/awt/geom/Path2D;

    invoke-virtual {p0}, Ljava/awt/geom/Path2D;->getWindingRule()I

    move-result p0

    return p0
.end method

.method public isDone()Z
    .locals 1

    iget v0, p0, Ljava/awt/geom/Path2D$Iterator;->typeIdx:I

    iget-object p0, p0, Ljava/awt/geom/Path2D$Iterator;->path:Ljava/awt/geom/Path2D;

    iget p0, p0, Ljava/awt/geom/Path2D;->numTypes:I

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public next()V
    .locals 3

    iget-object v0, p0, Ljava/awt/geom/Path2D$Iterator;->path:Ljava/awt/geom/Path2D;

    iget-object v0, v0, Ljava/awt/geom/Path2D;->pointTypes:[B

    iget v1, p0, Ljava/awt/geom/Path2D$Iterator;->typeIdx:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/awt/geom/Path2D$Iterator;->typeIdx:I

    aget-byte v0, v0, v1

    iget v1, p0, Ljava/awt/geom/Path2D$Iterator;->pointIdx:I

    sget-object v2, Ljava/awt/geom/Path2D$Iterator;->curvecoords:[I

    aget v0, v2, v0

    add-int/2addr v1, v0

    iput v1, p0, Ljava/awt/geom/Path2D$Iterator;->pointIdx:I

    return-void
.end method
