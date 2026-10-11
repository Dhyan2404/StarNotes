.class public final synthetic Lcom/sunia/HTREnginev2/nso;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/poifs/crypt/dsig/SignatureLine$AddPictureData;


# instance fields
.field public final synthetic a:Lorg/apache/poi/xssf/usermodel/XSSFSignatureLine;

.field public final synthetic b:Lorg/apache/poi/xssf/usermodel/XSSFSheet;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFSignatureLine;Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/nso;->a:Lorg/apache/poi/xssf/usermodel/XSSFSignatureLine;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/nso;->b:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    return-void
.end method


# virtual methods
.method public final addPictureData([BLorg/apache/poi/common/usermodel/PictureType;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/nso;->a:Lorg/apache/poi/xssf/usermodel/XSSFSignatureLine;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/nso;->b:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-static {v0, p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSignatureLine;->a(Lorg/apache/poi/xssf/usermodel/XSSFSignatureLine;Lorg/apache/poi/xssf/usermodel/XSSFSheet;[BLorg/apache/poi/common/usermodel/PictureType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
