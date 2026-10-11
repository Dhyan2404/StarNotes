.class public Lsun/java2d/loops/RenderLoops;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final primTypeID:I


# instance fields
.field public drawGlyphListAALoop:Lsun/java2d/loops/DrawGlyphListAA;

.field public drawGlyphListLCDLoop:Lsun/java2d/loops/DrawGlyphListLCD;

.field public drawGlyphListLoop:Lsun/java2d/loops/DrawGlyphList;

.field public drawLineLoop:Lsun/java2d/loops/DrawLine;

.field public drawParallelogramLoop:Lsun/java2d/loops/DrawParallelogram;

.field public drawPathLoop:Lsun/java2d/loops/DrawPath;

.field public drawPolygonsLoop:Lsun/java2d/loops/DrawPolygons;

.field public drawRectLoop:Lsun/java2d/loops/DrawRect;

.field public fillParallelogramLoop:Lsun/java2d/loops/FillParallelogram;

.field public fillPathLoop:Lsun/java2d/loops/FillPath;

.field public fillRectLoop:Lsun/java2d/loops/FillRect;

.field public fillSpansLoop:Lsun/java2d/loops/FillSpans;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lsun/java2d/loops/GraphicsPrimitive;->makePrimTypeID()I

    move-result v0

    sput v0, Lsun/java2d/loops/RenderLoops;->primTypeID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
