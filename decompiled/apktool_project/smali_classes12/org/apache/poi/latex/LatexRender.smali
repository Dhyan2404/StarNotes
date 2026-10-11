.class public abstract Lorg/apache/poi/latex/LatexRender;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/draw/ImageRenderer;
.implements Ljava/io/Closeable;


# static fields
.field protected static final LOG:Lorg/apache/logging/log4j/Logger;


# instance fields
.field protected latex:Lorg/apache/poi/latex/Latex;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/latex/LatexRender;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/latex/LatexRender;->LOG:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canRender(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "image/latex"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public abstract drawImage(Ljava/awt/Graphics2D;F)Z
.end method

.method public getBounds()Ljava/awt/geom/Rectangle2D;
    .locals 0

    invoke-interface {p0}, Lorg/apache/poi/sl/draw/ImageRenderer;->getNativeBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    return-object p0
.end method

.method public abstract loadImage(Ljava/lang/String;Ljava/awt/geom/Rectangle2D;)V
.end method

.method public abstract loadImage(Lorg/apache/poi/latex/Latex;Ljava/awt/geom/Rectangle2D;)V
.end method
