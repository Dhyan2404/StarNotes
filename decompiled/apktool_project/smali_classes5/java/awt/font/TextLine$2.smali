.class final Ljava/awt/font/TextLine$2;
.super Ljava/awt/font/TextLine$Function;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/awt/font/TextLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/awt/font/TextLine$Function;-><init>(Ljava/awt/font/TextLine$1;)V

    return-void
.end method


# virtual methods
.method public computeFunction(Ljava/awt/font/TextLine;II)F
    .locals 0

    invoke-static {p1}, Ljava/awt/font/TextLine;->access$100(Ljava/awt/font/TextLine;)[Lsun/font/TextLineComponent;

    move-result-object p0

    aget-object p0, p0, p2

    invoke-interface {p0, p3}, Lsun/font/TextLineComponent;->getCharAdvance(I)F

    move-result p0

    return p0
.end method
