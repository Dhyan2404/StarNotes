.class public Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/imageio/metadata/IIOMetadataFormatImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:I

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljavax/imageio/metadata/IIOMetadataFormatImpl$a;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljavax/imageio/metadata/IIOMetadataFormatImpl$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/imageio/metadata/IIOMetadataFormatImpl$c<",
            "*>;"
        }
    .end annotation
.end field

.field public final synthetic j:Ljavax/imageio/metadata/IIOMetadataFormatImpl;


# direct methods
.method public constructor <init>(Ljavax/imageio/metadata/IIOMetadataFormatImpl;)V
    .locals 0

    iput-object p1, p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;->j:Ljavax/imageio/metadata/IIOMetadataFormatImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;->c:I

    iput p1, p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;->d:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;->e:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;->f:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;->g:Ljava/util/List;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;->h:Ljava/util/Map;

    return-void
.end method
