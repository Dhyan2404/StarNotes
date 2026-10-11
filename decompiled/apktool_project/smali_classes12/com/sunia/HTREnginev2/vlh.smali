.class public final synthetic Lcom/sunia/HTREnginev2/vlh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic e:Lorg/apache/poi/hemf/usermodel/HemfPicture;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/hemf/usermodel/HemfPicture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/vlh;->e:Lorg/apache/poi/hemf/usermodel/HemfPicture;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/vlh;->e:Lorg/apache/poi/hemf/usermodel/HemfPicture;

    invoke-virtual {p0}, Lorg/apache/poi/hemf/usermodel/HemfPicture;->getDefaultCharset()Ljava/nio/charset/Charset;

    move-result-object p0

    return-object p0
.end method
