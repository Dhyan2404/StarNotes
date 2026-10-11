.class public final Lcom/onyx/galaxy/note/category/cloud/CoverPaperCategoryItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u000f\n\u0002\u0010\u0007\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008\u000e\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008.\u0010/R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\"\u0010\u0011\u001a\u00020\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\"\u0010\u0015\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u0004\u001a\u0004\u0008\u0013\u0010\u0006\"\u0004\u0008\u0014\u0010\u0008R\"\u0010\u0019\u001a\u00020\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u000c\u001a\u0004\u0008\u0017\u0010\u000e\"\u0004\u0008\u0018\u0010\u0010R\"\u0010!\u001a\u00020\u001a8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\"\u0010)\u001a\u00020\"8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008#\u0010$\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(R\"\u0010-\u001a\u00020\"8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008*\u0010$\u001a\u0004\u0008+\u0010&\"\u0004\u0008,\u0010(\u00a8\u00060"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/cloud/CoverPaperCategoryItem;",
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
        "getSource",
        "setSource",
        "source",
        "",
        "e",
        "F",
        "getPriority",
        "()F",
        "setPriority",
        "(F)V",
        "priority",
        "",
        "f",
        "J",
        "getCreatedAt",
        "()J",
        "setCreatedAt",
        "(J)V",
        "createdAt",
        "g",
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

.field public d:I

.field public e:F

.field public f:J

.field public g:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/cloud/CoverPaperCategoryItem;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/cloud/CoverPaperCategoryItem;->c:Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, p0, Lcom/onyx/galaxy/note/category/cloud/CoverPaperCategoryItem;->d:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/onyx/galaxy/note/category/cloud/CoverPaperCategoryItem;->e:F

    return-void
.end method


# virtual methods
.method public final getCreatedAt()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/galaxy/note/category/cloud/CoverPaperCategoryItem;->f:J

    return-wide v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/cloud/CoverPaperCategoryItem;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final getPriority()F
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/category/cloud/CoverPaperCategoryItem;->e:F

    return p0
.end method

.method public final getSource()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/category/cloud/CoverPaperCategoryItem;->d:I

    return p0
.end method

.method public final getUniqueId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/cloud/CoverPaperCategoryItem;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final getUpdatedAt()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/galaxy/note/category/cloud/CoverPaperCategoryItem;->g:J

    return-wide v0
.end method

.method public final getVersion()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/category/cloud/CoverPaperCategoryItem;->b:I

    return p0
.end method

.method public final setCreatedAt(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/category/cloud/CoverPaperCategoryItem;->f:J

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

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/cloud/CoverPaperCategoryItem;->c:Ljava/lang/String;

    return-void
.end method

.method public final setPriority(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/category/cloud/CoverPaperCategoryItem;->e:F

    return-void
.end method

.method public final setSource(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/category/cloud/CoverPaperCategoryItem;->d:I

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

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/cloud/CoverPaperCategoryItem;->a:Ljava/lang/String;

    return-void
.end method

.method public final setUpdatedAt(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/category/cloud/CoverPaperCategoryItem;->g:J

    return-void
.end method

.method public final setVersion(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/category/cloud/CoverPaperCategoryItem;->b:I

    return-void
.end method
