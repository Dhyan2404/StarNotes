.class public final synthetic Lcom/sunia/HTREnginev2/rlh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/awt/geom/Rectangle2D;

    invoke-static {p1}, Lorg/apache/poi/hemf/usermodel/HemfPicture;->e(Ljava/awt/geom/Rectangle2D;)Z

    move-result p0

    return p0
.end method
