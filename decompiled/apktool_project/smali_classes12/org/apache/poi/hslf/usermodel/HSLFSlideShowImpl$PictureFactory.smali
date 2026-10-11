.class final Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl$PictureFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PictureFactory"
.end annotation


# instance fields
.field final imageData:[B

.field private final offset:I

.field private record:Lorg/apache/poi/ddf/EscherBSERecord;

.field private final recordContainer:Lorg/apache/poi/ddf/EscherContainerRecord;

.field private final signature:I

.field private final type:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;


# direct methods
.method public constructor <init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/sl/usermodel/PictureData$PictureType;[BII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl$PictureFactory;->recordContainer:Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl$PictureFactory;->type:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p3, [B

    iput-object p3, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl$PictureFactory;->imageData:[B

    iput p4, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl$PictureFactory;->offset:I

    iput p5, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl$PictureFactory;->signature:I

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl$PictureFactory;)I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl$PictureFactory;->offset:I

    return p0
.end method

.method public static synthetic access$100(Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl$PictureFactory;)Lorg/apache/poi/sl/usermodel/PictureData$PictureType;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl$PictureFactory;->type:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    return-object p0
.end method


# virtual methods
.method public build()Lorg/apache/poi/hslf/usermodel/HSLFPictureData;
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl$PictureFactory;->record:Lorg/apache/poi/ddf/EscherBSERecord;

    const-string v1, "Can\'t build an instance until the record has been assigned."

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl$PictureFactory;->type:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    iget-object v1, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl$PictureFactory;->recordContainer:Lorg/apache/poi/ddf/EscherContainerRecord;

    iget-object v2, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl$PictureFactory;->record:Lorg/apache/poi/ddf/EscherBSERecord;

    iget-object v3, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl$PictureFactory;->imageData:[B

    iget p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl$PictureFactory;->signature:I

    invoke-static {v0, v1, v2, v3, p0}, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->createFromSlideshowData(Lorg/apache/poi/sl/usermodel/PictureData$PictureType;Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/ddf/EscherBSERecord;[BI)Lorg/apache/poi/hslf/usermodel/HSLFPictureData;

    move-result-object p0

    return-object p0
.end method

.method public getOffset()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl$PictureFactory;->offset:I

    return p0
.end method

.method public setRecord(Lorg/apache/poi/ddf/EscherBSERecord;)Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl$PictureFactory;
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl$PictureFactory;->record:Lorg/apache/poi/ddf/EscherBSERecord;

    return-object p0
.end method
