.class public final synthetic Lcom/sunia/HTREnginev2/hs;
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

    check-cast p1, Ljavax/imageio/ImageTypeSpecifier;

    invoke-static {p1}, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->d(Ljavax/imageio/ImageTypeSpecifier;)Z

    move-result p0

    return p0
.end method
