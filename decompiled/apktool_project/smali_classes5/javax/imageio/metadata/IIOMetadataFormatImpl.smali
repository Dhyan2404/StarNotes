.class public abstract Ljavax/imageio/metadata/IIOMetadataFormatImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/imageio/metadata/IIOMetadataFormat;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/imageio/metadata/IIOMetadataFormatImpl$c;,
        Ljavax/imageio/metadata/IIOMetadataFormatImpl$a;,
        Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;
    }
.end annotation


# static fields
.field private static standardFormat:Ljavax/imageio/metadata/IIOMetadataFormat; = null

.field public static final standardMetadataFormatName:Ljava/lang/String; = "javax_imageio_1.0"


# instance fields
.field private elementMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;",
            ">;"
        }
    .end annotation
.end field

.field private resourceBaseName:Ljava/lang/String;

.field private rootName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Resources"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl;->resourceBaseName:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl;->elementMap:Ljava/util/HashMap;

    if-eqz p1, :cond_1

    if-ltz p2, :cond_0

    const/4 v0, 0x5

    if-gt p2, v0, :cond_0

    if-eq p2, v0, :cond_0

    .line 4
    iput-object p1, p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl;->rootName:Ljava/lang/String;

    .line 5
    new-instance v0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;

    invoke-direct {v0, p0}, Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;-><init>(Ljavax/imageio/metadata/IIOMetadataFormatImpl;)V

    .line 6
    iput-object p1, v0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;->a:Ljava/lang/String;

    .line 7
    iput p2, v0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;->b:I

    .line 8
    iget-object p0, p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl;->elementMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid value for childPolicy!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "rootName == null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Resources"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl;->resourceBaseName:Ljava/lang/String;

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl;->elementMap:Ljava/util/HashMap;

    if-eqz p1, :cond_2

    if-ltz p2, :cond_1

    if-gt p2, p3, :cond_0

    .line 14
    new-instance v0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;

    invoke-direct {v0, p0}, Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;-><init>(Ljavax/imageio/metadata/IIOMetadataFormatImpl;)V

    .line 15
    iput-object p1, v0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;->a:Ljava/lang/String;

    const/4 v1, 0x5

    .line 16
    iput v1, v0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;->b:I

    .line 17
    iput p2, v0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;->c:I

    .line 18
    iput p3, v0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;->d:I

    .line 19
    iput-object p1, p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl;->rootName:Ljava/lang/String;

    .line 20
    iget-object p0, p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl;->elementMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 21
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "minChildren > maxChildren!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 22
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "minChildren < 0!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 23
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "rootName == null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static declared-synchronized a()V
    .locals 2

    const-class v0, Ljavax/imageio/metadata/IIOMetadataFormatImpl;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ljavax/imageio/metadata/IIOMetadataFormatImpl;->standardFormat:Ljavax/imageio/metadata/IIOMetadataFormat;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sun/imageio/plugins/common/StandardMetadataFormat;

    invoke-direct {v1}, Lcom/sun/imageio/plugins/common/StandardMetadataFormat;-><init>()V

    sput-object v1, Ljavax/imageio/metadata/IIOMetadataFormatImpl;->standardFormat:Ljavax/imageio/metadata/IIOMetadataFormat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getStandardFormatInstance()Ljavax/imageio/metadata/IIOMetadataFormat;
    .locals 1

    invoke-static {}, Ljavax/imageio/metadata/IIOMetadataFormatImpl;->a()V

    sget-object v0, Ljavax/imageio/metadata/IIOMetadataFormatImpl;->standardFormat:Ljavax/imageio/metadata/IIOMetadataFormat;

    return-object v0
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;IZII)V
    .locals 1

    .line 48
    invoke-virtual {p0, p1}, Ljavax/imageio/metadata/IIOMetadataFormatImpl;->c(Ljava/lang/String;)Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;

    move-result-object p1

    if-eqz p2, :cond_2

    if-ltz p3, :cond_1

    const/4 v0, 0x4

    if-gt p3, v0, :cond_1

    if-ltz p5, :cond_0

    if-gt p5, p6, :cond_0

    .line 49
    new-instance v0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$a;

    invoke-direct {v0, p0}, Ljavax/imageio/metadata/IIOMetadataFormatImpl$a;-><init>(Ljavax/imageio/metadata/IIOMetadataFormatImpl;)V

    .line 50
    iput-object p2, v0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$a;->a:Ljava/lang/String;

    const/16 p0, 0x20

    .line 51
    iput p0, v0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$a;->b:I

    .line 52
    iput p3, v0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$a;->c:I

    .line 53
    iput-boolean p4, v0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$a;->d:Z

    .line 54
    iput p5, v0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$a;->i:I

    .line 55
    iput p6, v0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$a;->j:I

    .line 56
    iget-object p0, p1, Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;->g:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object p0, p1, Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;->h:Ljava/util/Map;

    invoke-interface {p0, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 58
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid list bounds!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 59
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid value for dataType!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 60
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "attrName == null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Ljavax/imageio/metadata/IIOMetadataFormatImpl;->c(Ljava/lang/String;)Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;

    move-result-object p1

    if-eqz p2, :cond_1

    if-ltz p3, :cond_0

    const/4 v0, 0x4

    if-gt p3, v0, :cond_0

    .line 2
    new-instance v0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$a;

    invoke-direct {v0, p0}, Ljavax/imageio/metadata/IIOMetadataFormatImpl$a;-><init>(Ljavax/imageio/metadata/IIOMetadataFormatImpl;)V

    .line 3
    iput-object p2, v0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$a;->a:Ljava/lang/String;

    const/4 p0, 0x1

    .line 4
    iput p0, v0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$a;->b:I

    .line 5
    iput p3, v0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$a;->c:I

    .line 6
    iput-boolean p4, v0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$a;->d:Z

    .line 7
    iput-object p5, v0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$a;->e:Ljava/lang/String;

    .line 8
    iget-object p0, p1, Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;->g:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object p0, p1, Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;->h:Ljava/util/Map;

    invoke-interface {p0, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid value for dataType!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "attrName == null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 2

    .line 33
    invoke-virtual {p0, p1}, Ljavax/imageio/metadata/IIOMetadataFormatImpl;->c(Ljava/lang/String;)Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;

    move-result-object p1

    if-eqz p2, :cond_3

    if-ltz p3, :cond_2

    const/4 v0, 0x4

    if-gt p3, v0, :cond_2

    .line 34
    new-instance v1, Ljavax/imageio/metadata/IIOMetadataFormatImpl$a;

    invoke-direct {v1, p0}, Ljavax/imageio/metadata/IIOMetadataFormatImpl$a;-><init>(Ljavax/imageio/metadata/IIOMetadataFormatImpl;)V

    .line 35
    iput-object p2, v1, Ljavax/imageio/metadata/IIOMetadataFormatImpl$a;->a:Ljava/lang/String;

    const/4 p0, 0x2

    .line 36
    iput p0, v1, Ljavax/imageio/metadata/IIOMetadataFormatImpl$a;->b:I

    if-eqz p8, :cond_0

    or-int/2addr p0, v0

    .line 37
    iput p0, v1, Ljavax/imageio/metadata/IIOMetadataFormatImpl$a;->b:I

    :cond_0
    if-eqz p9, :cond_1

    .line 38
    iget p0, v1, Ljavax/imageio/metadata/IIOMetadataFormatImpl$a;->b:I

    or-int/lit8 p0, p0, 0x8

    iput p0, v1, Ljavax/imageio/metadata/IIOMetadataFormatImpl$a;->b:I

    .line 39
    :cond_1
    iput p3, v1, Ljavax/imageio/metadata/IIOMetadataFormatImpl$a;->c:I

    .line 40
    iput-boolean p4, v1, Ljavax/imageio/metadata/IIOMetadataFormatImpl$a;->d:Z

    .line 41
    iput-object p5, v1, Ljavax/imageio/metadata/IIOMetadataFormatImpl$a;->e:Ljava/lang/String;

    .line 42
    iput-object p6, v1, Ljavax/imageio/metadata/IIOMetadataFormatImpl$a;->g:Ljava/lang/String;

    .line 43
    iput-object p7, v1, Ljavax/imageio/metadata/IIOMetadataFormatImpl$a;->h:Ljava/lang/String;

    .line 44
    iget-object p0, p1, Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;->g:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object p0, p1, Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;->h:Ljava/util/Map;

    invoke-interface {p0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 46
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid value for dataType!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 47
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "attrName == null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 12
    invoke-virtual {p0, p1}, Ljavax/imageio/metadata/IIOMetadataFormatImpl;->c(Ljava/lang/String;)Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;

    move-result-object p1

    if-eqz p2, :cond_6

    if-ltz p3, :cond_5

    const/4 v0, 0x4

    if-gt p3, v0, :cond_5

    if-eqz p6, :cond_4

    .line 13
    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 14
    invoke-interface {p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 15
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 17
    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "enumeratedValues contains a non-String value!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 19
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "enumeratedValues contains a null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 20
    :cond_2
    new-instance v0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$a;

    invoke-direct {v0, p0}, Ljavax/imageio/metadata/IIOMetadataFormatImpl$a;-><init>(Ljavax/imageio/metadata/IIOMetadataFormatImpl;)V

    .line 21
    iput-object p2, v0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$a;->a:Ljava/lang/String;

    const/16 p0, 0x10

    .line 22
    iput p0, v0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$a;->b:I

    .line 23
    iput p3, v0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$a;->c:I

    .line 24
    iput-boolean p4, v0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$a;->d:Z

    .line 25
    iput-object p5, v0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$a;->e:Ljava/lang/String;

    .line 26
    iput-object p6, v0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$a;->f:Ljava/util/List;

    .line 27
    iget-object p0, p1, Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;->g:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object p0, p1, Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;->h:Ljava/util/Map;

    invoke-interface {p0, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 29
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "enumeratedValues is empty!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 30
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "enumeratedValues == null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 31
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid value for dataType!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 32
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "attrName == null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addBooleanAttribute(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 7

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "TRUE"

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "FALSE"

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    move-object v5, v0

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    move-object v5, p3

    :goto_1
    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Ljavax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public addChildElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p2}, Ljavax/imageio/metadata/IIOMetadataFormatImpl;->c(Ljava/lang/String;)Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;

    move-result-object v0

    invoke-virtual {p0, p1}, Ljavax/imageio/metadata/IIOMetadataFormatImpl;->c(Ljava/lang/String;)Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;

    move-result-object p0

    iget-object v0, v0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;->f:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addElement(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 1
    invoke-virtual {p0, p2}, Ljavax/imageio/metadata/IIOMetadataFormatImpl;->c(Ljava/lang/String;)Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;

    move-result-object v0

    if-ltz p3, :cond_0

    const/4 v1, 0x5

    if-gt p3, v1, :cond_0

    if-eq p3, v1, :cond_0

    .line 2
    new-instance v1, Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;

    invoke-direct {v1, p0}, Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;-><init>(Ljavax/imageio/metadata/IIOMetadataFormatImpl;)V

    .line 3
    iput-object p1, v1, Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;->a:Ljava/lang/String;

    .line 4
    iput p3, v1, Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;->b:I

    .line 5
    iget-object p3, v0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;->e:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object p3, v1, Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;->f:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object p0, p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl;->elementMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid value for childPolicy!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addElement(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3

    .line 9
    invoke-virtual {p0, p2}, Ljavax/imageio/metadata/IIOMetadataFormatImpl;->c(Ljava/lang/String;)Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;

    move-result-object v0

    if-ltz p3, :cond_1

    if-gt p3, p4, :cond_0

    .line 10
    new-instance v1, Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;

    invoke-direct {v1, p0}, Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;-><init>(Ljavax/imageio/metadata/IIOMetadataFormatImpl;)V

    .line 11
    iput-object p1, v1, Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;->a:Ljava/lang/String;

    const/4 v2, 0x5

    .line 12
    iput v2, v1, Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;->b:I

    .line 13
    iput p3, v1, Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;->c:I

    .line 14
    iput p4, v1, Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;->d:I

    .line 15
    iget-object p3, v0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;->e:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object p3, v1, Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;->f:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object p0, p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl;->elementMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "minChildren > maxChildren!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 19
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "minChildren < 0!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addObjectValue(Ljava/lang/String;Ljava/lang/Class;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;II)V"
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1}, Ljavax/imageio/metadata/IIOMetadataFormatImpl;->c(Ljava/lang/String;)Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;

    move-result-object p1

    .line 34
    new-instance v0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$c;

    invoke-direct {v0, p0}, Ljavax/imageio/metadata/IIOMetadataFormatImpl$c;-><init>(Ljavax/imageio/metadata/IIOMetadataFormatImpl;)V

    const/16 p0, 0x20

    .line 35
    iput p0, v0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$c;->a:I

    .line 36
    iput-object p2, v0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$c;->b:Ljava/lang/Class;

    .line 37
    iput p3, v0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$c;->g:I

    .line 38
    iput p4, v0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$c;->h:I

    .line 39
    iput-object v0, p1, Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;->i:Ljavax/imageio/metadata/IIOMetadataFormatImpl$c;

    return-void
.end method

.method public addObjectValue(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Comparable;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ":",
            "Ljava/lang/Comparable<",
            "-TT;>;>(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;TT;",
            "Ljava/lang/Comparable<",
            "-TT;>;",
            "Ljava/lang/Comparable<",
            "-TT;>;ZZ)V"
        }
    .end annotation

    .line 23
    invoke-virtual {p0, p1}, Ljavax/imageio/metadata/IIOMetadataFormatImpl;->c(Ljava/lang/String;)Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;

    move-result-object p1

    .line 24
    new-instance v0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$c;

    invoke-direct {v0, p0}, Ljavax/imageio/metadata/IIOMetadataFormatImpl$c;-><init>(Ljavax/imageio/metadata/IIOMetadataFormatImpl;)V

    const/4 p0, 0x2

    .line 25
    iput p0, v0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$c;->a:I

    if-eqz p6, :cond_0

    or-int/lit8 p0, p0, 0x4

    .line 26
    iput p0, v0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$c;->a:I

    :cond_0
    if-eqz p7, :cond_1

    .line 27
    iget p0, v0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$c;->a:I

    or-int/lit8 p0, p0, 0x8

    iput p0, v0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$c;->a:I

    .line 28
    :cond_1
    iput-object p2, v0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$c;->b:Ljava/lang/Class;

    .line 29
    iput-object p3, v0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$c;->c:Ljava/lang/Object;

    .line 30
    iput-object p4, v0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$c;->e:Ljava/lang/Comparable;

    .line 31
    iput-object p5, v0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$c;->f:Ljava/lang/Comparable;

    .line 32
    iput-object v0, p1, Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;->i:Ljavax/imageio/metadata/IIOMetadataFormatImpl$c;

    return-void
.end method

.method public addObjectValue(Ljava/lang/String;Ljava/lang/Class;ZLjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;ZTT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Ljavax/imageio/metadata/IIOMetadataFormatImpl;->c(Ljava/lang/String;)Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;

    move-result-object p1

    .line 2
    new-instance p3, Ljavax/imageio/metadata/IIOMetadataFormatImpl$c;

    invoke-direct {p3, p0}, Ljavax/imageio/metadata/IIOMetadataFormatImpl$c;-><init>(Ljavax/imageio/metadata/IIOMetadataFormatImpl;)V

    const/4 p0, 0x1

    .line 3
    iput p0, p3, Ljavax/imageio/metadata/IIOMetadataFormatImpl$c;->a:I

    .line 4
    iput-object p2, p3, Ljavax/imageio/metadata/IIOMetadataFormatImpl$c;->b:Ljava/lang/Class;

    .line 5
    iput-object p4, p3, Ljavax/imageio/metadata/IIOMetadataFormatImpl$c;->c:Ljava/lang/Object;

    .line 6
    iput-object p3, p1, Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;->i:Ljavax/imageio/metadata/IIOMetadataFormatImpl$c;

    return-void
.end method

.method public addObjectValue(Ljava/lang/String;Ljava/lang/Class;ZLjava/lang/Object;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;ZTT;",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation

    .line 7
    invoke-virtual {p0, p1}, Ljavax/imageio/metadata/IIOMetadataFormatImpl;->c(Ljava/lang/String;)Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;

    move-result-object p1

    if-eqz p5, :cond_4

    .line 8
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p3

    if-eqz p3, :cond_3

    .line 9
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    .line 10
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "enumeratedValues contains a value not of class classType!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 14
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "enumeratedValues contains a null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 15
    :cond_2
    new-instance p3, Ljavax/imageio/metadata/IIOMetadataFormatImpl$c;

    invoke-direct {p3, p0}, Ljavax/imageio/metadata/IIOMetadataFormatImpl$c;-><init>(Ljavax/imageio/metadata/IIOMetadataFormatImpl;)V

    const/16 p0, 0x10

    .line 16
    iput p0, p3, Ljavax/imageio/metadata/IIOMetadataFormatImpl$c;->a:I

    .line 17
    iput-object p2, p3, Ljavax/imageio/metadata/IIOMetadataFormatImpl$c;->b:Ljava/lang/Class;

    .line 18
    iput-object p4, p3, Ljavax/imageio/metadata/IIOMetadataFormatImpl$c;->c:Ljava/lang/Object;

    .line 19
    iput-object p5, p3, Ljavax/imageio/metadata/IIOMetadataFormatImpl$c;->d:Ljava/util/List;

    .line 20
    iput-object p3, p1, Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;->i:Ljavax/imageio/metadata/IIOMetadataFormatImpl$c;

    return-void

    .line 21
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "enumeratedValues is empty!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 22
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "enumeratedValues == null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Ljavax/imageio/metadata/IIOMetadataFormatImpl$a;
    .locals 1

    invoke-virtual {p0, p1}, Ljavax/imageio/metadata/IIOMetadataFormatImpl;->c(Ljava/lang/String;)Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;

    move-result-object p0

    iget-object p0, p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;->h:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$a;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No such attribute \""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\"!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c(Ljava/lang/String;)Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljavax/imageio/metadata/IIOMetadataFormatImpl;->d(Ljava/lang/String;Z)Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;

    move-result-object p0

    return-object p0
.end method

.method public abstract canNodeAppear(Ljava/lang/String;Ljavax/imageio/ImageTypeSpecifier;)Z
.end method

.method public final d(Ljava/lang/String;Z)Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;
    .locals 1

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "element name is null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl;->elementMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;

    if-eqz p2, :cond_3

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No such element: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    return-object p0
.end method

.method public final e(Ljava/lang/String;)Ljavax/imageio/metadata/IIOMetadataFormatImpl$c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljavax/imageio/metadata/IIOMetadataFormatImpl$c<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljavax/imageio/metadata/IIOMetadataFormatImpl;->c(Ljava/lang/String;)Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;

    move-result-object p0

    iget-object p0, p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;->i:Ljavax/imageio/metadata/IIOMetadataFormatImpl$c;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No object within element "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final f(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    if-nez p2, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    :cond_0
    :try_start_0
    iget-object v0, p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl;->resourceBaseName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-static {v0, p2, p0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAttributeDataType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljavax/imageio/metadata/IIOMetadataFormatImpl;->b(Ljava/lang/String;Ljava/lang/String;)Ljavax/imageio/metadata/IIOMetadataFormatImpl$a;

    move-result-object p0

    iget p0, p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$a;->c:I

    return p0
.end method

.method public getAttributeDefaultValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljavax/imageio/metadata/IIOMetadataFormatImpl;->b(Ljava/lang/String;Ljava/lang/String;)Ljavax/imageio/metadata/IIOMetadataFormatImpl$a;

    move-result-object p0

    iget-object p0, p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public getAttributeDescription(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Ljavax/imageio/metadata/IIOMetadataFormatImpl;->c(Ljava/lang/String;)Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;

    move-result-object v0

    if-eqz p2, :cond_1

    iget-object v0, v0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;->h:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$a;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Ljavax/imageio/metadata/IIOMetadataFormatImpl;->f(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No such attribute!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "attrName == null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAttributeEnumerations(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljavax/imageio/metadata/IIOMetadataFormatImpl;->b(Ljava/lang/String;Ljava/lang/String;)Ljavax/imageio/metadata/IIOMetadataFormatImpl$a;

    move-result-object p0

    iget p1, p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$a;->b:I

    const/16 p2, 0x10

    if-ne p1, p2, :cond_0

    iget-object p0, p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$a;->f:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Attribute not an enumeration!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAttributeListMaxLength(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljavax/imageio/metadata/IIOMetadataFormatImpl;->b(Ljava/lang/String;Ljava/lang/String;)Ljavax/imageio/metadata/IIOMetadataFormatImpl$a;

    move-result-object p0

    iget p1, p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$a;->b:I

    const/16 p2, 0x20

    if-ne p1, p2, :cond_0

    iget p0, p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$a;->j:I

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Attribute not a list!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAttributeListMinLength(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljavax/imageio/metadata/IIOMetadataFormatImpl;->b(Ljava/lang/String;Ljava/lang/String;)Ljavax/imageio/metadata/IIOMetadataFormatImpl$a;

    move-result-object p0

    iget p1, p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$a;->b:I

    const/16 p2, 0x20

    if-ne p1, p2, :cond_0

    iget p0, p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$a;->i:I

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Attribute not a list!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAttributeMaxValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljavax/imageio/metadata/IIOMetadataFormatImpl;->b(Ljava/lang/String;Ljava/lang/String;)Ljavax/imageio/metadata/IIOMetadataFormatImpl$a;

    move-result-object p0

    iget p1, p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$a;->b:I

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x6

    if-eq p1, p2, :cond_1

    const/16 p2, 0xa

    if-eq p1, p2, :cond_1

    const/16 p2, 0xe

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Attribute not a range!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$a;->h:Ljava/lang/String;

    return-object p0
.end method

.method public getAttributeMinValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljavax/imageio/metadata/IIOMetadataFormatImpl;->b(Ljava/lang/String;Ljava/lang/String;)Ljavax/imageio/metadata/IIOMetadataFormatImpl$a;

    move-result-object p0

    iget p1, p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$a;->b:I

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x6

    if-eq p1, p2, :cond_1

    const/16 p2, 0xa

    if-eq p1, p2, :cond_1

    const/16 p2, 0xe

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Attribute not a range!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$a;->g:Ljava/lang/String;

    return-object p0
.end method

.method public getAttributeNames(Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Ljavax/imageio/metadata/IIOMetadataFormatImpl;->c(Ljava/lang/String;)Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;

    move-result-object p0

    iget-object p0, p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;->g:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getAttributeValueType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljavax/imageio/metadata/IIOMetadataFormatImpl;->b(Ljava/lang/String;Ljava/lang/String;)Ljavax/imageio/metadata/IIOMetadataFormatImpl$a;

    move-result-object p0

    iget p0, p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$a;->b:I

    return p0
.end method

.method public getChildNames(Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Ljavax/imageio/metadata/IIOMetadataFormatImpl;->c(Ljava/lang/String;)Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;

    move-result-object p0

    iget p1, p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;->b:I

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;->e:Ljava/util/List;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getChildPolicy(Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0, p1}, Ljavax/imageio/metadata/IIOMetadataFormatImpl;->c(Ljava/lang/String;)Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;

    move-result-object p0

    iget p0, p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;->b:I

    return p0
.end method

.method public getElementDescription(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Ljavax/imageio/metadata/IIOMetadataFormatImpl;->c(Ljava/lang/String;)Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;

    invoke-virtual {p0, p1, p2}, Ljavax/imageio/metadata/IIOMetadataFormatImpl;->f(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getElementMaxChildren(Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0, p1}, Ljavax/imageio/metadata/IIOMetadataFormatImpl;->c(Ljava/lang/String;)Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;

    move-result-object p0

    iget p1, p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;->b:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    iget p0, p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;->d:I

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Child policy not CHILD_POLICY_REPEAT!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getElementMinChildren(Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0, p1}, Ljavax/imageio/metadata/IIOMetadataFormatImpl;->c(Ljava/lang/String;)Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;

    move-result-object p0

    iget p1, p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;->b:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    iget p0, p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;->c:I

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Child policy not CHILD_POLICY_REPEAT!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getObjectArrayMaxLength(Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0, p1}, Ljavax/imageio/metadata/IIOMetadataFormatImpl;->e(Ljava/lang/String;)Ljavax/imageio/metadata/IIOMetadataFormatImpl$c;

    move-result-object p0

    iget p1, p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$c;->a:I

    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    iget p0, p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$c;->h:I

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Not a list!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getObjectArrayMinLength(Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0, p1}, Ljavax/imageio/metadata/IIOMetadataFormatImpl;->e(Ljava/lang/String;)Ljavax/imageio/metadata/IIOMetadataFormatImpl$c;

    move-result-object p0

    iget p1, p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$c;->a:I

    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    iget p0, p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$c;->g:I

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Not a list!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getObjectClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljavax/imageio/metadata/IIOMetadataFormatImpl;->e(Ljava/lang/String;)Ljavax/imageio/metadata/IIOMetadataFormatImpl$c;

    move-result-object p0

    iget-object p0, p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$c;->b:Ljava/lang/Class;

    return-object p0
.end method

.method public getObjectDefaultValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Ljavax/imageio/metadata/IIOMetadataFormatImpl;->e(Ljava/lang/String;)Ljavax/imageio/metadata/IIOMetadataFormatImpl$c;

    move-result-object p0

    iget-object p0, p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$c;->c:Ljava/lang/Object;

    return-object p0
.end method

.method public getObjectEnumerations(Ljava/lang/String;)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Ljavax/imageio/metadata/IIOMetadataFormatImpl;->e(Ljava/lang/String;)Ljavax/imageio/metadata/IIOMetadataFormatImpl$c;

    move-result-object p0

    iget p1, p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$c;->a:I

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$c;->d:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/Object;

    invoke-interface {p0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Not an enumeration!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getObjectMaxValue(Ljava/lang/String;)Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Comparable<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljavax/imageio/metadata/IIOMetadataFormatImpl;->e(Ljava/lang/String;)Ljavax/imageio/metadata/IIOMetadataFormatImpl$c;

    move-result-object p0

    iget p1, p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$c;->a:I

    const/4 v0, 0x2

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$c;->f:Ljava/lang/Comparable;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Not a range!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getObjectMinValue(Ljava/lang/String;)Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Comparable<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljavax/imageio/metadata/IIOMetadataFormatImpl;->e(Ljava/lang/String;)Ljavax/imageio/metadata/IIOMetadataFormatImpl$c;

    move-result-object p0

    iget p1, p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$c;->a:I

    const/4 v0, 0x2

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$c;->e:Ljava/lang/Comparable;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Not a range!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getObjectValueType(Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0, p1}, Ljavax/imageio/metadata/IIOMetadataFormatImpl;->c(Ljava/lang/String;)Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;

    move-result-object p0

    iget-object p0, p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;->i:Ljavax/imageio/metadata/IIOMetadataFormatImpl$c;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$c;->a:I

    return p0
.end method

.method public getResourceBaseName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl;->resourceBaseName:Ljava/lang/String;

    return-object p0
.end method

.method public getRootName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl;->rootName:Ljava/lang/String;

    return-object p0
.end method

.method public isAttributeRequired(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljavax/imageio/metadata/IIOMetadataFormatImpl;->b(Ljava/lang/String;Ljava/lang/String;)Ljavax/imageio/metadata/IIOMetadataFormatImpl$a;

    move-result-object p0

    iget-boolean p0, p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$a;->d:Z

    return p0
.end method

.method public removeAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljavax/imageio/metadata/IIOMetadataFormatImpl;->c(Ljava/lang/String;)Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;

    move-result-object p0

    iget-object p1, p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;->g:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;->h:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeElement(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljavax/imageio/metadata/IIOMetadataFormatImpl;->d(Ljava/lang/String;Z)Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, v1, Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Ljavax/imageio/metadata/IIOMetadataFormatImpl;->d(Ljava/lang/String;Z)Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, v2, Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;->e:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl;->elementMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public removeObjectValue(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljavax/imageio/metadata/IIOMetadataFormatImpl;->c(Ljava/lang/String;)Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;

    move-result-object p0

    const/4 p1, 0x0

    iput-object p1, p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl$b;->i:Ljavax/imageio/metadata/IIOMetadataFormatImpl$c;

    return-void
.end method

.method public setResourceBaseName(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Ljavax/imageio/metadata/IIOMetadataFormatImpl;->resourceBaseName:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "resourceBaseName == null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
