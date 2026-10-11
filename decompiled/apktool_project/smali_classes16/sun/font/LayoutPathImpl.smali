.class public abstract Lsun/font/LayoutPathImpl;
.super Ljava/awt/font/LayoutPath;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/font/LayoutPathImpl$SegmentPathBuilder;,
        Lsun/font/LayoutPathImpl$SegmentPath;,
        Lsun/font/LayoutPathImpl$EndType;,
        Lsun/font/LayoutPathImpl$EmptyPath;
    }
.end annotation


# static fields
.field private static final LOG:Ljava/util/Formatter;

.field private static final LOGMAP:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Ljava/util/Formatter;-><init>(Ljava/io/PrintStream;)V

    sput-object v0, Lsun/font/LayoutPathImpl;->LOG:Ljava/util/Formatter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/awt/font/LayoutPath;-><init>()V

    return-void
.end method

.method public static varargs getPath(Lsun/font/LayoutPathImpl$EndType;[D)Lsun/font/LayoutPathImpl;
    .locals 1

    array-length v0, p1

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lsun/font/LayoutPathImpl$SegmentPath;->get(Lsun/font/LayoutPathImpl$EndType;[D)Lsun/font/LayoutPathImpl$SegmentPath;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "odd number of points not allowed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract end()D
.end method

.method public abstract length()D
.end method

.method public abstract mapShape(Ljava/awt/Shape;)Ljava/awt/Shape;
.end method

.method public pathToPoint(DDZ)Ljava/awt/geom/Point2D;
    .locals 1

    .line 1
    new-instance v0, Ljava/awt/geom/Point2D$Double;

    invoke-direct {v0, p1, p2, p3, p4}, Ljava/awt/geom/Point2D$Double;-><init>(DD)V

    .line 2
    invoke-virtual {p0, v0, p5, v0}, Ljava/awt/font/LayoutPath;->pathToPoint(Ljava/awt/geom/Point2D;ZLjava/awt/geom/Point2D;)V

    return-object v0
.end method

.method public pathToPoint(DDZLjava/awt/geom/Point2D;)V
    .locals 0

    .line 3
    invoke-virtual {p6, p1, p2, p3, p4}, Ljava/awt/geom/Point2D;->setLocation(DD)V

    .line 4
    invoke-virtual {p0, p6, p5, p6}, Ljava/awt/font/LayoutPath;->pathToPoint(Ljava/awt/geom/Point2D;ZLjava/awt/geom/Point2D;)V

    return-void
.end method

.method public pointToPath(DD)Ljava/awt/geom/Point2D;
    .locals 1

    .line 1
    new-instance v0, Ljava/awt/geom/Point2D$Double;

    invoke-direct {v0, p1, p2, p3, p4}, Ljava/awt/geom/Point2D$Double;-><init>(DD)V

    .line 2
    invoke-virtual {p0, v0, v0}, Ljava/awt/font/LayoutPath;->pointToPath(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;)Z

    return-object v0
.end method

.method public pointToPath(DDLjava/awt/geom/Point2D;)V
    .locals 0

    .line 3
    invoke-virtual {p5, p1, p2, p3, p4}, Ljava/awt/geom/Point2D;->setLocation(DD)V

    .line 4
    invoke-virtual {p0, p5, p5}, Ljava/awt/font/LayoutPath;->pointToPath(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;)Z

    return-void
.end method

.method public abstract start()D
.end method
