.class public final Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata$a;
.super Lcom/twelvemonkeys/imageio/metadata/AbstractDirectory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/twelvemonkeys/imageio/metadata/Entry;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/twelvemonkeys/imageio/metadata/AbstractDirectory;-><init>(Ljava/util/Collection;)V

    return-void
.end method
