.class public final synthetic Lcom/sunia/HTREnginev2/d7h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic e:Lorg/apache/poi/hslf/usermodel/HSLFPictureData;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/hslf/usermodel/HSLFPictureData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/d7h;->e:Lorg/apache/poi/hslf/usermodel/HSLFPictureData;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/d7h;->e:Lorg/apache/poi/hslf/usermodel/HSLFPictureData;

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/PictureData;->getType()Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    move-result-object p0

    return-object p0
.end method
