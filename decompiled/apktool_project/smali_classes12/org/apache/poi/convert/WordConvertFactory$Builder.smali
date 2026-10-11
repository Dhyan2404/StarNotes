.class public Lorg/apache/poi/convert/WordConvertFactory$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/convert/WordConvertFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private documentParaSize:I

.field private filePath:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private picturesManager:Lorg/apache/poi/picture/PicturesManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/picture/PicturesManager<",
            "*>;"
        }
    .end annotation
.end field

.field private tableIndentRatio:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lorg/apache/poi/convert/WordConvertFactory;
    .locals 2

    new-instance v0, Lorg/apache/poi/convert/WordConvertFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/poi/convert/WordConvertFactory;-><init>(Lorg/apache/poi/convert/WordConvertFactory$1;)V

    iget-object v1, p0, Lorg/apache/poi/convert/WordConvertFactory$Builder;->filePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/poi/convert/WordConvertFactory;->access$102(Lorg/apache/poi/convert/WordConvertFactory;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/poi/convert/WordConvertFactory$Builder;->password:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/poi/convert/WordConvertFactory;->access$202(Lorg/apache/poi/convert/WordConvertFactory;Ljava/lang/String;)Ljava/lang/String;

    iget v1, p0, Lorg/apache/poi/convert/WordConvertFactory$Builder;->documentParaSize:I

    invoke-static {v0, v1}, Lorg/apache/poi/convert/WordConvertFactory;->access$302(Lorg/apache/poi/convert/WordConvertFactory;I)I

    iget v1, p0, Lorg/apache/poi/convert/WordConvertFactory$Builder;->tableIndentRatio:F

    invoke-static {v0, v1}, Lorg/apache/poi/convert/WordConvertFactory;->access$402(Lorg/apache/poi/convert/WordConvertFactory;F)F

    iget-object p0, p0, Lorg/apache/poi/convert/WordConvertFactory$Builder;->picturesManager:Lorg/apache/poi/picture/PicturesManager;

    invoke-static {v0, p0}, Lorg/apache/poi/convert/WordConvertFactory;->access$502(Lorg/apache/poi/convert/WordConvertFactory;Lorg/apache/poi/picture/PicturesManager;)Lorg/apache/poi/picture/PicturesManager;

    return-object v0
.end method

.method public setDocumentParaSize(I)Lorg/apache/poi/convert/WordConvertFactory$Builder;
    .locals 0

    iput p1, p0, Lorg/apache/poi/convert/WordConvertFactory$Builder;->documentParaSize:I

    return-object p0
.end method

.method public setFilePath(Ljava/lang/String;)Lorg/apache/poi/convert/WordConvertFactory$Builder;
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/convert/WordConvertFactory$Builder;->filePath:Ljava/lang/String;

    return-object p0
.end method

.method public setPassword(Ljava/lang/String;)Lorg/apache/poi/convert/WordConvertFactory$Builder;
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/convert/WordConvertFactory$Builder;->password:Ljava/lang/String;

    return-object p0
.end method

.method public setPicturesManager(Lorg/apache/poi/picture/PicturesManager;)Lorg/apache/poi/convert/WordConvertFactory$Builder;
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/convert/WordConvertFactory$Builder;->picturesManager:Lorg/apache/poi/picture/PicturesManager;

    return-object p0
.end method

.method public setTableIndentRatio(F)Lorg/apache/poi/convert/WordConvertFactory$Builder;
    .locals 0

    iput p1, p0, Lorg/apache/poi/convert/WordConvertFactory$Builder;->tableIndentRatio:F

    return-object p0
.end method
