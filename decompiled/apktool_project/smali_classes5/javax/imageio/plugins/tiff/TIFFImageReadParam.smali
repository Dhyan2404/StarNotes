.class public final Ljavax/imageio/plugins/tiff/TIFFImageReadParam;
.super Ljavax/imageio/ImageReadParam;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavax/imageio/plugins/tiff/TIFFTagSet;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljavax/imageio/ImageReadParam;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ljavax/imageio/plugins/tiff/TIFFImageReadParam;->a:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/imageio/plugins/tiff/TIFFImageReadParam;->b:Z

    invoke-static {}, Ljavax/imageio/plugins/tiff/BaselineTIFFTagSet;->getInstance()Ljavax/imageio/plugins/tiff/BaselineTIFFTagSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/imageio/plugins/tiff/TIFFImageReadParam;->addAllowedTagSet(Ljavax/imageio/plugins/tiff/TIFFTagSet;)V

    invoke-static {}, Ljavax/imageio/plugins/tiff/FaxTIFFTagSet;->getInstance()Ljavax/imageio/plugins/tiff/FaxTIFFTagSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/imageio/plugins/tiff/TIFFImageReadParam;->addAllowedTagSet(Ljavax/imageio/plugins/tiff/TIFFTagSet;)V

    invoke-static {}, Ljavax/imageio/plugins/tiff/ExifParentTIFFTagSet;->getInstance()Ljavax/imageio/plugins/tiff/ExifParentTIFFTagSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/imageio/plugins/tiff/TIFFImageReadParam;->addAllowedTagSet(Ljavax/imageio/plugins/tiff/TIFFTagSet;)V

    invoke-static {}, Ljavax/imageio/plugins/tiff/GeoTIFFTagSet;->getInstance()Ljavax/imageio/plugins/tiff/GeoTIFFTagSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/imageio/plugins/tiff/TIFFImageReadParam;->addAllowedTagSet(Ljavax/imageio/plugins/tiff/TIFFTagSet;)V

    return-void
.end method


# virtual methods
.method public addAllowedTagSet(Ljavax/imageio/plugins/tiff/TIFFTagSet;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Ljavax/imageio/plugins/tiff/TIFFImageReadParam;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFImageReadParam;->a:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "tagSet == null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAllowedTagSets()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljavax/imageio/plugins/tiff/TIFFTagSet;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFImageReadParam;->a:Ljava/util/List;

    return-object p0
.end method

.method public getReadUnknownTags()Z
    .locals 0

    iget-boolean p0, p0, Ljavax/imageio/plugins/tiff/TIFFImageReadParam;->b:Z

    return p0
.end method

.method public removeAllowedTagSet(Ljavax/imageio/plugins/tiff/TIFFTagSet;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFImageReadParam;->a:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "tagSet == null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setReadUnknownTags(Z)V
    .locals 0

    iput-boolean p1, p0, Ljavax/imageio/plugins/tiff/TIFFImageReadParam;->b:Z

    return-void
.end method
