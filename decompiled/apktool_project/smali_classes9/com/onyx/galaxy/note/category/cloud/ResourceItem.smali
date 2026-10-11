.class public final Lcom/onyx/galaxy/note/category/cloud/ResourceItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0017\n\u0002\u0010\t\n\u0002\u0008\u001f\n\u0002\u0010\u0007\n\u0002\u0008\u0016\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008V\u0010WR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\"\u0010\u0011\u001a\u00020\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\"\u0010\u0015\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u0004\u001a\u0004\u0008\u0013\u0010\u0006\"\u0004\u0008\u0014\u0010\u0008R\"\u0010\u0019\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u0004\u001a\u0004\u0008\u0017\u0010\u0006\"\u0004\u0008\u0018\u0010\u0008R\"\u0010\u001d\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010\u0004\u001a\u0004\u0008\u001b\u0010\u0006\"\u0004\u0008\u001c\u0010\u0008R\"\u0010!\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u0004\u001a\u0004\u0008\u001f\u0010\u0006\"\u0004\u0008 \u0010\u0008R\"\u0010)\u001a\u00020\"8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008#\u0010$\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(R\"\u0010-\u001a\u00020\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008*\u0010\u000c\u001a\u0004\u0008+\u0010\u000e\"\u0004\u0008,\u0010\u0010R\"\u00101\u001a\u00020\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008.\u0010\u000c\u001a\u0004\u0008/\u0010\u000e\"\u0004\u00080\u0010\u0010R\"\u00105\u001a\u00020\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00082\u0010\u000c\u001a\u0004\u00083\u0010\u000e\"\u0004\u00084\u0010\u0010R\"\u00109\u001a\u00020\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00086\u0010\u000c\u001a\u0004\u00087\u0010\u000e\"\u0004\u00088\u0010\u0010R\"\u0010=\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008:\u0010\u0004\u001a\u0004\u0008;\u0010\u0006\"\u0004\u0008<\u0010\u0008R\"\u0010A\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008>\u0010\u0004\u001a\u0004\u0008?\u0010\u0006\"\u0004\u0008@\u0010\u0008R\"\u0010I\u001a\u00020B8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008C\u0010D\u001a\u0004\u0008E\u0010F\"\u0004\u0008G\u0010HR\"\u0010M\u001a\u00020\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008J\u0010\u000c\u001a\u0004\u0008K\u0010\u000e\"\u0004\u0008L\u0010\u0010R\"\u0010Q\u001a\u00020\"8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008N\u0010$\u001a\u0004\u0008O\u0010&\"\u0004\u0008P\u0010(R\"\u0010U\u001a\u00020\"8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008R\u0010$\u001a\u0004\u0008S\u0010&\"\u0004\u0008T\u0010(\u00a8\u0006X"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/cloud/ResourceItem;",
        "",
        "",
        "a",
        "Ljava/lang/String;",
        "getUniqueId",
        "()Ljava/lang/String;",
        "setUniqueId",
        "(Ljava/lang/String;)V",
        "uniqueId",
        "",
        "b",
        "I",
        "getVersion",
        "()I",
        "setVersion",
        "(I)V",
        "version",
        "c",
        "getName",
        "setName",
        "name",
        "d",
        "getUri",
        "setUri",
        "uri",
        "e",
        "getThumbnailUri",
        "setThumbnailUri",
        "thumbnailUri",
        "f",
        "getMd5",
        "setMd5",
        "md5",
        "",
        "g",
        "J",
        "getSize",
        "()J",
        "setSize",
        "(J)V",
        "size",
        "h",
        "getStrokeColor",
        "setStrokeColor",
        "strokeColor",
        "i",
        "getFillColor",
        "setFillColor",
        "fillColor",
        "j",
        "getColorTransformMode",
        "setColorTransformMode",
        "colorTransformMode",
        "k",
        "getSource",
        "setSource",
        "source",
        "l",
        "getType",
        "setType",
        "type",
        "m",
        "getTarget",
        "setTarget",
        "target",
        "",
        "n",
        "F",
        "getPriority",
        "()F",
        "setPriority",
        "(F)V",
        "priority",
        "o",
        "getStatus",
        "setStatus",
        "status",
        "p",
        "getCreatedAt",
        "setCreatedAt",
        "createdAt",
        "q",
        "getUpdatedAt",
        "setUpdatedAt",
        "updatedAt",
        "<init>",
        "()V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:I

.field public c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:J

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public m:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public n:F

.field public o:I

.field public p:J

.field public q:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/cloud/ResourceItem;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/cloud/ResourceItem;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/cloud/ResourceItem;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/cloud/ResourceItem;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/cloud/ResourceItem;->f:Ljava/lang/String;

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/onyx/galaxy/note/category/cloud/ResourceItem;->h:I

    iput v0, p0, Lcom/onyx/galaxy/note/category/cloud/ResourceItem;->i:I

    const-string v0, "picture"

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/cloud/ResourceItem;->l:Ljava/lang/String;

    const-string v0, "cover"

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/cloud/ResourceItem;->m:Ljava/lang/String;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/onyx/galaxy/note/category/cloud/ResourceItem;->n:F

    return-void
.end method


# virtual methods
.method public final getColorTransformMode()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/category/cloud/ResourceItem;->j:I

    return p0
.end method

.method public final getCreatedAt()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/galaxy/note/category/cloud/ResourceItem;->p:J

    return-wide v0
.end method

.method public final getFillColor()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/category/cloud/ResourceItem;->i:I

    return p0
.end method

.method public final getMd5()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/cloud/ResourceItem;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/cloud/ResourceItem;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final getPriority()F
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/category/cloud/ResourceItem;->n:F

    return p0
.end method

.method public final getSize()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/galaxy/note/category/cloud/ResourceItem;->g:J

    return-wide v0
.end method

.method public final getSource()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/category/cloud/ResourceItem;->k:I

    return p0
.end method

.method public final getStatus()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/category/cloud/ResourceItem;->o:I

    return p0
.end method

.method public final getStrokeColor()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/category/cloud/ResourceItem;->h:I

    return p0
.end method

.method public final getTarget()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/cloud/ResourceItem;->m:Ljava/lang/String;

    return-object p0
.end method

.method public final getThumbnailUri()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/cloud/ResourceItem;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final getType()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/cloud/ResourceItem;->l:Ljava/lang/String;

    return-object p0
.end method

.method public final getUniqueId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/cloud/ResourceItem;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final getUpdatedAt()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/galaxy/note/category/cloud/ResourceItem;->q:J

    return-wide v0
.end method

.method public final getUri()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/cloud/ResourceItem;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final getVersion()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/category/cloud/ResourceItem;->b:I

    return p0
.end method

.method public final setColorTransformMode(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/category/cloud/ResourceItem;->j:I

    return-void
.end method

.method public final setCreatedAt(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/category/cloud/ResourceItem;->p:J

    return-void
.end method

.method public final setFillColor(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/category/cloud/ResourceItem;->i:I

    return-void
.end method

.method public final setMd5(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/cloud/ResourceItem;->f:Ljava/lang/String;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/cloud/ResourceItem;->c:Ljava/lang/String;

    return-void
.end method

.method public final setPriority(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/category/cloud/ResourceItem;->n:F

    return-void
.end method

.method public final setSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/category/cloud/ResourceItem;->g:J

    return-void
.end method

.method public final setSource(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/category/cloud/ResourceItem;->k:I

    return-void
.end method

.method public final setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/category/cloud/ResourceItem;->o:I

    return-void
.end method

.method public final setStrokeColor(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/category/cloud/ResourceItem;->h:I

    return-void
.end method

.method public final setTarget(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/cloud/ResourceItem;->m:Ljava/lang/String;

    return-void
.end method

.method public final setThumbnailUri(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/cloud/ResourceItem;->e:Ljava/lang/String;

    return-void
.end method

.method public final setType(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/cloud/ResourceItem;->l:Ljava/lang/String;

    return-void
.end method

.method public final setUniqueId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/cloud/ResourceItem;->a:Ljava/lang/String;

    return-void
.end method

.method public final setUpdatedAt(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/category/cloud/ResourceItem;->q:J

    return-void
.end method

.method public final setUri(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/cloud/ResourceItem;->d:Ljava/lang/String;

    return-void
.end method

.method public final setVersion(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/category/cloud/ResourceItem;->b:I

    return-void
.end method
