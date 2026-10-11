.class public Lorg/apache/commons/math3/geometry/euclidean/threed/Segment;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

.field public final b:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

.field public final c:Lorg/apache/commons/math3/geometry/euclidean/threed/Line;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Line;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Segment;->a:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iput-object p2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Segment;->b:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iput-object p3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Segment;->c:Lorg/apache/commons/math3/geometry/euclidean/threed/Line;

    return-void
.end method


# virtual methods
.method public getEnd()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Segment;->b:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object p0
.end method

.method public getLine()Lorg/apache/commons/math3/geometry/euclidean/threed/Line;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Segment;->c:Lorg/apache/commons/math3/geometry/euclidean/threed/Line;

    return-object p0
.end method

.method public getStart()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Segment;->a:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object p0
.end method
