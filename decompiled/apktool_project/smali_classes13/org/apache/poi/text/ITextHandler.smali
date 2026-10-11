.class public interface abstract Lorg/apache/poi/text/ITextHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/text/ITextHandler$Key;
    }
.end annotation


# static fields
.field public static final TEXT_HANDLER:Lorg/apache/poi/text/ITextHandler$Key;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/poi/text/ITextHandler$Key;

    const/4 v1, 0x1

    const-string v2, "Handle text"

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/text/ITextHandler$Key;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/text/ITextHandler;->TEXT_HANDLER:Lorg/apache/poi/text/ITextHandler$Key;

    return-void
.end method


# virtual methods
.method public abstract handleText(Ljava/awt/Graphics2D;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/awt/Graphics2D;",
            "Ljava/util/List<",
            "Lorg/apache/poi/sl/draw/DrawTextFragment2;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setAnchor(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)V
.end method
