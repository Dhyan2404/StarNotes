.class public final synthetic Lcom/sunia/HTREnginev2/t7h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic e:Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/t7h;->e:Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/t7h;->e:Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;

    check-cast p1, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;

    invoke-static {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->I(Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;Lorg/apache/poi/hslf/usermodel/HSLFPictureData;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method
