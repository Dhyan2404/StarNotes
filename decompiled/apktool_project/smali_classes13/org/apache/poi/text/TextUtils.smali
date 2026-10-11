.class public Lorg/apache/poi/text/TextUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleText(Ljava/awt/Graphics2D;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/awt/Graphics2D;",
            "Ljava/util/List<",
            "Lorg/apache/poi/sl/draw/DrawTextFragment2;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lorg/apache/poi/text/ITextHandler;->TEXT_HANDLER:Lorg/apache/poi/text/ITextHandler$Key;

    invoke-virtual {p0, v0}, Ljava/awt/Graphics2D;->getRenderingHint(Ljava/awt/RenderingHints$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/text/ITextHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lorg/apache/poi/text/ITextHandler;->handleText(Ljava/awt/Graphics2D;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public static setTextAnchor(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)V
    .locals 1

    sget-object v0, Lorg/apache/poi/text/ITextHandler;->TEXT_HANDLER:Lorg/apache/poi/text/ITextHandler$Key;

    invoke-virtual {p0, v0}, Ljava/awt/Graphics2D;->getRenderingHint(Ljava/awt/RenderingHints$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/text/ITextHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lorg/apache/poi/text/ITextHandler;->setAnchor(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)V

    :cond_0
    return-void
.end method
