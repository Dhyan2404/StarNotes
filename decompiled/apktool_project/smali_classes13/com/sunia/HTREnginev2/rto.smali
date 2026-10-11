.class public final synthetic Lcom/sunia/HTREnginev2/rto;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/poifs/crypt/dsig/SignatureLine$AddPictureData;


# instance fields
.field public final synthetic a:Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/rto;->a:Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    return-void
.end method


# virtual methods
.method public final addPictureData([BLorg/apache/poi/common/usermodel/PictureType;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/rto;->a:Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-static {p0, p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFSignatureLine;->a(Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;[BLorg/apache/poi/common/usermodel/PictureType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
