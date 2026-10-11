.class public Ljavax/imageio/metadata/IIOMetadataFormatImpl$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/imageio/metadata/IIOMetadataFormatImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:Z

.field public e:Ljava/lang/String;

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:I

.field public j:I

.field public final synthetic k:Ljavax/imageio/metadata/IIOMetadataFormatImpl;


# direct methods
.method public constructor <init>(Ljavax/imageio/metadata/IIOMetadataFormatImpl;)V
    .locals 0

    iput-object p1, p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$a;->k:Ljavax/imageio/metadata/IIOMetadataFormatImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput p1, p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$a;->b:I

    const/4 p1, 0x0

    iput-object p1, p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$a;->e:Ljava/lang/String;

    return-void
.end method
