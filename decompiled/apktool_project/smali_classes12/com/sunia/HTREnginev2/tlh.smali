.class public final synthetic Lcom/sunia/HTREnginev2/tlh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic e:Ljava/awt/geom/Rectangle2D;


# direct methods
.method public synthetic constructor <init>(Ljava/awt/geom/Rectangle2D;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/tlh;->e:Ljava/awt/geom/Rectangle2D;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/tlh;->e:Ljava/awt/geom/Rectangle2D;

    check-cast p1, Ljava/awt/geom/Rectangle2D;

    invoke-static {p0, p1}, Lorg/apache/poi/hemf/usermodel/HemfPicture;->c(Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Rectangle2D;)Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    return-object p0
.end method
