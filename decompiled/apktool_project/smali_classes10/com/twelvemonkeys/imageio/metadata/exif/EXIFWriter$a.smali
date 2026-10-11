.class public Lcom/twelvemonkeys/imageio/metadata/exif/EXIFWriter$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twelvemonkeys/imageio/metadata/exif/EXIFWriter;->c(Lcom/twelvemonkeys/imageio/metadata/Directory;)Lcom/twelvemonkeys/imageio/metadata/Directory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/twelvemonkeys/imageio/metadata/Entry;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/twelvemonkeys/imageio/metadata/exif/EXIFWriter;


# direct methods
.method public constructor <init>(Lcom/twelvemonkeys/imageio/metadata/exif/EXIFWriter;)V
    .locals 0

    iput-object p1, p0, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFWriter$a;->e:Lcom/twelvemonkeys/imageio/metadata/exif/EXIFWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twelvemonkeys/imageio/metadata/Entry;Lcom/twelvemonkeys/imageio/metadata/Entry;)I
    .locals 0

    invoke-interface {p1}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getIdentifier()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p2}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getIdentifier()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/twelvemonkeys/imageio/metadata/Entry;

    check-cast p2, Lcom/twelvemonkeys/imageio/metadata/Entry;

    invoke-virtual {p0, p1, p2}, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFWriter$a;->a(Lcom/twelvemonkeys/imageio/metadata/Entry;Lcom/twelvemonkeys/imageio/metadata/Entry;)I

    move-result p0

    return p0
.end method
