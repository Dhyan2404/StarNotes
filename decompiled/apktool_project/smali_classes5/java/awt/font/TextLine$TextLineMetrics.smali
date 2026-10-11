.class final Ljava/awt/font/TextLine$TextLineMetrics;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/awt/font/TextLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TextLineMetrics"
.end annotation


# instance fields
.field public final advance:F

.field public final ascent:F

.field public final descent:F

.field public final leading:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ljava/awt/font/TextLine$TextLineMetrics;->ascent:F

    iput p2, p0, Ljava/awt/font/TextLine$TextLineMetrics;->descent:F

    iput p3, p0, Ljava/awt/font/TextLine$TextLineMetrics;->leading:F

    iput p4, p0, Ljava/awt/font/TextLine$TextLineMetrics;->advance:F

    return-void
.end method
