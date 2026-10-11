.class Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl$CountingOS;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CountingOS"
.end annotation


# instance fields
.field count:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl$CountingOS;-><init>()V

    return-void
.end method


# virtual methods
.method public size()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl$CountingOS;->count:I

    return p0
.end method

.method public write(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl$CountingOS;->count:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl$CountingOS;->count:I

    return-void
.end method

.method public write([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl$CountingOS;->count:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl$CountingOS;->count:I

    return-void
.end method

.method public write([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl$CountingOS;->count:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl$CountingOS;->count:I

    return-void
.end method
