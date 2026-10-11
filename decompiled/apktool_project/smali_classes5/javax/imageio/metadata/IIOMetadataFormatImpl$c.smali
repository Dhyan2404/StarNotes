.class public Ljavax/imageio/metadata/IIOMetadataFormatImpl$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/imageio/metadata/IIOMetadataFormatImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public e:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Comparable<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public f:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Comparable<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public g:I

.field public h:I

.field public final synthetic i:Ljavax/imageio/metadata/IIOMetadataFormatImpl;


# direct methods
.method public constructor <init>(Ljavax/imageio/metadata/IIOMetadataFormatImpl;)V
    .locals 1

    iput-object p1, p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$c;->i:Ljavax/imageio/metadata/IIOMetadataFormatImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$c;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$c;->b:Ljava/lang/Class;

    iput-object v0, p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$c;->c:Ljava/lang/Object;

    iput-object v0, p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$c;->d:Ljava/util/List;

    iput-object v0, p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$c;->e:Ljava/lang/Comparable;

    iput-object v0, p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$c;->f:Ljava/lang/Comparable;

    iput p1, p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$c;->g:I

    iput p1, p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$c;->h:I

    return-void
.end method
