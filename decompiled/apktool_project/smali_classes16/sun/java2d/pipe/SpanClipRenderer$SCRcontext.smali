.class Lsun/java2d/pipe/SpanClipRenderer$SCRcontext;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/java2d/pipe/SpanClipRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SCRcontext"
.end annotation


# instance fields
.field band:[I

.field iterator:Lsun/java2d/pipe/RegionIterator;

.field outcontext:Ljava/lang/Object;

.field final synthetic this$0:Lsun/java2d/pipe/SpanClipRenderer;

.field tile:[B


# direct methods
.method public constructor <init>(Lsun/java2d/pipe/SpanClipRenderer;Lsun/java2d/pipe/RegionIterator;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lsun/java2d/pipe/SpanClipRenderer$SCRcontext;->this$0:Lsun/java2d/pipe/SpanClipRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lsun/java2d/pipe/SpanClipRenderer$SCRcontext;->iterator:Lsun/java2d/pipe/RegionIterator;

    iput-object p3, p0, Lsun/java2d/pipe/SpanClipRenderer$SCRcontext;->outcontext:Ljava/lang/Object;

    const/4 p1, 0x4

    new-array p1, p1, [I

    iput-object p1, p0, Lsun/java2d/pipe/SpanClipRenderer$SCRcontext;->band:[I

    return-void
.end method
