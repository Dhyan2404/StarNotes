.class public Lorg/apache/poi/hslf/record/SlideAtomLayout;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/common/usermodel/GenericRecord;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;
    }
.end annotation

.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private geometry:Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

.field private placeholderIDs:[B


# direct methods
.method public constructor <init>([B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;->forNativeID(I)Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hslf/record/SlideAtomLayout;->geometry:Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

    const/4 v0, 0x4

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hslf/record/SlideAtomLayout;->placeholderIDs:[B

    return-void

    :cond_0
    new-instance p0, Lorg/apache/poi/hslf/exceptions/HSLFException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SSlideLayoutAtom created with byte array not 12 bytes long - was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes in size"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/hslf/exceptions/HSLFException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic a(Lorg/apache/poi/hslf/record/SlideAtomLayout;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hslf/record/SlideAtomLayout;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/record/SlideAtomLayout;->placeholderIDs:[B

    return-object p0
.end method


# virtual methods
.method public getGenericProperties()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/qtm;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/qtm;-><init>(Lorg/apache/poi/hslf/record/SlideAtomLayout;)V

    new-instance v1, Lcom/sunia/HTREnginev2/rtm;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/rtm;-><init>(Lorg/apache/poi/hslf/record/SlideAtomLayout;)V

    const-string p0, "geometry"

    const-string v2, "placeholderIDs"

    invoke-static {p0, v0, v2, v1}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getGeometryType()Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/record/SlideAtomLayout;->geometry:Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

    return-object p0
.end method

.method public setGeometryType(Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hslf/record/SlideAtomLayout;->geometry:Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

    return-void
.end method

.method public writeOut(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/apache/poi/hslf/record/SlideAtomLayout;->geometry:Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;->getNativeId()I

    move-result v1

    :goto_0
    invoke-static {v0, v2, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object p0, p0, Lorg/apache/poi/hslf/record/SlideAtomLayout;->placeholderIDs:[B

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
