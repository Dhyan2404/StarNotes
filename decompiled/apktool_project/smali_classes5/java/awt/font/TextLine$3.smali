.class final Ljava/awt/font/TextLine$3;
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
    .locals 1

    invoke-static {p1, p2}, Ljava/awt/font/TextLine;->access$200(Ljava/awt/font/TextLine;I)I

    move-result p0

    invoke-static {p1}, Ljava/awt/font/TextLine;->access$100(Ljava/awt/font/TextLine;)[Lsun/font/TextLineComponent;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-static {p1}, Ljava/awt/font/TextLine;->access$300(Ljava/awt/font/TextLine;)[F

    move-result-object p1

    mul-int/lit8 p0, p0, 0x2

    aget p0, p1, p0

    invoke-interface {p2, p3}, Lsun/font/TextLineComponent;->getCharX(I)F

    move-result p1

    add-float/2addr p0, p1

    return p0
.end method
