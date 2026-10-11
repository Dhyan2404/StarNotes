.class final Lsun/java2d/loops/GraphicsPrimitiveMgr$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/java2d/loops/GraphicsPrimitiveMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lsun/java2d/loops/GraphicsPrimitive;

    invoke-virtual {p1}, Lsun/java2d/loops/GraphicsPrimitive;->getUniqueID()I

    move-result p0

    check-cast p2, Lsun/java2d/loops/GraphicsPrimitive;

    invoke-virtual {p2}, Lsun/java2d/loops/GraphicsPrimitive;->getUniqueID()I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    if-ge p0, p1, :cond_1

    const/4 p0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method
