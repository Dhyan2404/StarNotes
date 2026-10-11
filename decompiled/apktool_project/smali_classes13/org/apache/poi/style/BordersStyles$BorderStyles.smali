.class public Lorg/apache/poi/style/BordersStyles$BorderStyles;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/style/BordersStyles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BorderStyles"
.end annotation


# instance fields
.field public color:Ljava/lang/String;

.field public style:Lorg/apache/poi/style/LineStyle;

.field public width:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/apache/poi/style/LineStyle;->NONE:Lorg/apache/poi/style/LineStyle;

    iput-object v0, p0, Lorg/apache/poi/style/BordersStyles$BorderStyles;->style:Lorg/apache/poi/style/LineStyle;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/apache/poi/style/BordersStyles$BorderStyles;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/apache/poi/style/BordersStyles$BorderStyles;

    iget-object v0, p0, Lorg/apache/poi/style/BordersStyles$BorderStyles;->style:Lorg/apache/poi/style/LineStyle;

    iget-object v2, p1, Lorg/apache/poi/style/BordersStyles$BorderStyles;->style:Lorg/apache/poi/style/LineStyle;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lorg/apache/poi/style/BordersStyles$BorderStyles;->width:Ljava/lang/String;

    iget-object v2, p1, Lorg/apache/poi/style/BordersStyles$BorderStyles;->width:Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/apache/poi/util/StringUtils;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/apache/poi/style/BordersStyles$BorderStyles;->color:Ljava/lang/String;

    iget-object p1, p1, Lorg/apache/poi/style/BordersStyles$BorderStyles;->color:Ljava/lang/String;

    invoke-static {p0, p1}, Lorg/apache/poi/util/StringUtils;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
