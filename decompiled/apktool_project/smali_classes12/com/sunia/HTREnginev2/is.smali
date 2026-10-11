.class public final synthetic Lcom/sunia/HTREnginev2/is;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Ljavax/imageio/ImageReadParam;


# direct methods
.method public synthetic constructor <init>(Ljavax/imageio/ImageReadParam;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/is;->e:Ljavax/imageio/ImageReadParam;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/is;->e:Ljavax/imageio/ImageReadParam;

    check-cast p1, Ljavax/imageio/ImageTypeSpecifier;

    invoke-virtual {p0, p1}, Ljavax/imageio/ImageReadParam;->setDestinationType(Ljavax/imageio/ImageTypeSpecifier;)V

    return-void
.end method
